import pandas as yw
customer=yw.read_csv("C:/Users/YogeshwaranAnnadurai/Downloads/customers-1000.csv") 
customer.shape
rows,columns=customer.shape
print(customer.head(5))
print(rows)
print(columns)


