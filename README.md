# README
This is a system that can be used for tracking inventory and warehouses. It was created for the Shopify intern challenge. A user can have many warehouses and keep track of all their inventory for each warehouse location. For my project I have started the beginning of an inventory template application that can be used for any business in need of digital organization.

How to use this app:

1. After setting up (with Replit or Github) open your browser to localhost:3000
(This proect is present on both Replit and on Github)

2. Create one or a few warehouses

3. After creating a warehouse click on new item at the bottom of the page.

4. Fill out the new item form. The last field is a drop down that allows the user to select a warehouse location. 

5. After clicking submit the item is saved to a specific warehouse location.

6. In your terminal or consol run $ rails c to test with irb then run $ Item.all you will see a list of the items you created with the warehouse_id number that you assigned it to.  


Future feature implementations will be:

1. Add Test coverage and continue the remainder of development using TDD.

2. Create CSV import and export functionality

2. Adding incoming wholesale orders to update inventory when new shipments arrive and outgoing orders/customer purchases.

3. Create low inventory alerts for when inventory is getting close to selling out.

4. Create purchase orders when a user gets a low inventory alert.

5. Create a product report feature to see how fast inventory moves and how much each item grosses in a period of time. 

Setup:

Ruby version - 3.1.1 , Rails - 7

System dependencies - PostgreSQL

run bundle install

run rails webpack:install

yarn install

rails db:migrate

rails s

