"""
    For a sampled (discrete-time) impulse response h[n], this becomes
    E[n]=sum_{k=n}^{N-1} h^2[k]
    The normalized decay curve is
    E_{mathrm{norm}}[n] = frac{E[n]}{E[0]}.
    It is usually plotted in decibels as
    mathrm{EDC}_{mathrm{dB}}[n] = 10log_{10} frac{E[n]}{E[0]}
}
"""

import numpy as np
import matplotlib.pyplot as plt
import librosa as lb

SR = 44100
IRs = ["factoryhall.wav", "IRChurchSchellingwoude.wav"]


def energy_decay_curve(ir: np.ndarray) -> np.ndarray:
    cs = np.flipud(np.cumsum(np.flipud(np.power(ir, 2)), dtype=np.float32))
    cs_norm = cs / (np.max(cs) + 1e-12)
    lpw = 10 * np.log10(cs_norm + 1e-12)
    return lpw


def main():
    ir_path1 = IRs[0]
    fac_ir1, _ = lb.load(ir_path1, sr=SR, mono=True)
    fac_edc1 = energy_decay_curve(fac_ir1)
    xtime1 = np.linspace(0, len(fac_edc1) / SR, len(fac_edc1))

    t60_on_x1 = np.where(fac_edc1 < -60)[0][0] / SR

    ir_path2 = IRs[1]
    fac_ir2, _ = lb.load(ir_path2, sr=SR, mono=True)
    fac_edc2 = energy_decay_curve(fac_ir2)
    xtime2 = np.linspace(0, len(fac_edc2) / SR, len(fac_edc2))

    t60_on_x2 = np.where(fac_edc2 < -60)[0][0] / SR

    _, ax = plt.subplots(1, 2, figsize=(10, 7))

    ax[0].set_title(f"ENERGY DECAY CURVE [{ir_path1}]")
    ax[0].plot(xtime1, fac_edc1, lw=1.2, c="k")
    # ax[0].hlines(-60, xtime1[0], xtime1[-1], lw=2, ls=":", color="b")
    # ax[0].vlines(t60_on_x1, np.min(fac_edc1), 0, lw=2, ls=":", color="b")
    ax[0].set_ylabel("Gain (dB)")
    ax[0].set_xlabel("Time (s)")
    ax[0].grid(alpha=0.5)

    ax[1].set_title(f"ENERGY DECAY CURVE [{ir_path2}]")
    ax[1].plot(xtime2, fac_edc2, lw=1.2, c="k")
    # ax[1].hlines(-60, xtime2[0], xtime2[-1], lw=2, ls=":", color="b")
    # ax[1].vlines(t60_on_x2, np.min(fac_edc2), 0, lw=2, ls=":", color="b")
    ax[1].set_ylabel("Gain (dB)")
    ax[1].set_xlabel("Time (s)")
    ax[1].grid(alpha=0.5)

    plt.tight_layout()
    plt.show()





if __name__ == "__main__":
    main()
