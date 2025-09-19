# 🛠 Atliqe Hardware – SQL Portfolio Project

AtliQ Hardware, an Indian computer hardware company, supplies computer hardware and peripherals to many of its clients. These reports lack a factual basis and fail to provide a complete picture of the business. To address this, the project aims to develop a sales insights dashboard using Power BI. This tool will enable the sales director to access clear, data-driven insights daily, empowering him to make informed decisions and improve the company's sales decline.

This repository contains a portfolio of **SQL queries** developed using **MySQL Server** to solve real-world business data analysis problems. The project is based on the **Atliqe Hardware** dataset and is organized into **Intermediate** and **Advanced SQL** sections, covering domains such as **customer behavior, sales performance, profitability, and forecasting**.  

---

## 🗂 Dataset Source
- Provided by **Codebasics.io** as part of a public SQL challenge  
- Free download available after signing up with an email  
- Folder structure:
  - **ad_hoc_request:** Business questions to be solved  
  - **metadata:** Schema definitions and relationships  
  - **atiliq_ghardware_db:** SQL scripts to create database and insert records  

---

## 🛠 Tools & Technologies
- **SQL (MySQL Server)**  
- **Relational database concepts:** Joins, CTEs, Aggregations, Window Functions, Sub-queries, Conditional Logic  
- **Git & GitHub** for version control  

---

## 📊 Key Insights

### 🌍 Customer Distribution by Region
- **APAC:** 32% of customers  
- **Europe:** 25% of customers  
- **Others:** 43% of customers  
- **💡 Insight:** APAC dominates the customer base, showing strong growth potential in other regions  

### 💰 Salary Growth Across Product Categories (2020 → 2021)
- **Accessories:** +26%  
- **Peripherals:** +17%  
- **Networking products:** +15%  
- **💡 Insight:** Accessories experienced the highest growth, indicating either higher demand or increased employee compensation  

### 📉 Revenue Loss Due to Discounts Across Channels
- **Distribution channel:** 26% revenue loss  
- **Retail channel:** 24%  
- **Direct channel:** 16%  
- **💡 Insight:** Distribution channels are most affected by discounts; optimizing pricing could improve margins  

### 🏆 Highly Profitable Products
- **AQ Home product line:** $530 – $595 profit range  
- **💡 Insight:** Marketing and sales focus on AQ Home products can maximize profitability  

### 🌏 Sales by Country/Region
- **India:** 27% of regional sales  
- **ROA:** 22% of regional sales  
- **💡 Insight:** India and ROA are key revenue drivers; targeted campaigns could boost sales further  

### 🔝 Popular Product Variants
- **Plus2:** 11.77% market share  
- **Plus1:** 11.65% market share  
- **Standard variants:** 10–11% market share  
- **💡 Insight:** Plus variants dominate, while standard products maintain steady demand  

### 🧑‍💼 Customer Lifetime Value (CLV)
- **Top customers:**
  - Leader (Rank 1)  
  - Sage (Rank 2)  
  - Amazon (Rank 3)  
  - Neptune (Rank 4)  
- **💡 Insight:** Top customers drive long-term revenue; loyalty programs can enhance CLV  

---

## 📈 Summary of Insights
- **🌍 Regional Focus:** APAC and India are the most important markets  
- **💰 Profit Drivers:** AQ Home products and Plus variants are the most profitable  
- **📉 Channel Optimization:** Distribution and retail channels need better pricing/discount strategies  
- **🧑‍💼 Customer Strategy:** Focus on top customers for loyalty and engagement programs  

# Atliq Hardware Power BI Dashboard

This project analyzes the **sales, cost, and profitability performance** of Atliq Hardware using **Power BI** with data sourced from a **MySQL database**. It provides a clear view of customer distribution, regional sales, product profitability, and sales channels.

---

## 🔹 Project Workflow

1. **Data Extraction**

   * Connected Power BI to MySQL server to import raw sales and product tables.

2. **Data Transformation**

   * Used Power Query to clean, merge, and transform data.
   * Built a **flat file model** for better visualization and performance.

3. **Data Modeling**

   * Created custom columns and DAX measures for:

     * Total Sales
     * Profit
     * Manufacturing Cost
     * Revenue Growth

4. **Visualization**

   * Designed **two dashboards**:

     * **Executive Overview Dashboard** – KPIs and high-level metrics.
     * **Drilldown Dashboard** – Detailed insights by customer, region, and product.
   * Visualization types: bar/column charts, line charts, doughnut, KPIs, cards, matrix tables with conditional formatting, sparklines, and navigation buttons.

---

## 🔹 Key Insights

* **Sales & Profitability**

  * Total quantity sold: **71M units**.
  * Total sales revenue: **\$1.7B**.
  * Sales exceed manufacturing cost by **145.5%**.
  * Total profit: **\$1.5B**.

* **Products**

  * Highest manufacturing cost: **Desktops (\~£400/unit)**.
  * Lowest cost & price: **Accessories/Peripherals (£14–16/unit)**.
  * Most sold units: **Accessories (45M)**, **Storage (12M)**, **Peripherals (8M)**.
  * Least sold: **Desktops**.
  * Profit leaders: **Notebooks & Accessories**; lowest profit from **Desktops (\~\$200–300M)**.

* **Customers & Channels**

  * 70% sales from **E-commerce**, 30% from **Brick & Mortar**.
  * Key customers: **Amazon, Atiq Exclusive, Atliq E-Store**.
  * Revenue by channel: **Retail (\$1.6B)**, Direct/Distributor (\$0.25–0.35B)\*\*.

* **Regions**

  * **APAC region leads with \$1,211M**, followed by **EU with \$505M**.

---

## 🔹 Tools & Technologies

* **Power BI** – Data visualization & dashboarding
* **Power Query** – Data transformation
* **MySQL** – Data source
* **DAX** – Calculations & measures

---

## 📊 Dashboard Snapshots

<img width="600" height="600" alt="Screenshot (3)" src="https://github.com/user-attachments/assets/c12f6c72-e02a-4f56-9706-b373f58d5142" />

<img width="600" height="600" alt="Screenshot (5)" src="https://github.com/user-attachments/assets/80a55c71-a54c-446b-8140-3697e68d37cd" />

<img width="600" height="600" alt="Screenshot (13)" src="https://github.com/user-attachments/assets/2ab1e770-eab2-40d1-ae04-caa756e6118c" />


---

## 🚀 Learnings

* End-to-end BI workflow: from data extraction to storytelling.
* Hands-on practice in **data modeling, DAX, and performance optimization**.
* Building interactive, drilldown-ready dashboards for business insights.

---


