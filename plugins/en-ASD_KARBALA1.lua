--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY SAJJAD NOORI                   ▀▄ ▄▀ 
▀▄ ▄▀     BY SAJAD NOORI (@SAJJADNOORI)    ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY SAJJAD NOORI          ▀▄ ▄▀   
▀▄ ▄▀          help1  : مساعدة             ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do

local function run(msg, matches)
if is_momod(msg) and matches[1]== "help1" then
return [[  ❣ setadmin : لرفع اداري للمجموعه
❣ demoteadmin  : لتنزيل اداري من المجموعه
❣ promote  : لرفع او تصعيد ادمن
❣ demote  : لتنزيل او حذف الادمن
❣ owner : لعرض المدير
❣ modlist  : لاظهار ادمنية المجموعة
❣ admins : اضهار اداريين المجموعه
🔸➖🔹➖🔸➖🔹➖🔸
✔️ Commands for control membee
❣ kick : لطرد العضو
❣ ban : لحظر العظر
❣ unban : فتح الخظر عن العضو
❣ kickme : للخروج من المجموعة
❣ silent : لتفعيل الصمت على احد الاعضاء
❣ clean mutelist: الغاء الصمت على العضو
❣ block : لحضر الكلمة
❣ words : لعرض الكلمات المحظورة
❣ unblock : لفتح حضر الكلمة
❣ me : لمعرفه موقعك في المجموعة
🔸➖🔹➖🔸➖🔹➖🔸
✔️ Commands for control
❣ rules : لاضهار القوانين
❣ setrules : لاظافة القوانين
❣ setphoto : لوضع صورة
❣ setname : لوضع اسم
❣ setusername : لوضع معرف للكروب 
❣ setabout : لاظافة الوصف
❣ id : لاظهار الايدي
❣ settings : اضهار اعدادات المجموعة
❣ info : اضهار المعلومات الخاصه بك
❣ info group : اضهار  معلومات المجموعة
❣ settings modes : اضهار اعادادات الوسائط 
❣ newlink : لصنع الرابط او تغيرة
❣ link : لضهور رابط المجموعه
❣ setlink : لوضع رابط للمجموعه
❣ linksl : للحصول على الرابط في الخاص
🔸➖🔹➖🔸➖🔹➖🔸
✔️ Commands for Security 
❣ lock all :  لقفل المجموعه باكملها
❣ unlock all : لفتح المجموعه باكملها
❣ lock member : لقفل اضافة المجموعة
❣ unlock member : للفتح اضافة المجموعة
❣ lock text : لقفل دردشة المجموعة
❣ unlock text : فتح الدردشه 
❣ lock photo : لمنع إرسال الصور 
❣ unlock photo : للسماح بإرسال الصور 
❣ lock audio : لمنع البصمات 
❣ unlock audio : للسماح بإرسال البصمات 
❣ lock video : لمنع ارسال فديو 
❣ unlock video : للسماح بإرسال فديو 
❣ lock links : لمنع الروابط 
❣ unlock links : للسماح بإرسال روابط
❣ lock flood : لمنع التكرار 
❣ unlock flood : للسماح بلتكرار 
❣ lock sticker : لمنع الملصقات 
❣ unlock sticker : للسماح بلملصقات
❣ lock gifs : لمنع الصور المتحركة
❣ unlock gifs : للسماح بالصور المتحركة
❣ lock documents : لمنع ارسال الملفات 
❣ unlock documents : للسماح بإرسال الملفات 
❣ lock spam : لمنع الكلايش الطويلة
❣ unlock spam : للسماح بلكلايش الطويلة
❣ lock rtl : لمنع اطافة جماعة
❣ unlock rtl : للسماح بإضافة جماعة
❣ lock arabic : لمنع اللغة ألعربيه 
❣ unlock arabic : للسماح بلغه ألعربيه
❣ lock fwd : لمنع اعاديت توجيه 
❣ unlock fwd : للسماح باعادت توجيه
🔸➖🔹➖🔸➖🔹➖🔸


 Version :1.0
#Dev : @SAJJADNOORI
#Dev_bot : @S94_BOT
#Dev_Channel : @S94IQ
]]
end

if not is_momod(msg) then
return "Only admins 😎🖕🏿"
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"(help1)"
},
run = run 
}
end