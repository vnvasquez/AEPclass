@testset "Phase2EffectAR test" begin
    test_phase2effectAR = Phase2EffectAR(0.0143, 0.00189)
    response = get_reaction(27.0, test_phase2effectAR)
    @test isapprox(response, 0.056716; atol = 1e-3)
end
