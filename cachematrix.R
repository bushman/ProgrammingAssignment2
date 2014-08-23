## The purpose of these functions is to avoid redundant computations for matrix inversion
## by caching the inverse of a matrix and using this cache rather than computing it anew 
## if the matrix that is to be inverted has not changed.

## The following function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

}


## The following function computes the inverse of the special "matrix" returned by the makeCacheMatrix functionabove.
## If the inverse has already been calculated (and the matrix has not changed), then the following cachesolve function should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
