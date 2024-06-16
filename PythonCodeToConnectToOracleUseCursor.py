##Kumar Neeraj From gitHub Banch1.1 New File
## Code in python to connect to oracle database  select rows from table order with field customerId, price and quantity and manipulate one row at a time say read quantity and  price , create new field total price = price*quantity
##To connect to an Oracle database in Python and retrieve data from a table, I   use the `cx_Oracle` library. Eexample of how to achieve this: python
import cx_Oracle

# Replace with your actual credentials
user = 'your_username'
password = 'your_password'
dsn = 'your_dsn'  # Data Source Name (usually includes hostname, port, and service name)

# Establish a connection
con = cx_Oracle.connect(user, password, dsn)

# Create a cursor
cur = con.cursor()

# Execute your SQL query (replace 'your_table' with the actual table name)
cur.execute("SELECT customerId, price, quantity FROM your_table ORDER BY customerId")

# Fetch one row at a time
for row in cur:
    customer_id, price, quantity = row
    total_price = price * quantity
    print(f"Customer ID: {customer_id}, Price: {price}, Quantity: {quantity}, Total Price: {total_price}")

# Close the cursor and connection
cur.close()
con.close()

###Remember to replace `'your_username'`, `'your_password'`, `'your_dsn'`, and `'your_table'` with your actual database credentials and table name. This code connects to the Oracle database, retrieves the specified columns, and calculates the total price for each row. Let me know if you need further assistance! 😊 ¹²³⁴⁵

