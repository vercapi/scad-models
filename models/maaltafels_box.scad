use <../libraries/box.scad>;

$fn=50;

//maaltafels, inner size, so adding the thickness
thickness = 2;
width = 47 + 2;
depth = 150 + 2;
height = 20;
gap_width = 10;
difference(){
  box_with_lit(width, depth, height, thickness, 2);
  translate([0,0,-(height/2)+(gap_width/2)])
    rotate([0,90,0]){
    cylinder(width+2, gap_width/2, gap_width/2, center = true);
  }
  translate([0,0,gap_width/2]){
    cube([width+2,gap_width,20], center = true);
  }
}
