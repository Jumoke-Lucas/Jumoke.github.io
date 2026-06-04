create database Football_players_Data

use [Football_players_Data]
go

select * from [dbo].['Football Players Data$']

-- removing the blank column 
alter table [dbo].['Football Players Data$']
drop column [NumGrp]

--Replacing nulls in N0# column with 0 instead of deleting 
update [dbo].['Football Players Data$']
set [No#] = 0
where [No#] is NULL

--Removing duplicates by first identifying dups = no dups found 
select [NAME ], count(*) as dups 
from [dbo].['Football Players Data$']
group by [NAME ]
order by dups desc 


--query to find all the players in the "Arizona" team.
select [NAME ],[Age],[College] from [dbo].['Football Players Data$']
where [Team]= 'Arizona'

--query to find all the players who play as a "WR" (Wide Receiver).
select [NAME ],[Age],[College] from [dbo].['Football Players Data$']
where [Pos]= 'WR'

-- query to list all players taller than 6 feet 2 inches.
select [NAME ] from [dbo].['Football Players Data$']
where [Ht] >= '6-2'

-- query to find all players who attended the "Washington" college.
select [NAME ] from [dbo].['Football Players Data$']
where College = 'Washington'

-- query to list players who are 25 years old or younger.
select [NAME ] from [dbo].['Football Players Data$']
where Age <= '25'

-- query to find all players with missing Age data.
select [NAME ] from [dbo].['Football Players Data$']
where Age = 'N/a'

--query to find players who are rookies (Exp = 'R').
select [NAME ] from [dbo].['Football Players Data$']
where Exp = 'R'

-- query to find the tallest player on the "New Orleans" team.
select [NAME ], max ([Ht]) as tallest_player
from [dbo].['Football Players Data$'] 
where Team = 'New Orleans'
group by [NAME ]
order by tallest_player desc

--query to find players weighing more than 250 pounds.
select [NAME ] from [dbo].['Football Players Data$']
where [Wt]> 250

-- query to calculate the average height of players at each position. converting height to incles in float within the synthax
select [Pos], Round(AVG(
cast (left( [Ht], charindex ('-',[Ht])-1) as float)	
*12 +
CAST(right([Ht],LEN([Ht]) -charindex ('-',[Ht])) as float)),2)
                     as Average_height
from [dbo].['Football Players Data$']
group by [Pos]
order by Average_height desc

--query to find the heaviest player for each position. using window func to get exactly 1 heaviest player per position
with Rankedplayers as (

select [NAME ],[Pos], [Wt],
          ROW_NUMBER() over(partition by [Pos] order by [Wt] desc) as rankno
		  from [dbo].['Football Players Data$']) 
select [NAME ],[Pos], [Wt]
from Rankedplayers
where rankno=1
order by Pos

--query to rank players by age within their team. If two players have the same age, rank them by their weight.
select *, rank() over (partition by Team order by [Age], [Wt]) as AgeRank
from [dbo].['Football Players Data$']

--query to calculate the average height (in inches) for all players older than 25 years.
select avg(
     try_cast(left([Ht], charindex('-', [Ht]) -1) as float) *12 +
	 TRY_CAST(right([Ht], LEN([Ht]) - CHARINDEX('-', [Ht])) as float)
	 ) AS average_height_inches 
	 from [dbo].['Football Players Data$']
	 where try_cast(age as float) > 25 
	 and [Ht] like '%-%'


	 use [Football_players_Data]
	 go

--adding a column on height_inches to the table so we don't need to repeat the synthax 
alter table [dbo].['Football Players Data$']
add Height_inches as ( try_cast(left([Ht], charindex('-', [Ht]) -1) as float) *12 +
	 TRY_CAST(right([Ht], LEN([Ht]) - CHARINDEX('-', [Ht])) as float))

	 
--query to find all players whose height is greater than the average height of their respective team.
with TeamAvg as ( 
select *, AVG([Height_inches]) over (partition by Team) as team_avg_height 
from [dbo].['Football Players Data$']
where [Height_inches] is not null )
select * 
from TeamAvg 
where [Height_inches]>team_avg_height 
order by [Team]

-- query to find all players who share the same last name.
select * from [dbo].['Football Players Data$']
where lastname in( 
                   select [LastName] from [dbo].['Football Players Data$']
				   group by [LastName]
				   having count(*) >1 
				   )
				   order by LastName


-- query to find the players with the minimum height for each position.
with MinHeight as ( 
select [Pos], min([Height_inches]) as min_height
from [dbo].['Football Players Data$']
where [Height_inches] is not null 
group by [Pos])
select f.* from [dbo].['Football Players Data$'] f
join MinHeight m
on f.Pos=m.Pos
and f.[Height_inches] = m.min_height


--query to get the number of players for each team grouped by their experience level.
select [Team], [Exp], count(*) as Player_count 
from [dbo].['Football Players Data$']
group by [Team], [Exp]
order by [Team], [Exp]

-- query to find the tallest and shortest players from each college.
select [College], 
MAX([Height_inches]) as Max_height , 
MIN([Height_inches]) as Min_height 
from [dbo].['Football Players Data$']
where [Height_inches] is not null 
group by [College]
order by College

--query to find all players whose weight is above the average weight for their respective position.
with Avgweightpos as ( 
select *, round(AVG([Wt]) over (partition by [Pos]),2) as avg_weight 
from [dbo].['Football Players Data$']) 

select * from Avgweightpos
where [Wt] > avg_weight 
order by [Pos]

--query to calculate the percentage of players in each position for every team.
with totals as ( 
select *, count(*) over (partition by [Team]) as team_total 
from [dbo].['Football Players Data$']) 

select [Team], [Pos], count(*)  as pos_count, round (count(*) *100 / max(team_total ), 2) as percen_of_team 
from totals 
group by [Team], [Pos], team_total 
order by [Team],[Pos]
