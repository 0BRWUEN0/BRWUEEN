--[[ 
$ :) 
-- - ( @Hassonnyy ) - -- 
$ :) 
-- - ( @BRWUEN ) - -- 
$ :) 
--Channel-( @dev_boots )-- 
$ :) 
]]-- 
do 

local function BRWUEN(msg, matches) 
if is_sudo(msg) then 
        local text = "أنـت مـطـور الـبـؤت ياعزيزي🕵🔧".."\n".."🆔 - أيـۧديـۧک هوة : "..msg.from.id.."\n".."🏧- أســمـك هوة: "..msg.from.first_name.."\n".."🚸- مــعــرفــك هوة: @"..msg.from.username.."\n".."©- أســم ألـمـجـمـوعـة هوة: "..msg.to.title.."\n"..'📱 - رقـۖـمـۗـک هوة : '..(msg.from.phone or "لُايَوَجْدِ ⛔️‼️")
        return reply_msg(msg.id, text, ok_cb, false) 
     end 
if is_momod(msg) then 
        local text = "أنـت أدمــن ألـكـروب ياعزيزي🛳⚓️".."\n".."🆔 - أيـۧديـۧک هوة : "..msg.from.id.."\n".."🏧- أســمـك هوة : "..msg.from.first_name.."\n".."🚸- مــعــرفــك هوة : @"..msg.from.username.."\n".."©- أســم ألـمـجـمـوعـة هوة : "..msg.to.title.."\n"..'📱 - رقـۖـمـۗـک هوة : '..(msg.from.phone or "لُايَوَجْدِ ⛔️‼️")
        return reply_msg(msg.id, text, ok_cb, false) 
     end 
if not is_momod(msg) then 
        local text = "أنـت عـضـوو ياعزيزي😹💙".."\n".."🆔 - أيـۧديـۧک هوة : "..msg.from.id.."\n".."🏧- أســمـك هوة: "..msg.from.first_name.."\n".."🚸- مــعــرفــك هوة: @"..msg.from.username.."\n".."©- أسـم ألـمـجـمـوعـة هوة: "..msg.to.title.."\n"..'📱 - رقـۖـمـۗـک هوة : '..(msg.from.phone or "لُايَوَجْدِ ⛔️‼️")
        return reply_msg(msg.id, text, ok_cb, false) 
     end 
if is_owner(msg) then 
        local text = "أنـت مــديــر ألـكـروب ياعزيزي 🤖🤘🏼".."\n".."🆔 - أيـۧديـۧک هوة : "..msg.from.id.."\n".."🏧- أســمـك هوة: "..msg.from.first_name.."\n".."🚸- مــعــرفــك هوة : @"..msg.from.username.."\n".."©- أســم ألـمـجـمـوعـة هوة: "..msg.to.title.."\n"..'📱 - رقـۖـمـۗـک هوة : '..(msg.from.phone or "لُايَوَجْدِ ⛔️‼️")
        return reply_msg(msg.id, text, ok_cb, false) 
     end 
     end 

return { 
  patterns = { 
       "^(موقعي)$", 
  }, 
  run = BRWUEN, 
} 

end 

-- BY - @BRWUEN
