{
    files = {
        "../Public/Dependencies/imgui/src/imgui_demo.cpp"
    },
    depfiles_gcc = "imgui_demo.o: ../Public/Dependencies/imgui/src/imgui_demo.cpp  ../Public/Dependencies/imgui/include/imgui.h  ../Public/Dependencies/imgui/include/imconfig.h\
",
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