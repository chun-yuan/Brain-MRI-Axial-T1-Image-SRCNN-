# Brain MRI Axial T1 Image SRCNN
Using Three Layers SRCNN (Proposed by Chao Dong at all) to Brain MRI Axial T1 Image. I programmed with Python tensorflow. Training the model in Google colab.

# How to use the code?
First, you need to execute utils.py, model.py and main.py code. 
Second, you can adjust "is_train" parameter in "main.py". When you want to training model, you should set is_train in "True". When you want to testing model, you should set is_train in "False".
Third, after you test the image which you want by the trained model. You can see your SRCNN image in "sample ---> my SRCNN.png file".

# image size and label size setting
Initial, we separate 255x255 pixel image into N 33x33 pixel sub-image. After convolution caculate, 21x21 piel sub-image will stack back to 252x252 SRCNN image.

