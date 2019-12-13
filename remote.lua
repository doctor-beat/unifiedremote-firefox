local keyboard = libs.keyboard;
local win = libs.win;
local device = libs.device;

events.detect = function ()
	return 
		libs.fs.exists("C:\\Program Files (x86)\\Mozilla Firefox") or
		libs.fs.exists("C:\\Program Files\\Mozilla Firefox");
end

--@help Focus Firefox application
actions.switch = function()
	if OS_WINDOWS then
		local hwnd = win.window("firefox.exe");
		if (hwnd == 0) then actions.launch(); end
		win.switchtowait("firefox.exe");
	end
end

--@help Launch Firefox application
actions.launch = function()
	if OS_WINDOWS then
		os.start("firefox.exe");
	end
end

--@help Naviagte back
actions.back = function()
	actions.switch();
	keyboard.stroke("menu", "left");
end

--@help Close current tab
actions.close_tab = function()
	actions.switch();
	keyboard.stroke("control", "W");
end

--@help Navigate forward
actions.forward = function()
	actions.switch();
	keyboard.stroke("menu", "right");
end

--@help Go to next tab
actions.next_tab = function()
	actions.switch();
	keyboard.stroke("lctrl", "pagedown");
end

--@help Go to previous tab
actions.previous_tab = function()
	actions.switch();
	keyboard.stroke("lctrl", "pageup");
end

--@help Open new tab
actions.new_tab = function()
	actions.switch();
	keyboard.stroke("control", "T");
end

--@help Type address
actions.address = function()
	actions.switch();
	keyboard.stroke("control", "L");
	device.keyboard();
end

--@help Go to home page
actions.home = function()
	actions.switch();
	keyboard.stroke("menu", "home");
end

--@help Find on current page
actions.find = function()
	actions.switch();
	keyboard.stroke("control", "F");
	device.keyboard();
end

--@help Zoom page in
actions.zoom_in = function()
	actions.switch();
	keyboard.stroke("control", "oem_plus");
end

--@help Zoom page out
actions.zoom_out = function()
	actions.switch();
	keyboard.stroke("control", "oem_minus");
end

--@help Use normal zoom
actions.zoom_normal = function()
	actions.switch();
	keyboard.stroke("control", "0");
end

--@help Scroll page down
actions.scroll_down = function()
	actions.switch();
	keyboard.stroke("space");
end

--@help Scroll page up
actions.scroll_up = function()
	actions.switch();
	keyboard.stroke("shift", "space");
end

--@help Refresh current page
actions.refresh = function()
	actions.switch();
	keyboard.stroke("f5");
end

actions.tab= function()
	actions.switch();
	keyboard.stroke("tab");
end
actions.shifttab= function()
	actions.switch();
	keyboard.stroke("shift", "tab");
end
actions.space = function()
	actions.switch();
	keyboard.stroke("space");
end
actions.enter = function()
	actions.switch();
	keyboard.stroke("enter");
end


------------------------- media stuff

--@help Lower system volume
actions.volume_down = function()
	keyboard.press("volumedown");
end

--@help Mute system volume
actions.volume_mute = function()
	keyboard.press("volumemute");
end

--@help Raise system volume
actions.volume_up = function()
	keyboard.press("volumeup");
end

--@help Previous track
actions.previous = function()
--	keyboard.press("mediaprevious"); 
end

--@help Next track
actions.next = function()
--	keyboard.press("medianext");
end

--@help Stop playback
actions.stop = function()
	keyboard.press("mediastop");
end

--@help Toggle playback state
actions.play_pause = function()
	--keyboard.press("mediaplaypause");
    keyboard.press("space");
end

actions.seekbacksec = function()
	--keyboard.press("mediaplaypause");
    keyboard.press("left");
end
actions.seekfrwdsec = function()
	--keyboard.press("mediaplaypause");
    keyboard.press("right");
end
actions.seekbackperc = function()
	--keyboard.press("mediaplaypause");
    keyboard.press("ctrl", "left");
end
actions.seekfwrdperc = function()
	--keyboard.press("mediaplaypause");
    keyboard.press("ctrl", "right");
end
actions.seekhome = function()
	--keyboard.press("mediaplaypause");
    keyboard.press("home");
end
actions.seekend = function()
	--keyboard.press("mediaplaypause");
    keyboard.press("end");
end

