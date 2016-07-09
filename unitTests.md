
 # Unit Tests for makeCacheMatrix & cacheSolve
 
 ## v1 9th July 2016
 
### Test Data

 Test Matrix... 

### Test Script

 1. Read the test matrix into a 'Cache Matrix' called 'myTestMatrix'..

 ```
 myTestMatrix <- makeCacheMatrix(matrix(c(3,-7,5,2), nrow = 2, ncol = 2))
 ```

 2. execute the test matrix's get function

 ```
 myTestMatrix$get()
 ```
 **Expected Result** - matrix stored within myTestMatrix
 
 ```
         [,1] [,2]
 [1,]    3    5
 [2,]   -7    2
 ```

 3. Use cacheSolve on the test matrix 

 ```
 cacheSolve(myTestMatrix)
 ```

 **Expected Result** - this will create & return the inverse matrix
```
         [,1]        [,2]
 [1,] 0.04878049 -0.12195122
 [2,] 0.17073171  0.07317073
```
 4. re-run cacheSolve on the test matrix 

 ```
 cacheSolve(myTestMatrix)
 ```

 **Expected result** - this will return the cached version
 
```
 getting cached data
         [,1]        [,2]
 [1,] 0.04878049 -0.12195122
 [2,] 0.17073171  0.07317073
 ```

 5. update 'myTestMatrix' changing the matrix to all 10s

 ```
 myTestMatrix <- makeCacheMatrix(matrix(c(10,9,8,7), nrow = 2, ncol = 2))
 ```

 6. Use get to return the updated matrix

 ```
 myTestMatrix$get()
 ```

 **Expected Result** - matrix updated

```
       [,1] [,2]
 [1,]   10   8
 [2,]   9    7
```

 7. check inverse matrix has been cleared down by re-setting the test matrix

 ```
 myTestMatrix$getSolve()
 ```

 **Expected result**

```
 NULL
```

 8. re-run cacheSolve which should now calculate a new inverse matrix based
 on the new matrix...

 ```
 cacheSolve(myTestMatrix)
 ```

 **Expected result**
 
 ```
       [,1] [,2]
 [1,] -3.5    4
 [2,]  4.5   -5
 ```

 9. Confirm that the inverse matrix has been written to myTestMatrix

 ```
 myTestMatrix$getSolve()
 ```

 **Expected Result**

```
      [,1] [,2]
 [1,] -3.5    4
 [2,]  4.5   -5
```

 End of test script.
