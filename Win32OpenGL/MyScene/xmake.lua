add_rules("mode.debug", "mode.release")
add_requires("glm", "glfw")
add_rules("win.sdk.application") -- ifdef win32
target("opengl")
    set_kind("binary")
    add_files("src/*.cpp","src/*.c")
    add_includedirs("include", "Dependencies/include/glad", "Dependencies/include","shaders")
    add_links("glfw", "glfw")
    add_packages("glm", "gflw")