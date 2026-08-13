package("imgui_color_text_edit")
    set_homepage("https://github.com/engsr6982/ImGuiColorTextEdit")
    set_urls("https://github.com/engsr6982/ImGuiColorTextEdit.git")
    set_license("MIT")

    add_deps("imgui 1.92.7-docking")

    on_install(function (package) 
        local imgui = package:dep("imgui")
        local configs = imgui:requireinfo().configs
        if configs then
            configs = string.serialize(configs, {strip = true, indent = false})
        end
        io.writefile("xmake.lua", format([[
            add_rules("mode.debug", "mode.release")

            add_requires("imgui %s", {configs = %s})
            add_packages("imgui")

            target("imgui_color_text_edit")
                set_kind("$(kind)")
                set_languages("c++17")

                add_files(
                    "TextEditor.cpp",
                    "TextDiff.cpp"
                )
                add_headerfiles("*.h")

                if is_plat("windows") and is_kind("shared") then
                    add_rules("utils.symbols.export_all", {export_classes = true})
                end
        ]], imgui:version_str(), configs))
        import("package.tools.xmake").install(package)
    end)
