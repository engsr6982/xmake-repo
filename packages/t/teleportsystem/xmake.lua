package("teleportsystem")
    set_homepage("https://github.com/engsr6982/TeleportSystem")

    -- <Version, CommitHash>
    add_urls("https://github.com/engsr6982/TeleportSystem.git")
    add_versions("0.12.0", "ff515c84c56c9fca440ce8ccf89c4d8e2ace5460")

    on_install(function (package)
        import("core.base.semver")
        cprint(
            "${bright green}info: ${clear}Downloading TeleportSystem SDK for release: ${bright cyan}" .. version .. "${clear}"
        )
        import("package.tools.xmake").install(package)
    end)