{
    files = {
        "../Public/Dependencies/glad/src/glad.c"
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
    },
    depfiles_gcc = "glad.o: ../Public/Dependencies/glad/src/glad.c  ../Public/Dependencies/glad/include/glad.h  ../Public/Dependencies/glad/include/khrplatform.h\
"
}