//Turbidostat
//Stirrer
//Magnet Holder
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

union(){
    difference(){
        translate([0,0,base_height/2])cube([base_side1,         base_side2, base_height],true);
        union(){
            translate([0,0,base_height/2])cylinder(base_height, central_hole_radius, central_hole_radius,true);
            translate([19,-8,base_height/2])cylinder(base_height, mount_hole_radius, mount_hole_radius,true);
            translate([-19,-8
    ,base_height/2])cylinder(base_height, mount_hole_radius, mount_hole_radius,true);
            }
    }
    difference(){
        translate([0,0,base_height/2+4])cylinder(base_height+8, support_ext_diam/2, support_ext_diam/2,true);
        union(){
            translate([0,0,base_height/2+4])cylinder(base_height+8, (ttube_ext_diam+ext_tolerance)/2, (ttube_ext_diam+ext_tolerance)/2,true);
            translate([0,0,base_height/2+7.5])cube([10,support_ext_diam,4],true);
            rotate([0,0,90])translate([0,0,base_height/2+7.5])cube([10,support_ext_diam,4],true);
            }
        }
}