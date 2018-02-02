## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function( z ) {
            x <<- z
            inv <<- NULL
    }
    get <- function() {
    	x
    }
    setInverse <- function(i) {
        inv <<- i
    }
    getInverse <- function() {
        inv
    }
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}
