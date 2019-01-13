echo Building release package

cp release/bin/28shell.elf release/shell.elf
cp release/bin/29fileman.elf release/fileman.elf
cp release/bin/35view.elf release/viewtxt.elf
cp release/bin/23screen.elf release/apps/utils/screen/screen.elf
cp release/bin/15chars.elf release/apps/utils/charmap/charmap.elf
cp release/bin/24ncdc.elf release/apps/usb/cdc/cdc.elf
cp release/bin/26midi.elf release/apps/usb/midi/midi.elf
cp release/bin/32sump.elf release/apps/usb/sump/sump.elf
cp release/bin/25hid.elf release/apps/usb/hid/hid.elf
cp release/bin/7pwm.elf release/apps/synth/pwm/pwm.elf
cp release/bin/21mplay.elf release/apps/synth/midi/midi.elf
cp apps/test21_midiplay/laisla.mid release/apps/synth/midi/laisla.mid
cp apps/test21_midiplay/gabosong.mid release/apps/synth/midi/gabosong.mid
cp apps/test21_midiplay/demo.mid release/apps/synth/midi/demo.mid
cp release/bin/20uplay.elf release/apps/synth/uartplay/uartplay.elf
cp release/bin/2import.elf release/apps/experime/fractal/fractal.elf
cp release/bin/17analys.elf release/apps/analyser/official/official.elf
cp release/bin/22seqen.elf release/apps/analyser/sequence/sequence.elf
cp release/bin/4snake.elf release/apps/games/snake/snake.elf
cp release/bin/14apds1.elf release/apps/devices/apds99_1/apds99_1.elf
cp release/bin/14apds2.elf release/apps/devices/apds99_2/apds99_2.elf
cp release/bin/8ds.elf release/apps/devices/ds1820/ds1820.elf
cp release/bin/9dht.elf release/apps/devices/dht/dht.elf
cp release/bin/13mp3.elf release/apps/devices/yx5300/yx5300.elf
cp release/bin/10i2c.elf release/apps/devices/bmp085/bmp085.elf
cp release/bin/30dcf77.elf release/apps/measure/dcf77/dcf77.elf
cp release/bin/33temper.elf release/apps/measure/temperat/temperat.elf
cp release/bin/34scope.elf release/apps/measure/oscillo/oscillo.elf
cp release/bin/31testg.elf release/apps/experime/testsig/testsig.elf
cp release/bin/32graph.elf release/apps/experime/graph/graph.elf
cp release/bin/27irsend.elf release/apps/synth/samsung/samsung.elf

#10i2c.elf       14apds1.elf     17analys.elf    20uplay.elf     24ncdc.elf      27irsend.elf    30dcf77.elf     7pwm.elf
#11i2c.elf       14apds2.elf     18onew.elf      21mplay.elf     25hid.elf       28shell.elf     32sump.elf      8ds.elf
#12uart.elf      15chars.elf     19rtc.elf       22seqen.elf     25usbena.elf    29fileman.elf   3gui.elf        9dht.elf
#13mp3.elf       16cc1101.elf    1noimp.elf      23screen.elf    26midi.elf      2import.elf     4snake.elf      output.elf

cd release
rm approot.zip
zip -r approot.zip *.elf apps/*
