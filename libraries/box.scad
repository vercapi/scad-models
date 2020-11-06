module box(width, dept, height, thickness, radius)
{
    
  width  = width - radius * 2;
  dept = dept - radius * 2;

  difference() {
    minkowski(){
      cube([width,dept,height], center = true);
      sphere(radius);
    }

    translate([0,0,0]){
      minkowski(){

        cube([width-thickness,dept-thickness,height-thickness], center = true);
        sphere(radius);
      }
    }
    translate([0,0,ceil(height/2)]){
      cube([width+(radius*2)+1,dept+(radius*2)+1,radius*2], center = true);
    }

  }

}

module box_with_lit(width, dept, height, thickness, radius)
{
  margin = 1 + thickness;
    
  box(width, dept, height, thickness, radius);
  translate([0,0,-((height/2)+radius/2)]){
    minkowski(){
      cylinder_dimension = 1;
      cube([width-cylinder_dimension, dept-cylinder_dimension, thickness-cylinder_dimension], center = true);
      cylinder(h=cylinder_dimension, r1=radius, r2=radius, center = true);
    }
  }
    
  translate([width+10, 0, 0]){
    box(width+margin, dept+margin, height, thickness, radius);
  }
}
