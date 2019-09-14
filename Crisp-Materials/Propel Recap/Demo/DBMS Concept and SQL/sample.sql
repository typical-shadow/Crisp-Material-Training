SQL> alter table customer MODIFY(cust_name varchar2(30) not null);

SQL> ALTER TABLE "table_name" RENAME COLUMN "column 1" TO "column 2";
--------------
SQL> alter table customer add constraint custid_Prim primary key(customerid);

SQL> insert into customer values(1002,'john','#144chicago','#144chicago','m',45,'439525');

SQL> alter table customer disable constraints custid_prim;

SQL> alter table customer enable constraints custid_prim;

SQL> alter table customer drop constraints custid_prim;
------------------------------
SQL> alter table account_master add constraint cust_acc foreign key(customerid) references customer_master(customerid);
------------------------------
SQL> alter table account_master add constraint acc_type CHECK (accounttype='NRI'
or accounttype='IND');

SQL> alter table account_master add constraint balance_check CHECK (ledgerbalanc
e > 5000);
--------------
SQL> create table accountdetails as select * from account_master where 1=2;
---------------------
SQL> create sequence seq_dept start with 40 increment by 10 maxvalue 200 nocycle;

Sequence created.


SQL> alter sequence seq_dept start with 80 increment by 5 maxvalue 200 nocycle;

Sequence altered.


--26

SQL> insert into department_master values(seq_dept.nextval, 'Civil');
SQL> insert into department_master values(seq_dept.nextval, 'Instrumentation');

------------
SQL> select seq_dept.currval from dual;

SQL> drop sequence seq_dept;
-------------
SQL> create sequence seq_emp start with 1001 maxvalue 2000 nocycle;
