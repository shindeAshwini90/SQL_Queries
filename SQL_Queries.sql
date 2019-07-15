1.SELECT * FROM departments WHERE depId NOT IN (select DEP_ID FROM employees);

2.SELECT * FROM employees WHERE JOB_ID IN (select JOB_ID FROM employees where FIRST_NAME = 'scott');

3.select depName from departments where depId=(select DEP_ID from employees where EMPLOYEE_ID=(select MANAGER_ID from 
employees where EMPLOYEE_ID=(select MANAGER_ID from employees where FIRST_NAME="scott")));

4.SELECT * FROM employees 
WHERE JOB_ID IN (select JOB_ID FROM employees where FIRST_NAME = 'scott') and SALARY > (select SALARY from employees where FIRST_NAME ='smith');

5.SELECT * FROM employees 
WHERE JOB_ID IN (select JOB_ID FROM employees where FIRST_NAME IN('scott','allen'));

6.SELECT * FROM employees where JOB_ID = "managers";

7.select * from employees where 
MANAGER_ID=(select EMPLOYEE_ID from employees where FIRST_NAME='smith');

8.SELECT MAX(SALARY) FROM employees WHERE SALARY<(SELECT MAX(SALARY) FROM employees);

9.SELECT MAX(SALARY) FROM employees WHERE SALARY<(SELECT MAX(SALARY) FROM employees WHERE SALARY<(SELECT MAX(SALARY) FROM employees));

10.SELECT * FROM employees where SALARY > all(select SALARY from employees where JOB_ID='managers');

11.SELECT * FROM employees where SALARY > any(select SALARY from employees where JOB_ID='managers');

12.SELECT EMPLOYEE_ID, JOB_ID, SALARY FROM employees where 
JOB_ID = 'analyst' AND SALARY > any(select SALARY from employees where JOB_ID='managers');

13.SELECT depName, location FROM departments where 
depId in(select DEP_ID from employees where MANAGER_ID in(select EMPLOYEE_ID from employees where FIRST_NAME ='clark'));

14.select * from employees where DEP_ID in(select depId from departments where location ='Dallas');

15.select * from employees where salary > (select avg(salary) from employees where DEP_ID=2);

16.select * from employees where salary = (select max(salary) from employees);

17.select * from employees where HIRE_DATE = (select min(HIRE_DATE) from employees);

18.select * from employees where salary > (select salary from employees where FIRST_NAME='allen');

19.SELECT depName FROM departments where 
depId in(select DEP_ID from employees where JOB_ID ='analyst');

20.SELECT depName FROM departments where 
depId in(select DEP_ID from employees where JOB_ID ='salesman');

21.select * from employees where DEP_ID in (select depId from departments where location like '%o%');

22.SELECT depName FROM departments where 
depId in(select DEP_ID from employees group by DEP_ID having count(*)>=1);

23.SELECT depId FROM departments where 
depId in(select DEP_ID from employees group by DEP_ID having count(*)>=4);

24.SELECT depName FROM departments where 
depId in(select DEP_ID from employees where JOB_ID = 'clerk' group by DEP_ID having count(*)>=2);

25.

26.SELECT depName FROM departments where 
depId =(select DEP_ID from employees where COMMISSION_PCT=(select max(COMMISSION_PCT) from employees));

27.select * from employees where DEP_ID = (select DEP_ID from employees where FIRST_NAME = 'scott');

28.select * from employees where DEP_ID in (select depId from departments where depName in('accounting','Operations')) and salary > (select salary from employees where FIRST_NAME ='allen' );

29.SELECT depName FROM departments where 
depId in (select DEP_ID from employees where JOB_ID ='salesman'group by DEP_ID having count(*)>=3);

30.select * from employees where MANAGER_ID = 0;

31. select * from employees where JOB_ID NOT IN ('managers');

32.select * from employees where MANAGER_ID =(select MANAGER_ID from employees where FIRST_NAME = 'smith');

