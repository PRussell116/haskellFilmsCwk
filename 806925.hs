-- 
-- MATHFUN
-- 806925
--

--
-- Types
-- Define Film type here 
--data Film = String String Int [String] [String]
import Data.List
import Text.Read


data Film = Film{title :: String
            ,director :: String
            ,year :: Int
            ,likers :: [String]
            ,dislikers :: [String]
            }deriving(Eq,Show,Read)

-- real database textfile contents          
-- [Film {title = "Blade Runner", director = "Ridley Scott", year = 1982, likers = ["Zoe","Heidi","Jo","Kate","Emma","Liz","Dave"], dislikers = ["Sam","Olga","Tim"]},Film {title = "The Fly", director = "David Cronenberg", year = 1986, likers = ["Garry","Dave","Zoe"], dislikers = ["Kevin","Emma","Heidi","Jo","Kate"]},Film {title = "Body Of Lies", director = "Ridley Scott", year = 2008, likers = ["Garry","Dave"], dislikers = ["Bill","Olga","Tim","Zoe","Paula"]},Film {title = "Avatar", director = "James Cameron", year = 2009, likers = ["Dave","Amy","Liz"], dislikers = ["Olga","Tim","Zoe","Paula"]},Film {title = "Titanic", director = "James Cameron", year = 1997, likers = ["Zoe","Emma","Paula","Liz","Olga","Dave"], dislikers = ["Sam","Wally","Kate"]},Film {title = "The Departed", director = "Martin Scorsese", year = 2006, likers = ["Wally","Liz","Kevin","Tim","Emma"], dislikers = ["Olga","Dave","Kate","Zoe"]},Film {title = "Aliens", director = "Ridley Scott", year = 1986, likers = ["Dave","Garry","Liz","Sam","Wally","Kate","Zoe"], dislikers = ["Tim","Emma","Jo","Olga"]},Film {title = "Kingdom Of Heaven", director = "Ridley Scott", year = 2005, likers = ["Jo","Wally","Emma"], dislikers = ["Tim","Garry","Ian","Neal"]},Film {title = "Alien: Covenant", director = "Ridley Scott", year = 2017, likers = ["Kevin","Tim"], dislikers = ["Emma","Jo","Liz"]},Film {title = "E.T. The Extra-Terrestrial", director = "Steven Spielberg", year = 1982, likers = ["Dave","Amy","Garry","Ian","Neal"], dislikers = ["Jenny","Kate","Emma","Olga"]},Film {title = "Bridge of Spies", director = "Steven Spielberg", year = 2015, likers = ["Wally","Sam","Dave","Neal"], dislikers = ["Bill","Garry","Ian","Kate"]},Film {title = "Jaws", director = "Steven Spielberg", year = 1975, likers = ["Jenny","Emma","Bill","Neal"], dislikers = ["Sam","Ian","Kate"]},Film {title = "The Martian", director = "Ridley Scott", year = 2015, likers = ["Wally","Sam","Dave","Jo","Jenny","Kate","Emma","Olga"], dislikers = ["Ian","Neal","Tim","Liz"]},Film {title = "The BFG", director = "Steven Spielberg", year = 2016, likers = ["Sam","Wally","Dave","Jo","Kate"], dislikers = ["Neal"]},Film {title = "The Shawshank Redemption", director = "Frank Darabont", year = 1994, likers = ["Dave","Amy","Bill","Garry","Ian","Neal","Kate","Jenny","Zoe","Heidi"], dislikers = ["Jo"]},Film {title = "Gladiator", director = "Ridley Scott", year = 2000, likers = ["Olga","Neal","Kate","Garry"], dislikers = ["Heidi","Bill","Sam","Zoe"]},Film {title = "The Green Mile", director = "Frank Darabont", year = 1999, likers = ["Kevin","Tim","Emma","Heidi"], dislikers = ["Kate","Jenny","Zoe"]},Film {title = "True Lies", director = "James Cameron", year = 1994, likers = ["Sam","Dave"], dislikers = ["Emma","Olga","Jenny","Zoe"]},Film {title = "Super 8", director = "J J Abrams", year = 2011, likers = ["Kevin","Tim","Emma","Olga","Heidi"], dislikers = ["Wally","Dave","Jenny","Zoe"]},Film {title = "Minority Report", director = "Steven Spielberg", year = 2002, likers = ["Kevin","Kate","Tim","Emma","Jenny","Zoe"], dislikers = ["Olga","Heidi"]},Film {title = "War Horse", director = "Steven Spielberg", year = 2011, likers = ["Garry","Bill","Olga","Jo","Wally","Emma","Tim","Kate","Zoe"], dislikers = ["Heidi","Jenny","Sam"]},Film {title = "Silence", director = "Martin Scorsese", year = 2016, likers = ["Wally","Emma","Tim","Heidi","Bill","Jo"], dislikers = ["Dave","Olga"]},Film {title = "The Terminal", director = "Steven Spielberg", year = 2004, likers = ["Kate","Dave","Jo","Wally","Emma"], dislikers = ["Heidi"]},Film {title = "Star Wars: The Force Awakens", director = "J J Abrams", year = 2015, likers = ["Emma","Wally","Zoe","Kate","Bill","Dave","Liz"], dislikers = ["Olga","Jo","Neal"]},Film {title = "Hugo", director = "Martin Scorsese", year = 2011, likers = ["Wally","Sam"], dislikers = ["Kate","Bill","Dave"]}]


