
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name TankBattle -dir "Y:/Verilog/zwh/TankBattle/planAhead_run_3" -part xc7k160tffg676-1
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "Y:/Verilog/zwh/TankBattle/Top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {Y:/Verilog/zwh/TankBattle} {ipcore_dir} }
add_files [list {ipcore_dir/MapCore.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/source.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "k7.ucf" [current_fileset -constrset]
add_files [list {k7.ucf}] -fileset [get_property constrset [current_run]]
link_design
