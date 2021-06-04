#!/bin/bash
# Prepare a shell script (in BASH) named presidentialElections.sh that receives 
# one command line argument that is the number of candidates in the first round 
# of the presidential elections of a certain country. Then it will read as input 
# the number of votes for each of the candidates. If any of the candidates has 
# received more than half of the total votes then he/she is announced as a winner
# directly. Otherwise the two candidates with more votes will pass to the second 
# (final) round elections. The script will give as output the result of the 
#first round of elections.

totVotes=0 # Total number of votes

for (( i=1; i<=$1; i++ )) # For each user input
do
	read -r -p "Enter the number of votes for the $i. candidate: " votes
	arrVotes+=(["$i"]=$votes) # Store number of votes for each candidate in array
	let totVotes="$totVotes+$votes" # Add votes to total
done

halfVotes=$(($totVotes/2)) # Calculate half number of total votes
max=0

# Find the candidate with max number of votes
for (( i=1; i<=$1; i++ ))
do
    if [[ "${arrVotes[$i]}" -gt "$max" ]]
    then
      max=${arrVotes[$i]}
      index1=$i # Store index
    fi
done

if (( $max > $halfVotes )) # If the candidate received more than half of the total votes
then # Declare him/she as winner
  echo "Candidate $index1 wins the elections directly in the first round."
  exit
fi

unset "arrVotes[$index1]" # Remove candidate from array

max=0
for (( i=1; i<=$1; i++ ))  # Repeat the procedure to find the second candidate with max number of votes
do
    if [[ "${arrVotes[$i]}" -gt "$max" ]]
    then
      max=${arrVotes[$i]}
      index2=$i # Store index
    fi
done

echo "Candidates $index1 and $index2 proceed to the second round of elections."
