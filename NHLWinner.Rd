> NHL=read.table("Trim 1 of Final Project.csv",header=T,sep=",")
> names(NHL)

> attach(NHL)
> gdiff <- X2021.Average.of.goalsFor / X2021.Average.of.goalsAgainst
> gdiff

> Winner<-function(var1,var2){
+ attach(NHL)
+ model <- lm(gdiff ~ X2021.Average.of.shotsOnGoalFor + X2021.Average.of.savedShotsOnGoalFor + X2021.Average.of.shotsOnGoalAgainst + X2021.Average.of.savedShotsOnGoalAgainst)
+ 
+   Wins=fitted.values(model)
+  
+   comparisontable=cbind(Team,Wins)
+   teamnames=c("Anaheim Ducks", "Arizona Coyotes", "Boston Bruins", "Buffalo Sabres", "Carolina Hurricanes", "Columbus Blue Jackets", "Calgary Flames", "Chicago Blackhawks" , "Colorado Avalanche", "Dallas Stars", "Detroit Red Wings", "Edmonton Oilers", "Florida Panthers", "Los Angeles Kings", "Minnesota Wild", "Montreal Canadiens", "New Jersey Devils", "Nashville Predators", "New York Islanders", "New York Rangers", "Ottawa Senators", "Philadelphia Flyers", "Pittsburgh Penguins", "San Jose Sharks", "Seattle Kraken", "St. Louis Blues", "Tampa Bay Lightning", "Toronto Maple Leafs", "Vancouver Canucks", "Vegas Golden Knights", "Winnipeg Jets", "Washington Capitals")
+   looktable1=cbind(teamnames, Team)
+   for (i in 1:length(Team)) if (var1==looktable1[i,1]) varone=looktable1[i,2]
+   for (i in 1:length(Team)) if (var2==looktable1[i,1]) vartwo=looktable1[i,2]
+   if (varone>vartwo) print(paste(var1, "win!")) else if (vartwo>varone) print(paste(var2, "win!") ) else print("It is a tie!")
+ detach(NHL)}