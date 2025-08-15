package("qjspp")
    set_license("Apache-2.0")
    set_homepage("https://github.com/engsr6982/qjspp")

    -- <Version, CommitHash>
    add_urls("https://github.com/engsr6982/qjspp.git")
    add_versions("0.1.0", "d322af3e4fe397654664cbc02a1708b44c738977")

    on_install(function (package)
        import("package.tools.xmake").install(package)
    end)