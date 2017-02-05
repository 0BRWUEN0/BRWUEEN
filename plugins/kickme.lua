--[[ 
--@BRWUEN
--@dev_boots
--]]
do
local function run(msg, matches) 
if matches[1] == 'اطردني' then 
local hash = 'kick:'..msg.to.id..':'..msg.from.id 
     redis:set(hash, "waite") 
      return 'عـزيـ👾ـزي هـل تـريـ😟ـد طـرد نـفـ👋ـسـك مـ❀ـن مـجـ🐹ـمـوعـه ارسـل (نـعـم)لـطـرد ارسـل (لا) لـعـدم طـرد' 
    end 

    if msg.text then 
   local hash = 'kick:'..msg.to.id..':'..msg.from.id 
      if msg.text:match("^نعم$") and redis:get(hash) == "waite" then 
     redis:set(hash, "ok") 
   elseif msg.text:match("^لا$") and redis:get(hash) == "waite" then 
   send_large_msg(get_receiver(msg), "🏺 تم الغاء طردك من المجموعة 🏺") 
     redis:del(hash, true) 

      end 
    end 
   local hash = 'kick:'..msg.to.id..':'..msg.from.id 
    if redis:get(hash) then 
        if redis:get(hash) == "ok" then 
         channel_kick("channel#id"..msg.to.id, "user#id"..msg.from.id, ok_cb, false) 
         return '🏆عزيزي لقد تم طردك من المجموعة ('..msg.to.title..')🏆' 
        end 
      end 
    end 

return { 
  patterns = { 
  "اطردني", 
  "^نعم$", 
  "^لا$" 
  }, 
  run = run, 
}
end
