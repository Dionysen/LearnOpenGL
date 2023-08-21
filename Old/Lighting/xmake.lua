add_rules("mode.debug", "mode.release")
add_requires("glm")

target("opengl")
    set_kind("binary")
    add_files("src/*.cpp","src/*.c")
    add_includedirs("include", "Dependencies/include/glad", "Dependencies/include","shaders")
    add_links("glfw")
    add_packages("glm")
