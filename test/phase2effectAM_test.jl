@testset "Phase2EffectAM test" begin
    test_phase2effectAM = Phase2EffectAM(36.79, 2.354, 2.01938, 73.1928, 0.00046)
    response = get_reaction(27.0, test_phase2effectAM, 1.389409)
    @test isapprox(response, 0.058680; atol = 1e-3)
end
