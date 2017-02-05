--[[
--@BRWUEN
--@dev_boots
—]]
do 
local function run(msg, matches) 
if ( msg.text ) then
  if ( msg.to.type == "user" ) then
     return [[
اهـ💝ـلآ بـ🍄ـك يـا عـزيـ🌺ـزي

سـ🐿ـورس (🇧 🇷 🇼 🇺 🇪 🇳)

للتواصل مع مدير السورس ↶↶↶

💡 @BRWUEN
💡 @LBRWUEN_BOT


تابع قناتنا للبوتات وللتعليم ↶↶

☑️ @dev_boots @dev_boots

تابع قناتنا للبوتات وللتعليم ↺⇑↻
  ]]
    end 
  end 
end 
return { 
  patterns = { 
     "(.*)$"
  }, 
  run = run 
} 

end