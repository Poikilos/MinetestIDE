return {
  name = "minetest",
  description = "Start Minetest",
  author = "wintermute",
  version = 0.1,
  api = {"baselib","minetest"},
  onRegister = function(self)
    -- add interpreter with name "sample"
    ide:AddInterpreter("minetest", {
  name = "Minetest",
  description = "Start Minetest",
  api = {"baselib","minetest"},
  hasdebugger = true,
  fattachdebug = function(self) DebuggerAttachDefault() end,
})
  end,
  frun = function(self,wfilename,rundebug)
    CommandLineRun("minetest","/",true,false)
  end,
  onUnRegister = function(self)
    -- remove interpreter with name "sample"
    ide:RemoveInterpreter("minetest")
  end,
} 
