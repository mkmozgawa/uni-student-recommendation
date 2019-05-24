library(tidyverse)
library(ggthemes)
source("global.R")

shinyServer(function(input, output) {
  
  dataset_info <- reactive({
    x_axis <- input$x_axis
    y_axis <- input$y_axis
    list(x_axis=x_axis, y_axis=y_axis)
  })
  
  output$student_plot <- renderPlot({
    x_axis <- dataset_info()[[1]]
    y_axis <- dataset_info()[[2]]
    students %>% ggplot(aes_string(x=x_axis, y=y_axis)) +
      geom_point(aes(color=factor(students_grad_status),
                                  alpha=0.5)) +
      labs(title="A 2d represenation of 3 dimensions -- choose two vectors from the dropdown to change the X and Y axis.
           The points are coloured based on the student's graduation status.
           This provides an insight into the relationship between the pairs of data vectors for graduates and non-graduates.",
           xlab = x_axis,
           ylab = y_axis) +
      guides(color=guide_legend(title="Graduated?"), alpha=guide_legend(title="Alpha factor")) +
      theme_few()
  })
  
  output$candidate_plot <- renderPlot({
    x_axis <- dataset_info()[[1]]
    y_axis <- dataset_info()[[2]]
    candidates %>% ggplot(aes_string(x=x_axis, y=y_axis)) +
      geom_point(aes(color=factor(students_acc_status),
                     alpha=0.5)) +
      labs(title="A 2d represenation of 3 dimensions -- choose two vectors from the dropdown to change the X and Y axis.
           The points are coloured based on the student's acceptance status.
           This provides some insight into the graduation criteria.",
           xlab = x_axis,
           ylab = y_axis) +
      guides(color=guide_legend(title="Accepted?"), alpha=guide_legend(title="Alpha factor")) +
      theme_few()
  })
  
})