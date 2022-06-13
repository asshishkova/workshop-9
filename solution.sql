-- #1 count(*) as cnt
-- select count(*) as cnt from player where country = "Serbia";

-- #2 Which country has the most players in our DB?
-- select count(*) as cnt, country from player group by country ORDER BY cnt DESC LIMIT 1;

-- #3 Name all players who assist a goal in match 41 (without a join)
-- select distinct player_name from goalscore, player where goalscore.match_id = 41 and player.player_id = goalscore.player_id;

-- #4 Name all players who assist a goal in match 41 (using join)
-- select distinct player_name from goalscore join player using (player_id) where goalscore.match_id = 41;

-- #5 Name all players who are attackers and didn’t score any goal (using left join)
-- select distinct player_name, position, goalscore.goal_id from player left join goalscore using (player_id) where player.position = "Attacker";
-- select distinct player_name, position, goalscore.goal_id from player left join goalscore using (player_id) where player.position = "Forward";
-- select distinct player_name, position, goalscore.goal_id from player left join goalscore using (player_id) where player.position = "Forward" and goalscore.goal_id is null;

-- #6 Use explain to get information about the last query (screenshot your results)
-- explain select distinct player_name, position, goalscore.goal_id from player left join goalscore using (player_id) where player.position = "Forward" and goalscore.goal_id is null;

-- #7 Add index to players table on position column
-- alter table player
-- add index position_index (position);
-- describe player;

#8 Run explain again - what are the differences? meanings?
-- explain select distinct player_name, position, goalscore.goal_id from player left join goalscore using (player_id) where player.position = "Forward" and goalscore.goal_id is null;


-- #9 Using transaction, write a query to get the youngest manager and move him to a new club