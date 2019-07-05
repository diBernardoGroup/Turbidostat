//Turbidostat
//Chamber
//Top Part
//by: Agostino Guarino agostinoguarino@gmail.com


//Dimensions of the Test Tube, in mm
ttube_ext_diam=25; 
ttube_height=150;

//Structure Dimensions
tube_tolerance=2; //gap between the tube and the holder
support_ext_diam=ttube_ext_diam+8;
base_thickness=15;
hole_base=14;
hole_height=60;

difference(){
    difference(){
        
        cylinder(h = ttube_height, r1 = support_ext_diam, r2 = support_ext_diam, center = true);
        
        cylinder(h = ttube_height, r1 = ttube_ext_diam+tube_tolerance,     r2 = ttube_ext_diam+tube_tolerance, center = true);
            
    }
    translate([0,0,15])cube([support_ext_diam*2,hole_base*2,hole_height*2],true);
}