bladeRunner = Film "Blade Runner" "Ridley Scott" 1982 ["Zoe", "Heidi", "Jo", "Kate", "Emma", "Liz", "Dave"] ["Sam", "Olga", "Tim"]
theFly = Film "The Fly" "David Cronenberg" 1986 ["Garry", "Dave", "Zoe"] ["Kevin", "Emma", "Heidi", "Jo", "Kate"]
bodyOfLies = Film "Body Of Lies" "Ridley Scott" 2008 ["Garry", "Dave"] ["Bill", "Olga", "Tim", "Zoe", "Paula"]
avatar = Film "Avatar" "James Cameron" 2009 ["Dave", "Amy", "Liz"] ["Olga", "Tim", "Zoe", "Paula"]
titanic = Film "Titanic" "James Cameron" 1997 ["Zoe", "Emma", "Paula", "Liz", "Olga", "Dave"] ["Sam", "Wally", "Kate"]
theDeparted = Film "The Departed" "Martin Scorsese" 2006 ["Wally", "Liz", "Kevin", "Tim", "Emma"] ["Olga", "Dave", "Kate", "Zoe"]
aliens = Film "Aliens" "Ridley Scott" 1986 ["Dave", "Garry", "Liz", "Sam", "Wally", "Kate", "Zoe"] ["Tim", "Emma", "Jo", "Olga"]
kingdomOfHeaven = Film "Kingdom Of Heaven" "Ridley Scott" 2005 ["Jo", "Wally", "Emma"] ["Tim", "Garry", "Ian", "Neal"]
alienCovenant = Film "Alien: Covenant" "Ridley Scott" 2017 ["Kevin", "Tim"] ["Emma", "Jo", "Liz"]
eT = Film "E.T. The Extra-Terrestrial" "Steven Spielberg" 1982 ["Dave", "Amy", "Garry", "Ian", "Neal"] ["Jenny", "Kate", "Emma", "Olga"]
bridgeOfSpies = Film "Bridge of Spies" "Steven Spielberg" 2015 ["Wally", "Sam", "Dave", "Neal"] ["Bill", "Garry", "Ian", "Kate"]
jaws = Film "Jaws" "Steven Spielberg" 1975 ["Jenny", "Emma", "Bill", "Neal"] ["Sam", "Ian", "Kate"]
theMartian = Film "The Martian" "Ridley Scott" 2015 ["Wally", "Sam", "Dave", "Jo", "Jenny", "Kate", "Emma", "Olga"] ["Ian", "Neal", "Tim", "Liz"]
theBFG = Film "The BFG" "Steven Spielberg" 2016 ["Sam", "Wally", "Dave", "Jo", "Kate"] ["Neal"]
shawshank = Film "The Shawshank Redemption" "Frank Darabont" 1994 ["Dave", "Amy", "Bill", "Garry", "Ian", "Neal", "Kate", "Jenny", "Zoe", "Heidi"] ["Jo"]
gladiator = Film "Gladiator" "Ridley Scott" 2000 ["Olga", "Neal", "Kate", "Garry"] ["Heidi", "Bill", "Sam", "Zoe"]
theGreenMile = Film "The Green Mile" "Frank Darabont" 1999 ["Kevin", "Tim", "Emma", "Heidi"] ["Kate", "Jenny", "Zoe"]
trueLies = Film "True Lies" "James Cameron" 1994 ["Sam", "Dave"] ["Emma", "Olga", "Jenny", "Zoe"]
superEight = Film "Super 8" "J J Abrams" 2011 ["Kevin", "Tim", "Emma", "Olga", "Heidi"] ["Wally", "Dave", "Jenny", "Zoe"]
minorityReport = Film "Minority Report" "Steven Spielberg" 2002 ["Kevin", "Kate", "Tim", "Emma", "Jenny", "Zoe"] ["Olga", "Heidi"]
warHorse = Film "War Horse" "Steven Spielberg" 2011 ["Garry", "Bill", "Olga", "Jo", "Wally", "Emma", "Tim", "Kate", "Zoe"] ["Heidi", "Jenny", "Sam"]
silence = Film "Silence" "Martin Scorsese" 2016 ["Wally", "Emma", "Tim", "Heidi", "Bill", "Jo"] ["Dave", "Olga"]
theTerminal = Film "The Terminal" "Steven Spielberg" 2004 ["Kate", "Dave", "Jo", "Wally", "Emma"] ["Heidi"]
sWTFA = Film "Star Wars: The Force Awakens" "J J Abrams" 2015 ["Emma", "Wally", "Zoe", "Kate", "Bill", "Dave", "Liz"] ["Olga", "Jo", "Neal"]
hugo = Film "Hugo" "Martin Scorsese" 2011 ["Wally", "Sam"] ["Kate", "Bill", "Dave"]

