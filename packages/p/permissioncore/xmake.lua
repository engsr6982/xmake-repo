package("permissioncore")
    set_homepage("https://github.com/engsr6982/PermissionCore")

    add_urls("https://github.com/engsr6982/PermissionCore/releases/download/v$(version)/SDK-PermissionCore.zip", "https://github.com/engsr6982/PermissionCore.git")
    add_versions("0.6.0", "8d8c0b045fc5907d72cc232e1a75ec21e0de62b7d734f6637ca35028f292716a")
    add_versions("0.6.1", "56d01a7a9422fb489a8f5fb31a84660f18ceec29626721e03950b5ade88ae675")
    add_versions("0.6.2", "a4a7edbc8b60290910affbcc76f6a983d86d2ec1b440bda48bdca7f4a41cb176")
    add_versions("0.7.0", "c8625d7991957e7f46350b87e2c6358047b06dabefd865399d65e1a70760d01b")
    add_versions("0.8.0", "7bedb1668a9610ce6626432f73b91026209eb254cebec2615b62e7a47c663d69")
    add_versions("0.9.0", "451d378aa2b71f57079740e082a2e2ec38cdac5711acc0d475350299213d9f55")
    add_versions("0.10.0", "5628f9cde26e509bc97789c60284f03e3069afbf830bcdc5f5e24710be9384ca")
    add_versions("0.10.1", "c626fa4ff421e5e3a2b84986f9135fa6e1961c65746ca7147601993629e379fc")
    add_versions("0.10.2", "b9e03cac738a9d1fae226ed65a556c72878e385deaf21c42ec53529e1aea7d61")

    on_install(function (package)
        os.cp("include", package:installdir())
        os.cp("lib/*.lib", package:installdir("lib"))
    end)
