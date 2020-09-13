M140 S80 ; Set bed temperature
G92 E0 ; Reset Extruder
G28 ; Home all axes
M190 S80 ; Wait for bed temperature
G29 ; Level bed
M500 ; Save all settings to EEPROM
M300 S2349 P53 ; Play beep sound
G4 S2 ; Wait 2 seconds
M300 S2349 P53 ; Play beep sound
G4 S2 ; Wait 2 seconds
M300 S2349 P53 ; Play beep sound
G4 S1 ; Wait 1 second
M140 S0 ; Turn-off bed
M0 Bed leveling done ;