//Turbidostat
//Chamber
//Board Holder
//by: Agostino Guarino agostinoguarino@gmail.com


//Dimensions of the Test Tube, in mm
ttube_ext_diam=25;

//Structure Dimensions
ext_tolerance=1; //gap between the tube and the holder
support_ext_diam=ttube_ext_diam+8;
base_thickness=15;
side1=37+support_ext_diam;
side2=12+support_ext_diam;
height=10;

difference(){
        
        cube([side1,side2,height],true);
        
        cylinder(h = height, r1 = (support_ext_diam/2)+ext_tolerance, r2 = (support_ext_diam/2)+ext_tolerance, center = true);
}