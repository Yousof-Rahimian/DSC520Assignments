Assignment 4 - Instructions
For this assignment, you will create an R Markdown report. Use the assignment_04_LastnameFirstname.Rmd file as a template and add the required markup and code blocks. The following are useful references for creating R Markdown documents.

Introduction to R Markdown
The R Markdown Cheatsheet
The R Markdown Reference Guide
Tasks
YAML Metadata
 Update the YAML metadata in the template to include your name and the current date.
Markdown Basics
 Under the ## Favorite Foods section, add an ordered list of your top three favorite foods
 Under the ## Images section, insert the image 10-all-cases-log.png from completed/assignment04/plots/ directory with the caption All Cases (Log Plot)
 Add one of your favorite quotes under the ## Add a Quote section.
 Add a LaTeX formatted equation under the ## Add an Equation section.
 Add any footnote under the ## Add a Footnote section.
 Under the ## Add Citations section, create an unordered list with R for Everyone and Discovering Statistics Using R with the proper citations.
Inline Code
 Under the # Inline Code section include a code chunk that loads the ggplot2 library and following dataframes from the previous exercise:
 heights_df
 california_df
 florida_df
 ny_df
 Use the include=FALSE option
 Under the ## NY Times COVID-19 Data section, include code used to generate the log scale plot from the previous exercise.
 This is the plot that corresponds to the image 10-all-cases-log.png from completed/assignment04/plots.
 Use the echo=FALSE option to only show the plot and not the code
 Under the ## R4DS Height vs Earnings section include the code to generate the plot corresponding to the image completed/assignment03/plots/08-height-vs-earn-with-labels.png
 Use the echo=FALSE option to only show the plot and not the code
Tables
 Using the knitr package and kable function, generate a table of the Lord of the Rings characters as given in the characters_df dataframe in the prior exercise.
 Give the table the caption One Ring to Rule Them All
 Under the ## Pandoc Grid Table recreate the following table using Pandoc Markdown
Name	Race	In Fellowship?	Is Ring Bearer?	Age
Aragon	Men	Yes	No	88
Bilbo	Hobbit	No	Yes	129
Frodo	Hobbit	Yes	Yes	51
Sam	Hobbit	Yes	Yes	36
Sauron	Maia	No	Yes	7052
Word and PDF Output
 Generate Word and PDF output
RStudio should add the following to your YAML metadata

output:
  pdf_document: default
  html_document: default
  word_document: default
