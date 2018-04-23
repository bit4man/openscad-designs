diameter=100;

module bottom(){
    translate([-60,-20,0]) square([200,20]);
}

module triangle() {
   polygon([[30,0],[0,30],[60,30]]);  
}

module base() {
    union() {
    translate([0, diameter/2, 0])
    difference() {
      circle(d=diameter, $fn=180);
      circle(d=diameter-5, $fn=180);
      translate([-diameter/20,-diameter/20,0]) square(diameter*2);
      translate([-15,50,0])
        rotate([0,0,-45]) 
          #square([diameter,10]);
    }
    
    difference() {
    translate([-50,-5,0]) 
      rotate([0,0,45])
        square([25, 3]);
    bottom();
    }
    difference() {
    translate([30,10,0])
      rotate([0,0,-45])
        square([30, 3]);
     bottom();
    }
    }
}

difference() {
rotate([90,0,0])
 linear_extrude(height=80, slices=180)
   base();

translate([33, -70, 22])
 rotate([120,0,90])
  linear_extrude(height=10)
    triangle();
    
// nice circle cut on leg
translate([-48,-40,-10])
  rotate([0,-45])
    linear_extrude(height=10)
     circle(diameter/4);
// Front leg
translate([48,-40,-10])
  rotate([0,45])
    linear_extrude(height=10)
     circle(diameter/4);

}

