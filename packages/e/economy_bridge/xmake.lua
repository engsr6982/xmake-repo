package("economy_bridge")
    set_license("LGPL-3.0")
    set_homepage("https://github.com/engsr6982/EconomyBridge")

    -- <Version, CommitHash>
    add_urls("https://github.com/engsr6982/EconomyBridge.git")

    on_install(function (package)
        import("package.tools.xmake").install(package)
    end)