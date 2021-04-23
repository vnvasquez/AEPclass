```
    Function to add x and y. Getting project `AEPclass` workflow started.
```
function foo(x, y)
    return x + y
end

```
    Function to multiply x and y. Getting project `AEPclass` workflow started.
```
function bar(x, y)
    return x * y
end

```
    Data for `AEPclass` project.
```
abstract type Reaction end

```
    Subtype `phase1effectAR` data for `AEPclass` project.
```
mutable struct phase1effectAR <: Reaction
    a::Float64
    b::Float64
end

```
    Function `phase1effectAR`
```
function get_reaction(t::Float64, reaction::phase1effectAR, ::Float64)
    return reaction.a * exp(reaction.b * t)
end
