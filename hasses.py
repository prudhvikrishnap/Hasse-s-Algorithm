import matplotlib.pyplot as plt
import random
a =random.randrange(1e+12)
b=[a]
fig, ax = plt.subplots()
plt.text(0.66,1.1,s='Random Integer ={}'.format(a),transform=ax.transAxes)
while a!=1:
    if a%2==0:
        a = a/2
        b.append(a)
    else:
        a = (a*3) +1
        b.append(a)

plt.plot(b)
plt.title("Hasse's Algorithm")
plt.yticks([])
plt.xlabel('Value')
plt.show()
