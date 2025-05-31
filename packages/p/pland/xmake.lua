package("pland")
    set_license("AGPLv3")
    set_homepage("https://github.com/engsr6982/PLand")

    -- 旧方案，使用 SDK.zip 包
    add_urls("https://github.com/engsr6982/PLand/releases/download/v$(version)/SDK-PLand.zip", {alias = "A"})
    add_versions("A:0.0.3", "0e63d412242e61f20194fb3a47541e39bf42c0a04ee38edc135c868cf9d8c13d")
    add_versions("A:0.1.0", "313aeaea5296f3bdfb514f96a1d11a3d661408897d3beb8d18f3fda2afd591ae")
    add_versions("A:0.2.0", "b29b5b44560de20b84cc9c53df34c90078f3b2eb596b38b732fba92f16954bad")
    add_versions("A:0.2.1", "f4a5ee16fa2336b795f25086dfed96a7c09690dddaf4c48c4b78f100cd6ca63e")
    add_versions("A:0.2.2", "b47397a5437e1cf14d519fe3ef5ec2b7ce447368c6303f0d1c6627b601680c17")
    add_versions("A:0.2.3", "33bc973c0a70736dbd67509891a9ce3bc006c938af967111d8c8d3247465b472")
    add_versions("A:0.2.4", "499338b93650fd6da7781f747106fdb2fc623897a0b131d483c203eb45c1e0ca")
    add_versions("A:0.2.5", "0e7f350454dee04f5a3a0dbbd47ce87f7bd89c831764606e0d04dc2af3f758d6")
    add_versions("A:0.3.0", "53aa9273aa626f79ae03a63a33bd6c95f658e3c929dc91e43a9e414a2d3a815b")
    add_versions("A:0.4.0-rc.1", "819e84857b16f72ff82d01919ddb2e9d51af024f90f5e30a9550a6d5adc3bfe3")
    add_versions("A:0.5.0", "c14e16fbcebb39165f15259de67dc73ff3cff04d4b33b149a9a00f705b6bc333")
    add_versions("A:0.6.0", "f10b9f47e3840fdd1dd3e0565422ff6da3f7b7d56443333824551734c09660c3")
    add_versions("A:0.7.0", "c4cd3451ed1b6269b49caea27cd512f9093b7ef342bbc3c9e9855ab649f13154")
    add_versions("A:0.7.1", "37d2dc3d2a24d2b83bc41acd82b76f9445f8dc3c6f87a1af5c98baf3c151c2ff")

    -- 新方案，从仓库拉取源码
    add_urls("https://github.com/engsr6982/PLand.git", {alias = "B"})


    on_install(function (package)
        local version_str = package:version_str()
        version_str = version_str or "unknown"

        local version = package:version()

        if version ~= nil then
            if version:major() == 0 and version:minor() <= 7 then
                -- 旧版本使用 SDK.zip
                cprint(
                    "${bright yellow}warning: ${clear}legacy version: ${bright cyan}"
                    .. version_str .. "${clear}, will use legacy SDK.zip to install."
                )
                os.cp("*", package:installdir())
            else
                -- 新版本使用源码安装
                cprint(
                    "${bright green}info: ${clear}The ${bright cyan}"
                    .. version_str .. "${clear} SDK is being pulled from the repository."
                )
                import("package.tools.xmake").install(package)
                os.cp("include", package:installdir())
            end
        else
            -- commit hash
            cprint(
                "${bright green}info: ${clear}Installing from commit: ${bright cyan}"
                .. version_str .. "${clear}"
            )
            import("package.tools.xmake").install(package)
            os.cp("include", package:installdir())
        end
    end)