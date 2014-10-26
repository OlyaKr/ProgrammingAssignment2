## Put comments here that give an overall description of what your
## functions do

## Create object which contain matrix and could memorize inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        
        get <- function() {
                x
        }
        
        setInverse <- function(solve) {
                m <<- solve
        }
  
        getInverse <- function(){
                m
        }
  
        list(
        set = set,
        get = get, 
        setInverse = setInverse,
        getInverse = getInverse)
}


## Function checks and return previously counted inverse matrix from the cache
## Otherwise, it count inverse matrix and save it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        
        if(!is.null(m)) {
                message("getting cached data")
                return m
        }
  
        data <- x$get()
        m <- solve(data)
  
        x$setInverse(m) 
  
        m
}
