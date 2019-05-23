# Brain MRI Axial T1 Image SRCNN
Using Three Layers SRCNN (Proposed by Chao Dong at all) to Brain MRI Axial T1 Image. I programmed with Python tensorflow. Training the model in Google colab.

# How to use the code?
First, you need to execute utils.py, model.py and main.py code. 
Second, you can adjust "is_train" parameter in "main.py". When you want to training model, you should set is_train in "True". When you want to testing model, you should set is_train in "False".
Third, after you test the image which you want by the trained model. You can see your SRCNN image in "sample ---> my SRCNN.png file".

# image size and label size setting
Initial, we separate 255*255 pixel image into N 33*33 pixel sub-image. After convolution caculate, 21*21 piel sub-image will stack back to 252*252 SRCNN image.

