function x = Tsexact(t, Tc, r, Ts)

x = (Tc - Ts) * exp(-r * t) + Ts;
end