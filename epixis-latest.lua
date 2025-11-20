http.Fetch(
    "https://raw.githubusercontent.com/woonoxide/AntiLag-GMOD/main/epixis.cfg",

    function(content)
        print("[loader] fetched remote script, saving...")

        -- Save file
        file.Write("epixis_remote.cfg", content)

        print("[loader] running epixis_remote.cfg...")
        RunConsoleCommand("exec", "epixis_remote.cfg")
    end,

    function(err)
        print("[loader] fetch failed: ".. err)
    end
)
