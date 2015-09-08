include <gripper_base.scad>
include <libs.scad>

gripper_base();

module nut()
{
rotate( [0, 0, 90] ) 
    {
hexNut(size = "M4");
translate( [0, 2.2, 1.6] ) cube( [8, 4, 3.2 ], center = true) ;
    }
}

difference()
{
difference()
{
union()
{    
hull()
{
translate( [ 0, -(20+26.9), 0] )
color( [0, 0, 1] ) cube( [ 50, (20+26.9), 6.4] );

translate( [80, -(20+26.9)/2, 0] ) cylinder( r = 16, h = 6.4 );
}

translate( [80, -(20+26.9)/2, 0] ) cylinder( r = 16, h = 20 );
}

translate( [80, -(20+26.9)/2, -2] ) cylinder( r = 8, h = 24 );

}

translate( [80, -10, 14])
{
union()
{
translate( [0, 5, 0] ) rotate( [90, 0, 0] ) cylinder( r = 2.4, h = 12 );
scale( [1.1, 1.1, 1.1] ) rotate( [90, 90, 0] ) nut();
}
}
}






