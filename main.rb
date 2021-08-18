YEARS = 10

def printHeaders
    print("NAME   ")
    
    for i in (0..YEARS) do
        print("YEAR #{i}   ")
    end
    print "\n"
end

def printAssetData(assets)
    for asset in assets do
        printf("%-8s" % [asset[0] ]  )
        
        for j in (0..YEARS) do
            printf("%-8.0f " % [asset[1] * (1 + asset[2] ) ** j ]  )
        end
        print "\n"
    end
    print "\n"
end

assets = Array.new(1)
assets[0] = 0
assetCount = 0

def newAsset
    tempAsset = Array.new(3)
    print "Enter asset name: "
    tempAsset[0] = gets.chomp
    
    print "Enter starting asset value: "
    tempAsset[1] = gets.to_f
    
    print "Enter asset growth rate (decimal): "
    tempAsset[2] = gets.to_f

    return tempAsset
end

assets[assetCount] = newAsset
assetCount = assetCount + 1


assets[assetCount] = newAsset
assetCount = assetCount + 1

printHeaders
printAssetData(assets)