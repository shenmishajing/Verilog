
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name MyALU -dir "Z:/Projects/Verilog/MyALU/planAhead_run_2" -part xc7k160tffg676-1
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "Z:/Projects/Verilog/MyALU/Top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {Z:/Projects/Verilog/MyALU} }
set_property target_constrs_file "K7.ucf" [current_fileset -constrset]
add_files [list {K7.ucf}] -fileset [get_property constrset [current_run]]
link_design
