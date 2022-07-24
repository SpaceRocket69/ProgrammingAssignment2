## Creates a matrix and safes an inverse of the matrix after
## the function 'cacheSolve' is executed
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInvertion <- function(solve) m <<- solve
  getInvertion <- function() m
  list(set = set, get = get,
       setInvertion = setInvertion,
       getInvertion = getInvertion)
}

## Inverts the matrix which is given to the 'makeCacheMatrix' function
cacheSolve <- function(x, ...) {
  m <- x$getInvertion()
  
  ## Checks if the given matrix is different to the previous
  ## and if the inverse matrix is already computed
  if(!is.null(m)) {
    message("Getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInvertion(m)
  m
}

## Testing:

# mm1 <<- matrix(sample.int(9, 9, replace = FALSE), nrow = 3, ncol = 3)
# mm2 <<- matrix(sample.int(10:18, 9, replace = FALSE), nrow = 3, ncol = 3)
# aMatrix <- makeCacheMatrix(mm1)
# aMatrix$get()                     # retrieve the value of x
# aMatrix$getInvertion()            # retrieve the value of m, which should be NULL
# aMatrix$set(mm2)                  # reset value with a new matrix
# cacheSolve(aMatrix)               # notice invertion calculated is invertion of mm2, not mm1
# aMatrix$getInvertion()            # retrieve it directly, now that it has been cached

