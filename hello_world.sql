-- Directly
select 'Hello world!' as greeting

-- Using a CTE
with greeting as (
    select 'Hello world!' as greeting
)
select * from greeting

-- Using a subquery
select * from (
    select 'Hello world!' as greeting
) as subquery

-- Using a temporary table
create temporary table temp_greeting as
    select 'Hello world!' as greeting;
select * from temp_greeting;
drop table if exists temp_greeting;

-- Using a view
create or replace view vw_greeting as
    select 'Hello world!' as greeting;
select * from vw_greeting;
drop view if exists vw_greeting;

-- Using a function
create or replace function get_greeting() returns text as $$
    select 'Hello world!';
$$ language sql;
select get_greeting() as greeting;
drop function if exists get_greeting();
