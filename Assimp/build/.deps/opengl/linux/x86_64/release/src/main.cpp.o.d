{
    values = {
        "/usr/bin/gcc",
        {
            "-m64",
            "-fvisibility=hidden",
            "-fvisibility-inlines-hidden",
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
        "src/main.cpp"
    },
    depfiles_gcc = "main.o: src/main.cpp Dependencies/glad/glad.h  Dependencies/glad/khrplatform.h include/camera.h include/model.h  include/../Dependencies/include/stb_image.h include/mesh.h  include/shader.h include/shader.h\
"
}