

 
 
 

 



window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"

      waveform add -signals /VRAM_B_tb/status
      waveform add -signals /VRAM_B_tb/VRAM_B_synth_inst/bmg_port/CLKA
      waveform add -signals /VRAM_B_tb/VRAM_B_synth_inst/bmg_port/ADDRA
      waveform add -signals /VRAM_B_tb/VRAM_B_synth_inst/bmg_port/DINA
      waveform add -signals /VRAM_B_tb/VRAM_B_synth_inst/bmg_port/WEA
      waveform add -signals /VRAM_B_tb/VRAM_B_synth_inst/bmg_port/DOUTA

console submit -using simulator -wait no "run"
