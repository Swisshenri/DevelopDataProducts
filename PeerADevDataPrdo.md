
Peer Assignment Develop Data Products: Shiny Application and Reproducible Pitch.
========================================================
author: Henri
date: Aug 25, 2020
autosize: true

Background
========================================================


As part of the course of Developing Data Products I chose to make an App to predict the response of toothgrowth on guinea pigs. The information is taken from the file "Toothgrowth" which offers the following description:  The response is the length of odontoblasts (cells responsible for tooth growth) in 60 guinea pigs. Each animal received one of three dose levels of vitamin C (0.5, 1, and 2 mg/day) by one of two delivery methods, orange juice or ascorbic acid (a form of vitamin C and coded as VC)." 

App Description
========================================================


The App is almost self explanatory. You can see a graph that has two models, namely VC and OJ. The guinea pigs were administered different doses of Vitamin C either directly or through Orange Juice. Observation were made for each case and what I did was make a prediction of toothgrowth (based on linear model, "lm" function) for each method and create a slider to view the results interactively depending on what dose was administered. You can also click to make "appear" or "disappear" the line for the prediction in each case.

Data File Description and Sources of Study
========================================================


The "Toothgrowth" data frame consists of 60 observations on 3 variables:

[,1]	len	numeric	Tooth length
[,2]	supp	factor	Supplement type (VC or OJ).
[,3]	dose	numeric	Dose in milligrams/day

Source
C. I. Bliss (1952). The Statistics of Bioassay. Academic Press.
References
McNeil, D. R. (1977). Interactive Data Analysis. New York: Wiley.
Crampton, E. W. (1947). The growth of the odontoblast of the incisor teeth as a criterion of vitamin C intake of the guinea pig. The Journal of Nutrition, 33(5), 491–504. doi: 10.1093/jn/33.5.491.

Work Performed Details and Links
========================================================

Please click on this link to see the final App

<https://henrishiny.shinyapps.io/MyAppPeerAsgnmtMo09We04/?_ga=2.31662526.1225290130.1598385830-1661009778.1598147308>.


Please click on this link to see the source files on Github repository:

<https://github.com/Swisshenri/DevelopDataProducts>


Thanks
