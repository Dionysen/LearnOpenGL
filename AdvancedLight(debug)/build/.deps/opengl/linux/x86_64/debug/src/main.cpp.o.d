{
    files = {
        "src/main.cpp"
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
            "/usr/include/minizip",
            "-isystem",
            "/usr/include/python3.11"
        }
    },
    depfiles_gcc = "main.o: src/main.cpp ../Public/Dependencies/glad/include/glad.h  ../Public/Dependencies/glad/include/khrplatform.h  ../Public/include/model.h  ../Public/Dependencies/stb_image/include/stb_image.h  ../Public/include/mesh.h ../Public/include/shader.h  ../Public/include/shader.h ../Public/Dependencies/imgui/include/imgui.h  ../Public/Dependencies/imgui/include/imconfig.h  ../Public/Dependencies/imgui/include/imgui_impl_glfw.h  ../Public/Dependencies/imgui/include/imgui_impl_opengl3.h  ../Public/include/camera.h\
"
}