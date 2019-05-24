library(shiny)
source("global.R")

shinyUI(fluidPage(
  
  headerPanel("Student data visualization"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("x_axis", 
                  label = p("Select your X variable:"), 
                  choices = c(students_columns), 
                  selected = NULL),
      selectInput("y_axis",
                  label = p("Select your Y variable:"),
                  choices = c(students_columns),
                  selected = NULL),
      uiOutput("axis_data")
    ),
    
    # Tabsets
    mainPanel(
      tabsetPanel(
        tabPanel("Student plot",
                 plotOutput("student_plot")
        ),
        tabPanel("Candidate plot",
                 plotOutput("candidate_plot"))
      )
    )
  )
))