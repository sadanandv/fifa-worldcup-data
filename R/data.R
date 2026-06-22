# R/data.R
# Roxygen2 documentation for all bundled datasets.
# DO NOT add analytical or Phase 5 tables here â€” R package scope is frozen at 29 core tables.
# To add var_interventions and in_match_penalties in Session 10, append two blocks at the end.
#
# Regenerate man/*.Rd and NAMESPACE by running:
#   roxygen2::roxygenise()
# from the package root after any change to this file.

# â”€â”€ Codebook objects â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€

#' Codebook: Dataset Descriptions
#'
#' A codebook table describing every dataset included in this package. There is
#' one observation per dataset. It includes the dataset name, a human-readable
#' label, a plain-language description, the number of variables, and the number
#' of observations.
#'
#' @format A data frame with 27 rows and 7 variables. See the package codebook
#'   (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name datasets
#' @keywords datasets
"datasets"

#' Codebook: Variable Descriptions
#'
#' A codebook table describing every variable (column) across all datasets
#' included in this package. There is one observation per variable per dataset.
#' It includes the dataset name, the variable name, its data type, and a
#' plain-language description.
#'
#' @format A data frame with 410 rows and 6 variables. See \code{datasets} for
#'   the list of datasets described.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name variables
#' @keywords datasets
"variables"

# â”€â”€ Core entity tables â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€

#' Award Winners
#'
#' This dataset records all award winners. There is one observation per player
#' per award per tournament. Some awards are shared by multiple players. It
#' indicates the name of the award, the player(s) who won the award, the team
#' of the player(s) who won the award, and whether the award was shared.
#'
#' @format A data frame with 200 rows and 12 variables. See the package codebook
#'   (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name award_winners
#' @keywords datasets
"award_winners"

#' Awards
#'
#' This dataset records all individual awards that are handed out to players.
#' There is one observation per award. It includes the name of the award, the
#' year the award was first introduced, and a description of the award.
#'
#' @format A data frame with 8 rows and 5 variables. See the package codebook
#'   (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name awards
#' @keywords datasets
"awards"

#' Bookings
#'
#' This dataset records all bookings, including yellow cards and red cards,
#' since 1970. The modern system of yellow and red cards was introduced in 1970.
#' There is one observation per booking. It indicates the minute of each
#' booking, the player who was booked, whether the booking was a yellow card or
#' a red card, whether the card was a second yellow card, and whether the player
#' was sent off as a result of the booking.
#'
#' @format A data frame with 3178 rows and 26 variables. See the package
#'   codebook (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name bookings
#' @keywords datasets
"bookings"

#' Confederations
#'
#' This dataset records all FIFA confederations. There is one observation per
#' confederation.
#'
#' @format A data frame with 6 rows and 5 variables. See the package codebook
#'   (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name confederations
#' @keywords datasets
"confederations"

#' Goals
#'
#' This dataset records all goals. There is one observation per goal. It
#' indicates the team that scored the goal, the player who scored the goal, the
#' team of the player who scored the goal (to account for own goals), the minute
#' of the goal, and whether the goal was scored in the run of play, was an own
#' goal, or was a penalty. This dataset does not include converted penalties in
#' a penalty shootout.
#'
#' @format A data frame with 3637 rows and 26 variables. See the package
#'   codebook (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name goals
#' @keywords datasets
"goals"

#' Group Standings
#'
#' This dataset records group standings for each group stage. There is one
#' observation per team per group per group stage per tournament. Some
#' tournaments have multiple group stages. It includes the final position of the
#' team (factoring in tie-breakers), the number of matches played, wins, losses,
#' draws, goals for, goals against, goal difference, total points earned, and
#' whether the team advanced out of the group.
#'
#' @format A data frame with 626 rows and 19 variables. See the package codebook
#'   (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name group_standings
#' @keywords datasets
"group_standings"

#' Groups
#'
#' This dataset records the names of the groups for each group stage. There is
#' one observation per group per group stage per tournament. Some tournaments
#' have multiple group stages. It indicates the stage, the name of the group,
#' and how many teams were in the group.
#'
#' @format A data frame with 117 rows and 7 variables. See the package codebook
#'   (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name groups
#' @keywords datasets
"groups"

