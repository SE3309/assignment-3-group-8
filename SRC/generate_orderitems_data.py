import random

with open("orderitems_data.sql", "w") as file:
    for i in range(6, 3001):  # Generate 3,000 order items
        order_id = random.randint(6, 300)  # Joinable with Orders
        product_id = random.randint(6, 3000)  # Joinable with Inventory
        quantity = random.randint(1, 5)
        sql = f"INSERT INTO OrderItems (order_id, product_id, quantity, category) " \
              f"VALUES ({order_id}, {product_id}, {quantity}, 'Category {product_id}');\n"
        file.write(sql)
