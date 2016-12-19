library(shiny) 
shinyUI(
    pageWithSidebar(
        headerPanel("Body Mass Index (BMI) Calculator"),
        
        sidebarPanel(
            numericInput('weight', 'Weight in pounds',0) ,
            numericInput('height', 'Height in inches', 0, min = 50, max = 100, step = 10),
            submitButton('Calculate BMI')
        ), 
        mainPanel(
            p('Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.'),
            p('BMI can be used to indicate if you are overweight, obese, underweight or normal. A healthy BMI score is between 20 and 25.'),
            tags$div(
                tags$ul(
                    tags$li('BMI <18.5       : Underweight'),
                    tags$li('BMI [18.5-24.9] : Normal weight'),
                    tags$li('BMI [25-29.9]   : Overweight'),
                    tags$li('BMI >=30        : Obese')
                )
            ),
            
            h4('Calculating BMI based on values entered by you:'), 
            p('weight in pounds:'), verbatimTextOutput("inputweightvalue"),
            p('height in inches:'), verbatimTextOutput("inputheightvalue"),
            h4('Your BMI is:'),
            verbatimTextOutput("estimation"),
            p('It means that you are:'),strong(verbatimTextOutput("diagnostic"))
            
            
        )
        
    )   
)
