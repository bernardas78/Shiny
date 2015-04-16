library(shiny)

shinyServer(function(input, output) {
    
    output$histNorm <- renderPlot({
        breaks=input$breaks
        col=input$col
        cnt=as.numeric(input$cnt)
        if (cnt>10^6) cnt<-10^6
        hist(rnorm(cnt),breaks=breaks, main=paste("Count of random normals: ",cnt),col=col)
    })
})
