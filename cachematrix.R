## Functions created for Coursera 'R Programming' week 3 assignment.
## makeCacheMatrix creates a 'special' matrix with getters and setters for
## the matrix which is passed in and it's inverse.
## cacheSolve will return the inverse matrix from the'special' matrix if it
## exists else it will calculate and store the inverse matrix in the 'special'
## matrix.

## UNIT TEST SCRIPT at bottom of functions....

## makeCacheMatrix reads in a matrix and creates a special 'Cache Matrix'
## containing a list of four functions
## - 'set' sets the values of the matrix in the 'Cache Matrix'. Calling this
##   function also clears down the inverse matrix so that it can be recalculated
## - 'get' prints the matrix stored in the 'special' matrix
## - 'setSolve' takes the matrix, inverts it, & saves it to the 'Cache Matrix'
## - 'getSolve' prints the inverse matrix from the 'Cache Matrix'

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() {
                x
        }
        setSolve <- function(solve) {
                m <<- solve
        }
        getSolve <- function()
                m
        list(
                set = set,
                get = get,
                setSolve = setSolve,
                getSolve = getSolve
        )
}


## cacheSolve uses the functions built into the special 'Cache Matrix'.
## It first checks to see if the inverse matrix already exists if it does it
## prints this. If it doesn't then it will use solve to create the inverse 
## matrix and then store this in the 'Cache Matrix' and uses the 'Cache Matrix' 
## 'setSolve function to write the inverse matrix into the 'Cache Matrix'


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getSolve()
        if (!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setSolve(m)
        m
}
