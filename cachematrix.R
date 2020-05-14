## This function helps to get inverse of a square matrix
## The function stores and caches the inverse of a matrix
makeCacheMatrix <- function(x = matrix()) {inv <- NULL
set <- function(y) {
  x <<- y
  inv <<- NULL
}
get <- function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set = set,
     get = get,
     setInverse = setInverse,
     getInverse = getInverse)

}


## The below function solves to find the inverse of the matrix. 
## It also gets the inverse matrix from cache. 

cacheSolve <- function(x, ...) { inv <- x$getInverse()
if (!is.null(inv)) {
  message("getting cached data")
  return(inv)
}
mat <- x$get()
inv <- solve(mat, ...)
x$setInverse(inv)
inv
        ## Return a matrix that is the inverse of 'x'
}
