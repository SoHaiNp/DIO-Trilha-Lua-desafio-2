local Utils = {}

function Utils.enableUtf8()
    os.execute("chcp 65001")
end

return Utils