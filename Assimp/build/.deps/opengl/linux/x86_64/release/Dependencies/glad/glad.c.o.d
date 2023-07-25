{
    depfiles_gcc = "glad.o: Dependencies/glad/glad.c Dependencies/glad/glad.h  Dependencies/glad/khrplatform.h\
",
    values = {
        "/usr/bin/gcc",
        {
            "-m64",
            "-fvisibility=hidden",
            "-O3",
            "-Iinclude",
            "-IDependencies/glad",
            "-IDependencies/include",
            "-Ishaders",
            "-isystem",
            "/home/dionysen/.xmake/packages/g/glm/0.9.9+8/65b1ad153bda4a43b0454eba7969327f/include",
            "-DNDEBUG"
        }
    },
    files = {
        "Dependencies/glad/glad.c"
    }
}