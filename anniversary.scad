// Create a heart

// Heart(50);

module Heart(size=50, $fn=100) {
    height=10;
    cylinder(d=size/2,h=height,center=true);
    
} 

module flat_heart(size=20) {
  half=size/2;
  square(size);

  translate([half, size, 0])
  circle(half, $fn=90);

  translate([size, half, 0])
  circle(half, $fn=90);
}

module t(t, s = 8, style = "") {
    linear_extrude(height = 3)
      text(t, size = s, font = str("STIX", style), $fn = 16);
}

module black() color([0, 0, 0]) children();

 minkowski() {
 linear_extrude(height = 3)
   rotate([0,0,45]) 
     flat_heart(size=100);
   sphere(5, $fn=36);
 }
 black() translate([-75,120,7]) t(s=14, style=":style=Bold Italic", "Happy Anniversary");
 black() translate([-42,95,7]) t(s=10, style=":style=Bold", "Debbie + Peter");
 black() translate([-25,40,7]) t(s=36, style=":style=Bold", "20");
    