{
    files = {
        [[build\.objs\opengl\windows\x64\debug\src\main.cpp.obj]],
        [[build\.objs\opengl\windows\x64\debug\src\glad.c.obj]]
    },
    values = {
        [[C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.36.32532\bin\HostX64\x64\link.exe]],
        {
            "-nologo",
            "-dynamicbase",
            "-nxcompat",
            "-machine:x64",
            [[-libpath:C:\Users\zhaoys-c\AppData\Local\.xmake\packages\g\glfw\3.3.8\d12e591897c9472fb7d3725fa5811388\lib]],
            "-debug",
            [[-pdb:build\windows\x64\debug\opengl.pdb]],
            "glfw3.lib",
            "opengl32.lib",
            "user32.lib",
            "shell32.lib",
            "gdi32.lib"
        }
    }
}