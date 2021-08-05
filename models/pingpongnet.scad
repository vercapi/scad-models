use <../libraries/triangles.scad>

cube([6.3, 6.3, 102]);
translate([0,0,6.3]){
  rotate([0,90,0]){
    cube([6.3, 6.3, 160]);
  }
}

translate([0,6.3,0]){
  rotate([90,0,0]){
    triangle(20, 20, 6.3);
  }
}