testDatabase :: [Film]
testDatabase = [bladeRunner,theFly,bodyOfLies,avatar,titanic,theDeparted,aliens,kingdomOfHeaven,alienCovenant,eT,bridgeOfSpies,jaws,theMartian,theBFG,shawshank,gladiator,theGreenMile,trueLies,superEight, 
                minorityReport,warHorse,silence,theTerminal,sWTFA, hugo]

--
--  Your functional code goes here


addFilm :: String -> String -> Int -> [Film] -> [Film]
addFilm title director year database         = (database ++ [Film title director year [] [] ])

                                    
score :: Film -> Float
score inputFilm    |length (likers inputFilm) + length(dislikers inputFilm) == 0  =   0 -- prevent divide zero
                   |otherwise                                                     =  fromIntegral (length (likers inputFilm)) / fromIntegral(length (likers inputFilm) + length(dislikers inputFilm))

                                                
getAllFilms :: [Film] -> [String]
getAllFilms database                            =   ["title :" ++ (title x) ++ " director:" ++ (director x) ++ " year:" ++ show (year x) ++ " score:" ++ (show (round((score  x)*100))) |x<- database]


getFilmsByDirector :: String -> [Film] -> [String]
getFilmsByDirector  searchDirector database     =   ["title :" ++ (title x) ++ " director:" ++ (director x) ++ " year:" ++ show (year x) ++ " score:" ++ (show (round((score  x)*100)))| x <- database ,director x == searchDirector]

