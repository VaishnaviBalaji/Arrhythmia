

Detection of arrhythmia in its early stages enables ease of treatment, and also reduces the risk of one's health. The conventional ECG machines can be used in rural areas where healthcare is primary and professional cardiologists are not available at ready. This project focuses on studying the heartbeats of various arrhythmia conditions and devising a novel way to predict the arrhythmia types using deep learing models like CNN, LSTM and GRU. Evaluation and performance of the models are done using confusion matrix, precision, recall and F1 scores. 

**Dataset:** https://www.kaggle.com/shayanfazeli/heartbeat

**MAIN_Arrhytmia_5fold.ipynb:**
This is the main coding file that contains the proper preprocessing with appropriate comments, three deep learning neural network models namely CNN, LSTM and GRU with their evaluations, and acknowledgments 


**Baseline_KNN.ipynb:**
This is the baseline KNN machine learning model with the same pre-processing steps for statistical tests and comparisons 

**R_peaks_hbm.m:**
This is a Matlab file, tried out to demonstrate and understand the sym4 wavelet transform which detects R peaks and heartbeat calculations 

**100m.mat:**
Sample ECG data file in .mat format. 


**ccn.h5:**
This is the CNN model with weights and parameters


**lstm.h5**
This is the LSTM model with weights and parameters


**gru.h5 :**
This is the GRU model with weights and parameters
