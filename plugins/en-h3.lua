--[[
# For More Information ....! 
# Developer : Aziz < @devss_bot >      #Dev
# our channel: @help_tele
]]
do

local function run(msg, matches)
if is_momod(msg) and matches[1]== "h 3" then
return [[
✅الاوامر الخاصه للمطورين
🔸➖🔹➖🔸➖🔹➖🔸
🔸 voice : الكلمة المراد نطقها

🔸add : لتفعيل البوت في المجموعه

🔸rem : الغاء تفعيل البوت

🔴 text : الكلمة المراد ارسال صورة لها
 
 🔴 feed : الكلمة المراد ارسالهه لمجموعة دعم البوت

🔴 weather : لمعرفة الطقس

🔴 me : لمعرفة موقعك في المجموع

🔴 insta : للبحث على حساب انستا معين

� broadcast + الرساله اذاعه على المجموعات فيها البوت

🔴 sticker : قم بارسال صورة وقم بلرد عليها بكلمة لجعلها ملسق

🔴 image : قم بارسال ملسق وقم بالرد  عليه لجعلها صورة

🔴 azan : + البلد لمعرفة اوقات الاذان 

🔴creategroup + الاسم لصنع مجموعه جديد و خارقة 

🔴 map + البلد لمعرفه لظهار خريطه المحدده

🔴 addbot + الرابط  لدخول البوت عن طريق الرابط 

مساعدة لظهار ىالاوامر الرئيسية 
🔸➖🔹➖🔸➖🔹➖🔸
#المطور 
@devss_bot
كروب دعم البوت
@sunbot_dev
]]
end

if not is_momod(msg) then
return " للمشرفين فقط يله دعبل 😎🖕🏿"
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"(h 3)"
},
run = run 
}
end