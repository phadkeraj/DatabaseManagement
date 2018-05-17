use mydb;
show tables;

insert into location
values(1,'Roxbury','Boston','MA','USA','02120');
insert into location
values(2,'2nd Penn Street','New York','NY','USA','06114');
insert into location
values(3,'21st Street ','New Jersey','NJ','USA','02150');
insert into location
values(4,'34th Street ','Los Angeles','LA','USA','02120');
insert into location
values(5,'14th Mass Ave','Boston','MA','USA','02115');

insert into manufacturing_code
values(1845);

insert into Company
values(1,'Ford Motors',10);

insert into utility
values(1,'Electricity','Amount of electricity used');
insert into utility
values(2,'Gas','Amount of gas used');
insert into u_usage
values(250,'2017-11-1','2017-12-1',1);
insert into u_usage
values(200,'2017-10-1','2017-11-1',1);
insert into u_usage
values(275,'2017-09-1','2017-10-1',1);
insert into u_usage
values(430,'2017-08-1','2017-09-1',1);
insert into u_usage
values(300,'2017-07-1','2017-08-1',1);
insert into u_usage
values(155,'2017-06-1','2017-07-1',1);
insert into u_usage
values(450,'2017-05-1','2017-06-1',1);
insert into u_usage
values(260,'2017-04-1','2017-05-1',1);
insert into u_usage
values(280,'2017-03-1','2017-04-1',1);
insert into u_usage
values(175,'2017-02-1','2017-03-1',1);
insert into u_usage
values(148,'2017-01-1','2017-02-1',1);
insert into u_usage
values(212,'2016-12-1','2017-01-1',1);


insert into manufacturing_plant
values(1,'Ford Motors Division 1',1845,1,1,1);
insert into manufacturing_plant
values(2,'Ford Motors Division alpha',1845,1,2,1);
insert into manufacturing_plant
values(3,'Ford Motors Division beta',1845,1,3,1);
insert into manufacturing_plant
values(4,'Ford Motors Division gama',1845,1,4,1);
insert into manufacturing_plant
values(5,'Ford Motors Division pico',1845,1,5,1);

select * from warehouse;
insert into warehouse
values(1,'Ford Division 1 WH',1,1);
insert into warehouse
values(2,'Ford ALPHA WH',2,2);
insert into warehouse
values(3,'Ford BETA WH',3,3);
insert into warehouse
values(4,'Ford GAMMA WH',4,4);
insert into warehouse
values(5,'Ford  PICO WH',5,5);


insert into employee
values(1,'TUSHAR','Company Manager',1);
insert into employee
values(2,'DHARIT','Company Manager',2);
insert into employee
values(3,'SAMEER','Company Manager',3);
insert into employee
values(4,'SAMI','Company Manager',4);
insert into employee
values(5,'VIKAS','Company Manager',5);
insert into employee
values(6,'NAMAN','Employee',1);
insert into employee
values(7,'JAY','Employee',2);
insert into employee
values(8,'RAJ','Employee',3);
insert into employee
values(9,'ASHISH','Employee',4);
insert into employee
values(10,'ADITYA','Employee',5);


insert into distributor
values(1,'Symphony Dealers',1100,'sd@gmail.com',1);
insert into distributor
values(2,'Ace Dealers',1180,'ad@gmail.com',1);
insert into distributor
values(3,'Star Dealers',1190,'stard@gmail.com',1);
insert into distributor
values(4,'Speedy Dealers',2100,'speedyd@gmail.com',1);
insert into distributor
values(5,'Optimum Dealers',1700,'od@gmail.com',1);


insert into model
values('1','2GA','AUTO','HATCHBACK');
insert into model
values('2','300','AUTO','HATCHBACK');
insert into model
values('3','7W','AUTO','HATCHBACK');
insert into model
values('4','ABEILLE','AUTO','HATCHBACK');
insert into model
values('5','ANGLIA','AUTO','SPORT');
insert into model
values('6','CAPRI','AUTO','SPORT');
insert into model
values('7','MUSTANG','AUTO','SEDAN');
insert into model
values('8','EXP','AUTO','HATCHBACK');
insert into model
values('9','ELITE','AUTO','SEDAN');
insert into model
values('10','PAMPA','AUTO','SPORT');
insert into model
values('11','Figo','AUTO','HATCHBACK');


