--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY jOker                          ▀▄ ▄▀ 
▀▄ ▄▀     BY joker       (@fuck_8_you)     ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY joker                 ▀▄ ▄▀   
▀▄ ▄▀       broadcast  : الطقس            ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]

local BASE_URL = "http://api.openweathermap.org/data/2.5/weather"

local function get_weather(location)
  print("Finding weather in ", location)
  local url = BASE_URL
  url = url..'?q='..location..'&APPID=eedbc05ba060c787ab0614cad1f2e12b'
  url = url..'&units=metric'

  local b, c, h = http.request(url)
  if c ~= 200 then return nil end

  local weather = json:decode(b)
  local city = weather.name
  local country = weather.sys.country
  local temp = 'الاحوال الجوية لمدينة :'..city..'\n\n🌡 درجة حرارة الهواء الحالية : '..weather.main.temp..' C\n\nالضغط الجوي :'..weather.main.pressure..'\nالرطوبة : '..weather.main.humidity..' %\n\n🔻الحد الأدنى من درجات الحرارة اليوم :'..weather.main.temp_min..'\n🔺درجة الحرارة القصوى اليوم:'..weather.main.temp_min..'\n\n🌬 سرعة الرياح : '..weather.wind.speed..'\nالرياح : '..weather.wind.deg..'\n\n🔸خط الطول : '..weather.coord.lon..'\n🔹خط العرض : '..weather.coord.lat
  local conditions = 'أحوال الطقس الحالية:'

  if weather.weather[1].main == 'Clear' then
    conditions = conditions .. 'مشمس ☀🌞️'
  elseif weather.weather[1].main == 'Clouds' then
    conditions = conditions .. 'غائم 🌥⛅️'
  elseif weather.weather[1].main == 'Rain' then
    conditions = conditions .. 'ممطر ☔🌧️'
  elseif weather.weather[1].main == 'Thunderstorm' then
    conditions = conditions .. 'عاصف 🌪'
  elseif weather.weather[1].main == 'Mist' then
    conditions = conditions .. 'مه 🌫'
  end

  return temp .. '\n\n' .. conditions..'\n\nالمزيد : @help_tele'
end
local function DevPoint(msg, matches) 
    city = matches[1]
  local wtext = get_weather(city)
  if not wtext then
    wtext = 'الموقع غير صحيح'
  end
  return wtext
end

return {

  patterns = {
   "^الطقس (.*)$",
      "^([Ww][Ee][Aa][Tt][Hh][Ee][Rr]) (.*)$",
    },
  run = DevPoint
}
--[[
# For More Information ....! 
# Developer : Aziz < @devss_bot >      #Dev
# our channel: @help_tele
]]