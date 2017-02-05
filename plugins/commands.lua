--[[
--[[
__________________________________
|  |__________________________|  |
|  |                          |  |
|  |By : @BRWUEN   |  | 
|  |CH : @dev_boots           |  |
|    |  |
|  |__________________________|  |
|__|__________________________|__|
--]]

do
local function has_usage_data(dict)
  if (dict.patterns == nil or dict.patterns == '') then
    return false
  end
  return true
end

-- Get commands for that plugin
local function plugin_help(name)
  local plugin = plugins[name]
  if not plugin then return nil end

  local text = ""
  if (type(plugin.patterns) == "table") then
    for ku,patterns in pairs(plugin.patterns) do
      text = text..patterns..'\n'
    end
    text = text..'\n'
  elseif has_usage_data(plugin) then -- Is not empty
    text = text..plugin.patterns..'\n\n'
  end
  return text
end

-- !help command
local function telegram_help()
  local text = "Plugin list: \n\n"
  -- Plugins names
  for name in pairs(plugins) do
    text = text..name..'\n'
  end
  text = text..'\n'..'اكتب "اوامر [plugin name]" لتحصل عل معلومات الملف.'
  text = text..'\n'..'و "كل الاوامر لجلب كل الاوامر'
  return text
end
local function help_all()
  local ret = ""
  for name in pairs(plugins) do
    ret = ret .. plugin_help(name)
  end
  return ret
end

local function run(msg, matches)
  if matches[1] == "اوامر" then
    return telegram_help()
  elseif matches[1] == "كل الاوامر" then
    return help_all()
  else 
    local text = plugin_help(matches[1])
    if not text then
      text = telegram_help()
    end
    return text
  end
end

return {
  patterns = {
    "^اوامر$",
    "^كل الاوامر",
    "^اوامر (.+)"
  }, 
  run = run 
}

end
--[مــن قنــاة @dev_boots]--
--[[
__________________________________
|  |__________________________|  |
|  |                          |  |
|  |By : @BRWUEN           |  | 
|  |CH : @dev_boots       |  |
|  |DeV     |  |
|  |__________________________|  |
|__|__________________________|__|
--]]
