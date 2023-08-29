{
    depfiles_gcc = "glad.o: src/glad.c Dependencies/include/glad/glad.h  Dependencies/include/glad/../KHR/khrplatform.h\
",
    files = {
        "src/glad.c"
    },
    values = {
        "/usr/bin/gcc",
        {
            "-m64",
            "-fvisibility=hidden",
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