insert into vehicle
values(1,'Ford 2ga','2GA',1,1);
insert into vehicle
values(2,'Ford 300','300',1,2);
insert into vehicle
values(3,'Ford 7W','7W',1,3);
insert into vehicle
values(4,'Ford ABEILLE','ABEILLE',1,4);
insert into vehicle
values(5,'Ford ANGLIA','ANGLIA',1,5);
insert into vehicle
values(6,'Ford CAPRI','CAPRI',1,6);
insert into vehicle
values(7,'Ford MUSTANG','MUSTANG',1,7);
insert into vehicle
values(8,'Ford EXP','EXP',1,8);
insert into vehicle
values(9,'Ford ELITE','ELITE',1,9);
insert into vehicle
values(10,'Ford PAMPA','PAMPA',1,10);


insert into cost 
values(15000,1);

insert into cost 
values(20000,2);

insert into cost 
values(25000,3);

insert into cost 
values(30000,4);

insert into cost 
values(35000,5);

insert into cost 
values(40000,6);

insert into cost 
values(45000,7);

insert into cost 
values(50000,8);

insert into cost 
values(55000,9);

insert into cost 
values(60000,10);


----------------------------------------------------------------------------------------------------
/* Creating Users */

create user 'ProductionManager@localhost' @'localhost' identified by 'productionManager';
create user 'ComManager@localhost' @'localhost' identified by 'companyManager';
create user 'DistributorDealership@localhost' @'localhost' identified by 'dd';
create user 'Emp@localhost' @'localhost' identified by 'emp';
create user 'ShipmentManager@localhost' @'localhost' identified by 'sm';
create user 'FinanceMan@localhost' @'localhost' identified by'fm';
----------------------------------------------------------------------------------------------------
/* Granting Privileges */

/* Privilege Granted to Company Manager*/

grant all on mydb.* to 'ComManager@localhost' @'localhost';

-----------------------------------------------------------------------------------------------------
/* Privilege Granted to Production Manager*/

grant all on mydb.Production to 'ProductionManager@localhost' @'localhost';
grant all on mydb.Manufacturing_plant to 'ProductionManager@localhost' @'localhost';
grant all on mydb.Request to 'ProductionManager@localhost' @'localhost';
grant all on mydb.Invoice to 'ProductionManager@localhost' @'localhost';
grant all on mydb.Demand to 'ProductionManager@localhost' @'localhost';

-------------------------------------------------------------------------------------------------------
/* Privilege Granted to Distributor */

grant select on mydb.Manufacturing_plant to 'DistributorDealership@localhost' @'localhost';
grant select on mydb.Company to 'DistributorDealership@localhost' @'localhost';
grant select,insert on mydb.Demand to 'DistributorDealership@localhost' @'localhost';
grant select,insert on mydb.Request to 'DistributorDealership@localhost' @'localhost';


-------------------------------------------------------------------------------------------------------
/* Privilege Granted to Shipment Manager */


grant select,insert,update,delete on mydb.shipment to 'ShipmentManager@localhost' @'localhost';
grant select on mydb.production to 'ShipmentManager@localhost' @'localhost';
grant select on mydb.distributor to 'ShipmentManager@localhost' @'localhost';

--------------------------------------------------------------------------------------------------------
/* Privilege Granted to Finance Manager */

grant select,insert,update,delete on mydb.payment to 'FinanceMan@localhost' @'localhost';
grant select on mydb.distributor to 'FinanceMan@localhost' @'localhost';
grant select,insert on mydb.invoice to 'FinanceMan@localhost' @'localhost';
grant select on mydb.company to 'FinanceMan@localhost' @'localhost';

revoke all on mydb.* from 'FinanceMan@localhost' @'localhost';

unlock tables;

---------------------------------------------------------------------------------------------------------
/* Privilege Granted to Employee */

grant select,insert on mydb.employee to 'Emp@localhost' @'localhost';
grant select on mydb.Manufacturing_plant to 'Emp@localhost' @'localhost';
grant select on mydb.company to 'Emp@localhost' @'localhost';

-----------------------------------------------------------------------------------------------------------
/* Views */

/* Company Manager wants to view all employees working in a manufacturing plant and company */
create view employee_view as
select employee.Employee_ID, employee.Employee_Name, employee.Employee_Role
,manufacturing_plant.MP_ID,manufacturing_plant.MP_NAME,company.company_id,
company.company_name
from employee as employee inner join
manufacturing_plant as manufacturing_plant inner join
company as company
on employee.Manufacturing_Plant_MP_ID=manufacturing_plant.MP_ID
and 
company.company_id=manufacturing_plant.Company_Company_ID;

