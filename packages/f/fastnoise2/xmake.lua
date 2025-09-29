package("fastnoise2")
    set_license("MIT")
    set_homepage("https://github.com/Auburn/FastNoise2")
    add_urls("https://github.com/Auburn/FastNoise2.git")

    -- <Version, CommitHash>
    add_versions("0.10.0-alpha", "9b75083b87d5e391d43dc0c721d8a9fa51db735a")


    add_includedirs("include")

    add_deps("cmake")

    on_install(function (package)
        local configs = {
            "-DFASTNOISE2_TESTS=OFF",
            "-DFASTNOISE2_NOISETOOL=OFF"
        }
        table.insert(configs, "-DCMAKE_BUILD_TYPE=" .. (package:debug() and "Debug" or "Release"))
        table.insert(configs, "-DBUILD_SHARED_LIBS=" .. (package:config("shared") and "ON" or "OFF"))
        import("package.tools.cmake").install(package, configs)
    end)