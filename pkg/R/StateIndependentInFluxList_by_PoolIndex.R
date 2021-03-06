#' constructor from a normal list 
#' 
#' @param object A list. Either a list of elements of type  
#' \linkS4class{StateIndependentInFlux_by_PoolIndex} or 
#' a list where the names of the elements are strings of the form
#' '3' (for an in flux connected to pool 3)
#'
#' @return An object of class
#' \linkS4class{StateIndependentInFluxList_by_PoolIndex} 
#' 
#' 
#' The function checks if the elements are of the desired type or can be
#' converted to it. It is mainly used internally and usually called 
#' by the front end functions to convert the user supplied arguments.

setMethod("StateIndependentInFluxList_by_PoolIndex",
    signature=signature(object="list"),
    definition=function(object){
        makeListInstance(
            object
            ,targetClassName='StateIndependentInFlux_by_PoolIndex'
            ,targetListClassName="StateIndependentInFluxList_by_PoolIndex"
            ,permittedValueClassName='ScalarTimeMap'
            ,key_value_func=function(key,val){
                StateIndependentInFlux_by_PoolIndex(
                    destinationIndex=PoolIndex(key)
                    ,flux=object[[key]]
                )
            }
        )
    }
)

##' convert to a list indexed by pool names
##'
#setMethod("by_PoolName",
#    signature=signature(obj="StateIndependentInFluxList_by_PoolIndex"),
#    definition=function(obj,poolNames){
#        l=lapply(
#                obj
#                ,function(rate){
#                    by_PoolName(rate,poolNames)
#                }
#        )
#        as(l,'StateIndependentInFluxList_by_PoolName')
#    }
#)

