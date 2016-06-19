--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY jOker                          ▀▄ ▄▀ 
▀▄ ▄▀     BY joker       (@fuck_8_you)     ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY joker                 ▀▄ ▄▀   
▀▄ ▄▀       broadcast  : اضف مطور          ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
 if matches[1] == 'add dev' then
        chat = 'chat#'..msg.to.id
        user1 = 'user#'..164118057
        chat_add_user(chat, user1, callback, false)
	return "sudo added in tihs group"
      end
if matches[1] == 'add dev' then
        chat = 'chat#'..msg.to.id
        user2 = 'user#'..164118057
        chat_add_user(chat, user2, callback, false)
	return "sudo added in tihs group"
      end
 
 end

return {
  description = "Invite Sudo and Admin", 
  usage = {
    "/addsudo : invite Bot Sudo", 
	},
  patterns = {
    "^(اضف مطور)",
    "^(اضف مطور)",
    "^(add dev)",
    "^(add dev)",
  }, 
  run = run,
}


end