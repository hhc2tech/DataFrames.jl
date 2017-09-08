import Base: @deprecate

@deprecate by(d::AbstractDataFrame, cols, s::Vector{Symbol}) aggregate(d, cols, map(eval, s))
@deprecate by(d::AbstractDataFrame, cols, s::Symbol) aggregate(d, cols, eval(s))
@deprecate nullable!(colnames::Array{Symbol,1}, df::AbstractDataFrame) nullable!(df, colnames)
@deprecate nullable!(colnums::Array{Int,1}, df::AbstractDataFrame) nullable!(df, colnums)

import Base: keys, values, insert!
@deprecate keys(df::AbstractDataFrame) names(df)
@deprecate values(df::AbstractDataFrame) DataFrames.columns(df)
@deprecate insert!(df::DataFrame, df2::AbstractDataFrame) merge!(df, df2)

@deprecate pool categorical
@deprecate pool! categorical!

@deprecate complete_cases! dropnull!
@deprecate complete_cases completecases

@deprecate sub(df::AbstractDataFrame, rows) view(df, rows)

import Base: length
@deprecate length(df::AbstractDataFrame) size(df, 2)
@deprecate ncol(df::AbstractDataFrame) size(df, 2)
@deprecate nrow(df::AbstractDataFrame) size(df, 1)