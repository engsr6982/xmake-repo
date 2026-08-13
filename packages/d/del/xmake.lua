package("del")
    set_homepage("https://github.com/engsr6982/del")
    set_urls("https://github.com/engsr6982/del.git")

    add_configs("with_editor", {default = false})

    add_deps("nlohmann_json")

    on_load(function (package) 
        local editor_deps = {
            ["imgui 1.92.7-docking"] = {configs = { opengl3 = true, glfw = true }},
            ["glew 2.2.0"] = {},
            ["imgui_color_text_edit"] = {}
        }

        local with_editor = package:config("with_editor")
        if with_editor then
            for name, config in pairs(editor_deps) do
                package:add("deps", name, config)
            end
        end
    end)

    on_install(function (package)
        local configs = {}

        local with_editor = package:config("with_editor")
        if with_editor then
            configs = {"-DDEL_WITH_EDITOR=ON"}
        end

        import("package.tools.cmake").install(package, configs)
    end)
