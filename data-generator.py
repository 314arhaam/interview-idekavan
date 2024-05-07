import pandas as pd
import datetime
import random

products = [
    "PS5",
    "BMW 328i",
    "AMD Ryzen 9 7950X3D",
    "Potato"
]

start_day = datetime.datetime(year = 2023,
                              month = 10,
                              day = 6)

today = datetime.datetime.now()

n_days = (today - start_day).days - 1
n_data = 200



with open('schema.txt', 'w') as schema_file:
    schema_file.write('insert into orders (id, product_id, order_date, num)\nVALUES\n')
    sep = ', '
    for i in range(n_data):
        if i == n_data - 1:
            sep = '; '
        # id, product_id, order_date, num
        random_id = random.randint(1, len(products))
        random_date = start_day + datetime.timedelta(days = random.randint(0, n_days))
        random_date = str(random_date).split()[0]
        schema_file.write(f'    ({i+1}, {random_id}, {random_date}, {random.randint(1, 50)}){sep}\n')