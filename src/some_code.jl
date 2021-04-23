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
    Method to account for flexibile third argument.
```
function get_reaction(t::Float64, reaction::Reaction)
    return get_reaction(t::Float64, reaction::Reaction, 0.0)
end

```
    Subtype `Phase1EffectAR` data for `AEPclass` project.
```
mutable struct Phase1EffectAR <: Reaction
    a::Float64
    b::Float64
end

```
    Function `Phase1EffectAR`
```
function get_reaction(t::Float64, reaction::Phase1EffectAR, ::Float64)
    return reaction.a * exp(reaction.b * t)
end

```
    Subtype `Phase1EffectBR` data
```
mutable struct Phase1EffectBR <: Reaction
    a::Float64
    b::Float64
    c::Float64
    d::Float64
    e::Float64
    f::Float64
end

```
    Function `Phase1EffectBR`
```
function get_reaction(t::Float64, reaction::Phase1EffectBR, ::Float64)
    return 1 / (reaction.a*(t + reaction.b) *
        (exp(reaction.c - (reaction.d/(t + reaction.b))) /
        1+exp(reaction.e - (reaction.f /(t + reaction.b)))))
end

```
    Subtype `Phase2EffectAR` data
```
mutable struct Phase2EffectAR <: Reaction
    a::Float64
    b::Float64
end

```
    Function `Phase2EffectAR`
```
function get_reaction(t::Float64, reaction::Phase2EffectAR, ::Float64)
    return reaction.a * exp(reaction.b * t^2)
end

```
    Subtype `Phase2EffectBR` data
```
mutable struct Phase2EffectBR <: Reaction
    a::Float64
    b::Float64
    c::Float64
    d::Float64
end


```
    Function `Phase2EffectBR`
```
function get_reaction(t::Float64, reaction::Phase2EffectBR, ::Float64)
    return 1 / (reaction.a *(t + reaction.b) *
        exp(reaction.c - (reaction.d / (t + reaction.b))))
end

```
    Subtype `Phase3EffectAR` data
```
mutable struct Phase3EffectAR <: Reaction
    a::Float64
    b::Float64
end


```
    Function `Phase3EffectAR`
```
function get_reaction(t::Float64, reaction::Phase3EffectAR, ::Float64)
    return reaction.a * exp(reaction.b * t^2)
end

```
    Subtype `Phase3EffectBR` data
```
mutable struct Phase3EffectBR <: Reaction
    a::Float64
    b::Float64
    c::Float64
end

```
    Function `Phase3EffectBR`
```
function get_reaction(t::Float64, reaction::Phase3EffectBR, ::Float64)
    return reaction.a * t^2 + reaction.b * t + reaction.c
end

```
    Subtype `Phase4EffectAR` data
```
mutable struct Phase4EffectAR <: Reaction
    a::Float64
    b::Float64
    c::Float64
    d::Float64
end


```
    Function `Phase4EffectAR`
```
function get_reaction(t::Float64, reaction::Phase4EffectAR, ::Float64)
    return reaction.a * exp( -reaction.b *
        (t - reaction.c)^2) + reaction.d * (t - reaction.c)^2
end
