# decodelabs-project-1-data-analysis
Project 1 – Data Analysis | DecodeLabs Internship
# Project 1 – Data Cleaning & Data Analysis

## Overview

This project was completed as part of the **DecodeLabs Internship**.

The objective is to clean, validate, and prepare an e-commerce dataset using **Python and Pandas**.

## Dataset

* **1,200 orders**
* **14 columns**
* E-commerce transaction data including products, prices, orders, payments, coupons, and referrals.

## Technologies

* Python 3
* Pandas
* Kaggle


## Main Steps

1. **Data Loading & Inspection**

   * Loaded the Excel dataset.
   * Checked structure and data types.

2. **Missing Values**

   * Found **309 missing values** in `CouponCode`.
   * Replaced them with `No Coupon`.

3. **Duplicates**

   * **0 duplicate rows**
   * **0 duplicate OrderIDs**

4. **Date Validation**

   * Converted the `Date` column to datetime format.

5. **Coupon Analysis**

   * FREESHIP: 313
   * WINTER15: 292
   * SAVE10: 286

6. **Total Price Validation**

   * Compared `TotalPrice` with `Quantity × UnitPrice`.
   * **0 incorrect values found.**

7. **Export**

   * Generated the cleaned dataset:
   * `Dataset_Cleaned.xlsx`

## Result

The dataset was successfully **cleaned, validated, and exported**, making it ready for further analysis and visualization.



**DecodeLabs Internship – Project 1**
