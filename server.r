require(shiny);
require(caret);
require(e1071);
require(randomForest);
require(nnet);
require(glmnet);
#install.packages('devtools')
#devtools::install_github('shiny-incubator', 'rstudio')

set.seed(11111)

data("iris")
fullDataset <- iris

## Create the training and test data set
inTrain <- createDataPartition(y=fullDataset$Species, p=0.7, list=FALSE)
trainDataset <- fullDataset[inTrain,]
testDataset <- fullDataset[-inTrain,]

model_lda <- train(Species~., data=trainDataset, method="lda")
model_lda_Accuracy <- max(model_lda$results$Accuracy)
predict_lda <- predict(model_lda, testDataset)
cf_lda <- confusionMatrix(predict_lda, testDataset$Species)
modelTest_lda_Accuracy <- cf_lda$overall["Accuracy"]

irisPrediction <- function(SLength, SWidth, PLength, PWidth) { 
    inputParams <- data.frame("Sepal.Length" = SLength, "Sepal.Width" = SWidth, "Petal.Length" = PLength, "Petal.Width" = PWidth)
    prediction <- predict(model_lda, inputParams)
    prediction
}

getImage <- function(selectedImage) {
    switch(as.character(selectedImage),
        "setosa" = "http://middlesexconservation.org/wp-content/uploads/2012/02/irissetosacanadensis.gif",
        "versicolor" = "https://www.ct-botanical-society.org/img/pics_i/irisvers_fl.jpg",
        "virginica" = "https://www.prairiemoon.com/images/P/iris-virginica-shrevi-southern-blue-flag-flower2.jpg")
}

shinyServer(
    function(input, output) {
        output$summary <- renderPrint(model_lda_Accuracy)
        output$result <- renderPrint(irisPrediction(input$Sepal.Length, input$Sepal.Width, input$Petal.length, input$Petal.width))
        output$picture <- renderUI({
            img(src = getImage(irisPrediction(input$Sepal.Length, input$Sepal.Width, input$Petal.length, input$Petal.width)), width = 400)
        })
    }

)