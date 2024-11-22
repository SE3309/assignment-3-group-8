import random

with open("orders_data.sql", "w") as file:
    for i in range(1, 301):  # Generate 300 orders
        user_id = random.randint(1, 3000)  # Joinable with User
        sql = f"INSERT INTO Orders (order_id, order_date, total_amount, order_status, shipping_address, billing_address, review_id) " \
              f"VALUES ({i}, '2024-11-{random.randint(1, 30):02d}', {random.uniform(20.0, 1000.0):.2f}, 'Shipped', 'Address {user_id}', 'Address {user_id}', NULL);\n"
        file.write(sql)
