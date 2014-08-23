## The purpose of these functions is to avoid redundant computations for matrix inversion
## by caching the inverse of a matrix and using this cache rather than computing it anew 
## if the matrix that is to be inverted has not changed.

## The following function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function( m = matrix() ) {
        i <- NULL
        #define set and get functions
        set <- function( matrix ) {
                m <<- matrix
                i <<- NULL
        }
        get <- function() {
                m
        }
        # define set- and getinverse functions
        setInv <- function(inverse) {
                i <<- inverse
        }
        getInv <- function() {
                i
        }
        # list the options
        list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)
}



## The following function computes the inverse of the special "matrix" returned by the makeCacheMatrix functionabove.
## If the inverse has already been calculated (and the matrix has not changed), then the following cachesolve function should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        # get the inverted matrix
        m <- x$getInv()
        # if m is already stored just the it from the cache
        if( !is.null(m) ) {
                message("getting cached data")
                return(m)
        }
        # define data as the current matrix
        data <- x$get()
        # calculate the inverse matrix
        m <- solve(data) %*% data
        # define this as the inverse
        x$setInv(m)
        ## and print it
        m
}


