do 
    local function iq_abs(msg,matches) 
        local reply_id = msg['id'] 
        
        if matches[1] == "chat_add_user" then -- Channel @DEV_PROX 
            return '♯ أهہـلـﮩﮨہٰٰہٰأ ❥⇠ '..msg.from.first_name..'\n\n' 
            ..'☫ ألـﮩﮨہٰٰہٰظٍـًہأفڪـ ⇠ @'..msg.from.username..'\n\n' 
            ..'☫ ألـﮩﮨہٰٰہٰمہجـﮩ๋͜ﮧـ͜ާْمہوُعًهہـ ⇠ '..msg.to.title..'\n\n' 
            ..'☫ تہٍـﮧ௸ِـِۣـّ̐ہٰأبہعً قنــہٰ⇣ـاهہـ ﴾ @vip_api' 
        elseif matches[1] == "chat_add_user_link" then 
            return '♯ أهہـلـﮩﮨہٰٰہٰأ ❥⇠ '..msg.from.first_name..'\n\n' 
            ..'☫ مہـ†ـًعــ₰ــًًرفﮏ ✨ ⇠ @'..msg.from.username..'\n\n' 
        ..'☫ ألـﮩﮨہٰٰہٰمہجـﮩ๋͜ﮧـ͜ާْمہوُعًهہـ ⇠ '..msg.to.title..'\n\n' 
            ..'☫ تہٍـﮧ௸ِـِۣـّ̐ہٰأبہعً قنــہٰ⇣ـأهہـ ﴾ @vip_api' 
        end 
        
        if matches[1] == "chat_del_user" then 
            local bye_name = msg.action.user.first_name 
            return 'ألـﮩﮨہٰٰہٰلـﮩﮨہٰٰہٰهہـ وُيــ๋͜ہٌۤـہٰٰأڪـ   𖤍  ‏‏⁽♛₎ 🐱💜ֆ➖ تہٍـﮧ௸ِـِۣـّ̐ہٰأبہعً ➖ @vip_api '..bye_name 
        end 
    end 
    
    return { 
        patterns = { 
            "^!!tgservice (chat_add_user)$", 
            "^!!tgservice (chat_add_user_link)$", 
            "^!!tgservice (chat_del_user)$", 
            }, 
        run = iq_abs, 
        } 
end 
 