--------------------------------------------------------------------------------------------------------------
/* View to display company managers  */

create view Company_Manager_view as
select employee.Employee_ID,employee.Employee_Name,employee.Employee_Role
,manufacturing_plant.MP_ID,manufacturing_plant.MP_NAME,company.company_id,
company.company_name
from employee as employee inner join
manufacturing_plant as manufacturing_plant inner join
company as company
on employee.Manufacturing_Plant_MP_ID=manufacturing_plant.MP_ID and company.company_id=manufacturing_plant.Company_Company_ID
where employee.Employee_Role='Company Manager';

----------------------------------------------------------------------------------------------------------------
/* View to display all the vehicles available  */

create view all_vehicle
as 
select vehicle.Vehicle_ID,vehicle.Vehicle_Name,model.Model_Name,model.Model_Number,model.Model_Transmission,model.Model_Type,cost.Price
from vehicle inner join model inner join cost
on vehicle.Model_Model_Number1=model.Model_Number and model.Model_Number=cost.Model_Model_Number ;

------------------------------------------------------------------------------------------------------------------
/* Trigger to insert into cost table after an insert into the model table */


delimiter //
create trigger insert_a_cost
after insert on model
for each row
begin
insert into cost
values(75000,11);
end//
------------------------------------------------------------------------------------------------------------------- 
 /* Stored Procedure */
 
 create procedure check_price1(IN val int)
 begin 
 select vehicle.Vehicle_ID,vehicle.Vehicle_Name,model.Model_Name,model.Model_Number,cost.Price
 from vehicle inner join model inner join cost 
 on vehicle.Model_Model_Number1=model.Model_Number and model.Model_Number=cost.Model_Model_Number
 where Vehicle_ID=val;
 end;
 //
 call check_price1(1);//
 ---------------------------------------------------------------------------------------------------------------------
 /* Locking table company to avoid Insertions */
 // 
 lock tables company read;
 //
 insert into company
 values(2,'Nissan',10);
 //
 unlock tables;//
  
 //
 ------------------------------------------------------------------------------------------------------------------------

 /* Insertion into other tables using select subqueries and nested queries */
 //
 insert into invoice
select 1,(select adddate((Select request.Request_Date from request where Request_ID=1),03)) 
,750000;//
insert into invoice
select 2,(select adddate((Select request.Request_Date from request where Request_ID=2),03)) 
,2250000;//
insert into invoice
select 3,(select adddate((Select request.Request_Date from request where Request_ID=3),03)) 
,675000;//
insert into invoice
select 4,(select adddate((Select request.Request_Date from request where Request_ID=4),03)) 
,80000;//
insert into invoice
select 5,(select adddate((Select request.Request_Date from request where Request_ID=5),03)) 
,700000;//
insert into invoice
select 6,(select adddate((Select request.Request_Date from request where Request_ID=6),03)) 
,90000;//


insert into request
values(1,50,'2017-10-09',1,1,'2GA',1,1);//
insert into request
values(2,75,'2017-07-09',1,4,'ABEILLE',1,4);//
insert into request
values(3,15,'2017-06-09',1,7,'MUSTANG',1,7);//
insert into request
values(4,04,'2017-12-09',1,2,'300',1,2);//
insert into request
values(5,20,'2017-02-09',1,5,'ANGLIA',1,5);//

/*INSERTING NEW REQUEST USING NESTED SELECT AND SELECT IN INSERT */
insert into request
select 6,10,(select adddate((select Request_Date from request where Request_ID=5),03)),1,1,'2GA',1,1;

//
insert into demand()
values(1,50,'2017-10-06',1,1,4,1,'2GA',1);//
insert into demand()
values(2,75,'2017-07-06',1,1,3,4,'ABEILLE',1);//
insert into demand()
values(3,15,'2017-06-06',1,1,2,7,'MUSTANG',1);//
insert into demand()
values(4,04,'2017-12-06',1,1,5,2,'300',1);//
insert into demand()
values(5,20,'2017-02-06',1,1,1,5,'ANGLIA',1);//

insert into demand
select 6,(select request.Request_Quantity from request where Request_ID=6),
'2017-02-12',1,1,4,1,'2GA',1;

