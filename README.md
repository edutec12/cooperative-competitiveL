# cooperative-competitiveL


This code implements a cooperative-competitive learning algorithm designed for two neurons. The goal of the algorithm is to train neurons to classify input data. First, the code initializes the neurons' weights randomly and sets the axes. A matrix is created for updates, and the learning rate is set. It prompts the user for the number of iterations to perform next. The while loop runs until the RMSE between neurons' weights drops below 0.01.

Inside, a for loop performs 100 iterations for each data point. A point is randomly selected, plotted as green or red, and processed. The input vector and weight vectors calculate each neuron's activation. Feature maps are updated to define regions most sensitive for each neuron. This process continues based on the activation of the winning neuron. The weight update for the winner occurs next, represented by a plotted line. The RMSE is calculated between neurons, and values are stored for later plotting. If the RMSE exceeds 1.3, weights are reset to random values.

The loop exits if the maximum iteration count is reached; otherwise, it continues. When the while loop ends, the final weights are plotted, and the RMSE's evolution is displayed in a new figure.

![cooperativo](https://user-images.githubusercontent.com/97995445/221579857-355c4e34-4284-4259-b317-232db6a2f1bb.png)
