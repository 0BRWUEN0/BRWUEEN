--[[ @BRWUEN -- @vip_api
--]] 
do 

local function pre_process(msg) 
    local hash = 'mate:'..msg.to.id 
    if redis:get(hash) and msg.fwd_from and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg)  then 
            delete_msg(msg.id, ok_cb, true) 
            return "done" 
        end 
        return msg 
    end 

local function moody(msg, matches) 
    chat_id =  msg.to.id 
    if is_momod(msg) and matches[1] == 'قفل اعاده توجيه' then 
                    local hash = 'mate:'..msg.to.id 
                    redis:set(hash, true) 
                    return "تہٍـﮧ௸ِـِۣـّ̐ہٰمہ قفلـﮩﮨہٰٰہٰ تہٍـ௸ِـِۣـّ̐ہٰوُجـﮩ๋͜ﮧـ͜ާيــ๋͜ہٌۤـہٰٰه 🔃💥ᵛᵎᵖ ⌯﴾❥"
  elseif is_momod(msg) and matches[1] == 'فتح اعاده توجيه' then 
      local hash = 'mate:'..msg.to.id 
      redis:del(hash) 
      return "تہٍـﮧ௸ِـِۣـّ̐ہٰمہ فتہٍـﮧ௸ِـِۣـّ̐ہٰح تہٍـ௸ِـِۣـّ̐ہٰوُجـﮩ๋͜ﮧـ͜ާيــ๋͜ہٌۤـہٰٰه  💥۶ֆᵛ͢ᵎᵖ ⌯﴾❥"
end 

end 

return { 
    patterns = { 
        '^(قفل اعاده توجيه)$', 
        '^(فتح اعاده توجيه)$', 
        '^[/!#](قفل اعاده توجيه)$', 
        '^[/!#](فتح اعاده توجيه)$' 
    }, 
run = moody, 
pre_process = pre_process 
} 
end 

--[[ 
--]]
