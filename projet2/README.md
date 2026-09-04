# DecodeLabs Project 2 — Exploratory Data Analysis (EDA)

## Project Overview

This project is part of the **DecodeLabs Data Analytics – Project 2**.

The objective is to perform an **Exploratory Data Analysis (EDA)** on an e-commerce dataset in order to understand:

- Patterns in the data
- Trends over time
- Distributions of variables
- Basic descriptive statistics
- Relationships between variables
- Potential outliers
- Key business observations

---

##  Objectives

The main objectives of this project are:

1. Understand the structure of the dataset.
2. Clean and prepare the data.
3. Calculate basic statistics:
   - Mean
   - Median
   - Count
4. Analyze sales and order distributions.
5. Identify trends over time.
6. Explore relationships between variables.
7. Identify potential outliers.
8. Create an interactive dashboard using **Power BI**.
9. Summarize the main findings.

---

##  Dataset

The dataset contains e-commerce order information.

## Main Columns

| Column | Description |
|---|---|
| `OrderID` | Unique order identifier |
| `Date` | Order date |
| `CustomerID` | Customer identifier |
| `Product` | Product purchased |
| `Quantity` | Quantity purchased |
| `UnitPrice` | Unit price |
| `ShippingAddress` | Shipping address |
| `PaymentMethod` | Payment method |
| `OrderStatus` | Order status |
| `TrackingNumber` | Shipment tracking number |
| `ItemsInCart` | Number of items in cart |
| `CouponCode` | Coupon used |
| `ReferralSource` | Customer referral source |
| `TotalPrice` | Total order price |

---

##  Data Cleaning

The dataset was checked and prepared before analysis.

The data preparation included:

- Checking missing values
- Checking duplicate records
- Checking data types
- Checking inconsistent values
- Preparing numerical variables
- Preparing categorical variables

For missing coupon values, the category **No Coupon** can be used to facilitate the analysis.

---

##  Excel Analysis

**Microsoft Excel** was used for data analysis and Pivot Tables.

### Descriptive Statistics

The following statistics were calculated:

- Mean
- Median
- Count

The main numerical variables analyzed are:

- `Quantity`
- `UnitPrice`
- `TotalPrice`
- `ItemsInCart`

### Pivot Tables

The following Pivot Tables were created:

1. **Unit Price by Product and Payment Method**
2. **Total Sales by Product**
3. **Total Sales by Quantity**
4. **Total Sales by Coupon Code**
5. **Orders by Payment Method and Order Status**
6. **Total Sales by Date**
7. **Sales and Orders by Referral Source**

---

##  Power BI Dashboard

**Microsoft Power BI** was used to create the final interactive dashboard.

### Key Performance Indicators (KPIs)

The dashboard includes:

- **Total Sales**
- **Total Orders**
- **Total Quantity**
- **Average Order Value**
- **Average Unit Price**
- **Median Unit Price**
- **Median Total Price**

### Visualizations

The dashboard contains:

- Sales by Product
- Sales Trend Over Time
- Orders by Payment Method
- Orders by Order Status
- Sales by Referral Source
- Coupon vs No Coupon
- Product and Sales Analysis

### Filters

The dashboard can be filtered by:

- Product
- Payment Method
- Order Status
- Coupon Code
- Referral Source
- Date

