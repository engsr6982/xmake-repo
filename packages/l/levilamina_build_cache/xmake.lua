local deps = {
    "expected-lite v0.7.0",
    "fmt 10.2.1",
    "gsl v4.0.0",
    "leveldb 1.23",
    "magic_enum v0.9.5",
    "nlohmann_json v3.11.3",
    "rapidjson v1.1.0",
    "ctre 3.8.1",
    "pcg_cpp v1.0.0",
    "pfr 2.1.1",
    "symbolprovider v1.1.0",
    "bdslibrary 1.20.81.01",
    "entt 3.13.2"
}

package("levilamina_build_cache")
    add_urls("https://github.com/engsr6982/LeviLamina_Build_Cache/releases/download/v$(version)/build.zip")
    add_versions("0.12.4", "f606fe2c3cb270c4f8896aa1209ed48578b69084d2be30e602c89933247eb790")

    on_load(function(package)
        for _, dep in ipairs(deps) do
            package:add("deps", dep)
        end
    end)

    on_install(function (package)
        os.cp("include", package:installdir())
        os.cp("lib/*.lib", package:installdir("lib"))
    end)