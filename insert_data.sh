#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPO WINNER_GOALS OPPO_GOALS
do
if [[ $YEAR != "year" ]]
then
# get Team ID
TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER' AND name='$OPPO'")
# ID not found
if [[ -z $TEAM_ID ]]
then
# insert team
INSERT_WINNER_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
INSERT_OPPO_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$OPPO')")
echo Winner team: $WINNER and Opponent team: $OPPO Has been added
# get new Team ID
TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER' AND name='$OPPO'")
fi
# get new Team ID
TEAM_ID_WINNER=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
#echo $TEAM_ID_WINNER THIS a winner TEAM
TEAM_ID_OPPO=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPO'")
#echo $TEAM_ID_OPPO THIS an opponent TEAM
# get game id 
GAME_ID=$($PSQL "SELECT game_id FROM games WHERE winner_id=$TEAM_ID_WINNER AND opponent_id=$TEAM_ID_OPPO")
if [[ -z $GAME_ID ]]
then
INESRT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES(
  $YEAR, '$ROUND', $TEAM_ID_WINNER, $TEAM_ID_OPPO, $WINNER_GOALS, $OPPO_GOALS)")
echo New game row has been added
fi
fi
done