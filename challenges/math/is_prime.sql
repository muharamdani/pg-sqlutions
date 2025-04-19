-- Initial
-- Source: None
-- Description: Check if a number is prime, returning true or false.

create or replace function is_prime(n integer)
returns boolean as $$
declare
	i integer;
begin
	if n < 2 then
		return false;
	end if;

	for i in 2..floor(sqrt(n)) loop
		if n % i = 0 then
			return false;
		end if;
	end loop;

	return true;
end
$$ language plpgsql;

select is_prime(4);

drop function if exists is_prime(n integer);
