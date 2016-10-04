library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Calculator for Compounded Interest"),
  sidebarPanel(helpText("The app contains a code to calculate the compounded interests on a monthly basis."),
    helpText("The Principal amount from after t number of years is calculated by a reactive function that will save on floating point calculations"),          
    textInput(inputId="P",label="Principal Amount"),
    helpText("The interest rates are given as per year for eg: 1 % is 0.01"),
    textInput(inputId="I",label="Interest rates"),
    textInput(inputId="t",label="Number of years"),
    helpText("The Graph that shows the interests over the years can only be generated with the click of the button"),
    actionButton("goButton","Press Button to generate Graph ")
      ),
 mainPanel(
   p('Principal Amount'),
   textOutput('text1'),
   p('Interests'),
   textOutput('text2'),
   p('Number of months'),
   textOutput('text3'),
   p('Compounded Principal (calculated with reactive function)'),
   textOutput('text4'),
   p('Plot of Compound Interests '),
   plotOutput('newline')	
   
 )

   
   
   

  
  
  
  
  
))