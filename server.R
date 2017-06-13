source('gender.R')

shinyServer(function(input, output) {
   
  output$barPlot <- renderPlot({
    if(input$gender.select=="Female"){
      if(input$country.select=="India"){
        par(mar=c(5.1,4.1,4.1,7.1),xpd=TRUE)
        barplot(gender.matrix.india.f,names.arg = gender.data$Gender.Statistic.Measure,col="red",las=2)
        legend("topright",inset=c(0),fill=c("red"),legend=c("India"))
      }
      if(input$country.select=="World"){
        par(mar=c(5.1,4.1,4.1,7.1),xpd=TRUE)
        barplot(gender.matrix.world.f,names.arg = gender.data$Gender.Statistic.Measure,col="blue",las=2)
        legend("topright",inset=c(0),fill=c("blue"),legend=c("World"))
      }
      if(input$country.select=="Both"){
        par(mar=c(5.1,4.1,4.1,7.1),xpd=TRUE)
        barplot(gender.matrix.both.f,names.arg = gender.data$Gender.Statistic.Measure,beside = TRUE,col=c("red","blue"),las=2)
        legend("topright",inset=c(0,0),fill=c("red","blue"),legend=c("India","World"))
      }
    }
    
    if(input$gender.select=="Male"){
      if(input$country.select=="India"){
        par(mar=c(5.1,4.1,4.1,7.1),xpd=TRUE)
        barplot(gender.matrix.india.m,names.arg = gender.data$Gender.Statistic.Measure,col="red",las=2)
        legend("topright",inset=c(0),fill=c("red"),legend=c("India"))
      }
      if(input$country.select=="World"){
        par(mar=c(5.1,4.1,4.1,7.1),xpd=TRUE)
        barplot(gender.matrix.world.m,names.arg = gender.data$Gender.Statistic.Measure,col="blue",las=2)
        legend("topright",inset=c(0),fill=c("blue"),legend=c("World"))
      }
      if(input$country.select=="Both"){
        par(mar=c(5.1,4.1,4.1,7.1),xpd=TRUE)
        barplot(gender.matrix.both.m,names.arg = gender.data$Gender.Statistic.Measure,beside = TRUE,col=c("red","blue"),las=2)
        legend("topright",inset=c(0,0),fill=c("red","blue"),legend=c("India","World"))
      }
    }
    if(input$gender.select=="Both"){
      if(input$country.select=="India"){
        par(mar=c(5.1,4.1,4.1,7.1),xpd=TRUE)
        barplot(gender.matrix.india.all,names.arg = gender.data$Gender.Statistic.Measure,beside = TRUE,col=c("blue","red"),las=2)
        legend("topright",inset=c(0,0),fill=c("blue","red"),legend=c("India Female","India Male"))
      }
      if(input$country.select=="World"){
        par(mar=c(5.1,4.1,4.1,7.1),xpd=TRUE)
        barplot(gender.matrix.world.all,names.arg = gender.data$Gender.Statistic.Measure,beside = TRUE,col=c("blue","red"),las=2)
        legend("topright",inset=c(0,0),fill=c("blue","red"),legend=c("World Female","World Male"))
      }
      if(input$country.select=="Both"){
        par(mar=c(5.1,4.1,4.1,7.1),xpd=TRUE)
        barplot(gender.matrix.both.all,names.arg = gender.data$Gender.Statistic.Measure,beside = TRUE,col=c("red","blue","green","yellow"),las=2)
        legend("topright",inset=c(0,0,0,0),fill=c("red","blue","green","yellow"),legend=c("India Male","India Female","World Male","World Female"))
      }
    }
    })
})
