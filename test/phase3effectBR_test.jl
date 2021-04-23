@testset "Phase3EffectBR test" begin
    test_phase3effectBR = Phase3EffectBR(0.027, -1.7, 27.7)
    response = get_reaction(27.0, test_phase3effectBR)
    @test isapprox(response, 1.483000; atol = 1e-3)
end
