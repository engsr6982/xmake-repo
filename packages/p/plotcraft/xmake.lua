package("plotcraft")
    set_homepage("https://github.com/engsr6982/PlotCraft")

    add_urls("https://github.com/engsr6982/PlotCraft/releases/download/v$(version)/SDK-PlotCraft.zip", "https://github.com/engsr6982/PlotCraft.git")
    add_versions("0.1.1", "e01bb05f3125d8a2c925cddd5db66e8e557f357c5c5f6ff7199348bd2e15077e")
    add_versions("0.1.2", "bef4b0efce8a710948f59bc2052b8352242174afb7de88a4e9ba17a5c86eb993")
    add_versions("0.2.0", "d06c2727ae2d949f75e46de8877dee3af578be63b1207004c0fcd725ffcf2110")
    add_versions("0.3.0", "3f44b614ff77b51d37a3823f3b6b2c072573ec69e043678911e005725d80d35e")
    add_versions("0.4.0", "062d07181c0b1972fc77ce3852ff0bf75c79f9666077bb51af350ba200377255")
    add_versions("0.4.1", "c2177c35749b53caa7d804d721ebee0f087345e8378413e1bee2a35abcbd0152")
    add_versions("0.5.0", "d4145d88b34781ea846e9b60cbded71bc4d8eb0e418cb93de9f9b9ddc68ff63b")
    add_versions("0.5.1", "95ae7ac5d83b31d01db389ffbec4649bea2b1643231663ea61a8cd605313fe8f")
    add_versions("0.6.0", "0bb24a0a3ba1240f7fb4964a1e35b41b94dcab027b2d8d5946770edae390fd9d")
    add_versions("0.6.1", "6667b7f72de81e0d11ed5361cdbc14bce4ce78b9a7eea4e1d387be261de8b39a")
    add_versions("1.0.0", "3810fae436a06210ba2cac552c39b71ecc5814091c81dbe10bf7c6163802e880")
    add_versions("1.0.1", "8f33d53772b0b85f86b025fff3cab9f30d0b93f599d3b74bce2c39eb0a221235")
    add_versions("1.0.2", "a6baf023ad3b2824a8ba336486ff7d3551578f07bfcda190555716de1dd6d7dd")

    on_install(function (package)
        os.cp("include", package:installdir())
        os.cp("lib/*.lib", package:installdir("lib"))
    end)