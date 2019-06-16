

 
 
 

 



window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"

      waveform add -signals /Map_RAM_tb/status
      waveform add -signals /Map_RAM_tb/Map_RAM_synth_inst/bmg_port/CLKA
      waveform add -signals /Map_RAM_tb/Map_RAM_synth_inst/bmg_port/ADDRA
      waveform add -signals /Map_RAM_tb/Map_RAM_synth_inst/bmg_port/DOUTA

console submit -using simulator -wait no "run"
