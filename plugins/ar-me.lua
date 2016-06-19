do

local function joker(msg, matches)
if is_sudo(msg) then 
        local text = "✅- انت مطور  في الكون ".."\n".."🆔- ايدك/ج : "..msg.from.id.."\n".."🔖- اسمك/ج : "..msg.from.first_name.."\n".."🔤- المعرف : @"..msg.from.username.."\n".."🌐- اسم الكروب  "..msg.to.title --@DevPointTeam
        return reply_msg(msg.id, text, ok_cb, false)
     end
if is_momod(msg) then 
        local text = "✅- الادمن الخاص في المجموعات ".."\n".."🆔- ايدك/ج : "..msg.from.id.."\n".."🔖- اسمك/ج : "..msg.from.first_name.."\n".."🔤- المعرف : @"..msg.from.username.."\n".."🌐اسم الكروب  "..msg.to.title
        return reply_msg(msg.id, text, ok_cb, false)
     end
if not is_momod(msg) then 
        local text = "✅- عضو بايخ  في المجموعات ".."\n".."🆔- ايدك/ج : "..msg.from.id.."\n".."🔖- اسمك/ج : "..msg.from.first_name.."\n".."🔤- المعرف : @"..msg.from.username.."\n".."🌐- اسم الكروب "..msg.to.title
        return reply_msg(msg.id, text, ok_cb, false)
     end
if is_owner(msg) then 
        local text = "✅- المالك الخاص في المجموعات".."\n".."🆔- ايدك/ج : "..msg.from.id.."\n".."🔖- اسمك/ج : "..msg.from.first_name.."\n".."🔤- المعرف : @"..msg.from.username.."\n".."🌐- اسم الكروب  "..msg.to.title
        return reply_msg(msg.id, text, ok_cb, false)
     end
     end
return {  
  patterns = {
       "^(شنو اني)$",
  },
  run = joker,
}

end