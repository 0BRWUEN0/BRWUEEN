--[[
# For More Information ....! 
# Developer : Aziz < @devss_bot >      #Dev
# our channel: @help_tele
]]
do

local function run(msg, matches)
if is_momod(msg) and matches[1]== "h 2" then
return [[
🔸➖🔹➖🔸➖🔹➖🔸
الاوامر الحماية المجموعه (القفل+الفتح)
_________________________
 /o — للمنع, /c — للسماح
_________________________
🔒/o +  للقفل — الامر  
🔓/c + للفتح — الامر 
✅ Commands for Security 
🔸o member : لقفل اضافة المجموعة
🔸c member : للفتح اضافة المجموعة
🔸o text : لقفل دردشة المجموعة
🔸c text : فتح الدردشه 
🔸o photo : لمنع إرسال الصور 
🔸c photo : للسماح بإرسال الصور 
🔸o audio : لمنع البصمات 
🔸c audio: للسماح بإرسال البصمات 
🔸o viedo: لمنع ارسال فديو 
🔸c viedo: للسماح بإرسال فديو 
🔸o links: لمنع الروابط 
🔸c links: للسماح بإرسال روابط
🔸o flood: لمنع التكرار 
🔸c flood: للسماح بلتكرار 
🔸o sticker : لمنع الملصقات 
🔸c sticker : للسماح بلملصقات
🔸o gifs: لمنع الصور المتحركة
🔸c gifs: للسماح بالصور المتحركة
🔸o documents : لمنع ارسال الملفات 
🔸c documents : للسماح بإرسال الملفات 
🔸o spam : لمنع الكلايش الطويلة
🔸c spam : للسماح بلكلايش الطويلة
🔸o rtl : لمنع اطافة جماعة
🔸c rtl : للسماح بإضافة جماعة
🔸o arabic : لمنع اللغة ألعربيه 
🔸c arabic : للسماح بلغه ألعربيه
🔸o fwd : لمنع اعاديت توجيه 
🔸c fwd : للسماح باعادت توجيه
🔸o media: للسماح بلوسائط
🔸c media: لمنع بلوسائط
🔸o username :منع اليوزرنيم 
🔸c username :إلغاء تفعيل اليوزرنيم
🔸o emoji :منع السمايلات
🔸c emoji :إلغاء تفعيل السمايلات
🔸o reply :منع الردود
🔸c reply :إلغاء تفعيل الردود
🔸o badword :منع الكلمات السيئه
🔸c badword :السماح الكلمات السيئه
🔸o tgservice :منع الاشعارات الدخول
🔸c tgservice :إلغاء منع الاشعارات الدخول
🔸o strict :منع  الحماية
🔸c strict :إلغاء منع الحماية
🔸o join :منع الدخول عبر الرابط
🔸c join :السماح  الدخول عبر الرابط
🔹🔸🔹🔸🔹🔸🔹🔸🔹
SUDO 1 [@sajademo] 🔱
SUDO 2 [@fuck_8_you] 🔱
(Channel)@help_telp 👾
Channel BOT : @tram_2

]]
end

if not is_momod(msg) then
return "للمشرفين فقط لا دعبل  😎🖕🏿"
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"(h 2)"
},
run = run 
}
end
