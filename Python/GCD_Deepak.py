def findGCD(numlist, num):
    resultlist = []
    mymem = []
    
    if num != len(numlist):
        return 0
    
    for i in range(len(numlist)):
        for j in range(len(numlist)):
            if numlist[j]%numlist[i] == 0:                
                mymem.append(numlist[i])
            else:
                mymem.clear()
                break
        
        if len(mymem) >= len(numlist):
            resultlist.append(max(mymem))
                                
    if len(resultlist) > 0:
        return max(resultlist)
    else:
        return 0