33. select * from employees where DEP_ID in(select depId from departments where depName in('accounting','research'))
 and EMPLOYEE_ID in (select MANAGER_ID from employees group by MANAGER_ID having count(*)>=2);

34.SELECT depName FROM departments where 
depId in (select DEP_ID from employees where FIRST_NAME like 's%' and salary between 1500 and 3000);

35.SELECT location FROM departments where 
depId in (select DEP_ID from employees where salary in(select min(salary) from employees where salary>2000));

36.SELECT location FROM departments where 
depId in (select depId from departments where depName ='accounting');

37.SELECT location FROM departments where 
depId in (select DEP_ID from employees group by  DEP_ID having count(*)>4);

38.select * from employees where JOB_ID != (select JOB_ID from employees where FIRST_NAME='allen')
and salary > (select salary from employees where FIRST_NAME ='martin');

39.SELECT * FROM employees WHERE DEP_ID =(SELECT depId FROM departments WHERE location =(SELECT location FROM departments WHERE
 depId =(SELECT DEP_ID FROM employees WHERE EMPLOYEE_ID = (SELECT MANAGER_ID FROM employees WHERE FIRST_NAME='jones'))));
 
40.SELECT JOB_ID, FIRST_NAME,MANAGER_ID FROM employees WHERE MANAGER_ID =(SELECT EMPLOYEE_ID FROM employees WHERE FIRST_NAME='jones');

41. SELECT FIRST_NAME, HIRE_DATE, COMMISSION_PCT FROM employees WHERE EMPLOYEE_ID =(SELECT MANAGER_ID FROM employees WHERE FIRST_NAME = 'ford');

42. SELECT COUNT(FIRST_NAME) FROM employees WHERE salary<(SELECT salary FROM employees WHERE EMPLOYEE_ID=(SELECT MANAGER_ID FROM employees WHERE FIRST_NAME='blake'));

43. SELECT COUNT(*) FROM employees WHERE COMMISSION_PCT=0 and DEP_ID in (SELECT depId FROM departments WHERE location='chicago');

44.SELECT * FROM employees WHERE DEP_ID =(SELECT depId FROM departments WHERE depName ='sales' and salary > any (SELECT avg(salary) FROM employees GROUP BY DEP_ID));

45.SELECT FIRST_NAME FROM employees WHERE DEP_ID =(SELECT depId FROM departments WHERE depName='research') AND EMPLOYEE_ID IN (SELECT MANAGER_ID FROM employees);

46.SELECT depName FROM departments WHERE depId IN (SELECT DEP_ID FROM employees WHERE COMMISSION_PCT IS NOT NULL);

47.SELECT depName FROM departments WHERE depId IN (SELECT DEP_ID FROM employees WHERE MANAGER_ID  IS NULL AND salary=(SELECT MAX(salary) FROM employees));

48.SELECT * FROM employees WHERE MANAGER_ID =(SELECT EMPLOYEE_ID FROM employees WHERE FIRST_NAME='blake') and COMMISSION_PCT is not null;

49.SELECT depName, location FROM departments WHERE depId IN(SELECT DEP_ID FROM employees WHERE EMPLOYEE_ID IN( SELECT MANAGER_ID FROM employees
 WHERE EMPLOYEE_ID IN(SELECT MANAGER_ID FROM employees WHERE JOB_ID='salesman')));

50.SELECT depName, location FROM departments WHERE depId IN(SELECT DEP_ID FROM employees WHERE JOB_ID = 'clerk' and MANAGER_ID IN(
SELECT EMPLOYEE_ID FROM employees WHERE FIRST_NAME='blake'));

51.SELECT FIRST_NAME FROM employees WHERE MANAGER_ID !=(select EMPLOYEE_ID from employees where JOB_ID = 'president')and COMMISSION_PCT is not null
AND salary> ALL(SELECT MAX(salary) FROM employees WHERE JOB_ID='clerk' );

52.SELECT * FROM employees WHERE HIRE_DATE > all(SELECT MIN(HIRE_DATE)+(365*2) FROM employees) and
salary >(SELECT salary FROM employees WHERE FIRST_NAME='blake');

