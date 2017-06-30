-- Config

k = hs.hotkey.modal.new({}, "F17")
hs.window.animationDuration = 0


-- Window positioning

windowThird = function()
  win    = hs.window.focusedWindow()
  f      = win:frame()
  screen = win:screen()
  max    = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w * .33333
  f.h = max.h
  win:setFrame(f)
end
k:bind('', '1', nil, windowThird)


windowTwoThird = function()
  local win    = hs.window.focusedWindow()
  local f      = win:frame()
  local screen = win:screen()
  local max    = screen:frame()

  f.x = max.x + (max.w * .33333)
  f.y = max.y
  f.w = max.w * .66666
  f.h = max.h
  win:setFrame(f)
end
k:bind('', '2', nil, windowTwoThird)


windowLeft = function()
  local win    = hs.window.focusedWindow()
  local f      = win:frame()
  local screen = win:screen()
  local max    = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end
k:bind('', 'h', nil, windowLeft)


windowRight = function()
  local win    = hs.window.focusedWindow()
  local f      = win:frame()
  local screen = win:screen()
  local max    = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end
k:bind('', 'l', nil, windowRight)


windowFull = function()
  local win    = hs.window.focusedWindow()
  local f      = win:frame()
  local screen = win:screen()
  local max    = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end
k:bind('', 'k', nil, windowFull)


-- -- Launch or focus applications

launchTerminal = function()
  hs.application.launchOrFocus("iTerm")
  k.triggered = true
end
k:bind('', 'i', nil, launchTerminal)


launchEditor = function()
  hs.application.launchOrFocus("Macvim")
  k.triggered = true
end
k:bind('', 'e', nil, launchEditor)


launchBrowser = function()
  hs.application.launchOrFocus("Google Chrome")
  k.triggered = true
end
k:bind('', 'r', nil, launchBrowser)


-- Enter Hyper Mode when F18 (Hyper/Capslock) is pressed

pressedF18 = function()
  k.triggered = false
  k:enter()
end

-- Leave Hyper Mode when F18 (Hyper/Capslock) is pressed,
--   send ESCAPE if no other keys are pressed.

releasedF18 = function()
  k:exit()
  if not k.triggered then
    hs.eventtap.keyStroke({}, 'ESCAPE')
  end
end


-- Bind the Hyper key

f18 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)
