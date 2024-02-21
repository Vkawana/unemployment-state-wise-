# Dashboard UI
ui <- dashboardPage(
  
  dashboardHeader(
    title = "Statewise Cases of Unemployment",
    titleWidth = 650
  ),
  dashboardSidebar(
    sidebarMenu(
      id = "sidebar",
      menuItem("Dataset", tabName = "data", icon = icon("database")),
      menuItem(text = "Visualization", tabName = "viz", icon = icon("chart-line")),
      menuItem(text = "Analysis", tabName = "vi", icon = icon("chart-line")),
      selectInput(inputId = "var1", label = "Select the Crime", choices = choices1, selected = "2019 - CR")
    )
  ),
  
  dashboardBody(
    tabItems(
      #First tab item
      tabItem(tabName = "data",
              #tab box
              tabBox(id = "t1", width = 12,
                     tabPanel("About",
                              fluidRow(
                                column(width = 8,
                                       tags$br() , 
                                       tags$a("This comprehensive dashboard provides a detailed overview of the State/UT-wise Unemployment due to various factors ")),
                                column(width = 4, tags$br() ,
                                      # tags$p("Abbrevations used are (CR) Child Rape, (CCS) Child Sexual Assault, (CON) Child Online Grooming, (PAR) Possession and Distribution of Child Abuse Material, (PCS) Child Sexual Exploitation, and (PCV) Child Victimization")
                                )
                              )  
                              
                     ),
                     tabPanel("Data",dataTableOutput("dataT")),
                     tabPanel("Structure",verbatimTextOutput("structure")),
                     tabPanel("Summary",verbatimTextOutput("summary")))),
      tabItem(tabName = "viz",
              #tab box
              tabBox(id = "t1", width = 12,
                     tabPanel("Crime Trends by States",value = "trends", plotlyOutput("bar")),
                     tabPanel("Distribution", value = "distro",plotlyOutput("histplot")))),
      tabItem(tabName = "vi",
              tabBox(id = "t1", width = 12,
                     tabPanel("About",
                              fluidRow(
                                column(width = 8,
                                       tags$br() , 
                                       tags$a("This part of Dashboard gives different years farmers sucide and its basic descriptive statistics just select the year from the Tab")),
                                column(width = 4, tags$br())
                                
                              )),
                     tabPanel("Unemployed 2017", print('Mean = '), verbatimTextOutput("vi"), print('Standard Deviation = '), verbatimTextOutput("ii"), print('Maximum = '), verbatimTextOutput("jj"),
                              fluidRow(
                                column(width = 8,
                                       tags$br() , 
                                       tags$a("This part of Dashboard gives different years farmers sucide and its basic descriptive statistics")),
                                column(width = 4, tags$br())
                             )),
              
      tabPanel("Unemployed 2018", print('Mean = '), verbatimTextOutput("gg"), print('Standard Deviation = '), verbatimTextOutput("hh"), print('Maximum  = '), verbatimTextOutput("kk"),
               fluidRow(
                 column(width = 8,
                        tags$br() , 
                        tags$a("This part of Dashboard gives different years farmers sucide and its basic descriptive statistics")),
                 column(width = 4, tags$br())
               )),
      
      tabPanel("Unemployed 2019", print('Mean = '), verbatimTextOutput("ll"), print('Standard Deviation = '), verbatimTextOutput("mm"), print('Maximum  = '), verbatimTextOutput("nn"),
               fluidRow(
                 column(width = 8,
                        tags$br() , 
                        tags$a("This part of Dashboard gives different years farmers sucide and its basic descriptive statistics")),
                 column(width = 4, tags$br())
               )),
      tabPanel("Unemployed 2020", print('Mean = '), verbatimTextOutput("oo"), print('Standard Deviation = '), verbatimTextOutput("pp"), print('Maximum  = '), verbatimTextOutput("qq"),
               fluidRow(
                 column(width = 8,
                        tags$br() , 
                        tags$a("This part of Dashboard gives different years farmers sucide and its basic descriptive statistics")),
                 column(width = 4, tags$br())
               )),
      tabPanel("Unemployed 2021", print('Mean = '), verbatimTextOutput("rr"), print('Standard Deviation = '), verbatimTextOutput("ss"), print('Maximum  = '), verbatimTextOutput("tt"),
               fluidRow(
                 column(width = 8,
                        tags$br() , 
                        tags$a("This part of Dashboard gives different years farmers sucide and its basic descriptive statistics")),
                 column(width = 4, tags$br())
))))
)))