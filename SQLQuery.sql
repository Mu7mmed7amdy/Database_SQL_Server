use Sales_Office  

create table  Sales_Office (
      Office_num int primary key ,
	  Location VARCHAR(100),
)

create table Employee (
  Emp_ID INT primary key,
  Emp_name VARCHAR(100),
  Office_num INT foreign key REFERENCES Sales_Office(office_num)
)

create table Manage (
  Office_num INT foreign key REFERENCES Sales_Office(office_num),
  Emp_ID INT foreign key REFERENCES Employee(Emp_ID)
)

 create Table Property (
  Pro_ID INT primary key,
  Address VARCHAR(255),
  City VARCHAR(100),
  State VARCHAR(50),
  Zip_code VARCHAR(20),
  Office_num INT foreign key REFERENCES Sales_Office(office_num)
)


create Table Owner (
  Owner_ID INT primary key,
  Owner_name VARCHAR(100),
)

create Table Owns (
  Pro_ID INT foreign key REFERENCES Property(pro_ID),
  Owner_ID INT foreign key REFERENCES Owners (Owner_ID),
  Per DECIMAL(5,2),

  Primary Key (Pro_ID, Owner_ID)
  )