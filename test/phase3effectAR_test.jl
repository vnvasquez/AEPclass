@testset "Phase3EffectAR test" begin
    test_phase3effectAR = Phase3EffectAR(0.0143,0.00189)
    response = get_reaction(27.0, test_phase3effectAR)
    @test isapprox(response, 0.056716; atol = 1e-3)
end