#' Host Countries
#'
#' This dataset records all host countries. There is one observation per host
#' country per tournament. A tournament can have multiple host countries. It
#' indicates the performance of each host country (the furthest stage reached).
#'
#' @format A data frame with 31 rows and 7 variables. See the package codebook
#'   (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name host_countries
#' @keywords datasets
"host_countries"

#' Manager Appearances
#'
#' This dataset records all manager appearances. There is one observation per
#' manager per team per match per tournament. There are some teams that have
#' co-managers.
#'
#' @format A data frame with 2538 rows and 17 variables. See the package
#'   codebook (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name manager_appearances
#' @keywords datasets
"manager_appearances"

#' Manager Appointments
#'
#' This dataset records all manager appointments. There is one observation per
#' manager per team per tournament. There are some teams that have co-managers.
#'
#' @format A data frame with 637 rows and 10 variables. See the package codebook
#'   (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name manager_appointments
#' @keywords datasets
"manager_appointments"

#' Managers
#'
#' This dataset records all managers who have participated in a World Cup match.
#' There is one observation per manager. It includes their name, their sex,
#' their home country, and a link to their Wikipedia page, if they have one.
#'
#' @format A data frame with 475 rows and 7 variables. See the package codebook
#'   (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name managers
#' @keywords datasets
"managers"

#' Matches
#'
#' This dataset records all World Cup matches. There is one observation per
#' match per tournament. It includes the home team, the away team, the date of
#' the match, the country, city, and stadium that the match was played in, the
#' final score, the score margin for each team, whether the match went to extra
#' time, whether there was a penalty shootout, the number of penalties scored in
#' the shootout (if applicable), the result of the match (home team win, away
#' team win, draw, replayed), and the winner (if applicable).
#'
#' @format A data frame with 1248 rows and 38 variables. See the package
#'   codebook (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name matches
#' @keywords datasets
"matches"

#' Penalty Kicks
#'
#' This dataset records all penalty kicks taken during penalty shootouts. There
#' is one observation per penalty kick. This dataset does not include attempted
#' penalty kicks during matches. It indicates the minute of each kick, the
#' player who took the kick, and whether the penalty was converted.
#'
#' @format A data frame with 396 rows and 19 variables. See the package codebook
#'   (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name penalty_kicks
#' @keywords datasets
"penalty_kicks"

#' Player Appearances
#'
#' This dataset records all player appearances since 1970. There is one
#' observation per player per team per match per tournament. It includes players
#' who play in the match, including players who are in the starting eleven and
#' players who come in as substitutes. FIFA match reports do not include
#' information about substitutions before 1970.
#'
#' @format A data frame with 27432 rows and 21 variables. See the package
#'   codebook (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name player_appearances
#' @keywords datasets
"player_appearances"

#' Players
#'
#' This dataset records all players who have participated in a World Cup match,
#' including players on the bench. There is one observation per player. It
#' includes their name, their birth date, their sex, and a link to their
#' Wikipedia page, if they have one. Note that it does not include their team,
#' as a small number of players represent different countries in different
#' tournaments.
#'
#' @format A data frame with 10401 rows and 13 variables. See the package
#'   codebook (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name players
#' @keywords datasets
"players"

#' Qualified Teams
#'
#' This dataset records all qualified teams. There is one observation per team
#' per tournament. It includes the tournament, the team, and the performance of
#' each team (the furthest stage reached).
#'
#' @format A data frame with 625 rows and 8 variables. See the package codebook
#'   (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name qualified_teams
#' @keywords datasets
"qualified_teams"

#' Referee Appearances
#'
#' This dataset records all referee appearances. There is one observation per
#' referee per match per tournament.
#'
#' @format A data frame with 1248 rows and 15 variables. See the package
#'   codebook (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name referee_appearances
#' @keywords datasets
"referee_appearances"

#' Referee Appointments
#'
#' This dataset records all referee appointments. There is one observation per
#' referee per tournament. This dataset only includes the main referee, not
#' assistant referees, fourth officials, or video assistant referees.
#'
#' @format A data frame with 668 rows and 10 variables. See the package codebook
#'   (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name referee_appointments
#' @keywords datasets
"referee_appointments"

#' Referees
#'
#' This dataset records all referees who have participated in a World Cup match.
#' There is one observation per referee. It includes their name, their sex,
#' their home country, their confederation, and a link to their Wikipedia page,
#' if they have one.
#'
#' @format A data frame with 493 rows and 10 variables. See the package codebook
#'   (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name referees
#' @keywords datasets
"referees"

