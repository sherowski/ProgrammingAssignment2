## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##create a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
  set <- function(y){
    x<<-y
    i<-NULL
  }
  get <-function() x
  setinv<- function(inverse) i <<- inverse
  getinv <- function() i
  list (set = set, get=get, setinv=setinv, getinv=getinv)

}


## Write a short comment describing this function
## Computes the inverse of the above matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          ## Return a matrix that is the inverse of 'x'
  i <- x$getinv()
  if(!is.null(i)){
      message("getting cached data")
      return(i)
  }
  
  data <- x$get()
  i<- solve(data,...)
  x$setinv(i)
  i
}
