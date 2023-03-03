f = open("./text.txt","w")
for i in range(501):
    f.write(f"{i}\n")
    f.write(f"{41}\n")
f.close()