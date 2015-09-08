include <Libs.scad>

// Tom Van den Bon
// 2015/09/08
// base for attachments to F.R.E.D 
// example: gripper, pen, etc.

module gripper_base()
{

translate( [0, 207, 0] )    
difference()
{
    
union()
{
// nubs
color( [0, 0, 1] ) translate( [12.5, -204.75, 12.7] )
rotate( [90, 0, 0] ) cylinder( r = 4.1, h = 2.5, $fn = 64 );

color( [0, 0, 1] ) translate( [12.5, -253.6, 12.7] )
rotate( [90, 0, 0] ) cylinder( r = 4.1, h = 2.5, $fn = 64 );

color( [0, 0, 1] ) translate( [32.5, -253.6, 47.6] )
rotate( [90, 0, 0] ) cylinder( r = 4.1, h = 2.5, $fn = 64 );

// bottom
translate( [0, -226.9-26.65, 0] ) 
color( [0, 0, 1] ) cube( [ 50, 20+26.9, 6.4] );

// left side
hull()
{
    
color( [1, 1, 1] ) translate( [12.5, -204.75-2, 12.7] )
rotate( [90, 0, 0] ) cylinder( r = 8, h = 6, $fn = 64 );

color( [1, 1, 1] )
translate( [0, -212.65, 0] ) 
color( [0, 0, 1] ) cube( [ 25, 6, 6.4] );
}

// right side
hull()
{

color( [1, 1, 1] ) translate( [32.5, -253.6 +6, 47.6] )
rotate( [90, 0, 0] ) cylinder( r = 8, h = 6, $fn = 64 );

translate( [0, -253.6, 0] ) 
color( [1, 1, 1] ) cube( [ 50, 6 , 6.4] );
}
}


// this needs to be removed
union()
{
// hex nuts
color( [0, 1, 0] ) translate( [32.5, -247.5, 47.6] )
rotate( [90, 0, 0] ) hexNut(size = "M4");

color( [0, 1, 0] ) translate( [12.5, -247.5, 12.7] )
rotate( [90, 0, 0] ) hexNut(size = "M4");

color( [0, 1, 0] ) translate( [12.5, -210.1, 12.7] )
rotate( [90, 0, 0] ) hexNut(size = "M4");

color( [1, 0, 0] ) translate( [12.5, 0, 12.7] )
rotate( [90, 0, 0] ) cylinder( r = 2.2, h = 400, $fn = 64 );

color( [1, 0, 0] ) translate( [32.5, 0, 47.6] )
rotate( [90, 0, 0] ) cylinder( r = 2.2, h = 400, $fn = 64 );
}
}

}

//gripper_base();