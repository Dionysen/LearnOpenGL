{
    depfiles_gcc = "main.o: src/main.cpp Dependencies/include/glad/glad.h  Dependencies/include/glad/../KHR/khrplatform.h  Dependencies/include/stb_image.h include/camera.h include/shader.h  Dependencies/include/glad/glad.h\
",
    files = {
        "src/main.cpp"
    },
    values = {
        "/usr/bin/gcc",
        {
            "-m64",
            "-fvisibility=hidden",
            "-fvisibility-inlines-hidden",
            "-O3",
            "-Iinclude",
            "-IDependencies/include/glad",
            "-IDependencies/include",
            "-Ishaders",
            "-isystem",
            "/home/dionysen/.xmake/packages/g/glm/0.9.9+8/65b1ad153bda4a43b0454eba7969327f/include",
            "-DNDEBUG"
        }
    }
}