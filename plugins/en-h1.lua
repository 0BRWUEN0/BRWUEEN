do

local function run(msg, matches)
if is_momod(msg) and matches[1]== "h 1" then
return [[ 
الاوامر العامه او الرئيسية
××××××××××××××××××
  ✔️ Group Promote  commands
⚪️ setadmin : رفع ادمن في المجموعة
⚪️ deadmin : حذف ادمن في المجوعة
⚪️ promote : رفع ادمن
⚪️ demote : حذف ادمن
⚪️ spromote : اضافة #مدير
⚪️ modlist : لاظهار ادمنية المجموعة
⚪️ admins : اضهار اداريين المجموعه
⚪️ setusername : لوضع معرف للكروب
🔸➖🔹➖🔸➖🔹➖🔸
~الاوامر الخاص بلطرد ولحظر
✅ Commands for control membee
⚪️ kick : لطرد العضو
⚪️banall : لحظر العضو عام
⚪️unbanall : لحظر العضو عام
⚪️ ban : لحظر العظر
⚪️ unban : فتح الخظر عن العضو
⚪️ kickme : للخروج من المجموعة
⚪️ silent : لتفعيل الصمت على احد الاعضاء
⚪️ clean mutelist: الغاء الصمت على العضو
⚪️ block : لحضر الكلمة
⚪️ words : لعرض الكلمات المحظورة
⚪️ unblock : لفتح حضر الكلمة
⚪️ me : لمعرفه موقعك في المجموعة
🔸➖🔹➖🔸➖🔹➖🔸
~الاوامر الخاص للمجموعة
✅ Commands for control
⚪️ rules : لاضهار القوانين
⚪️ setrules : لاظافة القوانين
⚪️ setphoto : لوضع صورة
⚪️ setname : لوضع اسم 
⚪️ about : لاضهار الوصف
⚪️ setabout : لاظافة الوصف
⚪️ id : لاظهار الايدي
⚪️ in : لاظهار ايدي الشخص بلرد
⚪️ settings : اضهار اعدادات المجموعة
⚪️ info : اضهار المعلومات الخاصه بك
⚪️ info group : اضهار المعلومات الخاصه بالمجموعة
⚪️ s group : اضهار اعادادات المجموعة الثانية
⚪️ newlink : لصنع الرابط او تغيرة
⚪️ linkpv : للحصول على الرابط في الخاص
•°•°•°•°•°•°•°•°•°•°•°•°•°•°•°•°•°•°•°•°•°•°•°•°
للتوصيل 
#المطور @devss_bot
#كروب_دعم @sunbot_dev
]]
end

if not is_momod(msg) then
return "مو شغلك يله دعبل 😎🖕🏿"
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"(h 1)"
},
run = run 
}
end