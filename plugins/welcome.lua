--[[ 
$ :) 
-- - ( #BRWUEN_بروين ) - -- 
$ :) 
-- - ( @BRWUEN ) - -- 
$ :) 
--Channel-( @dev_boots )-- 
$ :) 
]]-- 
do 
local function BRWUEN(msg,matches) 
    if matches[1] == "chat_add_user"  then -- Channel @DEV_PROX 
      return "- 📺 ٱهـلاً ۄسـهلاً بـګ عـۧزيـۨزي تـ؏ـاڵ بـٲدي فـڶـم جـآڰـي شــان !\n".." 〰➖〰➖〰➖〰➖〰\n- 😂 ڼـورټ ٱڵمجـمۄعه يـٲڵـمـصـخـم : "..msg.to.title.."\n".."- 😤 آيٌـٌـٌدي ٱڵمجـمۄعة ٵڵـفـاشڷـﮩﮩﮥ : "..msg.to.id.."\n".."- 😪 ٱسـم ٲڵـخـبڵ اڶـضـافـڱ : "..(msg.from.first_name or " ").."\n".."- 👐 مـًعـَړف ٲڵـخـبـل ٲڵـضـافـڪ : @"..(msg.from.username or " ").."\n".."- 😒 مـۧعِـۧړفــۧـک : @"..(msg.from.username or "لُايَوَجْدِ " ).."\n".."- 😏 آيـًـډيـڪ : "..msg.from.id..'\n\n- 🔬 رجائآ تابع قناتنا ⇣\nـ ( @dev_boots ) ➸\n- ألـمـطـور : @BRWUEN' 
    elseif matches[1] == "chat_add_user_link" then 
      return "- 🐿 ٱهـلاً ۄسـهلاً بـګ عـۧزيـۨزي !\n".." 〰➖〰➖〰➖〰➖〰\n- 🏋🏻 ڼـورټ ٱڵمجـمۄعة : "..msg.to.title.."\n".."- 🚣🏻 آيٌـٌـٌدي ٱڵمجـمۄعة : "..msg.to.id.."\n".."- 🏂 ٱسـمـٌک : "..(msg.from.first_name or " ").."\n".."- 🎣 مـۧعِـۧړفــۧـک : @"..(msg.from.username or "لُايَوَجْدِ " ).."\n".."- ⚗ آيـًـډيـڪ : "..msg.from.id..'\n\n- 🔬 رجائآ تابع قناتنا ⇣\nـ ( @dev_boots ) ➸\nـ ألـمـطـور : @BRWUEN' 
    end 

    if matches[1] == "chat_del_user"  then 
       local bye_name = msg.action.user.first_name 
       return '✾ ٱڵـڵـه ✾ ٱڵـڵـه ✾ ٱڵـڵـه ويـاكِ ⛹🏻🕊'..bye_name 
   end 
end 

return { 
    patterns = { 
        "^!!tgservice (chat_add_user)$", 
        "^!!tgservice (chat_add_user_link)$", 
        "^!!tgservice (chat_del_user)$", 
    }, 
 run = BRWUEN, 
} 
end 
-- BY - @BRWUEN
