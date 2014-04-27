CODE BOOK
========================

* a1: Data Frame contaning features from text/X_test.txt (2947 X 561)
* a2: Data Frame contaning features from train/X_train.txt (7352 X 561)
* aa Merged Data Frame (10299 X 561)
* b1: Activity Index for corresponding a1 (2947 X 1)
* b2: Activity Index for corresponding a2 (7352 X 1)
* bb Merged Data Frame (10299 X 1)
* c1: Subject ID for corresponding a1 (2947 X 1)
* c2: Subject ID for corresponding a2 (7352 X 1)
* cc Merged Data Frame (10299 X 1)
* features: Feature ID and labels (561 X 2)
* subset_features: subset of features that contains mean() or std() in thier labels (66)
* extracted_data: subset of aa with columns of subset_features
* activity_labels: Activity ID and labels (6 X 2)
