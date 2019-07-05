//Turbidostat
//Stirrer
//DC Motor Holder
//by: Agostino Guarino agostinoguarino@gmail.com


//Dimensions of the Test Tube, in mm
ttube_ext_diam=25;

//Structure Dimensions
ext_tolerance=1; //gap between the tube and the holder
support_ext_diam=ttube_ext_diam+8;
base_side1=50;
base_side2=40;
base_height=3;
central_hole_radius=5;
mount_hole_radius=2;
wall_side1=5;
wall_side2=27;
wall_height=30;

union(){
    difference(){
        union(){
            translate([0,0,base_height/2])cube([base_side1, base_side2, base_height],true);
            translate([15+(wall_side1/2),6.5,(base_height+wall_height)/2])cube([wall_side1, wall_side2, wall_height],true);
            translate([19,-8,(base_height+30)/2])cylinder(30, mount_hole_radius+2, mount_hole_radius+2,true);
            translate([-19,-8,(base_height+30)/2])cylinder(30, mount_hole_radius+2, mount_hole_radius+2,true);
            }
        union(){
            translate([19,-8,(base_height+30)/2])cylinder(30, mount_hole_radius, mount_hole_radius,true);
            translate([-19,-8,(base_height+30)/2])cylinder(30, mount_hole_radius, mount_hole_radius,true);
            }
    }
    
}