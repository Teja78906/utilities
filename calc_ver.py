version_num = input("enter version number of multiversx :: ")
sections = list(map(int, version_num.split('.')))

sections[0] = 1
sections[1] = (sections[1]-39) 
sections[2] = (sections[2]*2)+4 if sections[1] == 39 else (sections[2]*2)

print('.'.join(map(str, sections)))  # Output: 0.39.2
