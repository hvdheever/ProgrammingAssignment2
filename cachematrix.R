## THe first function creates a cached matrix while the second one inverts the matrix. 
##If the matrix is already inverted by the first function the cacheSolve function 
##pulls the output from the environment rather then calculating it

##This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  Matrix_Input <<- x
  Output_makeCacheMatrix <<- solve(x)
  Output_makeCacheMatrix
}


## Function that checks if inverse exists in environment cache and calculates the inverse if it doesn't

cacheSolve <- function(x, ...) {
  if (identical(x, Matrix_Input) == TRUE) {
    message("getting cached data")
    return(Output_makeCacheMatrix)}
  Output_cacheSolve <- solve(x)
  Output_cacheSolve
}