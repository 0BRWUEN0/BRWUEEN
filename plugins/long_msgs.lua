--[[
# For More Information ....! 
# Developer : Aziz < @devss_bot >      #Dev
# our channel: @help_tele
]]
do
local function run(msg, matches)

  delete_msg(msg.id, ok_cb, true)
    return "DON'T SEND LONG MSGS"
 end
local function run(msg, matches)
  if ( tonumber(string.len(matches[1])) > 360 ) then
  delete_msg(msg.id, ok_cb, true)
  if (is_momod(msg)) then
      return nil
  else
     delete_msg(msg.id, ok_cb, true)
  return "DON'T SEND LONG MSGS"
    end
  end 
end
return {
  patterns = {
    "^(.*)",
    "^(.+)",
  },
  run = run,
}
end