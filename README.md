# Credit-Risk-Analysis
  Prediction analysis of default payments using artificial neural networks done on a dataset taken from UCI ML repository.

**How to execute the code?**
  The code is executed on MATLAB by just running the filename as a commandline argument. No specific packages are used.

**Methods and Techniques used**
  This analysis was implemented using Artificial Neural Networks. The dataset used was modified by reducing the number of attributes from 24 to 15 and the number of instances from 30,000 to 5,000. The dataset is then divided into 2 halves – one for training and one for testing. Various changes and analysis were performed to determine the best network setting for the given dataset. This was determined by observing which setting got the least mean square error (MSE) and the regression value (R) close to 1.
  
  The number of iterations per analysis is set to 1,000. Factors modified to find the network with most accurate predicting ability are - number of nodes per hidden layer, training algorithms, learning rate (lr), and momentum constant (mc). The training algorithms used in this experiment are Levenberg-Marquardt (trainlm), Resilient Backpropagation (trainrp), and Bayesian Regularization (trainbr). Fixed parameters are the number of hidden layers, which is 2, and the activation functions - bipolar sigmoidal activation function (input layer to hidden layer 1), binary sigmoidal activation function (hidden layer 1 to hidden layer 2), and linear activation function (hidden layer 2 to output layer).

