--[[
--@BRWUEN
--@vip_api
—]]
do 
local function run(msg, matches) 
if ( msg.text ) then
  if ( msg.to.type == "user" ) then
     return [[مہـ†ـًرـحّبـ℘ـِأ أنــہٰ⇣ـأ بـ℘ـِوُِِتً ألــحّمہـ†ـًأيّــﮩًٍ✺ٍَﮩـ✿ـٍٍّهہـء 
     
     تواصل مع مطور سورس 
    ⸽ @BRWUEN
    ⸽ @BRWUEN_BOT
    
    تہٍـﮧ௸ِـِۣـّ̐ہٰأبہعً قنــہٰ⇣ـأِِتًنــہٰ⇣ـأ 💥۶ֆᵛ͢ᵎᵖ ⌯﴾❥

┋༿ @vip_api ༾┋
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
