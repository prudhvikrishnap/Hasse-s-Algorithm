# Import Required Libraries
import matplotlib.pyplot as plt
import random
# Set 'a' as the random variable
a =random.randrange(1e+12)
# Create a step variable to count the nummber of steps taken to reach 1
step=0
# Set 'b' as the value array to plot the data
# The first element is a
b=[a]
# Create a plot
fig, ax = plt.subplots()
# Plot the value of 'a' on the top right of the plot
plt.text(0.66,1.1,s='Random Integer ={}'.format(a),transform=ax.transAxes)
# Loop until the value of a is 1
while a!=1:
    step+=1
    if a%2==0:
        a = a/2
        b.append(a)
    else:
        a = (a*3) +1
        b.append(a)
# Plot the values of b
plt.plot(b)
# Plot the value step size on the plot
plt.text(0.66,1.05, s= 'Number of Steps: {}'.format(step),transform=ax.transAxes)
plt.title("Hasse's Algorithm")
plt.yticks([])
plt.xlabel('Value')
plt.show()
