$fn=50;

difference(){
  base();

  translate([0,0,2]){
    cylinder(h=4.1,d=5.5);
  }
  translate([0,0,-10]){
    cylinder(h=20,d=3.3);
  }
  translate([0,-3.3/2,-10]){
    cube([10,3.3,20], center=false);
  }
}

module base(){
  cylinder(h=2,d=18);
  translate([0,0,-2]){
    cylinder(h=2.5,d=15);
  }
  translate([0,0,2]){
    cylinder(h=4,d=7.7);
  }
}

