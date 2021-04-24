@testset "Phase2EffectBM test" begin
    test_phase2effectBM = Phase2EffectBM(29.0889, 1.9571, 0.03357)
    response = get_reaction(27.0, test_phase2effectBM)
    @test isapprox(response, 1.389409; atol = 1e-3)
end
