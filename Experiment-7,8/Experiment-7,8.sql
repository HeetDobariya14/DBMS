use db1;

create table emp(
DEPTNO int,
EMPNO int primary key,
ENAME varchar(20),
JOB varchar(20),
MGR int,
HIREDATE date,
SAL int,
COMM int
);

insert into emp values(20, 7369, "SMITH", "CLERK", 7902, "1980-12-17", 500, 800);
insert into emp values(30, 7499, "ALLEN", "SALESMAN", 7698, "1981-02-20", 1600, 300);
insert into emp values(30, 7521, "WARD", "SALESMAN", 7698, "1981-02-22", 1250, 500);
insert into emp values(20, 7566, "JONES", "MANAGER", 7839, "1981-04-02", 2975, NULL);
insert into emp values(30, 7654, "MARTIN", "SALESMAN", 7698, "1981-09-28", 1250, 1400);
insert into emp values(30, 7698, "BLAKE", "MANAGER", 7839, "1981-05-01", 2850, NULL);
insert into emp values(10, 7782, "CLARK", "MANAGER", 7839, "1981-06-09", 2450, NULL);
insert into emp values(20, 7788, "SCOTT", "ANALYST", 7566, "1982-12-09", 3000, NULL);
insert into emp values(10, 7839, "KING", "PRESIDENT", NULL, "1981-11-17", 5000, NULL);
insert into emp values(30, 7844, "TURNER", "SALESMAN", 7698, "1981-09-08", 1500, 0);
insert into emp values(20, 7876, "ADAMS", "CLERK", 7788, "1983-01-12", 1100, NULL);
insert into emp values(30, 7900, "JAMES", "CLERK", 7698, "1981-12-03", 950, NULL);
insert into emp values(20, 7902, "FORD", "ANALYST", 7566, "1981-12-03", 3000, NULL);
insert into emp values(10, 7934, "MILLER", "CLERK", 7782, "1982-01-23", 1300, NULL);

select * from emp;

create table dept(
DEPTNO int,
DNAME varchar(20),
LOC varchar(20)
);

insert into dept values(10, "ACCOUNTING", "NEW YORK");
insert into dept values(20, "RESEARCH", "DALLAS");
insert into dept values(30, "SALES", "CHICAGO");
insert into dept values(40, "OPERATIONS", "BOSTON");

select * from dept;

select * from emp where SAL>(select SAL from emp where ENAME="BLAKE");

select * from emp where JOB=(select JOB from emp where ENAME="ALLEN");

select * from emp where SAL in (select SAL from emp where ENAME in ("FORD","SMITH")) order by ENAME desc;

select * from emp where JOB=(select JOB from emp where ENAME="MILLER") or SAL>(select SAL from emp where ENAME="ALLEN"); 

select * from emp where SAL=(select max(SAL) as max_sal from emp where DEPTNO=(select DEPTNO from dept where DNAME="SALES"));

select * from emp where HIREDATE < (select max(HIREDATE) from emp where MGR in (select EMPNO from emp where ENAME="KING"));

select ENAME, DEPTNO from emp where SAL in (select max(SAL) from emp group by DEPTNO);

select * from emp where SAL=(select (max(SAL)+min(SAL))/2 from emp);

select * from emp e where HIREDATE in (select HIREDATE from emp where e.EMPNO <> EMPNO);

select * from emp e where HIREDATE < (select HIREDATE from emp where EMPNO = e.MGR);