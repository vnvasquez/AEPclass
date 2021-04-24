@testset "Phase1EffectBM test" begin
    test_phase1effectBM = Phase1EffectBM(87.1722, 1.1575, 0.0136)
    response = get_reaction(27.0, test_phase1effectBM )
    @test isapprox(response, 0.015189; atol = 1e-3)
end
