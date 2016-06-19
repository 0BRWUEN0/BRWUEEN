--[[
# For More Information ....! 
# Developer : Aziz < @devss_bot >      #Dev
# our channel: @help_tele
]]
do

  local function action_by_reply(extra, success, result)
    if result.from.username then
      user_name = '@'..result.from.username
    else
      user_name = ''
    end
    local text = 'User ID  : '..result.from.peer_id..'\n'
               ..'Username : '..user_name..'\n'
               ..'CHANEEL BOT: @help_telp'
    send_large_msg(extra, text)
  end

--------------------------------------------------------------------------------

  local function run(msg)
    if msg.text == 'in' and msg.reply_id then
      get_message(msg.reply_id, action_by_reply, get_receiver(msg))
    end
  end

--------------------------------------------------------------------------------

  return {
    decription = 'Print user_id by_reply',
    usage = 'Reply to a message then type: !id',
    patterns = {
      "^(in)$"
    },
    run = run
  }

end