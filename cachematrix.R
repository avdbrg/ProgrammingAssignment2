## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## set sets the value of the matrix
## get retrieves the value of the matrix
## setmatrix sets the value of the inverse matrix
## getmatrix retrieves the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setmatrix <- function(myMatrix) m <<- myMatrix
      getmatrix <- function() m
      list(set = set, get = get,
           setmatrix = setmatrix,
           getmatrix = getmatrix)
}


## The function that actually calculates (or retrieves from cache)
## the inverse matrix

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      m <- x$getmatrix()
      if(!is.null(m)) {
            message("getting cached matrix")
            return(m)
      }
      data <- x$get()
      m <- solve(data)
      x$setmatrix(m)
      return(m)
      
}