//
insert into production
select 1,'starting',(select request.Request_Quantity from request where Request_ID=1),1,1,1;//
insert into production
select 2,'starting',(select request.Request_Quantity from request where Request_ID=2),2,2,2;//
insert into production
select 3,'starting',(select request.Request_Quantity from request where Request_ID=3),3,3,3;//
insert into production
select 4,'starting',(select request.Request_Quantity from request where Request_ID=4),4,4,4;//
insert into production
select 5,'starting',(select request.Request_Quantity from request where Request_ID=5),5,5,5;//
insert into production
select 6,'starting',(select request.Request_Quantity from request where Request_ID=6),1,6,6;//

//
insert into shipment
select 1,(select adddate((select Request.Request_Date from Request where Request.request_id=1),04))
,(select Request.Request_Quantity from request where request.Request_ID=1)
,'dispatched','FedX',1,1,1,
(select demand.Distributor_D_ID from demand where Demand_Id=1);//
insert into shipment
select 2,(select adddate((select Request.Request_Date from Request where Request.request_id=2),04))
,(select Request.Request_Quantity from request where request.Request_ID=2)
,'dispatched','FedX',2,2,1,(select demand.Distributor_D_ID from demand where Demand_Id=2);//
insert into shipment
select 3,(select adddate((select Request.Request_Date from Request where Request.request_id=3),04))
,(select Request.Request_Quantity from request where request.Request_ID=3)
,'dispatched','FedX',3,3,1,(select demand.Distributor_D_ID from demand where Demand_Id=3);//
insert into shipment
select 4,(select adddate((select Request.Request_Date from Request where Request.request_id=4),04))
,(select Request.Request_Quantity from request where request.Request_ID=4)
,'dispatched','FedX',4,4,1,(select demand.Distributor_D_ID from demand where Demand_Id=4);//
insert into shipment
select 5,(select adddate((select Request.Request_Date from Request where Request.request_id=5),04))
,(select Request.Request_Quantity from request where request.Request_ID=5)
,'dispatched','FedX',5,5,1,(select demand.Distributor_D_ID from demand where Demand_Id=5);//
select 6,(select adddate((select Request.Request_Date from Request where Request.request_id=6),04))
,(select Request.Request_Quantity from request where request.Request_ID=6)
,'dispatched','FedX',5,5,1,(select demand.Distributor_D_ID from demand where Demand_Id=6);//
//

insert into payment
select 1,'Cheque',
(Select adddate((Select request.Request_Date from request where Request_ID=1),10)),
'Paid',
1,
(select shipment.Distributor_Company_Company_ID from shipment where shipment.Shipment_Id=1),
(select shipment.Distributor_D_ID from shipment where shipment.Shipment_Id=1);//

insert into payment
select 2,'Cheque',
(Select adddate((Select request.Request_Date from request where Request_ID=2),10)),
'Paid',
2,
(select shipment.Distributor_Company_Company_ID from shipment where shipment.Shipment_Id=2),
(select shipment.Distributor_D_ID from shipment where shipment.Shipment_Id=2);//

insert into payment
select 3,'Cheque',
(Select adddate((Select request.Request_Date from request where Request_ID=3),10)),
'Paid',
3,
(select shipment.Distributor_Company_Company_ID from shipment where shipment.Shipment_Id=3),
(select shipment.Distributor_D_ID from shipment where shipment.Shipment_Id=3);//

insert into payment
select 4,'Cheque',
(Select adddate((Select request.Request_Date from request where Request_ID=4),10)),
'Paid',
4,
(select shipment.Distributor_Company_Company_ID from shipment where shipment.Shipment_Id=4),
(select shipment.Distributor_D_ID from shipment where shipment.Shipment_Id=4);//

insert into payment
select 5,'Cheque',
(Select adddate((Select request.Request_Date from request where Request_ID=5),10)),
'Paid',
5,
(select shipment.Distributor_Company_Company_ID from shipment where shipment.Shipment_Id=5),
(select shipment.Distributor_D_ID from shipment where shipment.Shipment_Id=5);//

insert into payment
select 6,'Cheque',
(Select adddate((Select request.Request_Date from request where Request_ID=6),10)),
'Paid',
6,
(select shipment.Distributor_Company_Company_ID from shipment where shipment.Shipment_Id=6),
(select shipment.Distributor_D_ID from shipment where shipment.Shipment_Id=6);

--------------------------------------------------------------------------------------------------------------------------
/*  Some data analysis in the word document*/