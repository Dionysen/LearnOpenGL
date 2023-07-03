#include "opengl.h"
#include <Windows.h>
#include <iostream>

LRESULT CALLBACK WndProc(HWND, UINT, WPARAM, LPARAM);

#if _DEBUG
#pragma comment(linker, "/subsystem:console")
int main(int argc, const char **argv)
{
  return WinMain(GetModuleHandle(NULL), NULL, GetCommandLineA(), SW_SHOWDEFAULT);
}
#else
#pragma comment(linker, "/subsystem:windows")
#endif

#pragma comment(lib, "opengl32.lib")

int WINAPI WinMain(_In_ HINSTANCE hinstance, _In_opt_ HINSTANCE hPrevInstance, _In_ PSTR szCmdLine, _In_ int ICmdShow)
{
  WNDCLASSEX wndclass{};
  wndclass.cbSize = sizeof(WNDCLASSEX);
  wndclass.style = 0;
  wndclass.style = CS_HREDRAW | CS_VREDRAW; // ACTIVATES RELOAD ON REDRAW
  wndclass.lpfnWndProc = WndProc;
  wndclass.cbClsExtra = 0;
  wndclass.cbWndExtra = 0;
  wndclass.hInstance = hinstance;
  wndclass.hIcon = LoadIcon(NULL, IDI_APPLICATION);
  wndclass.hIconSm = LoadIcon(NULL, IDI_APPLICATION);
  wndclass.hCursor = LoadCursor(NULL, IDC_ARROW);
  wndclass.hbrBackground = (HBRUSH)(COLOR_BTNFACE + 1);
  wndclass.lpszMenuName = 0;
  wndclass.lpszClassName = "OpenGL Window";

  RegisterClassEx(&wndclass);

  HWND hwnd = CreateWindowEx(
      0,
      wndclass.lpszClassName,
      "OpenGL Window",
      WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX | WS_MAXIMIZEBOX | WS_THICKFRAME,
      CW_USEDEFAULT,
      CW_USEDEFAULT, // 窗口左上角坐标为缺省值
      800,
      600, // 窗口的高度和宽度为缺省值
      NULL,
      NULL,
      hinstance,
      szCmdLine);

  HDC hdc = GetDC(hwnd);

  PIXELFORMATDESCRIPTOR pfd;

  memset(&pfd, 0, sizeof(PIXELFORMATDESCRIPTOR));
  pfd.nSize = sizeof(PIXELFORMATDESCRIPTOR);
  pfd.nVersion = 1;
  pfd.dwFlags = PFD_SUPPORT_OPENGL | PFD_DRAW_TO_WINDOW | PFD_DOUBLEBUFFER;
  pfd.iPixelType = PFD_TYPE_RGBA;
  pfd.cColorBits = 24;
  pfd.cDepthBits = 32;
  pfd.cStencilBits = 8;

  int pixelFormat = ChoosePixelFormat(hdc, &pfd);
  SetPixelFormat(hdc, pixelFormat, &pfd);

  HGLRC hrc = wglCreateContext(hdc);
  if (hrc)
  {
    wglMakeCurrent(hdc, hrc);
  }
  else
  {
    std::cout << "ERROR::HRC::CREATE_FAILED\n";
  }

  if (!gladLoadGL())
  {
    std::cout << "Could not initialize GLAD \n";
  }
  else
  {
    std::cout << "OpenGL Version " << GLVersion.major << std::endl;
  }

  if (!gladLoadGL())
  {
    std::cout << "Could not initialize GLAD \n";
  }
  else
  {
    std::cout << "OpenGL Version " << GLVersion.major << std::endl;
  }
  glEnable(GL_DEPTH_TEST);
  // Init OpenGL
  initOpenGL();
  // Shows window
  ShowWindow(hwnd, SW_SHOW);
  UpdateWindow(hwnd);

  MSG msg;
  while (true)
  {
    if (PeekMessage(&msg, NULL, 0, 0, PM_REMOVE))
    {
      if (msg.message == WM_QUIT)
      {
        break;
      }
      TranslateMessage(&msg);
      DispatchMessage(&msg);

      // render
      // ----------------------------------------------------------------
      render();
      SwapBuffers(hdc);
    }
  }
  return (int)msg.wParam;
}

LRESULT CALLBACK WndProc(HWND hwnd, UINT iMsg, WPARAM wParam, LPARAM lParam)
{
  switch (iMsg)
  {
  case WM_SIZE:
  {
    glViewport(0, 0, LOWORD(lParam), HIWORD(lParam));
    SwapBuffers(GetDC(hwnd));
    break;
  }

  case WM_CLOSE:
  {
    DestroyWindow(hwnd);
    break;
  }

  case WM_KEYDOWN:
  {
    if (wParam == VK_UP) // up
    {
      maxValue += 0.1f; // change this value accordingly (might be too slow or too fast based on system hardware)
      if (maxValue >= 1.0f)
        maxValue = 1.0f;
    }
    else if (wParam == VK_DOWN) // down
    {
      maxValue -= 0.1f; // change this value accordingly (might be too slow or too fast based on system hardware)
      if (maxValue <= 0.0f)
        maxValue = 0.0f;
    }
    else if (wParam == VK_LEFT) // left
    {
      rotation += 1.0f;
    }
    else if (wParam == VK_RIGHT) // right
    {
      rotation -= 1.0f;
    }
    break;
  }

  case WM_DESTROY:
  {
    HDC hdc = GetDC(hwnd);
    HGLRC hglrc = wglGetCurrentContext();

    glBindVertexArray(0);

    wglMakeCurrent(NULL, NULL);
    wglDeleteContext(hglrc);
    ReleaseDC(hwnd, hdc);
    PostQuitMessage(0);
    break;
  }
  default:
  {
    return DefWindowProc(hwnd, iMsg, wParam, lParam);
  }
  }
  return DefWindowProc(hwnd, iMsg, wParam, lParam);
}