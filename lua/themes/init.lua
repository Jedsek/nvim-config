local themes = {
    "nightfox",
}

for _, theme in pairs(themes) do
    require ("themes."..theme)
end
