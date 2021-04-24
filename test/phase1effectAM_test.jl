@testset "Phase1EffectAM test" begin
    test_phase1effectAM = Phase1EffectAM(30.33, 9.395, 3.6576, 110.0014, 0.00077)
    response = get_reaction(27.0, test_phase1effectAM, 0.015189)
    @test isapprox(response, 0.005044; atol = 1e-3)
end
