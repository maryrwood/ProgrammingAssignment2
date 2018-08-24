## Put comments here that give an overall description of what your
## functions do

## This makes the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  set <- function(y){
    x <<- y 
    m <<- NULL
  }
  get <- function() x
  mvar <<- m
  get2 <- function() m
  list(set = set, get = get, mvar = mvar, get2 = get2)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$get2()
  if(!is.null(m)){
    message("Data was cached")
    return(m)
  }
  
  elseif(is.null(m)){
    data <- x$get()
    solve(x)
    x$mvar(m)
    m
  }
}
