use <../libraries/threads.scad>;

$fn = 100;

height = 50;
radius = 40;
thickness = 4;
thread_pitch=5;
thread_length=15;

difference () {
  translate([0,0,height-15]) {
    metric_thread(diameter=(2*radius)+thickness, pitch=thread_pitch, length=thread_length);
  }
  translate([0,0,height-16]) {
    cylinder(h=17, r=radius-4);
  }
}
difference() {
  cylinder(h=height, r=radius);
  translate([0,0,thickness]) {
    cylinder(h=height, r=radius-4);
  }
}
translate([100,0,0]) {
  difference () {
    cylinder (r=radius+thickness+2, h=thread_length+thickness);
    translate([0,0,2]) {
      metric_thread (diameter=(2*radius)+thickness+4, pitch=thread_pitch, length=thread_length+10, internal=true, n_starts=6);
    }
  }
}
