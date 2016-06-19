--[[
# For More Information ....! 
# Developer : Aziz < @devss_bot >      #Dev
# our channel: @help_tele
]]
do

 function run(msg, matches)
 local ch = 'chat#id'..msg.to.id
 local fuse = 'Group Name : '..msg.to.title..'\n\nUser ID: ' .. msg.from.id .. '\nName: ' .. msg.from.print_name ..'\nUsername: @' .. msg.from.username ..'\n\nFrom Super Group ID: '..msg.to.id.. '\n\nMsg:\n' .. matches[1]
 local fuses = '!printf user#id' .. msg.from.id


   local text = matches[1]
   local chat = "channel#id"..1030043851 --تضع هنا ايدي مجموعت الدعم الخاصه بك

  local sends = send_msg(chat, fuse, ok_cb, false)
  return 'تم ارسال رسالتك الى مجموعة الدعم 🙂💕'

 end
 end
 return {

  description = "Feedback",

  usage = "feedback: Send A Message To Admins.",
  patterns = {
  "^feed (.*)$"

  },
  run = run
 }
--By Ww_Shahabsaf_wW