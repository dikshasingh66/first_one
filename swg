import random
tl=[]
sl=[]
count=5
while count>0:
    s = input("Choose between snake, water, gun \n")
    t = random.choice(["snake", "water", "gun"])
    print(f"You chose {s} and Computer chose {t}")
    count-=1
    if s==t:
        print("no points added")
    if s=='snake' and t=="water":
        sl.append(1)
        print("The user gets a point")
    if s=='gun' and t=='water':
        tl.append(1)
        print("The computer gets a point")
    if s=='gun' and t=='snake':
        sl.append(1)
        print("The user gets a point")
    if s=='snake' and t=='gun':
        tl.append(1)
        print("The computer gets a point")
    if s=='water' and t=='snake':
        tl.append(1)
        print("The computer gets a point")
    if s=='water' and t=='gun':
        sl.append(1)
        print("The user gets a point")
    if s!=t:
        print("You have given a wrong input")
    print(f"You are left with {count} chances")

sum=0
for i in tl:
    sum+=i
trial=0
for j in sl:
    trial+=1

if sum>trial:
    print(f"Congratulations, the computer won, as the score achieved by computer is {sum},while the score achieved by user is {trial}")
if sum==trial:
    print ("Its a draw")
if sum<trial:
    print(f"The user won, as the score achieved by user is {trial}, whereas by computer its {sum}")
