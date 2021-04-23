@testset "Phase4EffectAR test" begin
    test_phase4effectAR = Phase4EffectAR(0.053, 0.081, 23.0, 6.375*10^(-4))
    response = get_reaction(27.0, test_phase4effectAR)
    @test isapprox(response, 0.024702; atol = 1e-3)
end
