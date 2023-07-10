# Project Title
SQL Challenge - Module 9, July 2023

## About
This project is an example of using SQL to gain insight from older data stored within a company's database. Specifically, we are analyzing the employee data from 1980 - 1990 and pulling specific data points from different tables. There are 6 tables that hold all of the data related to previous employees. A schema was created for each table and then imported using Postgres. Finally, specific questions about the employee data were answered using queries, again in Postgres.

## Table of Contents
EmployeeSQL folder
  - SQL query to create the tables to hold data
  - SQL query to analyze the data and answer questions about the data
    
Data folder (CSV files that hold the original data)
  - departments
  - dept_ employee
  - dept_manager
  - employees
  - salaries
  - titles
    
ERD Employee SQL.png is a visual of the data in the form of an Entity Relationship Diagram

## Getting Started / Installation
For this probject, you need to install Postgres and utilize pgAdmin

## Acknowledgments

Liang, lyam on Slack, helped me resolve FOREIGN KEY errors in my Table schema

I found an example from Josh Frankel on his blog to help get the right syntax for the question 8 aggregate functions and ORDER BY
https://joshfrankel.me/blog/calculating-frequency-distribution-in-postgresql/ 

