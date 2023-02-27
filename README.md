# cooperative-competitiveL
This code is an implementation of a cooperative-competitive learning algorithm for two neurons. The purpose of this algorithm is to train two neurons to learn to classify input data into two classes.

The code starts by initializing the weights of the two neurons randomly, and creating a matrix of the same size to store the updates to the weights. It then sets the axes limits of the plot window to be between 0 and 3, initializes the learning rate and other variables, and prompts the user to input the number of iterations to perform.

The code then enters a while loop that continues until the root-mean-square error (RMSE) between the weights of the two neurons drops below a threshold value of 0.01. Inside this while loop, there is a for loop that performs 100 iterations of the algorithm for each data point.

For each data point, the code randomly selects a point and plots it as a green or red dot. It then calculates the dot product of the input vector and the weight vectors, and uses this to calculate the activation of each neuron. It then updates the feature maps for each neuron, which help to define the regions of input space where each neuron is most sensitive. These feature maps are updated based on the activation of the winning neuron.

The code then updates the weights of the winning neuron based on the difference between the input vector and the weight vector, and updates the plot with a line representing this weight update. It then calculates the RMSE between the weights of the two neurons, and stores this value along with the iteration number in arrays for plotting later. If the RMSE is above a threshold value of 1.3, the weights are reset to random values.

The code then exits the for loop and enters an if statement that checks whether the maximum number of iterations has been reached. If so, it breaks out of the while loop. Otherwise, it increments the iteration counter and continues to the next iteration.

Once the while loop has exited, the final weights of the two neurons are plotted as a cross and a circle, and a new figure is created to plot the evolution of the RMSE over time.
