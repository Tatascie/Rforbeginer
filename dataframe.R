

# So here is not also list but also data frame :)

# Aufgabe 1/  Excercise 1
# Daten mit mehreren Markmalen als Data Frames

name <- c("Anna", "Oli", "Franzi", "Leni", "Michel", "Louis")
alter <- c(19, 21, 20, 22, 20, 27)
matrnr <- c(275102, 198234, 229015, 280167, 222465, 189763)
note <- c(1, 5, 2.3, 2.7, 1.3, 4)
bestanden <- (note < 4.3)

Studenten <- data.frame(Name = name, Alter = alter, Matrikelnummer = matrnr,
                        Note = note, Bestanden = bestanden)
Studenten 
str(Studenten)
#Obtain a sublist of the first 3 element from this data frame 
Studenten[1:3]
#See the note of the first 3 Student  
Studenten[1:3, c(1,4)]    
##################################### note for this command:
# 1:3 mean the element 1, 2, 3 (1:3) from whatever of  the element c(1:4) 
# of this data frame
# give it another try:
# call out the information of Bestanden from Anna and Michel
Studenten[ c(1,5), c(1,5)]
#All the information from Leni 
Studenten[4,]
#All the information from the 4th Element of the data frame
Studenten[,4]
# Another possibility to call out all information from the 4th Element:
Studenten$Note
# Call out element 3:5
Studenten[, c(3:5)]
# or this one is also right 
Studenten[, 3:5]
Studenten[note < 4]
##################################### note for this command:
# I'm a little confuse about Student[note < 4] and Studenten[Note < 4]
# one with note and other one with Note ( small n and big N)
# note is the vector, and Note is the name of the 4th index/Element of 
# this data frame. 
# after doing some experiments, here is my explanation: 
# alter is a vector, and Alter is the name of an Element from the data frame.
# because it is just a name, we can not call it out. 
# also when we put it in "", there come error. I still don't understand the 
# syntax [] but now, just accept this:
# SO.......
# When using [], in this []  it must be a vector, or the index of elements
# after or before the index number, there MUST HAVE a COMMA.
# we also write conditions in this [], 
# for example: Studenten[ alter < 24, ], important is, dont forget the COMMA
# and we have to put the comma AFTER the condition, sonst ist es falsch :) 
# when using [[]], the content inside must be a number, it's the index of the 
# elements.
# when using $, after $ it must be the name of a element from the data frame
# So far so good :)
# maybe what i wrote is not right :) I'll update it later :) 

##### BIG QUESTION ?
# HOW TO CALL OUT A LIST WITH THE CONDIDITION: A LIST OF ALL THE STUDENT 
# WHO YOUNGER THAN 25 YEARS OLD ?
# I MEAN A LIST/ TABLE/ DATA FRAM FROM THE ACTUAL DATA FRAME WITH 
# SPECIFIC CONDITIONS ?
# This is the answer :) 
# remember to add the comma after the condition :), other way is it false :)
# Still don't know why it false is, so, I STILL HABE A BIG QUESTION .9
# For example 
Studenten[ alter < 24, ]
### what is the difference between Student[3:5, ] and Studenten[ , 3:5 ]
# when first comes the comma, it just calls out the result 
# of the filter, not the whole data frame.
# when the comma comes after somethings, it means, the result is
# a data frame with the filter of its command
################################################################################
################################################################################
# Aufgabe 2/ Excercise 2
# a) Erzeugen einen Data Frame/ Create a data frame

#Alter Geschlecht Taschengeld (in Euro) besitzt Fahrrad
#6 männlich 12 ja
#7 männlich 18 ja
#6 weiblich 14 nein
#7 weiblich 20 ja
#8 männlich 26 ja
#7 weiblich 20 ja
#8 weiblich 20 nein
#b) Generieren Sie in R einen Data Frame des Alters und des Taschengeldes aller
# Kinder mit höchstens 7 Jahren.
#c) Berechnen Sie in R die Summe des Taschengelds aller Fahrradbesitzer.










