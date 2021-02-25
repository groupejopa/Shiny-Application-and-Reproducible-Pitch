#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
#Coursera - Developing Data Products- Course Project 

# ui.R file for the shiny app 

# This app was developed to help people choose the best car for their trip, using mtcars dataset, from [R]  


library(markdown) 


shinyUI(
    navbarPage(h4("Car Expenditure App"), 
                   tabPanel("Home", 
                            
                            # Sidebar 
                            sidebarLayout( 
                                sidebarPanel( 
                                    helpText("Please povide necessary information about your car"), 
                                    numericInput('dis', 'Distance (in miles):', 50, min = 1, max = 1000), 
                                    numericInput('cost', 'MPG Price (per gallon):', 2.31, min = 2, max = 5, step=0.01), 
                                    numericInput('gas', 'Maximum expenditure on gasoline:', 60, min=1, max=1000), 
                                    checkboxGroupInput('cyl', 'Number of cylinders:', c("Two"=2, "Four"=4, "Six"=6), selected = c(2,4,6)), 
                                    sliderInput('disp', 'Displacement', min=70, max=480, value=c(70,480), step=10), 
                                    sliderInput('hp', 'Gross horsepower', min=50, max=340, value=c(50,340), step=10), 
                                    checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1)) 
                                ), 
                                
                                
                                mainPanel( 
                                    dataTableOutput('table') 
                                ) 
                            ) 
                   ), 
                   tabPanel("About",
                            mainPanel( 
                                includeMarkdown("about.Rmd") 
                            ) 
                   ) 
) 
)    
