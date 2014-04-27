## Theses 2 functions is to cache a matrix and inverse the matrix

## This function is to cache a matrix
## Return a list that contain 4 functions
makeCacheMatrix <- function(x = matrix()) {
     cachedMatrix <- NULL

     set <- function(mtrx) {
                x <<- mtrx
                cachedMatrix <<- NULL
        }
        get <- function() x
        setMatrix <- function(InverseMatrix) cachedMatrix <<- InverseMatrix
        getMatrix <- function() cachedMatrix
        list(set = set, get = get,
             setMatrix = setMatrix,
             getMatrix = getMatrix)

}


##  This function is to inverse the matrix
cacheSolve <- function(x, ...) {
	m <- x$getMatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
	  
	  # To inverse a matrix, use solve()
        m <- solve(data, ...)
        x$setMatrix(m)
        m   ## Return a matrix that is the inverse of 'x'
}
