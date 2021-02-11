function [ FinalT ] = Fk(Tbase, q_a, q_p, t, L)

    T3d_2_7 = T3d(t(2), t(3), t(4), t(5), t(6), t(7));
    T3d_8_13 = T3d(t(8), t(9), t(10), t(11), t(12), t(13));

    FinalT = Tbase * Tz(q_a) * Tz(t(1)) * Rz(q_p(1)) * Tx(L) * T3d_2_7 * Rz(q_p(2)) * Tx(L) * T3d_8_13 * Rz(q_p(3));