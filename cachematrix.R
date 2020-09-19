## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  #Set the matrix
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  #Get the matrix
  get <- function() x
  #Set the inverse matrix
  setinverse <- function(inverse) i <<-inverse
  #get the inverse matrix
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data = x$get()
  i <- solve(data)
  x$setinverse(i)
  ## Return a matrix that is the inverse of 'x'
  i
}
