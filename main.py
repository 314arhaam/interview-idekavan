import datetime
from data_generator import dataGen

if __name__ == '__main__':
    ### INPUT AND TUNABLE PARAMETERS
    # tunable parameters: how many data rows do we want?
    n_data = 200
    # number of products in 'products' table
    n_products = 4
    # start date for generating random order dates
    start_day = datetime.datetime(year = 2023,
                                  month = 10,
                                  day = 6)
    dataGen(start_day, n_data, n_products)