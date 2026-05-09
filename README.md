# Walmart Sales Analysis

## Project Pipeline

![Project Pipeline](screenshots/walmart-pipeline.png)

---

## Overview

This project analyzes Walmart transactional sales data using Python, Pandas, MySQL, and SQL to uncover business insights related to sales performance, customer behavior, revenue trends, and branch operations.

The project includes:
- Data cleaning and preprocessing
- Feature engineering
- MySQL database integration
- SQL-based business analysis
- Revenue and customer trend analysis

---

## Technologies Used

- Python
- Pandas
- NumPy
- MySQL
- SQL
- SQLAlchemy
- PyMySQL
- Jupyter Notebook
- VS Code

---

## Data Cleaning & Preprocessing

Performed the following preprocessing tasks:

- Removed duplicate records
- Handled missing values
- Converted date and time columns into proper formats
- Fixed inconsistent data types
- Created additional analytical columns
- Validated cleaned dataset before database loading

---

## Feature Engineering

Created additional features such as:

- Total transaction amount
- Sales-based aggregations
- Shift classification (Morning / Afternoon / Evening)
- Revenue-based insights

---

## MySQL Integration

- Connected Python with MySQL using SQLAlchemy
- Loaded cleaned dataset into MySQL
- Performed SQL-based business analysis
- Executed complex analytical queries

---


## Business Questions Solved

- What are the different payment methods used by customers?
- Which payment method generated the highest number of transactions?
- Which payment method sold the highest number of items?
- Which product category received the highest customer ratings in each branch?
- What are the busiest days of the week for each branch?
- What are the average, minimum, and maximum ratings across categories and cities?
- Which product categories generated the highest profit?
- What is the most frequently used payment method in each branch?
- How are transactions distributed across Morning, Afternoon, and Evening shifts?


---

## Project Structure

```text
WALMART/
│
├── data/
├── notebooks/
├── sql/
├── screenshots/
├── README.md
└── requirements.txt
```

---

## How to Run

Install dependencies:

```bash
pip install -r requirements.txt
```

Run the Jupyter notebook inside the `notebooks/` directory.

---

## Future Improvements

- Interactive dashboard creation
- Power BI / Tableau integration
- Automated ETL pipeline
- Predictive sales forecasting
