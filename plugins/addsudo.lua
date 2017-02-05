--[[ 
--@BRWUEN
--@dev_boots
--]]
do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
 if matches[1] == 'اضف مطور' then
        chat = 'chat#'..msg.to.id
        user1 = 'user#'..18293081
        chat_add_user(chat, user1, callback, false)
	return "تــ😉ــم اضـ😋ـافـه هـ✔ـذا الــمـ😎ــطـور الـ👏ـى الــمـجـ👾ــمــوعــ🦋ــه"
      end
if matches[1] == 'اضف مطور' then
        chat = 'chat#'..msg.to.id
        user2 = 'user#'..18293081
        chat_add_user(chat, user2, callback, false)
	return "تــ😉ــم اضـ😋ـافـه هـ✔ـذا الــمـ😎ــطـور الـ👏ـى الــمـجـ👾ــمــوعــ🦋ــه"
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
-- arabic : @dev_boots

end
