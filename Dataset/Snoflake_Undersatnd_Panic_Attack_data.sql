select * from panic_attack_data
--- check null values
select * from panic_attack_data
where id is null

---Check for null and duplicates in primary Key
--- expectation : No result

select id, count(id) as counts from panic_attack_data
group by id
having counts > 1 or id is null

--- check for unwanted spaces

select * from panic_attack_data
where gender != trim(gender)

select * from panic_attack_data
where TRIGGER_REASON != trim(TRIGGER_REASON)

select * from panic_attack_data
where MEDICAL_HISTORY != trim(MEDICAL_HISTORY)


----- standardisation and consistancy
 ------ cardinality checking
 
select distinct GENDER from panic_attack_data

select distinct TRIGGER_REASON from panic_attack_data

select distinct MEDICAL_HISTORY from panic_attack_data

--- Count of table

select count(*) from panic_attack_data


select GENDER, count(*) as count_gender from panic_attack_data
group by GENDER

select TRIGGER_REASON, count(*) as No_of_cases from panic_attack_data
group by TRIGGER_REASON

select MEDICAL_HISTORY, count(*) as No_of_cases from panic_attack_data
group by MEDICAL_HISTORY


