import matplotlib.pyplot as plt
dist = []
load = []
f= open('distvLoad.txt', 'r')

for line in f:
	step = line.strip("\n").split(",")
	dist.append(step[0])
	load.append(step[1])

curve = plt.plot(dist, load, "-", label="total")
plt.legend(bbox_to_anchor=(0., 1.02, 1., .102), loc=3, ncol=4, mode="expand", borderaxespad=0.)
plt.show()
