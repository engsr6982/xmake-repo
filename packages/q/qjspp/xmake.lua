package("qjspp")
    set_license("Apache-2.0")
    set_homepage("https://github.com/engsr6982/qjspp")

    -- <Version, CommitHash>
    add_urls("https://github.com/engsr6982/qjspp.git")
    add_versions("0.1.0", "d322af3e4fe397654664cbc02a1708b44c738977")
    add_versions("0.2.0", "8103382d1512d52aabca894353e7fe274a6ebc2e")

    on_load(function (package)
        package:add("deps", "quickjs-ng 3c9afc9943323ee9c7dbd123c0cd991448f4b6c2", { configs={ libc=true } })
    end)

    on_install(function (package)
        import("package.tools.xmake").install(package)
    end)