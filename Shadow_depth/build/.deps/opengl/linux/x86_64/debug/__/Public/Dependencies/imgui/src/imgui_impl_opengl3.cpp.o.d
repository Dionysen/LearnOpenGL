{
    depfiles_gcc = "imgui_impl_opengl3.o:  ../Public/Dependencies/imgui/src/imgui_impl_opengl3.cpp  ../Public/Dependencies/imgui/include/imgui.h  ../Public/Dependencies/imgui/include/imconfig.h  ../Public/Dependencies/imgui/include/imgui_impl_opengl3.h  ../Public/Dependencies/imgui/include/imgui_impl_opengl3_loader.h\
",
    files = {
        "../Public/Dependencies/imgui/src/imgui_impl_opengl3.cpp"
    },
    values = {
        "/usr/bin/gcc",
        {
            "-m64",
            "-g",
            "-O0",
            "-I../Public/include",
            "-I../Public/Dependencies/glad/include",
            "-I../Public/Dependencies/stb_image/include",
            "-I../Public/Dependencies/imgui/include",
            "-isystem",
            "/home/dionysen/.xmake/packages/g/glm/0.9.9+8/65b1ad153bda4a43b0454eba7969327f/include",
            "-isystem",
            "/usr/include/python3.11",
            "-isystem",
            "/usr/include/minizip"
        }
    }
}