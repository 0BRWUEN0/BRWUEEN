local function run(msg, matches) 
    if is_momod(msg) then 
        return 
    end 
    local data = load_data(_config.moderation.data) 
    if data[tostring(msg.to.id)] then 
        if data[tostring(msg.to.id)]['settings'] then 
            if data[tostring(msg.to.id)]['settings']['lock_ads'] then 
                lock_ads = data[tostring(msg.to.id)]['settings']['lock_ads'] 
            end 
        end 
    end 
    local chat = get_receiver(msg) 
    local user = "user#id"..msg.from.id 
    if lock_ads == "yes" then 
       delete_msg(msg.id, ok_cb, true) 
    end 
end 

return {patterns = { 
"[Hh][Tt][Tt][Pp][Ss]://[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/", 
"[Hh][Tt][Tt][Pp][Ss]://[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]", 
"[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/", 
"[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/", 
"[Hh][Tt][Tt][Pp]://", 
"[Ww][Ww][Ww]:", 
"telegram.me/(.*)", 
"TELEGRAM.ME/(.*)", 
"Telegram.me/(.*)", 
"(.*) telegram.me/(.*)", 
"(.*) https://(.*)", 
"(.*) www.(.*)", 
"(.*) telegram.me/(.*)", 
"(.*) https://(.*)", 
"(.*) www.(.*)"; 
"https://(.*)", 
"http://(.*)", 
"www.(.*)", 
"WWW.(.*)", 
"^(https://t.me/)$", 
"[Tt].[Mm][Ee]/", 
  }, 
  run = run 
}