# making vectors
dogs <- c("teddy", "khora", "waffle", "banjo")

typeof(dogs)
class(dogs)

weights <- c(50, 55, 25, 35)
typeof(weights)
class(weights)

dog_age <- c(5L, 6L, 1L, 7L)
typeof(dog_age)
class(dog_age)

is.numeric(dog_age)

# combinning classes - hierarchy

dog_info <- c("Teddy", 50, 5L)
dog_info
typeof(dog_info)
is.character(dog_info)

dog_food <- c(teddy = "purina",
              khora = "alpo",
              waffle = "fancy feast",
              banjo = "blue diamond")
dog_food
class(dog_food)
typeof(dog_food)

# accessing bits of vectors

dog_food[2]
dog_food["khora"]

cars <- c("red", "orange", "white", "blue", "silver", "black")
cars [5]
cars[2:4]

# loop warm up

i <- 4
cars[i]

i <- seq(1:3)
cars[i]

cars[3] <- "BURRITOS!"

cars

# matricies

fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), ncol =2, nrow = 2, byrow = FALSE)
fish_size
typeof(fish_size)
class(fish_size)

dog_walk <- matrix(c("teddy", 5, "khora", 10), ncol = 2, nrow = 2, byrow = FALSE)
class(dog_walk)
typeof(dog_walk)

whale_travel <- matrix(data = c(31.8, 3148, 49.6, 1587), ncol =2, nrow = 2, byrow = FALSE)

whale_travel <- matrix(data = c(31.8, 1348, 46.9, 1587), nrow = 2, ncol = 2, byrow = TRUE)
whale_travel
whale_travel[1,2]
whale_travel[2,1]
whale_travel[2, ]
whale_travel[ ,1]
whale_travel[3]

# lists

urchins <- list("blue", c(1,2,3), c("a cat", "a dog"), 5L)

urchins[[1]]
urchins[2]

tacos <- list(topping = c("onion", "cilantro", "guacamole"), filling = c("beans", "meat", "veggie"), price = c(6.75, 8.25, 9.50))
tacos

tacos [[2]]
tacos$filling

tacos$filling[1]
# to get specific item from this section of the list

# data frames
fruit <- data.frame(type = c("apple", "banana", "peach"),
           mass = c(130, 195, 150))
fruit
class(fruit)
## access element from DF [row, column]
fruit [1,2]
fruit [ 3,1]
### can update data frame
fruit [2,1] <- "pineapple"
fruit
#### can access by column
fruit$type
fruit$mass
