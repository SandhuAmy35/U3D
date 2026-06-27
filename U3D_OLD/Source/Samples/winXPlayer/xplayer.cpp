//***************************************************************************
//
//  Copyright (c) 1999 - 2006 Intel Corporation
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
//***************************************************************************

#include <GL/gl.h>
#include <GL/glx.h>
#include <GL/glu.h>
#include <stdio.h>
#include <sys/time.h>
#include <signal.h>
#include "u3dplayer.h"

#include "IFXQuaternion.h"
#include "IFXCoreCIDs.h"
#include <dlfcn.h>
#include "IFXPlugin.h"
#include "IFXCOM.h"
#include "IFXOSUtilities.h"

#define MAXFILENAMELENGTH 512
#define DEFAULT_DISPLAYNAME (char*)""

#define	ToRadians(x)	((x)*3.1415926535f/180.0f)

extern int g_sigQuit;
extern void SignalQuitHandler(int sig);
class IFXVector3;
class IFXMatrix4x4;
extern IFXRESULT RotateView( F32 fInX, F32 fInY, BOOL mod, BOOL yKeyDown, IFXVector3 pivotPoint, IFXMatrix4x4 *pViewMatrix);



//
// CreateWindow creates the Window for rendering with specified size
// return: Window win;
// 
static Window CreateWindow( Display *dpy,
				  IFXRect size,
				  XVisualInfo *visinfo )
{
   int scrnum;
   XSetWindowAttributes attr;
   unsigned long mask;
   Window root;
   Window win;

   scrnum = DefaultScreen( dpy );

   root = RootWindow(dpy, scrnum);
   /* window attributes */
   attr.background_pixel = 0;
   attr.border_pixel = 0;
   attr.colormap = XCreateColormap( dpy, root, visinfo->visual, AllocNone);
   attr.event_mask = StructureNotifyMask | ExposureMask | KeyPressMask;
   mask = CWBackPixel | CWBorderPixel | CWColormap | CWEventMask;

   win = XCreateWindow( dpy, root, 
						size.m_X, size.m_Y, size.m_Width, size.m_Height,
						0, visinfo->depth, InputOutput,
						visinfo->visual, mask, &attr );
   return win;
}