53.select location from departments where deptId in (select DEP_ID from employees where MANAGER_ID=(select EMPLOYEE_ID from employees where FIRST_NAME='blake'));

54.select *from employees where JOB_ID=(select JOB_ID from employees where FIRST_NAME='jones') and salary<(select salary from employees where FIRST_NAME='scott');

55. SELECT salary*12 d.location,d.deptName from employees e, departments d where  d.depIdd=e.DEP_ID and  e.DEP_ID=(select DEP_ID from employees where FIRST_NAME='king');

56.select * from employees where salary in (select max(salary) from employees where DEP_ID=(select depId from departments where depName="accounting"));

57.select salary*12 as salary, FIRST_NAME from employees where depId in(20,30) and depId in (select depId from employees group by depId having count(*)>=3);

58.select depName from departments where depId=(select DEP_ID from employees where salary=(select avg(salary) from employees where salary<(select avg(salary) from employees)) and salary=(SELECT MAX(salary) FROM employees WHERE salary<(SELECT MAX(salary) FROM employees WHERE salary<(SELECT MAX(salary) FROM employees))));

59.select *from employees where salary<(select min(salary) from employees where JOB_ID='salesman');

60.select *from employees where HIRE_DATE<(select max(HIRE_DATE) from employees);

61.select *from employees where HIRE_DATE=(select max(HIRE_DATE) from employees where HIRE_DATE<(select max(HIRE_DATE) from employees));

62.select min(salary) from employees where salary>(select min(salary) from employees where salary>(select min(salary) from employees));

63.select *from employees where salary>(select max(salary) from employees where JOB_ID='manager');

64.select *from employees where HIRE_DATE>(select min(HIRE_DATE)+4*365 from employees) and salary<(select salary from employees where FIRST_NAME='blake');

65.select *from departments where location='newyork';

66.select *from employees where DEP_ID=20 order by salary desc;

67.select *from employees where HIRE_DATE=(select min(HIRE_DATE) from employees where HIRE_DATE>(select min(HIRE_DATE) from employees));

68.select location from departments where depId in (select DEP_ID from employees where FIRST_NAME like 'a%' and salary between 1000 AND 3000);

69.select *from employees where MANAGER_ID=(select EMPLOYEE_ID from employees where FIRST_NAME='blake');

70.select depName,location from departments where depId in (select DEP_ID from employees where EMPLOYEE_ID=(select MANAGER_ID from employees where EMPLOYEE_ID in(select MANAGER_ID from employees where FIRST_NAME='martin')))

71.select FIRST_NAME,salary from employees where HIRE_DATE>(select max(HIRE_DATE)-2*365 from employees);

72.select e.FIRST_NAME, e.JOB_ID, d.depName from employees e, departments d where e.DEP_ID=d.depId and e.COMMISSION_PCT=0 or e.COMMISSION_PCT is null;

73.select e.FIRST_NAME,e.COMMISSION_PCT, d.location from employees e, departments d where e.DEP_ID=d.depId and e.COMMISSION_PCT=(select max(COMMISSION_PCT) from employees);

74.select *from employees where DEP_ID=(select depId from departments where depName='accounting') and COMMISSION_PCT>0;

75.select d.depName,e.FIRST_NAME from departments d,employees e where d.depId=e.DEP_ID and d.depId in (select DEP_ID from employees where EMPLOYEE_ID=(select MANAGER_ID from employees where EMPLOYEE_ID in(select MANAGER_ID from employees where FIRST_NAME='ward')));

76.select  max(e.COMMISSION_PCT) from departments d, employees e where e.DEP_ID=d.depId and e.salary >(select avg(salary) from employees where JOB_ID='clerk');

77.select e.*,d.location from employees e,departments d where d.depId=e.DEP_ID and HIRE_DATE=(select max(HIRE_DATE) from employees)

