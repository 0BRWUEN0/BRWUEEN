--[[ 
--@BRWUEN
--@vip_api
—]] 
do 

local function pre_process(msg) 
local mohammed = msg['id'] 
  local user = msg.from.id 
local chat = msg.to.id 
    local moody = 'mate:'..msg.to.id 
    if redis:get(moody) and msg.media and not is_momod(msg) then 

            delete_msg(msg.id, ok_cb, false) 
local test = " 🗣 كـبـ♥ـد عـمـ❥ـري ["..msg.from.first_name.."]".."\n".."☫مہمہטּوُعً نــہٰ⇣ـڜر هہـنــہٰ⇣ـأ  𖤍 ٍ?🎖🌟🔕☫️".."\n".." ☫ UŜệГnΔṀệ : @"..(msg.from.username or " ") 
reply_msg(mohammed, test, ok_cb, true) 

end 

        return msg 
    end 

local function MOHAMMED(msg, matches) 
local mohammed = msg['id'] 

    if matches[1] == 'قفل الوسائط'  and is_momod(msg) then 
                    local th3boss= 'mate:'..msg.to.id 
                    redis:set(th3boss, true) 
local boss = 'تہٍـﮧ௸ِـِۣـّ̐ہٰمہ قفلـﮩﮨہٰٰہٰ ﭑإ́لــﮧﮧ♚ـوُﮨﮨﮨـﭑإ́ئط 🎈 💥۶ֆᵛ͢ᵎᵖ ⌯ '
reply_msg(mohammed, boss, ok_cb, true) 
elseif matches[1] == 'قفل الوسائط' and not is_momod(msg) then 
local moody = 'للـمـشـرفـيـن فـقـط 👮🖕🏿' 
reply_msg(mohammed, moody, ok_cb, true) 
  elseif is_momod(msg) and matches[1] == 'فتح الوسائط' then 
      local th3boss= 'mate:'..msg.to.id 
      redis:del(th3boss) 
local boss = 'تہٍـﮧ௸ِـِۣـّ̐ہٰمہ فتہٍـﮧ௸ِـِۣـّ̐ہٰح ﭑإ́لــﮧﮧ♚ـوُﮨﮨﮨـﭑإ́ئط 🎈 💥۶ֆᵛ͢ᵎᵖ ⌯'
reply_msg(mohammed, boss, ok_cb, true) 
elseif matches[1] == 'فتح الوسائط' and not is_momod(msg) then 
local moody= 'للـمـشـرفـيـن فـقـط 👮🖕🏿' 
reply_msg(mohammed, moody, ok_cb, true) 
end 
end 

return { 
    patterns = { 
    "^(قفل الوسائط)$", 
    "^(فتح الوسائط)$", 
  }, 
run = MOHAMMED, 
    pre_process = pre_process 
} 

end 
