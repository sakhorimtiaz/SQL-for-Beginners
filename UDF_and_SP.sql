do $$
<<Sample_block1>>
declare 
enrollees integer:=0;

begin 
select count(*) into enrollees from students;

raise notice 'The number of enrollees is %',enrollees;

end Sample_block1 $$
