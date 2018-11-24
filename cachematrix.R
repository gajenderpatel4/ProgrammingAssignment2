## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##I'm initializing inversm setm function and assigning values to it that is y to x(matrix)
##further making functions which would help me to get and set the inverse 
## and lastly im assigning values in list that are set to set and setinverse to setinverse and getinverse to getinverse
##Overall preview can be described as set the values of matrix get the values of matrix similarly setting value of 
##inversematrix and getting the value of inversmatrix
makeCacheMatrix <- function(x = matrix()) {
  inversM <- NULL
  setM <- function(y) {
    x <<- y
    inversM <<- NULL
  }
 
  setinverse <- function(inverse) inversM <<- inverse
  getinverse <- function() inversM
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}
## Write a short comment describing this function

##using the makecache matrix im solving the inverse of the matrix
cacheSolve <- function(x, ...) {
  inverto <- x$getinverse()
  if(!is.null(inverto)) {
    message("getting cached data.")
    return(inverto)
  }
  data <- x$get()
  inverto <- solve(data)
  x$setinverse(inverto)
  inverto
  ## Return a matrix that is the inverse of 'x'
}
