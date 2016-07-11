## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix function is composed of 4 functions: set to set 
## the value of matrix, get to take the value of matrix, setinv to 
## set the calculated value of inverse of matrix and getinv to take
## the value of inverse matrix if it exists in cache.

makeCacheMatrix <- function(x = matrix()) {
  inv=NULL
  set<-function(y)
  {
    x<<-y
    inv<-NULL
  }
  get<-function(x) x
  setinv(mat_inverse)
  {
    inv<<-mat_inverse
  }
  getinv<-function() inv
  list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## Write a short comment describing this function
## In function cacheSolve, it is first checked if the inverse of x
## already exists. If not, the inverse is calculated and the value 
## is set in the list.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getinv()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data<-x$get()
  inv<-solve(x,...)
  x$setinv(inv)
  inv
  
}
