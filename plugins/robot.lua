--[[
# For More Information ....! 
# Developer : Aziz < @devss_bot >      #Dev
# our channel: @help_tele
]]
local function is_channel_disabled( receiver )
	if not _config.disabled_channels then
		return false
	end

	if _config.disabled_channels[receiver] == nil then
		return false
	end

  return _config.disabled_channels[receiver]
end

local function enable_channel(receiver)
	if not _config.disabled_channels then
	   _config.disabled_channels = {}
	end

	if _config.disabled_channels[receiver] == nil then
	return '😊 اَلـبـِوتَ بأَلتأكيَدَ تمَ تشَغيِلهَ ب أَلمجموعـهِ ✔️👍🏻'
	end
	
	_config.disabled_channels[receiver] = false

	save_config()
	return "تَمِ ✔️ تشغـيَل البوَتَ في المَجمَوعـهَ 👍"
end

local function disable_channel( receiver )
	if not _config.disabled_channels then
       _config.disabled_channels = {}
	end
	
	_config.disabled_channels[receiver] = true

	save_config()
	return "تَمِ ✔️ أطـفأءَ الـبوَتَ فـي أَلمجـموَعـهَ 👍🏻❌"
end

local function pre_process(msg)
	local receiver = get_receiver(msg)
	
	-- If sender is moderator then re-enable the channel
	--if is_sudo(msg) then
	if is_momod(msg) then
	  if msg.text == "start bot" then
	    enable_channel(receiver)
	  end
	end

  if is_channel_disabled(receiver) then
  	msg.text = ""
  end

	return msg
end

local function run(msg, matches)
	local receiver = get_receiver(msg)
	-- Enable a channel
	if matches[1] == 'start bot' then
		return enable_channel(receiver)
	end
	-- Disable a channel
	if matches[1] == 'stop bot' then
		return disable_channel(receiver)
	end
end

return {
	description = "Plugin to manage Bot.", 
	usage = {
		"Bot on: enable BOT In a Group",
		"Bot off: disable Bot In a Group" },
	patterns = {
		"^(start bot)",
		"^(stop bot)" }, 
	run = run,
	privileged = true,
	--moderated = true,
	pre_process = pre_process
}
