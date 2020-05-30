## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix is a function that recieves a matrix as argument
## then, it calculates it inverse, and cahe's it.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      inv <- matrix()
      set <- function(y) {
            x <<- y
      }
      get <- function() x
      setinv <- function(inverse) inv <<- inverse
      getinv <- function() inv
      list(set = set, get = get, setinv = setinv, getinv = getinv )
}

## Write a short comment describing this function
  ## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
    mtx <- x$getinv()
    if (! is.na(mtx[1,1])){        ##Verifies if position [1,1] of x is Null
      return (mtx)                 ## if it is not, then x has already a cached inverse
    }
    data <- x$get()
    mtx <- solve(data)
    x$setinv(mtx)
    mtx
        
}