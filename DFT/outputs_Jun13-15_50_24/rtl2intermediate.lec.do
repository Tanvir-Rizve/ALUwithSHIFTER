vpx set dofile abort exit
vpx set screen display -noprogress
tclmode

# make the TCL library for meta-commands available
if [file exists $env(VERPLEX_HOME)/share/cfm/apps/lib/lnx86/simple_do.tcl] {
    source $env(VERPLEX_HOME)/share/cfm/apps/lib/lnx86/simple_do.tcl
} else {
    puts "// ERROR: File simple_do.tcl not found at <LEC install path>/share/cfm/apps/lib/lnx86."
    puts "          Check that Conformal release is the current latest."
    return -code error
}

# set the output and fv directories and the labels
do_config -outdir . -fvdir fv/TOP -revised fv_map -golden rtl -logfile logs_Jun13-15:50:24/rtl2intermediate.lec.log

# load the library and designs using the labels
do_read_designs

# set up the constraints using the attributes
do_setup

# do the compare
do_compare

# generate reports on results and next steps
do_reports
tclmode
puts "No of compare points = [get_compare_points -count]"
puts "No of diff points    = [get_compare_points -NONequivalent -count]"
puts "No of abort points   = [get_compare_points -abort -count]"
puts "No of unknown points = [get_compare_points -unknown -count]"
if {[get_compare_points -count] == 0} {
    puts "---------------------------------"
    puts "ERROR: No compare points detected"
    puts "---------------------------------"
}
if {[get_compare_points -NONequivalent -count] > 0} {
    puts "------------------------------------"
    puts "ERROR: Different Key Points detected"
    puts "------------------------------------"
}
if {[get_compare_points -abort -count] > 0} {
    puts "-----------------------------"
    puts "ERROR: Abort Points detected "
    puts "-----------------------------"
}
if {[get_compare_points -unknown -count] > 0} {
    puts "----------------------------------"
    puts "ERROR: Unknown Key Points detected"
    puts "----------------------------------"
}
vpxmode
exit -f
