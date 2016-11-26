--[[
--@BRWUEN
--@dev_boots
—]]
do 
local function run(msg, matches) 
if ( msg.text ) then
  if ( msg.to.type == "user" ) then
     return [[
اهلا بكم في سورس 

🎗للتحدث مع المطورين راسل احدهم🎗

🎗 1. @dev_boots
 
🎗2. @BRWUEN
  
🎗3. @Hassonnyy
 
🎗4. @lBRWUEN_BOT

🎗5. @brwen 
▫️➖▫️➖▫️➖▫️➖▫️➖▫️
تابع قناة السورس لتطوير بوتك @dev_boots
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