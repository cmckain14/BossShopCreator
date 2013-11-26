function read()
   input = io.read()
end
print("Welcome to the BossShop shop creator!") --26 items
c = 0
for i=1,27 do 
	print("Item name:")
	read()
	nameofitem = input
	--print("Reward type: (Item)")
	read()
	item = "Item"
	--print("Price type: (Money)")
	read()
	money = "Money"
	print("How many "..nameofitem.."?")
	read()
	amount = input
	name = nameofitem
	string.lower(name)
	print("How much $ for "..amount.." "..name.." ?")
	read()
	price = input
	type = string.upper(nameofitem)
	print("Where should it go?")
	read()
	location = input
	perm = nil
	print(" "..nameofitem..":")
	print("    RewardType: "..item)
	print("    PriceType: "..money)
	print("    Price: "..price)
	print("    Reward:")
	print("    - - type:"..type)
	print("      - amount:"..amount)
	print("    MenuItem:")
	print("      - type:"..type)
	print("      - amount:1")
	print("      - name:&"..amount.." "..nameofitem)
	print("      - 'lore:&cPrice: "..price.." "..money.."'")
	print("    Message: '&eYou bought %reward%! Money left:  &c%left%'")
	print("    InventoryLocation:"..location)
	print("    ExtraPermission:")
	if c == 0 then
		file = io.open("bossshop.txt", "w")
		c = c + 1
		end
	if c > 0 then
		file = io.open("bossshop.txt", "a+")
		c = c + 1
		end
	file:write(" "..nameofitem..": \n")
	file:write("    RewardType: "..item.." \n")
	file:write("    PriceType: "..money.." \n")
	file:write("    Price: "..price.." \n")
	file:write("    Reward: \n")
	file:write("    - - type:"..type.." \n")
	file:write("      - amount:"..amount.." \n")
	file:write("    MenuItem: \n")
	file:write("      - type:"..type.." \n")
	file:write("      - amount:1 \n")
	file:write("      - name:&"..amount..nameofitem.." \n")
	file:write("      - 'lore:&cPrice: "..price.." "..money.."'")
	file:write("    Message: '&eYou bought %reward%! Money left:  &c%left%' \n")
	file:write("    InventoryLocation:"..location.." \n")
	file:write("    ExtraPermission: \n")
	file:flush()
	file:close()
	print("Logging complete.")
	end