78.select d.depId from departments d inner join employees e on d.depId=e.DEP_ID where d.depName="sales" and e.JOB_ID="manager";

79.SELECT depName FROM departments WHERE depId IN( SELECT DEP_ID FROM employees WHERE salary =( SELECT MIN( salary) FROM employees WHERE MANAGER_ID IS NOT NULL));

80.SELECT d.depName,e.HIRE_DATE FROM employees e, departments d WHERE e.DEP_ID=d.depId AND e.DEP_ID IN (SELECT depId FROM departments WHERE depName='sales')

81.SELECT depName,location FROM departments WHERE depId=(SELECT DEP_ID FROM employees WHERE JOB_ID='president');

82.SELECT depName FROM departments WHERE depId IN (SELECT DEP_ID FROM employees WHERE salary IN (SELECT MAX(salary) FROM employees WHERE salary< 3000));

83.SELECT depName FROM departments WHERE depId IN (SELECT DEP_ID FROM employees WHERE MANAGER_ID IN( SELECT EMPLOYEE_ID FROM employees WHERE FIRST_NAME='adams'));

84.select * from employees where HIRE_DATE=(select max(HIRE_DATE) from employees);

85.SELECT * FROM employees WHERE salary>(SELECT AVG(salary) FROM employees WHERE DEP_ID=30) and DEP_ID=30;

86.SELECT COUNT(*) FROM employees WHERE DEP_ID IN(SELECT depId FROM departments WHERE depName='research') AND salary< ANY(SELECT salary FROM employees WHERE depId=10);

87.select depName from departments where depId in(select DEP_ID from employees where JOB_ID="clerk");

88.select depName from departments where depName like '%l%';

89.select * from employees where HIRE_DATE>(select HIRE_DATE from employees where FIRST_NAME="blake");

90.SELECT depName FROM departments WHERE depId IN (SELECT DEP_ID FROM employees GROUP BY depId HAVING COUNT(*) BETWEEN 3 AND 5);

91.SELECT location FROM departments WHERE depId IN (SELECT DEP_ID FROM employees WHERE MANAGER_ID IN (SELECT EMPLOYEE_ID FROM employees WHERE salary >2000));

92.select * from employees where DEP_ID in (select depId from departments where depName like '%e%e%');

93.select FIRST_NAME,salary from employees where salary > any(select salary from employees where JOB_ID="analyst");

94.SELECT * FROM employees WHERE DEP_ID IN(SELECT depId FROM departments WHERE location='chicago');

95.SELECT * FROM employees WHERE salary = ( SELECT min(salary) FROM employees WHERE DEP_ID=(SELECT depId FROM departments WHERE depName='research'));

96.SELECT depName FROM departments WHERE depId IN(SELECT DEP_ID FROM employees WHERE JOB_ID='salesman');

96.SELECT depName FROM departments WHERE depId IN (SELECT DEP_ID FROM employees GROUP BY depId HAVING COUNT(*)>=3);

97.SELECT FIRST_NAME FROM employees WHERE DEP_ID IN(SELECT depId FROM departments WHERE depName IN('accounting','research')) AND
EMPLOYEE_ID IN(SELECT MANAGER_ID FROM employees GROUP BY MANAGER_ID HAVING COUNT(*)>=2)
SELECT FIRST_NAME,JOB_ID,location FROM employees e,departments d WHERE e.DEP_ID=d.depId AND JOB_ID='manager'AND location='Chicago';

98.select e.FIRST_NAME,e.salary,e.depId ,d.depName,d.location from employees e join departments d on d.depId=e.depId where d.location=""dallas"" order by salary desc limit 1,1;

99.SELECT * FROM employees WHERE COMMISSION_PCT IS NULL and HIRE_DATE>'1983-07-31';

100.SELECT FIRST_NAME FROM employees WHERE depId IN(SELECT depId FROM departments WHERE depName IN('sales','research'))
AND EMPLOYEE_ID IN(SELECT MANAGER_ID FROM employees GROUP BY MANAGER_ID HAVING COUNT(*)>=2);
