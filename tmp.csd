<CsoundSynthesizer>

<CsOptions>

--nodisplays --output=dac --input=adc -+rtmidi=virtual --midi-device=0

</CsOptions>

<CsInstruments>

sr = 44100
ksmps = 64
nchnls = 1
0dbfs = 1.0
 massign 0, 19
gargg0 init 0.0
gkrggBpmVar init 110.0
girgfree_vco = 101
ir17 = girgfree_vco
ir19 vco2init 1, ir17
girgfree_vco = ir19
giPort init 1
opcode FreePort, i, 0
xout giPort
giPort = giPort + 1
endop




instr 22

endin

instr 21
 event_i "i", 20, 604800.0, 1.0e-2
endin

instr 20
ir1 = 19
ir2 = 0.0
 turnoff2 ir1, ir2, ir2
ir5 = 18
 turnoff2 ir5, ir2, ir2
 exitnow 
endin

instr 19
ar0 = gargg0
ir3 active p1
ar1 upsamp k(ir3)
ar2 = sqrt(ar1)
ar1 = (1.0 / ar2)
if (ir3 < 2.0) then
    ar2 = 1.0
else
    ar2 = ar1
endif
ir7 ampmidi 1.0
ar1 upsamp k(ir7)
ir8 = 1.0
ir9 cpsmidi 
kr0 madsr 2.0, 2.0, 0.5, 1.0
kr1 = (150.0 * kr0)
kr0 = (ir9 + kr1)
kr1 vco2ft kr0, 0
ar3 oscilikt ir8, kr0, kr1
ar4 = (ar1 * ar3)
ar1 = (ar2 * ar4)
ar2 = (ar0 + ar1)
gargg0 = ar2
endin

instr 18
ar0 = gargg0
gargg0 = 0.0
arl0 init 0.0
ir7 = 1.0
ar1 upsamp k(ir7)
ir8 = 0.0
ir9 = 90.0
ir10 = 100.0
ar2 compress ar0, ar1, ir8, ir9, ir9, ir10, ir8, ir8, 0.0
ar0 = (ar2 * 0.8)
arl0 = ar0
ar0 = arl0
 out ar0
endin

</CsInstruments>

<CsScore>



f0 604800.0

i 22 0.0 -1.0 
i 21 0.0 -1.0 
i 18 0.0 -1.0 

</CsScore>



</CsoundSynthesizer>