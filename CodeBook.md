CODE BOOK
========================

i) a1: Data Frame contaning features from text/X_test.txt (2947 X 561)
i) a2: Data Frame contaning features from train/X_train.txt (7352 X 561)
i) aa Merged Data Frame (10299 X 561)
i) b1: Activity Index for corresponding a1 (2947 X 1)
i) b2: Activity Index for corresponding a2 (7352 X 1)
i) bb Merged Data Frame (10299 X 1)
i) c1: Subject ID for corresponding a1 (2947 X 1)
i) c2: Subject ID for corresponding a2 (7352 X 1)
i) cc Merged Data Frame (10299 X 1)
i) features: Feature ID and labels (561 X 2)
i) subset_features: subset of features that contains mean() or std() in thier labels (66)
i) extracted_data: subset of aa with columns of subset_features
i) activity_labels: Activity ID and labels (6 X 2)
