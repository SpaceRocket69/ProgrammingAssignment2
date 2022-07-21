
## Creates a matrix and safes an inverse of the matrix after
## the function 'cacheSolve' is executed

makeCacheMatrix <- function(x = matrix()) {
  
  m <<- x
  
  inverseMatrix <<- NULL
  
  return(m)
  
}


## Inverts the matrix which is given to the 'makeCacheMatrix' function

cacheSolve <- function(x, ...) {
  
  if(!is.null(inverseMatrix)) {
    message("Getting cached data")
    return(inverseMatrix)
  }
  
  inverseMatrix <<- solve(m)
  
}
