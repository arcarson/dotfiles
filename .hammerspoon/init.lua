-- Config

hs.window.animationDuration = 0
local mash = {"cmd", "alt", "ctrl", "shift"}


-- Window positioning

hs.hotkey.bind(mash, "1", function()
  local win    = hs.window.focusedWindow()
  local f      = win:frame()
  local screen = win:screen()
  local max    = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w * .33333
  f.h = max.h
  win:setFrame(f)
end)


hs.hotkey.bind(mash, "2", function()
  local win    = hs.window.focusedWindow()
  local f      = win:frame()
  local screen = win:screen()
  local max    = screen:frame()

  f.x = max.x + (max.w * .33333)
  f.y = max.y
  f.w = max.w * .66666
  f.h = max.h
  win:setFrame(f)
end)


hs.hotkey.bind(mash, "h", function()
  local win    = hs.window.focusedWindow()
  local f      = win:frame()
  local screen = win:screen()
  local max    = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)


hs.hotkey.bind(mash, "l", function()
  local win    = hs.window.focusedWindow()
  local f      = win:frame()
  local screen = win:screen()
  local max    = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)


hs.hotkey.bind(mash, "k", function()
  local win    = hs.window.focusedWindow()
  local f      = win:frame()
  local screen = win:screen()
  local max    = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)


-- Launch or focus applications

hs.hotkey.bind(mash, "i", function()
  hs.application.launchOrFocus("iTerm")
end)


hs.hotkey.bind(mash, "r", function()
  hs.application.launchOrFocus("Google Chrome")
end)


hs.hotkey.bind(mash, "e", function()
  hs.application.launchOrFocus("Macvim")
end)


