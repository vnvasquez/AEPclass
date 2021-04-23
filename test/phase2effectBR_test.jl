@testset "Phase2EffectBR test" begin
    test_phase2effectBR = Phase2EffectBR(0.00219, 273.0, 25.21, 7514.34)
    response = get_reaction(27.0, test_phase2effectBR)
    @test isapprox(response, 1.294172; atol = 1e-3)
end
