@testset "Phase1EffectBR test" begin
    test_phase1effectBR = Phase1EffectBR(0.00764, 273.0, 40.55, 13094.10, 92.501, 28169.2)
    response = get_reaction(27.0, test_phase1effectBR)
    @test isapprox(response, 1.490669; atol = 1e-3)
end
