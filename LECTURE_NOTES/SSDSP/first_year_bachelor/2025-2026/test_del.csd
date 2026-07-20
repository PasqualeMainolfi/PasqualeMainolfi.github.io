<CsoundSynthesizer>
<CsOptions>
-o dac3
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 1
nchnls = 2
0dbfs = 1


#define AUDIO_PATH # "/Users/pm/AcaHub/AudioSamples/vox.wav" #


opcode ff_delay(x:a, d:i):(a)
	setksmps(1)
	
	// min delay in sec -> 1 / sr
	d_check:i = d < 1 / sr ? 1 / sr : d
	d_samples:i = round(d_check * sr)
	
	dbuffer:a[] = init(d_samples) // [delay_length]
	
	ndx:k = init(0)
	buffer_out:a = dbuffer[ndx] + x
	xout(buffer_out)
	dbuffer[ndx] = x
	ndx += 1
	ndx = ndx % d_samples
endop

opcode fb_delay(x:a, d:i, g:i):(a)
	setksmps(1)
	
	// min delay in sec -> 1 / sr
	d_check:i = d < 1 / sr ? 1 / sr : d
	d_samples:i = round(d_check * sr)
	
	dbuffer:a[] = init(d_samples) // [delay_length]
	
	ndx:k = init(0)
	buffer_out:a = (dbuffer[ndx] * g) + x
	xout(buffer_out)
	
	dbuffer[ndx] = buffer_out
	ndx += 1
	ndx = ndx % d_samples
endop



instr 1
	
	d_samples:i = 0.05 * sr
	
	audio:a = diskin2($AUDIO_PATH, 1, 0, 1)
;	audio_delay:a = ff_delay(audio, d_samples / sr)
	y:a = fb_delay(audio, d_samples / sr, 0.5)
;	y:a = init(0)
;	audio_delay:a = delay(y, d_samples / sr)
;	y = (audio + audio_delay) / 2
	out(y, y)

endin

instr 2

	dt:i = 2
	audio:a = diskin2($AUDIO_PATH, 1, 0, 1)
	dbuf:a = delayr(dt)
	tap1:a = deltapi(0.5)
	tap2:a = deltapi(1.3)
	delayw(audio)
	
	outs(tap1, tap2)


endin






</CsInstruments>
<CsScore>

i 2 0 60

</CsScore>
</CsoundSynthesizer>



<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>0</x>
 <y>0</y>
 <width>0</width>
 <height>0</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="background">
  <r>240</r>
  <g>240</g>
  <b>240</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
