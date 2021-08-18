YEARS = 10

print "Enter asset name: "
assetName = gets.chomp

print "Enter starting asset value: "
startValue = gets.to_f

print "Enter asset growth rate (decimal): "
growthRate = gets.to_f

print("NAME   ")

for i in (0..YEARS) do
    print("YEAR #{i}   ")
end

print "\n"

printf("%5s   " % [assetName]  )

for j in (0..YEARS) do
    printf("%-8.0f " % [startValue * (1 + growthRate) ** j ]  )
end

print("\n")