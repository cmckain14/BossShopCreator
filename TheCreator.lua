function read()
   input = io.read()
end
multiple = "Y" --Y if there is going to be more than one item
print("Welcome to the BossShop shop creator!") --26 items
c = 0
for i=1,26 do 
	print("Item name:")
	read()
	nameofitem = input
	print("ID number:")
	read()
	id = input
	print("Does "..nameofitem.." have a specific type/color?")
	read()
	if input == "Yes" then
		print("What is the ID number of that type/color?")
		read()
		dip = input
		end
	idnumber = tonumber(id)
	--print("Reward type: (Item)")
	--read()
	item = "Item"
	--print("Price type: (Money)")
	--read()
	money = "Money"
	if multiple == "Y" then
		amount = 1
		end
	if multiple == "N" then
		print("How many "..nameofitem.."?")
		read()
		amount = input
		end
	name = nameofitem
	string.lower(name)
	print("How much money for one "..name.." ?")
	read()
	price = input
	price = price * amount
	--type = string.upper(nameofitem)
	--print("Where should it go?")
	--read()
	--location = input
	perm = nil
	il = c + 1
	print("  "..nameofitem..":")
	print("    RewardType: "..item)
	print("    PriceType: "..money)
	print("    Price: "..price)
	print("    Reward:")
	print("    - - id:"..idnumber)
	print("      - amount:"..amount)
	if dip ~= nil then
		print("      - durability:"..dip)
		end
	print("    MenuItem:")
	print("      - id:"..idnumber)
	print("      - amount:1")
	if dip ~= nil then
		print("      - durability:"..dip)
		end
	print("      - name:&"..amount.." "..nameofitem)
	print("      - 'lore:&cPrice: "..price.." "..money.."'")
	print("    Message: '&eYou bought %reward%! Money left:  &c%left%'")
	print("    InventoryLocation: "..il)
	print("    ExtraPermission:")
	if c == 0 then
		file = io.open("bossshop.txt", "w")
		c = c + 1
		end
	if c > 0 then
		file = io.open("bossshop.txt", "a+")
		c = c + 1
		end
	il = il - 1	
	file:write("  "..nameofitem..": \n")
	file:write("    RewardType: "..item.." \n")
	file:write("    PriceType: "..money.." \n")
	file:write("    Price: "..price.." \n")
	file:write("    Reward: \n")
	file:write("    - - id:"..idnumber.." \n")
	file:write("      - amount:"..amount.." \n")
	if dip ~= nil then
		file:write("      - durability:"..dip.."/n")
		end
	file:write("    MenuItem: \n")
	file:write("      - id:"..idnumber.." \n")
	file:write("      - amount:1 \n")
	if dip ~= nil then
		file:write("      - durability:"..dip.."/n")
		end
	file:write("      - name:&"..amount..nameofitem.." \n")
	file:write("      - 'lore:&cPrice: "..price.." "..money.."' \n")
	file:write("    Message: '&eYou bought %reward%! Money left:  &c%left%' \n")
	file:write("    InventoryLocation: "..il.." \n")
	file:write("    ExtraPermission: \n")
	file:flush()
	file:close()
	print("Logging complete.")
	end
