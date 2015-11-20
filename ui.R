library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Iris Species Prediction"),
    sidebarPanel(
        sliderInput('Sepal.Length', 'Sepal Length (cm)', value=6, min=4, max=8, step=0.1),
        sliderInput('Sepal.Width', 'Sepal Width (cm)', value=3, min=2, max=5, step=0.1),
        sliderInput('Petal.length', 'Petal Length (cm)', value=3.5, min=1, max=7, step=0.1),
        sliderInput('Petal.width', 'Petal Width (cm)', value=0.1, min=0.1, max=2.5, step=0.1)
    ),
    mainPanel(
        h3('Description'),
        p('This application can be used to help determine the species of an iris based on four measurements: Sepal Length, Sepal Width, Petal Length and Petal Width. Sliders have been provided on the left to adjust the measurements within a typical range for each of these dimension.'),
        p('A few examples are the following:'),
        tags$ul(
            tags$li('Setosa: Sepal Length = 6.0, Sepal Width = 3.0, Petal Length = 3.5, Petal Width = 0.1'),
            tags$li('Versicolor: Sepal Length = 6.7, Sepal Width = 3.4, Petal Length = 5.5, Petal Width = 0.4'),
            tags$li('Virginica: Sepal Length = 5.0, Sepal Width = 2.8, Petal Length = 4.8, Petal Width = 2.3')
        ),
        p('The model used to predict the Iris species is a Linear Discriminant Analysis which is comparing the four variables on this application against the outcome of species. The model has the following estimated accuracy rate:'),
        verbatimTextOutput("summary"),
        p('Based on the accuracy and the inputs you have provided, we can predict with 98.3% confidence that the species of iris you are measuring is the following:'),
        verbatimTextOutput("result"),
        uiOutput("picture")
    )
))