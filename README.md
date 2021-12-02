# Credit-Risk-Analysis
  Prediction analysis of default payments using artificial neural networks done on a dataset taken from UCI ML repository.

**How to execute the code?**
  The code is executed on MATLAB by just running the filename as a commandline argument. No specific packages are used.

**Methods and Techniques used**
  This analysis was implemented using Artificial Neural Networks. The dataset used was modified by reducing the number of attributes from 24 to 15 and the number of instances from 30,000 to 5,000. The dataset is then divided into 2 halves – one for training and one for testing. Various changes and analysis were performed to determine the best network setting for the given dataset. This was determined by observing which setting got the least mean square error (MSE) and the regression value (R) close to 1.
  
  The number of iterations per analysis is set to 1,000. Factors modified to find the network with most accurate predicting ability are - number of nodes per hidden layer, training algorithms, learning rate (lr), and momentum constant (mc). The training algorithms used in this experiment are Levenberg-Marquardt (trainlm), Resilient Backpropagation (trainrp), and Bayesian Regularization (trainbr). Fixed parameters are the number of hidden layers, which is 2, and the activation functions - bipolar sigmoidal activation function (input layer to hidden layer 1), binary sigmoidal activation function (hidden layer 1 to hidden layer 2), and linear activation function (hidden layer 2 to output layer).

**Experimental analysis and results**
  On analyzing the network with changes in the above-mentioned parameters, the following results were observed: 

MSE and R for different training algorithms and learning rates when momentum constant = 0.5:

	          lr = 0.4
	        MSE	        R
trainlm	  1.2896e-05	0.99999
trainrp	  0.94984	    0.039834
trainbr	  0.95117	    0.27044

	          lr = 0.7
	        MSE	        R
trainlm	  2.1451e-07	1
trainrp	  0.83275	    0.35307
trainbr	  0.82365   	0.36689

	          lr = 1.0
	        MSE	        R
trainlm	  3.2279e-08	1
trainrp	  0.85373	    0.32032
trainbr 	0.94976	    0.76494
-----------------------------------

MSE and R for different training algorithms and momentum constants when learning rate = 1.0:

	          mc = 0.3
	        MSE	        R
trainlm	  1.5752e-07	1
trainrp	  0.85494	    0.31833
trainbr	  0.49751	    0.72209

	          mc = 0.5
	        MSE	        R
trainlm	  3.2279e-08	1
trainrp	  0.85373	    0.32032
trainbr	  0.94976	    0.76494

	          mc = 0.9
	        MSE	        R
trainlm	  8.9203e-08	1
trainrp	  0.86104	    0.30809
trainbr	  1.0808	    0.74177
-----------------------------------

MSE and R for different number of nodes nodes in the hidden layers, after fixing a training algorithm, learning rate and momentum constant:

	trainlm; lr = 1.0; mc = 0.5
	        MSE	        R
[15, 20]	1.5752e-07	1
[25, 30]	6.261e-08	  1
[30, 35]	3.1143e-09	1

From the above experimental analysis, we can conclude that the best architecture for the given network and dataset is achieved using Levenberg-Marquardt training algorithm, learning rate = 1.0, momentum constant = 0.5, number of nodes in hidden layer 1 = 30, and number of nodes in hidden layer 2 = 35. This is because of minimum mean square error (very close to the set error goal of 1e-9) and regression value being 1 under these settings.

