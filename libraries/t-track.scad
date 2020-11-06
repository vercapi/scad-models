module bar(length, height, base_width, top_width, top_extend){
  difference(){
    cube([length,base_width,height], false);
    translate([-1,base_width/2+(top_width/2),(height-top_extend)]){
      cube([length+2,base_width,height], false);
    }
    translate([-1,-(base_width/2)-(top_width/2),(height-top_extend)]){
      cube([length+2,base_width,height], false);
    }
  }
}

module end(opening, internal, height){
  translate([0,height,height/2])
    rotate([90,0,90]){
    hull(){
      cube([opening, height+0.2, 0.1],center=true);
      translate([0,0,5]) {
        cube([internal, height+0.2, 0.1],center=true);
      }
    }  
  }
}


module rail(length, height, base_width, top_width, top_extend) {
  insert_internal = top_width - 1;
  insert_opening = (top_width - 1)/2;
  translate([length,0,0]){
    end(insert_opening-0.5,insert_internal-0.5,height);
  }

  difference() {
    bar(length, height, base_width, top_width, top_extend);
    end(insert_opening,insert_internal,height);
  }
}
