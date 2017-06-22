--[[ 
$ :) 
-- - ( @BRWUEN ) - -- 
$ :) 
--Channel-( @vip_api )-- 
$ :) 
]]-- 
do 
function run(msg, matches) 
local reply_id = msg['id'] 

local info ='☫ مہـ†ـًعــ₰ــًًرفﮏ ✨ : @'..msg.from.username..'\n\n'
..'☫ ألـﮩﮨہٰٰہٰمہجـﮩ๋͜ﮧـ͜ާْمہوُعًهہـ  ┋⇝ : '..msg.to.title..'\n\n'
.. '☫ تہٍـﮧ௸ِـِۣـّ̐ہٰأبہعً قنــہٰ⇣ـأهہـ ﴾ ֆ\n{ @vip_api }'
reply_msg(reply_id, info, ok_cb, false) 
end 

return { 
patterns = { 
"^معلوماتي" 
}, 
run = run 
} 

end 
