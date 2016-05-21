## THe first function creates a cached matrix while the second one inverts the matrix. 
##If the matrix is already inverted by the first function the cacheSolve function 
##pulls the output from the environment rather then calculating it

##This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  x <- mat
  m <- NULL # Empty cache
  set <- function(y) {
    x <<- y
    m <<- NULL 
  }
  get <- function() x
  setsolve <- function(solvematrix) m <<- solvematrix
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
  
}


## Function that checks if inverse exists in environment cache and calculates the inverse if it doesn't

cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}



