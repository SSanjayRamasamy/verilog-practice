set module_name      [lindex $argv 0]
set module_directory [lindex $argv 1]

set rtl_file "$module_directory/$module_name.v"
set tb_file  "$module_directory/${module_name}_tb.v"

create_project sim_proj ./sim_proj -force

add_files $rtl_file
add_files $tb_file

set_property top ${module_name}_tb [get_filesets sim_1]

launch_simulation
log_wave -recursive *
run all

write_wave_data -force wave.wdb
write_report -name wave_image -force -format png -file wave.png

exit
