README
========================

run_analysis.R is the r script that takes multiple files as input

## Assumption

Data Directory: ~/Downloads/UCI HAR Dataset/ (change first line of run_analysis.R to Dataset)

Directory Structure:

Dataset
|-- activity_labels.txt
|-- features_info.txt
|-- features.txt
|-- README.txt
|-- test
|   |-- Inertial Signals
|   |   |-- body_acc_x_test.txt
|   |   |-- body_acc_y_test.txt
|   |   |-- body_acc_z_test.txt
|   |   |-- body_gyro_x_test.txt
|   |   |-- body_gyro_y_test.txt
|   |   |-- body_gyro_z_test.txt
|   |   |-- total_acc_x_test.txt
|   |   |-- total_acc_y_test.txt
|   |   `-- total_acc_z_test.txt
|   |-- run_analysis.R
|   |-- subject_test.txt
|   |-- X_test.txt
|   `-- y_test.txt
`-- train
    |-- Inertial Signals
    |   |-- body_acc_x_train.txt
    |   |-- body_acc_y_train.txt
    |   |-- body_acc_z_train.txt
    |   |-- body_gyro_x_train.txt
    |   |-- body_gyro_y_train.txt
    |   |-- body_gyro_z_train.txt
    |   |-- total_acc_x_train.txt
    |   |-- total_acc_y_train.txt
    |   `-- total_acc_z_train.txt
    |-- subject_train.txt
    |-- X_train.txt
    `-- y_train.txt

Output File: TidyDataSet.txt

TidyDataSet.txt is comma seprated value text file
