# MongoDB Data Analysis Project

## Overview

This project involves utilizing MongoDB to analyze data related to accessories, including product information, sales, and stock. The goal is to gain valuable insights from the data through MongoDB aggregation queries.

## Data Insertion

The data for this project was inserted into the MongoDB database using the `mongoimport` tool. Below are the steps taken to insert the data:

1. **Install MongoDB**: Ensure we have MongoDB Server installed and configured (include MongoImport)

2. **Prepare Data Files**: In this project, we have three JSON files: `products.json`, `productSold.json`, and `productStock.json` to be inserted

3. **Use mongoimport**: Execute the `mongoimport` command for each data file to insert it into the MongoDB database. 

Now that the data is successfully inserted, we can proceed with running MongoDB aggregation queries to extract insights.

## Aggregation Queries

This project includes several MongoDB aggregation queries to extract meaningful insights from the data. You can use these queries as a starting point for your analysis:

1. **Query 1**: Find products that we not sold.

2. **Query 2**: Find the stock quantity of products not sold and sort them.

3. **Query 3**: Group product stock data by WAREHOUSE_NAME and COUNTRY_NAME.

4. **Query 4**: Group product stock data by WAREHOUSE_ID and WAREHOUSE_NAME, and calculate the number of unique products in each warehouse.

## Conclusion

This project showcases how to import and analyze JSON data using MongoDB. By executing the provided aggregation queries, we can uncover valuable insights from the data. 