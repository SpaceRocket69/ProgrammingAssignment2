## Put comments here that give an overall description of what your
## functions do

## Creates matrix and safes inverse

makeCacheMatrix <- function(x = matrix()) {
  
  m <<- matrix(sample.int(9, 9, replace = FALSE), nrow = 3, ncol = 3)
  
  inverseMatrix <<- NULL
  
  return(m)
  
}


## Inverts matrix

cacheSolve <- function(x, ...) {
  
  if(!is.null(inverseMatrix)) {
    return(inverseMatrix)
  }
  
  inverseMatrix <<- solve(m)
  
}
