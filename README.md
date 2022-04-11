![cafe with lighted cafe sign](michal-parzuchowski-ItaV89TNkks-unsplash.jpg)

# Simple Cafe
This is a simple cafe application written in Ruby.

### Menu

The cafe has a limited menu with 3 items:
- Lattes sell for $4
- Scones sell for $5
- Tea sells for $3

### Application

The cafe application will:

1. Print a welcome message
2. Show the menu with prices
3. Ask the customer for their order (what they would like and quantity). Continue to ask for new items until they say they are done.
4. When the order is complete, print the order and total cost.

## Classes

### Order class

Order class represents the customer's order. It will have a hash of item names and quantities

### MenuItem class

MenuItem class represents a single menu item. It will have a name and price. 

### Menu class

Menu class represents a cafe menu. It has an array of MenuItems.

### Cafe class

Cafe class represents a cafe. It has a menu, an order, and a name.