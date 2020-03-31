//
// ktHEAD1
//
//


gap1 = 0.001;
gap2 = 0.002;
panel_thick = 2;
HR = 180/2;


pin_hole = 1.1+0.4;

BandL();
translate([100, 8, 0]) UnitL();

BandR();
translate([-100, 8, 0]) UnitR();


module BandL()
{
    difference()
    {
        union()
        {
            difference()
            {
                union()
                {
                    cylinder(h=15, r=HR+10/2, center=true, $fn=100);
                }
                cylinder(h=20, r=HR, center=true, $fn=100);
                translate([-300, -150, -150]) cube([300, 300, 300]);
                translate([-10, -300, -150]) cube([300, 300, 300]);
            }
            translate([0, HR+2.5, 0]) cylinder(h=15, r=10/2/2, center=true, $fn=100);
        }
        translate([0, HR+2.5, 0]) cylinder(h=30, r=pin_hole, center=true, $fn=30);
        translate([0, HR+2.5, 0]) cube([8, 8, 5.1], center=true);
    }
    translate([0, HR+2.5, -15/3]) Stopper();
    translate([0, HR+5+1, -15/2]) cube([8, 8, 15]);
    translate([5, HR+5-2, -15/2]) cube([8, 8, 15]);
}
module Stopper()
{
    difference()
    {
        cylinder( 1, 2, 2, center=true, $fn=30 );
        cylinder( 1+gap2, 1, 1, center=true, $fn=30 );
    }
}



module BandR()
{
    difference()
    {
        union()
        {
            difference()
            {
                union()
                {
                    cylinder(h=15, r=(180+10)/2, center=true, $fn=100);
                }
                cylinder(h=20, r=180/2, center=true, $fn=100);
                translate([-300+10, -300, -150]) cube([300, 300, 300]);
                translate([0, -150, -150]) cube([300, 300, 300]);
            }
            translate([0, HR+2.5, 0]) cylinder(h=15, r=10/2/2, center=true, $fn=100);
        }
        translate([0, HR+2.5, 0]) cylinder(h=30, r=pin_hole, center=true, $fn=30);
        translate([0, HR+2.5, 15/3]) cube([8, 8, 5.1], center=true);
        translate([0, HR+2.5, -15/3]) cube([8, 8, 5.1], center=true);
    }
    translate([-8, HR+5+1, -15/2]) cube([8, 8, 15]);
    translate([-8-5, HR+5-2, -15/2]) cube([8, 8, 15]);
}


module UnitL()
{
    difference()
    {
        union()
        {
            translate([0, 5/2+gap1, 0]) cube([15, 35, 15], center=true);
        }
        rotate([90, 0, 0]) cylinder(h=30, r=10/2, center=true, $fn=100);
        translate([0, 0, -30/2]) cube([2, 50, 30], center=true);
    }
}


module UnitR()
{
    difference()
    {
        union()
        {
            translate([0, 5/2+gap1, 0]) cube([15, 35, 15], center=true);
        }
        rotate([90, 0, 0]) cylinder(h=30, r=10/2, center=true, $fn=100);
        translate([0, 0, -30/2]) cube([2, 50, 30], center=true);
    }
}

