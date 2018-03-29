import SwiftyAlgebra
import SwiftyTopology

// Homology or Cohomology

typealias H = Homology
//typealias H = Cohomology

// Coeff Ring

typealias R = 𝐙
//typealias R = 𝐙₂
//typealias R = 𝐐

// D^3 = Δ^3
do {
    let D3 = SimplicialComplex.ball(dim: 3)
    let h  = H(D3, R.self)
    print(h.detailDescription, "\n")
}
