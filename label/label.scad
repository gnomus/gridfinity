$fn= 20;

text = "M0x0";

difference() {

  hull() {
    cube([37.7,10,1.3]);

    translate([0.7,0,1.3]) {
      cube([37.7-1.4,10,0.7]);
    }

    translate([1.85,10,0]) {
      cylinder(1.3, 1.85, 1.85);
    }
    translate([37.7-1.85,10,0]) {
      cylinder(1.3, 1.85, 1.85);
    }

    translate([1.85,10,1.3]) {
      cylinder(0.7, 1.85, 1.15);
    }
    translate([37.7-1.85,10,1.3]) {
      cylinder(0.7, 1.85, 1.15);
    }
  }


  translate([37.7/2,(10+1.85)/2,0.2]) {
    rotate([0,180,0]) {
      linear_extrude(1)
      text(text, size=8, halign = "center", valign = "center");
    }
  }
}

translate([37.7/2,(10+1.85)/2,0.2]) {
    rotate([0,180,0]) {
      linear_extrude(0.2)
      text(text, size=8, halign = "center", valign = "center");
    }
  }
