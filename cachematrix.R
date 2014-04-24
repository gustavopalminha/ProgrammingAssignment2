## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        #Initialize matrix
        cachedMatrix = NULL
        
        #set value of matrix
        set <- function( y ) {
                x <<- y
                cachedMatrix <<- NULL
        }
        
        # get value of matrix
        get <- function() x
        
        # set the inverse
        setInverse <- function(solve) cachedMatrix <<- solve
        
        # get the inverse
        getInverse <- function() cachedMatrix

        list(
			set = set, 
			get = get, 
			setInverse = setInverse, 
			getInverse = getInverse
		)
}

## Write a short comment describing this function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		
        #get value of inverse
        inverseMatrix <- x$getInverse()
        
        #check if the inverse is already computed
        if(!is.null(inverseMatrix)){
                message("getting cached data")
                #if cached, return it
                return( inverseMatrix )
        }
        
        #else... calculates the inverse of the matrix
        matrix <- x$get()
		
		# use the solve function as described in the assignment
        inverseMatrix <- solve(matrix, ...)
        
        #set mean to cached value
        x$setInverse(m)
        
        ## return the inverse matrix of 'x'
        inverseMatrix
}
