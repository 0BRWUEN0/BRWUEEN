--[[
# For More Information ....! 
# Developer : Aziz < @devss_bot >      #Dev
# our channel: @help_tele
]]
do

local function run(msg, matches)
if is_momod(msg) and matches[1]== "مساعدة" then
return [[جميع الاوامر تعمل بدون الاشارات [!#/]❌
الاوامر العربيه فقط
■ (م 1) : اوامر الرئيسية

■ (م 2)   اوامر الطرد+الحظر+الكتم

■(م 3) : اوامر المطورين
〰〰〰〰〰〰〰〰
الاوامر النكليزية فقط

■ (h 1) : اوامر الرئيسية

■ (h 2)   اوامر الحماية  القفل+الفتح

■(h 3) : اوامر المطورين
⭐ 🔻🔺🔻🔺🔻🔺للتوصيل🔻🔺🔻🔺🔻 ⭐

🚨 Dev - : @devss_bot  ◐ ♺

]]
end

if not is_momod(msg) then
return "مو شغلك  😎🖕🏿"
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"(مساعدة)"
},
run = run 
}
end