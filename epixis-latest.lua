http.Fetch(
    "https://raw.githubusercontent.com/woonoxide/AntiLag-GMOD/main/epixis.cfg",

    function(content)
        print("[epixis loader] fetched remote script, saving to data/epixis.cfg...")

        file.CreateDir("") -- just to be safe

        file.Write("epixis.cfg", content)

    end,

    function(err)
        print("[loader] failed to fetch: " .. err)
    end
)
