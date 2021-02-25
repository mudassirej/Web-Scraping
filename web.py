import requests
from bs4 import BeautifulSoup
import numpy as np
import pandas as pd

pages = np.arange(1,3)
Jobs=[]
salary=[]
for page in pages:
    URL = 'https://www.fastjobs.sg/singapore-jobs/en/all-categories-jobs/software-developer-jobs-search/page-'+str(page)
    page = requests.get(URL)
    soup = BeautifulSoup(page.content, 'html.parser')
    results = soup.find('div', class_='col-xs-12 col-sm-12 col-md-9')
    job_elems = results.find_all(class_='ad-detail-link adbox')
    for i in job_elems:
        title = i.find('h2')
        salary_ = i.find('span', class_='')
        if salary_ is None:
            continue
        salary1= salary_.text.strip()
        Jobs1=title.text.strip()
        Jobs.append(Jobs1)
        salary.append(salary1)
        

#Saving data in local drive
data = pd.DataFrame({'Job title':Jobs,'Salary':salary}) 
data.to_csv('products.csv', index=False, encoding='utf-8')


# Total jobs, highest, lowest and average salary
filename = "products.csv"
df = pd.read_csv(filename, sep=',')
sal = list(df['Salary'])

Highest = max(sal)
Lowest = min(sal)
Average = np.mean(sal)
print("Total jobs in the portal are",len(Jobs))
print("Highest salary is",Highest)
print("Lowest salary is",Lowest)
print("Average salary is",Average)
for i,data in enumerate(df['Job title']):
    if sal[i]==Highest:
        print("The best employer is",data)


## SQL part
import mysql.connector
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="mydatabase"
)
mycursor = mydb.cursor()

# Insert DataFrame recrds one by one.
for i,row in data.iterrows():
    sql = "INSERT INTO customers (Title, Salary) VALUES (%s, %s)"
    mycursor.execute(sql, tuple(row))
    mydb.commit()
mycursor.close()
mydb.close()

print("finished")
