
@testset "phase1effectAR test" begin
    test_phase1effectAR = phase1effectAR(0.0731, 0.0595)
    response = get_reaction(27.0, test_phase1effectAR)
    @test isapprox(response, 0.364427; atol = 1e-3)
end