#' Squads
#'
#' This dataset records the composition of each squad. There is one observation
#' per player per team per tournament. It includes the position of each player,
#' the shirt number of each player (from 1954), the current club of each player,
#' and a link to the Wikipedia page for the club, if it has one.
#'
#' @format A data frame with 13843 rows and 14 variables. See the package
#'   codebook (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name squads
#' @keywords datasets
"squads"

#' Stadiums
#'
#' This dataset records all stadiums that have hosted a World Cup match. There
#' is one observation per stadium. It includes the country and city of the
#' stadium, the approximate capacity of the stadium, and links to the Wikipedia
#' pages for the city and the stadium.
#'
#' @format A data frame with 240 rows and 8 variables. See the package codebook
#'   (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name stadiums
#' @keywords datasets
"stadiums"

#' Substitutions
#'
#' This dataset records all substitutions since 1970. FIFA match reports do not
#' include information about substitutions before 1970. There is one observation
#' per player per substitution. It indicates the minute of the substitution, the
#' player who went off, and the player who came on.
#'
#' @format A data frame with 10222 rows and 24 variables. See the package
#'   codebook (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name substitutions
#' @keywords datasets
"substitutions"

#' Team Appearances
#'
#' This dataset records all team appearances. There is one observation per team
#' per match per tournament. It includes whether the team is the home team or
#' the away team, the number of goals for and against, the goal difference,
#' whether there was a penalty shootout, penalties for and against (if
#' applicable), and whether the team wins, loses, or draws.
#'
#' @format A data frame with 2496 rows and 37 variables. See the package
#'   codebook (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name team_appearances
#' @keywords datasets
"team_appearances"

#' Teams
#'
#' This dataset records all teams who have participated in a World Cup match.
#' There is one observation per team. It includes the 3-letter ISO code for each
#' country, whether the country's men's and women's team have qualified for a
#' tournament, the name of the country's national federation, the country's FIFA
#' confederation, and links to the Wikipedia pages for their men's and women's
#' teams, if the team has qualified for a tournament.
#'
#' @format A data frame with 88 rows and 14 variables. See the package codebook
#'   (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name teams
#' @keywords datasets
"teams"

#' Tournament Stages
#'
#' This dataset records the stages in each tournament. There is one observation
#' per stage per tournament. It indicates the name of the stage, whether the
#' stage was a group stage or a knockout stage, whether there were unbalanced
#' groups (if a group stage), the start and end dates of the stage, and how many
#' matches there were in the stage, how many teams participated, how many games
#' were scheduled, how many replays there were, how many walkovers there were,
#' and how many playoffs there were.
#'
#' @format A data frame with 155 rows and 16 variables. See the package codebook
#'   (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name tournament_stages
#' @keywords datasets
"tournament_stages"

#' Tournament Standings
#'
#' This dataset records the final standings for each tournament. There is one
#' observation per position per tournament. The top four teams are ranked. In
#' most tournaments, these are the winner of the final, the loser of the final,
#' the winner of the third-place match, and the loser of the third-place match.
#'
#' @format A data frame with 120 rows and 7 variables. See the package codebook
#'   (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name tournament_standings
#' @keywords datasets
"tournament_standings"

#' Tournaments
#'
#' This dataset records all World Cup tournaments. There is one observation per
#' tournament. It includes the host of the tournament, the winner of the
#' tournament, the start and end dates of the tournament, and information about
#' the format of the tournament.
#'
#' @format A data frame with 30 rows and 18 variables. See the package codebook
#'   (\code{variables}) for full column definitions.
#' @source Original database by Joshua C. Fjelstul, Ph.D.
#'   \url{https://github.com/jfjelstul/worldcup}. Extended and maintained
#'   by Sadanand Venkataraman
#'   \url{https://github.com/sadanandv/fifa-worldcup-data}.
#' @docType data
#' @name tournaments
#' @keywords datasets
"tournaments"

# â”€â”€ Session 10 placeholder â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
# Add two blocks here in Session 10 for var_interventions and in_match_penalties
# after those data objects are built by build-database.R.
# Follow the same structure as all blocks above.
# After adding them, re-run roxygen2::roxygenise() and commit the updated
# man/ files and NAMESPACE together.