int main(int argc, char **argv)
{
	IFXRESULT result = IFX_OK;
	Window win;
	Display *dpy = NULL;
	XVisualInfo *visinfo = NULL;

	g_sigQuit = FALSE;
	signal(SIGQUIT, SignalQuitHandler);

	IFXCOMInitialize();
	
	void* handle = dlopen("./libIFXRendering.so", RTLD_NOW | RTLD_GLOBAL);
	if (handle) {
		typedef IFXRESULT (IFXAPI_CALLTYPE *IFXPluginRegisterFunction)(U32*, IFXComponentDescriptor**);
		IFXPluginRegisterFunction reg = (IFXPluginRegisterFunction)dlsym(handle, "IFXPluginRegister");
		if (reg) {
			U32 num = 0;
			IFXComponentDescriptor* pDesc = NULL;
			if (IFXSUCCESS(reg(&num, &pDesc)) && pDesc) {
				for (U32 i = 0; i < num; ++i) {
					IFXRegisterComponent(&pDesc[i]);
				}
				printf("Successfully registered %u rendering components.\n", num);
			} else {
				printf("Failed to get rendering components.\n");
			}
		} else {
			printf("Failed to find IFXPluginRegister: %s\n", dlerror());
		}
	} else {
		printf("Failed to dlopen libIFXRendering.so: %s\n", dlerror());
	}
	
{
	U3DSamplePlayer u3dApp;

	char *displayName = DEFAULT_DISPLAYNAME;
	IFXCHAR fileName[MAXFILENAMELENGTH];

	IFXRenderWindow renderWin;
	IFXRect winsize;

	int attrib[] = { GLX_RGBA,
			 GLX_RED_SIZE, 1,
			 GLX_GREEN_SIZE, 1,
			 GLX_BLUE_SIZE, 1,
			 GLX_DEPTH_SIZE, 24,
			 GLX_DOUBLEBUFFER,
			 None };
	
	if (argc == 1) 
	{
		printf("\nno parameters!!!\n use name of input *.u3d file as single parameter\n");
		result = IFX_E_INVALID_FILE;
	}
	if (IFXSUCCESS(result))
	{
		result = IFXSetDefaultLocale();
		IFXTRACE_GENERIC(L"[winXPlayer] IFXSetDefaultLocale %i\n", result);
	}

	if (IFXSUCCESS(result))
	{
		if (!mbstowcs(fileName, argv[1], MAXFILENAMELENGTH)) 
		{
			printf("\ninvalid filename\n");
			result = IFX_E_INVALID_FILE;
		}
		
	}

	if (IFXSUCCESS(result)) 
        {
                result = u3dApp.InitScene(fileName);
                if (IFXFAILURE(result)) printf("InitScene failed with 0x%08x\n", result);
        }

        if (IFXSUCCESS(result)) 
        {
                dpy = XOpenDisplay(displayName);
                if (NULL == dpy)
                {
                        printf("XOpenDisplay failed\n");
                        result = IFX_E_RESOURCE_NOT_AVAILABLE;
                }
        }

        if (IFXSUCCESS(result)) 
        {
                U32 scrnum = DefaultScreen( dpy );
                visinfo = glXChooseVisual( dpy, scrnum, attrib );
                if (!visinfo) {
                   printf("Error: couldn't get an RGB, Double-buffered visual\n");
                   result = IFX_E_UNSUPPORTED;
                }
        }

        if (IFXSUCCESS(result)) 
        {
                winsize.Set(0, 0, 640, 480);
                win = CreateWindow(dpy, winsize, visinfo);
                printf("xplayer win: %lu\n", win);
                XMapWindow(dpy, win);
                ///@todo: do proper error handling for XCreateWindow
        }

        if (IFXSUCCESS(result)) 
        {
                XWindowAttributes xwa;
                XGetWindowAttributes(dpy, win, &xwa);
                winsize.m_X = 0;
                winsize.m_Y = 0;
                winsize.m_Width = xwa.width;
                winsize.m_Height = xwa.height;

                renderWin.SetWindowPtr(dpy);
                renderWin.SetVisual(visinfo);
                renderWin.SetDrawable(win);
                renderWin.SetWindowSize(winsize);

                ///initialize Renderer
                result = u3dApp.InitRender(&renderWin);
                if (IFXFAILURE(result)) printf("InitRender failed with 0x%08x\n", result);
        }

        XWindowAttributes xwa;
        XGetWindowAttributes(dpy, win, &xwa);
        winsize.m_X = 0;
        winsize.m_Y = 0;
        winsize.m_Width = xwa.width;
        winsize.m_Height = xwa.height;
        renderWin.SetWindowSize(winsize);
        u3dApp.UpdateWindow(&renderWin);


        //ViewNode
        IFXDECLARELOCAL(IFXView, pView);
        if (IFXSUCCESS(result))
        {
                result = u3dApp.FindView(&pView);
                if (IFXFAILURE(result)) {
					printf("FindView failed with 0x%08x\n", result);
					printf("ERROR: No IFXView (Camera) node found in the U3D file! Ensure the scene was exported with a camera.\n");
				}
        }
        if (IFXSUCCESS(result))
        {
                result = u3dApp.SetView(pView);
                if (IFXFAILURE(result)) printf("SetView failed with 0x%08x\n", result);
        }

	if (IFXSUCCESS(result))
		result = u3dApp.ClearBackbuffer(pView);

	while (IFXSUCCESS(result) && result != IFX_CANCEL && !g_sigQuit) 
	{
		while (XPending(dpy) > 0) 
		{
            XEvent event;
			XNextEvent( dpy, &event );

			switch (event.type) {
			case Expose:
				///@todo: redraw
				printf("\nExpose\n\n");
				break;
			case ConfigureNotify:
				///@todo: resize
				printf("\nConfigureNotify\n\n");
				{
					XWindowAttributes xwa;
					XGetWindowAttributes(dpy, win, &xwa);
					winsize.m_X = 0;
					winsize.m_Y = 0;
					winsize.m_Width = xwa.width;
					winsize.m_Height = xwa.height;
					renderWin.SetWindowSize(winsize);
					u3dApp.UpdateWindow(&renderWin);
				}
				break;
			case KeyPress:
				{
					char keyEvent[10];
					int keyCode, tmp;
					keyCode = XLookupKeysym(&event.xkey, 0);

					tmp = XLookupString(&event.xkey, keyEvent, sizeof(keyEvent), NULL, NULL);
					if (keyEvent[0] == 27) 
					{
						//Escape code
						result = IFX_CANCEL;
					}
				}
				break;
			}
		}
		if (result != IFX_CANCEL) 
		{
			if (IFXSUCCESS(result)) {
				result = u3dApp.ProcessScheduler();
				if (IFXFAILURE(result)) printf("ProcessScheduler failed with 0x%08x\n", result);
			}
			if (IFXSUCCESS(result)) {
				result = u3dApp.Render();
				if (IFXFAILURE(result)) printf("Render failed with 0x%08x\n", result);
			}

			//calculate frame rate
			if (IFXSUCCESS(result))
			{
			   static int t0 = -1;
			   static int frames = 0;
			   struct timezone tZone;
			   struct timeval tVal;
			   gettimeofday(&tVal, &tZone);

			   if (t0 < 0)
				  t0 = tVal.tv_sec;

			   frames++;

			   if (tVal.tv_sec - t0 >= 5.0) {
				  GLfloat seconds = tVal.tv_sec - t0;
				  GLfloat fps = frames / seconds;
				  printf("%d frames in %3.1f seconds = %6.3f FPS\n", frames, seconds,
						 fps);
				  t0 = tVal.tv_sec;
				  frames = 0;
			   }

			   IFXVector3 pivotPoint;
			   IFXMatrix4x4 viewMatrix;

			   pivotPoint.Set(0.0f, 0.0f, 0.0f);
			   viewMatrix = (IFXMatrix4x4)pView->GetMatrix(0);

			   result = RotateView(0.1, 0.1, FALSE, FALSE, pivotPoint, &viewMatrix);
			   if (IFXFAILURE(result)) printf("RotateView failed with 0x%08x\n", result);

			   if (IFXSUCCESS(result))
				  result = pView->SetMatrix(0, &viewMatrix);
			}

		}
     }
    printf("Exiting main loop, result: 0x%08x\n", result);

	IFXRELEASE(pView);
	IFXCOMUninitialize();

	if (dpy)
	{
		XFree(visinfo);
		XDestroyWindow(dpy, win);
		XCloseDisplay(dpy);
	}

        if (IFXFAILURE(result))
        {
                printf("Error: winXPlayer failed with result 0x%08x\n", result);
        }

        return result;
}
}
