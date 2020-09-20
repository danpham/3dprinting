; Ender 3 Custom Start G-code
G92 E0 ; Reset Extruder
G28 ; Home all axes
M501; Load all saved settings from EEPROM
M420 S1 ; Enable bed leveling
M104 S160; Put hotend on standby temperature, non blocking
M104 S{material_print_temperature} ; Set correct hotend temperature
G1 X160 Y124 Z50 F5000.0 ; Center hotend to remove blobs
M109 S{material_print_temperature} ; Wait for hotend temperature
M300 S2349 P53 ; Play beep sound
G4 S1 ; Wait 1 second
M0 Click to continue ;
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish