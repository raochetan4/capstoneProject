## Capstone: Coursera Data Science

library(shiny)
library(markdown)

## SHINY UI
shinyUI(
        fluidPage(
                titlePanel("DATA SCIENCE CAPSTONE - Predict Word"),
                sidebarLayout(
                        sidebarPanel(
                                helpText("INSTRUCTIONS:"),
                                helpText("1 - Input a word/word pair/sentence/text below to find the next predicted word",
                                         hr(),
                                         "2 - The next most likely word will be predicted by underlying sophisticated code in the box on the right",
                                         hr(),
                                         "3 - This shiny app expects you to put partial text."),
                                hr(),
                                textInput("inputText", "ENTER A WORD/SENTENCE:",value = ""),
                                hr()
                                ),
                mainPanel(
                        h2("PREDICTED WORD:"),
                        verbatimTextOutput("prediction"),
                        strong("YOU ENTERED:"),
                        strong(code(textOutput('sentence1'))),
                        br(),
                        strong("What is the N-gram used for the prediction:"),
                        strong(code(textOutput('sentence2'))),
                        hr(),
                        img(src = 'swiftkey_logo.jpg', height = 101, width = 467),
                        hr(),
                        img(src = 'coursera_logo.png', height = 101, width = 467),
                        hr()
                        )
                )
        )
)