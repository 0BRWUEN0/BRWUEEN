--[[ 
$ :) 
-- - ( @BRWUEN ) - -- 
$ :) 
--Channel-( @dev_boots )-- 
$ :) 
]]-- 
do 
function run(msg, matches) 
local reply_id = msg['id'] 

local info = '🈷 - ٱيـۧډيک ياعزيزي هوة : '..msg.from.id..'\n'
..'🈶 - مۘعرفک ياعزيزي هوة : @'..msg.from.username..'\n'
..'🈸 - ٱسـۧمـک ٲلٲول ياعزيزي هوة : '..(msg.from.first_name or '')..'\n'
..'🈸 - ٱسـۧمـک ٲلثـآني ياعزيزي هوةَ : '..(msg.from.lastname or '')..'\n'
..'🈚️ - ٱيډي ٱڵمجـمۄعة هوة : '..msg.to.id..'\n'
..'📳 - ٱسـۨم ٱڵمجـمۄعة هوة : '..msg.to.title..'\n'
..'📴 - رقــۖـمــۗـک ياعزيزي هوة: '..(msg.from.phone or " لُايَوَجْدِ ⛔️‼️"..'\n'
..'📨 - ٱڵـرسـآلـةٌ : '..msg.text..'\n'
..'🗣 - ٱنـۧت فـۖي : ' ..msg.to.type..'\n'
..'⏱ - ٲڵـوقـت : '..os.date(' %T', os.time()))..'\n'
..'📆 - ٱڵـتاريـخ : '.. os.date('!%A %B:%d:%Y\n', timestamp)..'\n' 
..'🔗 - رآبـط حـسـآبـک هوة: telegram.me/'..msg.from.username..'\n'
reply_msg(reply_id, info, ok_cb, false) 
end 

return { 
patterns = { 
"^معلوماتي" 
}, 
run = run 
} 

end 
