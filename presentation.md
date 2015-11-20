Iris Prediction Application 
========================================================
author: Jason Olson
date: 
width: 1440
height: 990

Iris Species
========================================================

There are three common Iris species

- Setosa
- Versicolor
- Virginica

Telling the difference in the field can be challenging!

The data used in this model and application was collected by Edgar Anderson in 1935.

Data
========================================================

The data which was used to create the model was the Iris dataset. In the study 150 cases were collected (50 of each species) and 4 measurements were taken:

Sepal Length, Sepal Width, Petal Length, Petal Width

Here is a quick summary of the data:


```r
summary(iris)
```

```
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
 Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100  
 1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300  
 Median :5.800   Median :3.000   Median :4.350   Median :1.300  
 Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199  
 3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800  
 Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  
       Species  
 setosa    :50  
 versicolor:50  
 virginica :50  
                
                
                
```

Model Description
========================================================

The model which the application is based on is a Linear Discriminant Analysis and has approximately the following accuracy level:


```
 Accuracy 
0.9555556 
```

The accuracy level is precise enough to quickly get an idea of which species are you are looking at while in the field.

Conclusion
========================================================
Next time you are out looking at an Iris you'll be able to quickly tell the difference between the species by using the Iris Predication Application.

![alt text](http://middlesexconservation.org/wp-content/uploads/2012/02/irissetosacanadensis.gif)
![alt text](https://www.ct-botanical-society.org/img/pics_i/irisvers_fl.jpg)
![alt text](https://www.prairiemoon.com/images/P/iris-virginica-shrevi-southern-blue-flag-flower2.jpg)
