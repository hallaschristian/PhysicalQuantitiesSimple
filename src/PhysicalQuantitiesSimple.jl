module PhysicalQuantitiesSimple

import Unitful: upreferred, @u_str
import PhysicalConstants: CODATA2022

macro SIval(arg1, arg2)
    arg2 = @eval @u_str $arg2
    return convert(Float64, upreferred(eval(arg1) .* arg2).val)
end
export @SIval

# const μX    = 1e-6 * 1.465 * (1e-21 / c) / h; # for CaOH, in MHz

const gS   = 2.0023193043617
const c    = CODATA2022.SpeedOfLightInVacuum.val
const h    = CODATA2022.h.val
const ħ    = CODATA2022.ħ.val
const μB   = CODATA2022.μ_B.val
const ε0   = CODATA2022.ε_0.val
const μ0   = CODATA2022.μ_0.val
const kB   = CODATA2022.BoltzmannConstant.val

export c, gS, μB, h, ħ, ε0, μ0, kB #, μX

end
