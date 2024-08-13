# indexing with simple vectors

x <- c(2.1, 4.2, 3.3, 5.4)
x[seq(1:3)]
# to pull out a specific number
x[c(3,1)]

# to sort
x[order(x)]
x[order(x, decreasing = TRUE)]

# can duplicate
x[c(1,1)]

# if you put in numbers that arent exactly matching, will return these
x[c(2.1, 2.9)]

# use negative integers to get rid of elements - get rid of first element
x[-1]

## pass in vectors - pick specific numbers
x[c(3,1)]
### cannot mix positive and negative
x[c(-1, 2)]

# Logicals

## to give first and second but not third and fourth

x[c(TRUE, TRUE, FALSE, FALSE)]

x[x > 3]

# R will recycle rules if you do not specify...try to avoid
x[c(TRUE, FALSE)]

# add in NAs
x[c(TRUE, TRUE, NA, FALSE)]

x[]
x[0]



# Assignments

x <- 1:5
x[c(1,2)] <- 2:3
x

x[-1] <- 4:1
x

x[c(TRUE, FALSE, NA)] <- 1
x

df <- data.frame(a=c(1, 10, NA))
df$a[df$a <5] <- 0
df