getHighRatingFilms :: [Film] -> [String]
getHighRatingFilms database                     =   ["title :" ++ (title x) ++ " director:" ++ (director x) ++ " year:" ++ show (year x) ++ " score:" ++ (show (round((score  x)*100)))|x <- database,(round((score  x)*100)) >= 75 ] 
-- ((likers / likers + dislikers) * 100) >= 75   also rounded


getAvgDirectorRating :: String -> [Film] -> Float
getAvgDirectorRating searchDirector database          = fromIntegral(round(1000 * ( fromIntegral(sum [(length (likers x)) |x <- database, director x == searchDirector])
                                                        / fromIntegral((sum [(length (likers x)) |x <- database, director x == searchDirector]) 
                                                        + (sum [(length (dislikers x)) |x <- database, director x == searchDirector])))))/10
                                                       
                                                   
--likers / likers + dislikers each where director = input

filmsRatedByUser :: String -> [Film] -> [(String,Bool)]
filmsRatedByUser name database       |null database                                     = []
                                     |name `elem` likers (head database)                = [(title (head database), True)] ++ filmsRatedByUser name (tail database) -- in likers
                                     |name `elem` dislikers (head database)             = [(title (head database), False)] ++ filmsRatedByUser name (tail database) -- in dislikers
                                     |otherwise                                         = filmsRatedByUser name (tail database) -- no match



rateFilm :: String -> String -> Bool ->  [Film] -> Film -- checks the DB then calls right function
rateFilm name filmTitle liked database
                                        |null database                                                                  =  Film  "" "" 0 [] []   -- no film with that title
                                        |title (head database) == filmTitle && (name `elem` likers (head database))     = removeRating name liked (head database)  -- if it is right film and is in likers
                                        |title (head database) == filmTitle && (name `elem` dislikers (head database))  = removeRating name liked (head database)  --if it is right film and is in dislikers
                                        |title (head database) == filmTitle                                             = addRating name liked (head database) --if it is right film and no previous rating
                                        |otherwise                                                                      = rateFilm name filmTitle liked (tail database) -- if it is not the right film
                                    
addRating :: String -> Bool -> Film -> Film
addRating name liked ratedFilm 
                                |liked == True          = ratedFilm {likers = (likers ratedFilm) ++ [name]}
                                |otherwise              = ratedFilm {dislikers = (dislikers ratedFilm) ++ [name]}

-- have to remove old rating for the film,
removeRating :: String -> Bool -> Film -> Film
removeRating name liked ratedFilm                                                                       -- filter the old ratings so no longer included, then call add rating 
                                |liked == True && (name `elem` (likers ratedFilm))         = addRating name liked (ratedFilm {likers = (filter (`notElem` [name]) (likers ratedFilm))}) --if liked and already in likers
                                |liked == False && (name `elem` (dislikers ratedFilm))     = addRating name liked (ratedFilm {dislikers =(filter (`notElem` [name]) (dislikers ratedFilm))}) --if disliked and already in dislikers
                                |liked == False                                            = addRating name liked (ratedFilm {likers = (filter (`notElem` [name]) (likers ratedFilm))}) -- if disliked remove from likers
                                |otherwise                                                 = addRating name liked (ratedFilm {dislikers = (filter (`notElem` [name]) (dislikers ratedFilm))}) -- if liked remove dislikers

                                    

getTopFilmsOfSpanByRate :: Int -> Int -> [Film] -> [String]
getTopFilmsOfSpanByRate yearOne yearTwo database 
                                    |yearOne > yearTwo      =getTopFilmsBySpan (sortBy (flip compare) [(score x)|x <- database,(year x) <= yearOne,(year x) >= yearTwo]) ([x|x <- database,(year x) <= yearOne,(year x) >= yearTwo])
                                    |yearTwo > yearOne      =getTopFilmsBySpan (sortBy (flip compare) [(score x)|x <- database,(year x) <= yearTwo,(year x) >= yearOne]) ([x|x <- database,(year x) <= yearTwo,(year x) >= yearOne])
                                    |otherwise              =getTopFilmsBySpan (sortBy (flip compare) [(score x)|x <- database,(year x) == yearOne]) ([x|x <- database,(year x) == yearOne])  --they are equal
 -- sortBy (flip compare) orders list of numbs into desc order, then check matching with other function


