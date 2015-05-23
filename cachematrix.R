## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## define makeCacheMatrix function
makeCacheMatrix <- function(x = matrix()) {
  
## stores the cached value which is "Null" in this case where nothing is stored initially  
  i <- NULL}


## stores a matrix and sets a new value
set <- function(y) {
  x <<- y
  i <<- NULL
}

## returns the stored matrix function
get <- function() {x
}

## caches the argument that was given by the function
setInverse <- function(inverse) {
  i <<- inverse
}


## calls the cached value
getInverse <- function() {
  i
}

## returns a list where each named element of the list is a function

list(set = set, get = get,
     setInverse = setInverse,
     getInverse = getInverse)
}



## Write a short comment describing this function
## Return a matrix that is the inverse of 'x'

## The following function calculates the inverse of a special matrix created with makeCacheMatrix

cacheSolve <- function(x, ...) {
  
## gets the cached value
  
  
  w <- x$getInverse()
  
## if a cached value exists, it will be returned
  
if(!is.null(w)) {
  message("getting cached data")
  return(w)
}


## if a cached value does not exist, get the matrix, calculate the inverse, and store it in the cache
  
data <- x$get()
w <- solve(data, ...)
x$setInverse(w)


## returns the inverse

w
  
}