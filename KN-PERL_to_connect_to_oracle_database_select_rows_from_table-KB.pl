# KN - Code in PERL to connect to oracle database  select rows from table order with field customerId, price and quantity and manipulate one row at a time say read quantity and  price , create new field total price = price*quantity.
#Below is an example of how you can connect to an Oracle database using Perl (specifically the **DBI** module) and perform the requested operations:

###KN--> perl
#!/usr/bin/env perl
use strict;
use warnings;
use DBI;

# Database connection details
my $db_driver   = "Oracle";  # Replace with your database driver
my $db_name     = "your_db_name";
my $db_user     = "your_username";
my $db_password = "your_password";

# Establish the database connection
my $dbh = DBI->connect("DBI:$db_driver:$db_name", $db_user, $db_password)
    or die "Error connecting to the database: $DBI::errstr";

# Prepare and execute the SQL query
my $sql_query = "SELECT customerId, price, quantity FROM your_table_name ORDER BY customerId";
my $sth = $dbh->prepare($sql_query);
$sth->execute();

# Process each row
while (my ($customerId, $price, $quantity) = $sth->fetchrow_array()) {
    my $total_price = $price * $quantity;
    print "Customer ID: $customerId, Price: $price, Quantity: $quantity, Total Price: $total_price\n";
}

# Clean up
$sth->finish();
$dbh->disconnect();

# Note: Replace placeholders (your_db_name, your_username, your_password, your_table_name)
# with actual values from your Oracle setup.

##KN Make sure to replace the placeholders (`your_db_name`, `your_username`, `your_password`, `your_table_name`) with your actual database details. This Perl script connects to the Oracle database, retrieves rows from the specified table, calculates the total price, and prints the results for each row¹²³. 🚀

