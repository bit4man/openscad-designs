module base(s=50) {
    h=15;
    square(s,s,center=true);
}

module words(txt="Hello", fs=14, s=12, sp=1) {
    f="Open Sans";
    s="style=Bold";
    color("black") 
      linear_extrude(6)
        text(text=txt, size=fs, font=concat(f,":",s), spacing=sp);
}

module spine(dx=10, dy=10) {
    l=2;
    cube([dx,dy,l]);
}

union() {
difference() {

  minkowski() {
    linear_extrude(3)
      base(s=75);
    cylinder(r=10, $fn=30);
  };
  translate([-42, 22, -1]) 
    words(txt="Mr. & Mrs", fs=14, sp=1.05);
  translate([-42, 14, -1])
    cube([85,2,6]);
  translate([-36, -8, -1]) 
    words(txt="Larsen", fs=18);
  translate([-42, -15, -1])
    cube([85,2,6]);
  translate([-38, -34, -1]) 
    words(txt="Est. 1998", fs=12, sp=1.1);
}

// Lock bottom of &
translate([-5,20,0]) 
  spine(dx=1,dy=5);
translate([-10,26,0]) 
  spine(dx=5,dy=1);
// Lock top of &
translate([-3,34,0]) 
  spine(dx=1,dy=5);
translate([-3,32,0]) 
  spine(dx=5,dy=1);

// Lock bottom of "a"
translate([-16,-5,0]) 
  spine(dx=1,dy=5);
translate([-16,-10,0]) 
  spine(dx=1,dy=5);

// Lock top of "e"
translate([18,1,0]) 
  spine(dx=1,dy=5);
translate([18,-5,0]) 
  spine(dx=1,dy=5);

// Lock top of "9" - first
translate([12,-25,0]) 
  spine(dx=1,dy=5);
translate([12,-31,0]) 
  spine(dx=1,dy=5);
// Lock top of "9" - second
translate([22,-25,0]) 
  spine(dx=1,dy=5);
translate([22,-31,0]) 
  spine(dx=1,dy=5);

// Lock top of "8"
translate([32,-25,0]) 
  spine(dx=1,dy=5);
translate([32,-31,0]) 
  spine(dx=1,dy=5);
translate([32,-36,0]) 
  spine(dx=1,dy=5);
}