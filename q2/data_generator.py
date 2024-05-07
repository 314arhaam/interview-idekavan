import datetime, random

def dataGen(start_day: datetime.datetime,
            n_data: int,
            n_products: int) -> None:
    ### 
    # random dates are generated as 'start_date + r_days'
    # first we should calculate how many days are between start date and today
    # to find the range of which 'r_days' lies within.
    today = datetime.datetime.now()
    n_days = (today - start_day).days - 1

    # open file and write the schema
    # NOTE: Pandas can be used for this task, but current algorithm is available
    # on all devices running Python >= 3.8 without any additional packages.
    # AVAILABLITY MATTERS!
    with open('schema_orders.txt', 'w') as orders_schema_file: # can be *.sql
        # schema header
        orders_schema_file.write('-- POSTGRESQL | ORDERS SCHEMA\n')
        # define table
        orders_schema_file.write('''
drop table if exists orders;
                                 
create table orders(
    id int PRIMARY KEY,
    product_id int,
    order_date date,
    num int
    );
    ''')
        # insert values to the table
        orders_schema_file.write('insert into orders (id, product_id, order_date, num)\nVALUES\n')
        sep = ', '
        for i in range(n_data):
            # change the separator at the last line to ';'
            if i == n_data - 1:
                sep = '; '
            # id, product_id, order_date, num
            random_id = random.randint(1, n_products)
            # the r_days
            r_days = datetime.timedelta(days = random.randint(0, n_days))
            random_date = start_day + r_days
            random_date = str(random_date).split()[0] # just need date not time
            # write each line
            orders_schema_file.write(f'    ({i+1}, {random_id}, \'{random_date}\', {random.randint(1, 50)}){sep}\n')