#
# create_project.tcl  Tcl script for creating project
#
set     project_name        "ultra96_design"
set     root_directory      [file join [file dirname [info script]] ".."]
set     project_directory   [file join $root_directory $project_name]
set     board_part          [get_board_parts -quiet -latest_file_version "*ultra96v1*"]
set     device_part         "xczu3eg-sbva484-1-e"
set     design_bd_tcl_file  [file normalize [file join $root_directory "script/create_bd.tcl"  ]]
set     design_pin_xdc_file [file normalize [file join $root_directory "src/constrs/Ultra96_constraints_180318.xdc" ]]
lappend ip_repo_path_list   [file join $root_directory "ip"]

#
# Create project
#
create_project -force $project_name $project_directory
#
# Set project properties
#
if       {[info exists board_part ] && [string equal $board_part  "" ] == 0} {
    set_property "board_part"     $board_part      [current_project]
} elseif {[info exists device_part] && [string equal $device_part "" ] == 0} {
    set_property "part"           $device_part     [current_project]
} else {
    puts "ERROR: Please set board_part or device_part."
    return 1
}
set_property "default_lib"        "xil_defaultlib" [current_project]
set_property "simulator_language" "Mixed"          [current_project]
set_property "target_language"    "Verilog"        [current_project]
#
# Create fileset "sources_1"
#
if {[string equal [get_filesets -quiet sources_1] ""]} {
    create_fileset -srcset sources_1
}
#
# Create fileset "constrs_1"
#
if {[string equal [get_filesets -quiet constrs_1] ""]} {
    create_fileset -constrset constrs_1
}
#
# Create fileset "sim_1"
#
if {[string equal [get_filesets -quiet sim_1] ""]} {
    create_fileset -simset sim_1
}
#
# Create run "synth_1" and set property
#
set synth_1_flow     "Vivado Synthesis 2018"
set synth_1_strategy "Vivado Synthesis Defaults"
if {[string equal [get_runs -quiet synth_1] ""]} {
    create_run -name synth_1 -flow $synth_1_flow -strategy $synth_1_strategy -constrset constrs_1
} else {
    set_property flow     $synth_1_flow     [get_runs synth_1]
    set_property strategy $synth_1_strategy [get_runs synth_1]
}
current_run -synthesis [get_runs synth_1]
#
# Create run "impl_1" and set property
#
set impl_1_flow      "Vivado Implementation 2018"
set impl_1_strategy  "Vivado Implementation Defaults"
if {[string equal [get_runs -quiet impl_1] ""]} {
    create_run -name impl_1 -flow $impl_1_flow -strategy $impl_1_strategy -constrset constrs_1 -parent_run synth_1
} else {
    set_property flow     $impl_1_flow      [get_runs impl_1]
    set_property strategy $impl_1_strategy  [get_runs impl_1]
}
current_run -implementation [get_runs impl_1]
#
# Set IP Repository
#
if {[info exists ip_repo_path_list] && [llength $ip_repo_path_list] > 0 } {
    set_property ip_repo_paths $ip_repo_path_list [current_fileset]
    update_ip_catalog
}
#
# Create block design
#
if {[info exists design_bd_tcl_file]} {
    
    #
    # Set -dir argument value of create_bd_design
    #
    set ::origin_dir_loc [file join $project_directory $project_name.srcs]
    # 
    # Read block design file
    #
    source $design_bd_tcl_file
    #
    # Save block design
    #
    regenerate_bd_layout
    save_bd_design
    #
    # Generate wrapper files
    #
    set design_bd_name  [get_bd_designs]
    make_wrapper -files [get_files $design_bd_name.bd] -top -import
}
#
# Import timing files
#
if {[info exists design_timing_xdc_file]} {
    add_files    -fileset constrs_1 -norecurse $design_timing_xdc_file
}
#
# Import pin files
#
if {[info exists design_pin_xdc_file]} {
    add_files    -fileset constrs_1 -norecurse $design_pin_xdc_file
}
