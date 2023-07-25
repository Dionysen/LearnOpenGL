add_rules("mode.debug", "mode.release")
add_requires("glm")

target("opengl")
    set_kind("binary")
    add_files("src/*.cpp","Dependencies/glad/glad.c")
    add_includedirs("include", "Dependencies/glad", "Dependencies/include","shaders")
    add_links("glfw", "assimp")
    add_packages("glm")