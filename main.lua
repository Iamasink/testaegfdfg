
function printData()
	local monitor = peripheral.wrap("top")
	monitor.setTextScale(4)
	data = colony.getInfo()
	term.clear()


	term.setTextColor( colors.red )
	monitor.setCursorPos(14,1)
	monitor.write( textutils.formatTime( os.time(), true ) )
	monitor.setCursorPos(1,2)
	term.setTextColor( colors.magenta )
	monitor.write(data.name)
	print("\n")
	
	term.setTextColor( colors.lime )
	print("Happiness: " .. tostring(math.floor(data.happiness * 100) / 100))
	term.setTextColor( colors.orange )
	print("Citizens:  " .. tostring(data.citizens) .. " / " .. tostring(data.maxCitizens))
	print("\n")

	if (data.mourning == true) then
		term.setTextColor( colors.red )
		print("Mourning\n    :(")
	end
	if (data.raid == true) then
		term.setTextColor( colors.red)
		print("Raid!!!!!")
	end

end


while true do
	printData()
	os.sleep(1)
	print("bruh")
end

