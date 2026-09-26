quit -sim -force
cls
if {[file exists work]} {
    vdel -lib work -all
}


vlib work
vlog -f files.list


vsim -voptargs="+acc work.RV_tb

do wave.do
run -all

