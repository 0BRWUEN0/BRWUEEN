--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY jOker                          ▀▄ ▄▀ 
▀▄ ▄▀     BY joker       (@fuck_8_you)     ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY joker                 ▀▄ ▄▀   
▀▄ ▄▀       broadcast  : اختصار الروابط        ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
local function run(msg, matches)
  local yon = http.request('http://api.yon.ir/?url='..URL.escape(matches[1]))
  local jdat = json:decode(yon)
  local bitly = https.request('https://api-ssl.bitly.com/v3/shorten?access_token=f2d0b4eabb524aaaf22fbc51ca620ae0fa16753d&longUrl='..URL.escape(matches[1]))
  local data = json:decode(bitly)
  local yeo = http.request('http://yeo.ir/api.php?url='..URL.escape(matches[1])..'=')
  local opizo = http.request('http://api.gpmod.ir/shorten/?url='..URL.escape(matches[1])..'&username=mohamad.khoshnava@gmail.com')
  local u2s = http.request('http://u2s.ir/?api=1&return_text=1&url='..URL.escape(matches[1]))
  local llink = http.request('http://llink.ir/yourls-api.php?signature=a13360d6d8&action=shorturl&url='..URL.escape(matches[1])..'&format=simple')
 
    return ' الرابط الاصلي :\n'..data.data.long_url..'\n\nلقد حصلت على 6 اختصارات للرابط : \n bitly :\n___________________________\n'..data.data.url..'\n___________________________\n yeo :\n'..yeo..'\n___________________________\n and :\n'..opizo..'\n___________________________\n u2s :\n'..u2s..'\n___________________________\n llink : \n'..llink..'\n___________________________\n yon : \nyon.ir/'..jdat.output..'\n___________________________'
end
return {
  usage = "کوتاه کردن لینک سایت مورد نظر به 5 روش\n/short your Link\n لینک حتما با http://شروع شود",
  patterns = {
    "^اختصار (.*)$",
    "^shortlink (.*)$"
    
  },
  run = run
}