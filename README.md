# Superstore Sales Analysis using SQL

## Project Overview

This project explores the Superstore dataset using SQL to identify sales patterns, profitability trends, and potential business issues across product categories.

The main objective was to practice SQL while answering real business questions and extracting actionable insights from the data.

---

## Dataset

The dataset contains information about:

* Orders
* Products
* Categories and sub-categories
* Sales
* Profit
* Quantity
* Discounts
* Customers
* Shipping information

Approximately 10,000 sales records were analyzed.

---

## Tools Used

* SQLite
* DB Browser for SQLite
* SQL

---

## Business Questions

Some of the questions explored during this project include:

* Which products generate the highest sales?
* Which products generate the highest profit?
* Which categories are the most profitable?
* Which category has the lowest profit margin?
* How do discounts affect profitability?
* Which Furniture sub-categories perform the worst?
* Why does the Tables sub-category have negative profitability?

---

## Key Findings

### Category Analysis

* Technology generates the highest sales and profits.
* Furniture has the second highest sales but the lowest profit margin.
* Office Supplies maintains a healthy balance between sales and profitability.

### Furniture Analysis

Further investigation showed that:

* Chairs and Furnishings are profitable.
* Bookcases and Tables generate losses.
* Tables have the worst profit margin within Furniture.

### Tables Investigation

A deeper analysis revealed that:

* Tables receive the highest average discount among Furniture sub-categories.
* Only about 35% of Table sales are profitable.
* Approximately 65% of Table sales generate losses.
* The average loss for unprofitable Table sales is around $160.

---

## Conclusion

The analysis suggests that the Furniture category's low profitability is largely driven by the performance of the Tables sub-category.

High discount rates combined with a high proportion of unprofitable sales may be significantly affecting overall margins.

---

## Files

* `queries.sql` : SQL queries used during the analysis.
* `Superstore.db` : SQLite database.
