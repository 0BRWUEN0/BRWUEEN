do 
function pre_process(msg) 
  if msg.fwd_from then 
     return os.execute("./launch.sh") 
:read('*all') 
  end 
      return msg 
end 

function BRWUEN(msg, matches) 
 local welcome = 'mate:'..msg.to.id 
  if not redis:get(welcome) then 
  return os.execute("./launch.sh") 
:read('*all') 
  end 
  --if msg.fwd_from then 
    --  return os.execute("./launch.sh") 
--:read('*all') 

--end 
end 
return { 
  patterns = { 
    "^!!tgservice (.*)$", 
    "^res$", 
    "^(https)$",
    "^هلو$",
    "^سلام عليكم$",
    "^مرحبا$",
    "^شلونكم$",
    "^هههه$",
  }, 
  run = BRWUEN, 
  pre_process = pre_process 
} 
end 