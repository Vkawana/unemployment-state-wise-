# Server
server = function(input, output, session) {
  output$vi = renderPrint(
    mean(data$`2017-18`, na.rm = T)
    
  )
  output$ii = renderPrint(
    sd(data$`2017-18`, na.rm = T)
    
  )
  output$jj = renderPrint(
    max(data$`2017-18`, na.rm = T)
    
  )
  output$gg = renderPrint(
    mean(data$`2018-19`, na.rm = T)
  )
  output$hh = renderPrint(
    sd(data$`2018-19`, na.rm = T)
  )
  output$kk = renderPrint(
    max(data$`2018-19`, na.rm = T)
  )
  output$ll = renderPrint(
    mean(data$`2019-20`, na.rm = T)
  )
  output$mm = renderPrint(
    sd(data$`2019-20`, na.rm = T)
  )
  output$nn = renderPrint(
    max(data$`2019-20`, na.rm = T)
  )
  output$oo = renderPrint(
    mean(data$`2020-21`, na.rm = T)
  )
  output$pp = renderPrint(
    sd(data$`2020-21`, na.rm = T)
  )
  output$qq = renderPrint(
    max(data$`2020-21`, na.rm = T)
  )
  output$rr = renderPrint(
    mean(data$`2021-22`, na.rm = T)
  )
  output$ss = renderPrint(
    sd(data$`2021-22`, na.rm = T)
  )
  output$tt = renderPrint(
    max(data$`2021-22`, na.rm = T)
  )
  #Structure
  output$structure = renderPrint(
    #structure
    data %>% 
      str()
  )
  #Summary
  output$summary = renderPrint(
    #Summary
    data %>% 
      summary()
    
  )
  #Data Table
  output$dataT = renderDataTable({
    datatable(data, options = list(scrollX = TRUE))
  })
  #stacked Histogram
  output$histplot = renderPlotly({# Histogram
    histogram <- data %>% 
      plot_ly() %>% 
      add_histogram(~get(input$var1)) %>% 
      layout(xaxis = list(title = input$var1))
    
    # Boxplot
    boxplot <- data %>% 
      plot_ly() %>% 
      add_boxplot(~get(input$var1)) %>% 
      layout(yaxis = list(showticklables = F))
    
    # Stacking plots using subplot
    subplot_list <- list(boxplot, histogram)  # Make sure to use a list
    
    # Create subplot
    subplot <- subplot(subplot_list, nrows = 2, shareX = TRUE) %>% 
      hide_legend() %>% 
      layout("Distribution Chart - Histogram and Boxplot",
             yaxis = list(title = "Frequency"))
    
  })
  output$bar <- renderPlotly({
    data %>% 
      plot_ly() %>% 
      add_bars(x=~`States/UTs`, y=~get(input$var1)) %>% 
      layout(title = paste("Statewise unemployed", input$var1),
             xaxis = list(title = "State"),
             yaxis = list(title = paste(input$var1, "Unemployment Rate") ))
  })

}
