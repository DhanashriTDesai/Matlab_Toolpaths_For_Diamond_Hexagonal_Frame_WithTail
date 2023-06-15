;FLAVOR:Marlin
;TIME:6
;Layer height: 2
;MINX:10
;MINY:0
;MINZ:2
;MAXX:240
;MAXY:230
;MAXZ:2
T1
M140 S70
M105
M190 S70
M105
M82 ;absolute extrusion mode
G21 ;metric values
M107
G28
M420 S1
G90 ;absolute positioning
G92 E0; reset extruder distance
G1 X0 Y0 Z10 F5000 ;move nozzle up 10mm for safe homing
M500
M82 ;set extruder to absolute mode
M107 ;start with the fan off
G92 E0 ;zero the extruded length
M117 Printing...
G92 E0
G92 E0
;LAYER_COUNT:1
;LAYER:0
M107




;Coordinate data for diamond frame
;Layer1 Z2
G0 F3600 X20 Y50 Z2
G1 F420 X50 Y50 E0.5
G1 F420 X159.1192 Y50 E2.3187
G1 F420 X159.1192 Y113 E3.3687
G1 F420 X50 Y113 E5.1873
G1 F420 X50 Y50 E6.2373
G0 F3600 X86.3731 Y60.5
G1 F420 X86.3731 Y81.5 E6.5873
G1 F420 X86.3731 Y102.5 E6.9373
G0 F3600 X122.7461 Y60.5
G1 F420 X122.7461 Y81.5 E7.2873
G1 F420 X122.7461 Y102.5 E7.6373
G0 F3600 X68.1865 Y113
G1 F420 X50 Y102.5 E7.9873
G1 F420 X68.1865 Y92 E8.3373
G1 F420 X50 Y81.5 E8.6873
G1 F420 X68.1865 Y71 E9.0373
G1 F420 X50 Y60.5 E9.3873
G1 F420 X68.1865 Y50 E9.7373
G1 F420 X68.1865 Y71 E10.0873
G1 F420 X68.1865 Y92 E10.4373
G1 F420 X68.1865 Y113 E10.7873
G1 F420 X86.3731 Y102.5 E11.1373
G1 F420 X68.1865 Y92 E11.4873
G1 F420 X86.3731 Y81.5 E11.8373
G1 F420 X68.1865 Y71 E12.1873
G1 F420 X86.3731 Y60.5 E12.5373
G1 F420 X68.1865 Y50 E12.8873
G0 F3600 X104.5596 Y50
G1 F420 X86.3731 Y60.5 E13.2373
G1 F420 X104.5596 Y71 E13.5873
G1 F420 X86.3731 Y81.5 E13.9373
G1 F420 X104.5596 Y92 E14.2873
G1 F420 X86.3731 Y102.5 E14.6373
G1 F420 X104.5596 Y113 E14.9873
G1 F420 X104.5596 Y92 E15.3373
G1 F420 X104.5596 Y71 E15.6873
G1 F420 X104.5596 Y50 E16.0373
G1 F420 X122.7461 Y60.5 E16.3873
G1 F420 X104.5596 Y71 E16.7373
G1 F420 X122.7461 Y81.5 E17.0873
G1 F420 X104.5596 Y92 E17.4373
G1 F420 X122.7461 Y102.5 E17.7873
G1 F420 X104.5596 Y113 E18.1373
G0 F3600 X140.9327 Y113
G1 F420 X122.7461 Y102.5 E18.4873
G1 F420 X140.9327 Y92 E18.8373
G1 F420 X122.7461 Y81.5 E19.1873
G1 F420 X140.9327 Y71 E19.5373
G1 F420 X122.7461 Y60.5 E19.8873
G1 F420 X140.9327 Y50 E20.2373
G1 F420 X140.9327 Y71 E20.5873
G1 F420 X140.9327 Y92 E20.9373
G1 F420 X140.9327 Y113 E21.2873
G1 F420 X159.1192 Y102.5 E21.6373
G1 F420 X140.9327 Y92 E21.9873
G1 F420 X159.1192 Y81.5 E22.3373
G1 F420 X140.9327 Y71 E22.6873
G1 F420 X159.1192 Y60.5 E23.0373
G1 F420 X140.9327 Y50 E23.3873





;End GCode
M140 S0 ;heated bed heater off (if you have it)
G91 ;relative positioning
G28;move X/Y to min endstops, so the head is out of the way
M84 ;steppers off
M107
G90 ;absolute positioning
M82 ;absolute extrusion mode
;End of Gcode