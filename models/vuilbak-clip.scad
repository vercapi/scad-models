$fn=50;

difference(){
  cylinder(h=12,d=12.5,center=true);
  translate([0,0,0]){
    cylinder(h=14,d=7.5, center=true);
  }

  linear_extrude(height=14, center=true)
  polygon(points=[[-3,2.2],[-3,-2.2],[-7,-3],[-7,3]]);

}

difference(){
  hull(){
    translate([9,0,0]){
      cube([10,10,4], center=true);
    }

    translate([20,0,0]){
      cylinder(h=4,d=22,center=true);
    }
  }
  translate([20,0,0]){
    cylinder(h=5,d=18, center=true);
  }
}

difference(){
  translate([20,0,0]){
    cylinder(h=2,d=18, center=true);
  }
  translate([20,0,0]){
    cylinder(h=3,d=5, center=true);
  }
}

