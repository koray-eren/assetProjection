YEARS = 10

def printHeaders
    print("NAME   ")
    
    for i in (0..YEARS) do
        print("YEAR #{i}   ")
    end
    print "\n"
end

def printAssetData(assets)
    for i in assets do
        puts "TEST"
    end
end

assets = Array.new(1)
assets[0] = 0
assetCount = 0


def newAsset(assets, assetCount)
    newAsset = Array.new(3)
    print "Enter asset name: "
    newAsset[0] = gets.chomp
    
    print "Enter starting asset value: "
    newAsset[1] = gets.to_f
    
    print "Enter asset growth rate (decimal): "
    newAsset[2] = gets.to_f

    assets[assetCount] = newAsset
    assetCount = assetCount + 1
end

def printAssets

    
end

newAsset(assets, assetCount)

printHeaders

for asset in assets do
    printf("%-8s" % [asset[0] ]  )
    
    for j in (0..YEARS) do
        printf("%-8.0f " % [asset[1] * (1 + asset[2] ) ** j ]  )
    end
end
printAssetData(assets)

print("\n")

print "assets length: "
print assets.length
print "\n"

newAsset(assets, assetCount)

print "assets length: "
print assets.length
print "\n"