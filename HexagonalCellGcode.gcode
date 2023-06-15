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




;Coordinate data for hexagonal frame
;Layer1 Z2
G0 F3600 X20 Y50 Z2
G1 F420 X186 Y50 E2.7667
G1 F420 X186 Y167.7795 E4.7297
G1 F420 X50 Y167.7795 E6.9963
G1 F420 X50 Y50 E8.9593
G1 F420 X58.5 Y64.7224 E9.2426
G1 F420 X75.5 Y64.7224 E9.526
G1 F420 X84 Y50 E9.8093
G1 F420 X101 Y50 E10.0926
G1 F420 X109.5 Y64.7224 E10.376
G1 F420 X126.5 Y64.7224 E10.6593
G1 F420 X135 Y50 E10.9426
G1 F420 X152 Y50 E11.226
G1 F420 X160.5 Y64.7224 E11.5093
G1 F420 X177.5 Y64.7224 E11.7926
G1 F420 X186 Y50 E12.076
G1 F420 X186 Y79.4449 E12.5667
G1 F420 X177.5 Y64.7224 E12.8501
G1 F420 X160.5 Y64.7224 E13.1334
G1 F420 X152 Y79.4449 E13.4167
G1 F420 X135 Y79.4449 E13.7001
G1 F420 X126.5 Y64.7224 E13.9834
G1 F420 X109.5 Y64.7224 E14.2667
G1 F420 X101 Y79.4449 E14.5501
G1 F420 X84 Y79.4449 E14.8334
G1 F420 X75.5 Y64.7224 E15.1167
G1 F420 X58.5 Y64.7224 E15.4001
G1 F420 X50 Y79.4449 E15.6834
G1 F420 X58.5 Y94.1673 E15.9667
G1 F420 X75.5 Y94.1673 E16.2501
G1 F420 X84 Y79.4449 E16.5334
G1 F420 X101 Y79.4449 E16.8167
G1 F420 X109.5 Y94.1673 E17.1001
G1 F420 X126.5 Y94.1673 E17.3834
G1 F420 X135 Y79.4449 E17.6667
G1 F420 X152 Y79.4449 E17.9501
G1 F420 X160.5 Y94.1673 E18.2334
G1 F420 X177.5 Y94.1673 E18.5167
G1 F420 X186 Y79.4449 E18.8001
G1 F420 X186 Y108.8897 E19.2908
G1 F420 X177.5 Y94.1673 E19.5741
G1 F420 X160.5 Y94.1673 E19.8575
G1 F420 X152 Y108.8897 E20.1408
G1 F420 X135 Y108.8897 E20.4241
G1 F420 X126.5 Y94.1673 E20.7075
G1 F420 X109.5 Y94.1673 E20.9908
G1 F420 X101 Y108.8897 E21.2741
G1 F420 X84 Y108.8897 E21.5575
G1 F420 X75.5 Y94.1673 E21.8408
G1 F420 X58.5 Y94.1673 E22.1241
G1 F420 X50 Y108.8897 E22.4075
G1 F420 X58.5 Y123.6122 E22.6908
G1 F420 X75.5 Y123.6122 E22.9741
G1 F420 X84 Y108.8897 E23.2575
G1 F420 X101 Y108.8897 E23.5408
G1 F420 X109.5 Y123.6122 E23.8241
G1 F420 X126.5 Y123.6122 E24.1075
G1 F420 X135 Y108.8897 E24.3908
G1 F420 X152 Y108.8897 E24.6741
G1 F420 X160.5 Y123.6122 E24.9575
G1 F420 X177.5 Y123.6122 E25.2408
G1 F420 X186 Y108.8897 E25.5241
G1 F420 X186 Y138.3346 E26.0149
G1 F420 X177.5 Y123.6122 E26.2982
G1 F420 X160.5 Y123.6122 E26.5816
G1 F420 X152 Y138.3346 E26.8649
G1 F420 X135 Y138.3346 E27.1482
G1 F420 X126.5 Y123.6122 E27.4316
G1 F420 X109.5 Y123.6122 E27.7149
G1 F420 X101 Y138.3346 E27.9982
G1 F420 X84 Y138.3346 E28.2816
G1 F420 X75.5 Y123.6122 E28.5649
G1 F420 X58.5 Y123.6122 E28.8482
G1 F420 X50 Y138.3346 E29.1316
G1 F420 X58.5 Y153.057 E29.4149
G1 F420 X75.5 Y153.057 E29.6982
G1 F420 X84 Y138.3346 E29.9816
G1 F420 X101 Y138.3346 E30.2649
G1 F420 X109.5 Y153.057 E30.5482
G1 F420 X126.5 Y153.057 E30.8316
G1 F420 X135 Y138.3346 E31.1149
G1 F420 X152 Y138.3346 E31.3982
G1 F420 X160.5 Y153.057 E31.6816
G1 F420 X177.5 Y153.057 E31.9649
G1 F420 X186 Y138.3346 E32.2482
G1 F420 X186 Y167.7795 E32.739
G1 F420 X177.5 Y153.057 E33.0223
G1 F420 X160.5 Y153.057 E33.3056
G1 F420 X152 Y167.7795 E33.589
G1 F420 X135 Y167.7795 E33.8723
G1 F420 X126.5 Y153.057 E34.1556
G1 F420 X109.5 Y153.057 E34.439
G1 F420 X101 Y167.7795 E34.7223
G1 F420 X84 Y167.7795 E35.0056
G1 F420 X75.5 Y153.057 E35.289
G1 F420 X58.5 Y153.057 E35.5723
G1 F420 X50 Y167.7795 E35.8556





;End GCode
M140 S0 ;heated bed heater off (if you have it)
G91 ;relative positioning
G28;move X/Y to min endstops, so the head is out of the way
M84 ;steppers off
M107
G90 ;absolute positioning
M82 ;absolute extrusion mode
;End of Gcode