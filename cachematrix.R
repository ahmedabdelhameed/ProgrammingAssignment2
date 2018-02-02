## Put comments here that give an overall description of what your
## functions do

## Creates a special matrix object that can cache its inverse

### set function : create the square matrix
### get function:  get the square matrix
### setInverse function:  create the inverted
### getInverse  -> will print the inverted


makeCacheMatrix <- function(x = matrix()) {
    # Initialize the inv variable
    inv <- NULL
	
	# This function creates the matrix
    set <- function( z ) {
            x <<- z
            inv <<- NULL
    }
	
	# This fuction get (retreives) the matrix
    get <- function() {
    	x
    }
	
	# This fuction sets the value of the inverse
    setInverse <- function(i) {
        inv <<- i
    }
	
	# This function gets the value of the inverse
    getInverse <- function() {
        inv
    }
	# To return a list of the methods
	
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Calculate the inverse of the matrix returned by "makeCacheMatrix".
## If the inverse has already been calculated and there is no change: the inverse will be returned from the cache.

cacheSolve <- function(x, ...) {
    
	##  Returns the inverse of 'x'
    inv <- x$getInverse()
	
	## Test for cached data
	
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
	## Strore the matrix in data object
	data <- x$get()
	
	## Inverse calculation
    inv <- solve(data)
	
	## Assign the inverse to the object x$get
    x$setInverse(inv)
	
	# Return the result
    inv
}
