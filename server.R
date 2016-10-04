library(shiny)

shinyServer(

  function(input,output){
    CI<-reactive(
      {x<-seq(0,as.numeric(input$t),1)
      (1+as.numeric(input$I)/12)^(12*as.numeric(x))-1})
    CIP<-reactive({as.numeric(input$P)*(1+as.numeric(input$I)/12)^(12*as.numeric(input$t))})
    xmonths<-reactive({XI<-seq(0,as.numeric(input$t),1)})
    output$text1<-renderText({as.numeric(input$P)})
    output$text2<-renderText({as.numeric(input$I)})
    output$text3<-renderText({as.numeric(input$t)})
    output$text4<-renderText({CIP()})
 
    output$newline<-renderPlot({
      if(input$goButton==1) plot(xmonths(),CI(),xlab="Years",ylab="Interests(%)",type="b",main='Compound Interest graph')
      
    })
      
      
  }
  
)

