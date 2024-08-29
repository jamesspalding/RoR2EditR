
library(xml2)
testfile = read_xml("sample.xml")

# list of achievement names
achievements = read.csv("achievements1.csv",header=F)

testcoins = 5
testach = c(rep(T,110), rep(F,10))

achievementsOut = c()
for(i in 1:120){
  if(testach[i]==T){
    achievementsOut = c(achievementsOut, achievements[i])
  }
}

myAchievementsList = paste(achievementsOut, collapse = "")
myCoins = testcoins

output = paste0('<?xml version="1.0" encoding="UTF-8"?>
                <UserProfile>
                <achievementsList>', myAchievementsList, "</achievementsList>
                <coins>", myCoins,
                "</coins>")




# Function takes array of T/F values + lunar coins and returns save file
edit_file = function(inputAchievements, inputCoins){
  
  achievementsOut = c()
  for(i in 1:120){
    if(inputAchievements[i]==T){
      achievementsOut = c(achievementsOut, achievements[i])
    }
  }
  
  myAchievementsList = paste(achievementsOut, collapse = "")
  myCoins = inputCoins
  
  output = paste0('<?xml version="1.0" encoding="UTF-8"?>
                  <UserProfile>
                  <achievementsList>', myAchievementsList, "</achievementsList>
                  <coins>", myCoins,
                  "</coins>")
  
  return(output)
}
  
  

