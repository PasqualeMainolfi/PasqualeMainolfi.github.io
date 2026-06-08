<CsoundSynthesizer>
<CsOptions>
-o dac4
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 1
nchnls = 2
0dbfs = 1



seed(0)

instr Config

    n_instance:i = 10


    start_time:i = 0
    score:S = ""
    i:i = 0
    while i < n_instance do
        dado1:i = floor(random(0, 8))
        dado2:i = floor(random(0, 8))
        dado3:i = floor(random(0, 0.3) * 10)

        rval:i = random(0, 1)

        freq:i = (dado3 * 100) + (dado2 * 10) + (dado1)
        amp:i = dado1 * 0.1
        dur:i = dado2 * 0.5
        score_row:S = sprintf("i 2 %f %f %f %f %f\n", start_time, dur, amp, freq, rval)
        score = strcat(score, score_row)
        start_time += random(0.5, 2.1)
        i += 1
    od

    puts(score, 1)
    scorelinei(score)

endin


instr 2
    sig:a = poscil(p4, p5) * 0.7

    if p6 < 0.5 then
        sig *= expseg:k(.001, p3 / 2, 1, p3 / 2, .001)
    else
        sig *= expseg:k(.001, 0.001, 1, p3 - 0.001, .001)
    endif
    out(sig, sig)
endin

</CsInstruments>
<CsScore>

i "Config" 0 30

</CsScore>
</CsoundSynthesizer>