-- if film matches the score 
getTopFilmsBySpan :: [Float] ->[Film] -> [String]
getTopFilmsBySpan order films
                                            |null order                                 =   []
                                            |score (head films) /= head order           =   filmLoop (head order) films  ++     getTopFilmsBySpan (tail order) films  
                                            |otherwise                                  =   ["title :" ++ (title (head films)) ++ " director:" ++ (director (head films)) 
                                                                                             ++ " year:" ++ show (year (head films)) ++ " score:"  
                                                                                             ++  (show (round((score  (head films))*100)))] ++ getTopFilmsBySpan (tail order) (tail films)   
                                                                                             -- if score match  add to list  and recursion with tail o both lists
                                            

                                            
                                            
-- find matching film to score                                        
filmLoop :: Float -> [Film] -> [String]
filmLoop findScore films  |null films                                   = []
                          |score (head films)   == findScore            = ["title :" ++ (title (head films)) ++ " director:" ++ (director (head films)) ++ " year:" ++ show (year (head films)) ++ " score:" 
                                                                           ++ (show (round((score  (head films))*100)))]
                          |otherwise                                    = filmLoop findScore (tail films)


                          
filterFilms ::String -> [Film] -> [Film]
filterFilms filterTitle database  = [x|x <- database, title x /= filterTitle ]



