% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PoolConnection_by_PoolName.R
\name{by_PoolIndex,PoolConnection_by_PoolName,ANY,ANY-method}
\alias{by_PoolIndex,PoolConnection_by_PoolName,ANY,ANY-method}
\title{constructor from strings of the form 'x->y'
new object with the source pool id and the destination pool id guaranteed to be of class PoolIndex}
\usage{
\S4method{by_PoolIndex}{PoolConnection_by_PoolName,ANY,ANY}(obj, poolNames)
}
\arguments{
\item{obj}{object of class:\code{PoolConnection_by_PoolName}, no manual documentation}

\item{poolNames}{no manual documentation}
}
\description{
converts the ids if necessary otherwise returns an 
identical object
}
