
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name RCA -dir "/home/shreyas/Desktop/IIT KGP/5th sem/COA/Assn3/Assgn3_Grp_63/Ripple_Carry_Adder/planAhead_run_1" -part xc7a100tcsg324-1
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/shreyas/Desktop/IIT KGP/5th sem/COA/Assn3/Assgn3_Grp_63/Ripple_Carry_Adder/wrapper.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/shreyas/Desktop/IIT KGP/5th sem/COA/Assn3/Assgn3_Grp_63/Ripple_Carry_Adder} }
set_property target_constrs_file "wrapper.ucf" [current_fileset -constrset]
add_files [list {wrapper.ucf}] -fileset [get_property constrset [current_run]]
link_design