-- Demo function to test basic functionality (without persistence - i.e. 
-- testDatabase doesn't change and nothing is saved/loaded to/from file).

--demo :: Int -> IO ()
--demo 1  = putStrLn all films after adding 2018 film "Sherlock Gnomes" 
--          directed by by "John Stevenson" to testDatabase
--demo 2  = putStrLn (filmsAsString testDatabase)
--demo 3  = putStrLn all films by "Ridley Scott"
--demo 4  = putStrLn all films with website rating >= 75%
--demo 5  = putStrLn average website rating for "Ridley Scott"
--demo 6  = putStrLn titles of films rated by "Emma" (with likes/dislikes)
--demo 7  = putStrLn all films after "Emma" says she likes "Avatar"
--demo 71 = putStrLn all films after "Emma" says she likes "Titanic"
--demo 72 = putStrLn all films after "Emma" says she dislikes "Jaws"
--demo 8  = films between 2000 and 2006 inclusive sorted by website rating

--
--
-- Your user interface code goes here
--
--
type IoDatabase = [Film]


main :: IO()
main = do fileContent <- readFile "haskellDB.txt";
          let database = (read fileContent :: IoDatabase)
          mapM_ print (getAllFilms database)
          putStrLn("What is your name?")
          name <- getLine
          basicStart name database
          
            


      
basicStart  ::String -> [Film] -> IO() 
basicStart name database = do   
                putStrLn("Type addFilm to add a film, Type getFilms to get films, type addRating to add a rating, type getDirectorRating to get a directors average rating,type yourRatings to see your ratings, type exit to exit")
                whatToDo <- getLine
                if whatToDo == "addFilm" then
                        addFilmIO name database
              -- add fiml to DB
                else if whatToDo == "getFilms" then
                       
                       getFilmsIO name database
                    -- get films
                else if whatToDo == "addRating" then
                    addRatingIO name database
                    --add rating code
                else if whatToDo == "getDirectorRating" then
                    dirRatingIO name database
                    -- avg dir code
                else if whatToDo == "yourRatings" then
                    ratingsIO name database
                else if whatToDo == "exit" 
                    then
                        do
                    -- save database
                    
                        putStrLn("Goodbye")
                        writeFile "haskellDB.txt" (show database)
                 
                else do
                    putStrLn("I didn't understand that please try again")
                    basicStart name database
               
addFilmIO ::String -> [Film] -> IO()
addFilmIO name database = do
            putStrLn("What is the title of the film?")
            title <- getLine
            putStrLn("Who is the director of the film?")
            director <- getLine
            putStrLn("What is the year the film was released?")
            year <- readLn
            let newFilmDB = (addFilm title director (year :: Int) database)
            mapM_ print(newFilmDB)
            basicStart name newFilmDB
            -- use basic start with new DB
            
getFilmsIO ::String -> [Film] -> IO()
getFilmsIO name database = do
        putStrLn("To get all films type all, to get high rating films type high, to get films by director type direct,to get top films between two years type year, to go back type back")
        response <- getLine
        if response == "all" then
            mapM_ print (getAllFilms database)
        else if response == "high" then
           mapM_ print(getHighRatingFilms database)
      
        else if response == "direct" then
            dirHandler name database
        else if response == "back" then
            basicStart name database  


        else if response == "year" 
            then
                do
                    putStrLn("enter year one")
                    yearOne <- getLine
                    let readYearOne = readMaybe yearOne :: Maybe Int
                    if readYearOne == Nothing 
                        then
                            do
                                putStrLn("That is not a number")
                                getFilmsIO name database
                    else do
                    putStrLn("enter year two")
                    yearTwo <- getLine
                    let readYearTwo = readMaybe yearTwo :: Maybe Int
                    if readYearTwo == Nothing
                        then
                            do
                                putStrLn("That is not a number")
                                getFilmsIO name database
                    else do
                        mapM_ print (getTopFilmsOfSpanByRate (read yearOne :: Int) (read yearTwo :: Int) database)
            
        else do 
            putStrLn("Invaild input, please try again")
            getFilmsIO name database
        basicStart name database   
       
        
dirHandler ::String -> [Film] -> IO()
dirHandler name database = do 
                putStrLn("Enter name of director")
                direct <- getLine
                mapM_ print(getFilmsByDirector direct database)
                basicStart name database

                
addRatingIO ::String -> [Film] -> IO()
addRatingIO name database = do
                putStrLn("Enter title of film")
                inputTitle <- getLine
                
                if title (rateFilm name inputTitle True database) == ""  -- check if film exists
                    then
                        do
                        putStrLn("No such film")
                        basicStart name database      
                
                else do
                    putStrLn("Did you like the film? (enter yes or no)")
                    liked <- getLine
                    
                    if liked == "yes" 
                        then
                            do
                                let newRatedFilm = (rateFilm name inputTitle False database)
                                putStrLn(show newRatedFilm)
                                basicStart name ((filterFilms inputTitle database) ++ [newRatedFilm]) -- updates DB
                            
                    else if liked == "no" 
                        then
                            do
                                let newRatedFilm = (rateFilm name inputTitle False database)
                                putStrLn(show newRatedFilm)
                                basicStart name ((filterFilms inputTitle database) ++ [newRatedFilm]) -- updates DB
                              -- add case for not yes or no 
                    else do
                        putStrLn("Invaild input: " ++ liked ++ " , must be yes or no")
                        addRatingIO name database
                        

dirRatingIO :: String -> [Film] -> IO()
dirRatingIO name database    = do
                    putStrLn("Enter name of director")
                    dir <- getLine
                    putStrLn("Director: " ++ dir ++ " Average score : " ++ (show (getAvgDirectorRating dir database)))
                    basicStart name database
                    

ratingsIO :: String -> [Film] -> IO()
ratingsIO name database = do
                    let rateList = filmsRatedByUser name database
                    if rateList == [] then
                        putStrLn("You have no ratings")
                    else do
                        putStrLn("Your Ratings\n True = like , False = disliked:\n")
                        mapM_ print(rateList)
                    
                    basicStart name database
                    
                    