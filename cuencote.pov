#include "shapes.inc"
#include "shapes3.inc"
#include "colors.inc"
#include "woods.inc"

//######### Camera #########//
camera {
  location <0, 50, -60>
  look_at <0, 5, 0>
}

//######### Lights #########//
light_source {
  <0, 50, -50>
  White
  parallel
  point_at <0, 20, 0>
  }

//######### Background #########//
sky_sphere {
  pigment {
    Black
  }
}

plane {
  <0, -.1, 0> 1
  Black
}

//######### Objects #########//

///////////////////////////////
// Base
///////////////////////////////

object{
 Round_Cone(
  //point A, radius A:
  <0,0,0>, 8,
  // point B, radius B:
  <0,5,0>, 6,
  0.15, // rounding radius,
  0)// merge

 pigment{
   White
 }

 scale <1,1,1>
 rotate <0,0,0>
 translate <0,0,0>
}

///////////////////////////////
// Concavidad
///////////////////////////////

difference{
  difference{
    // Outer Sphere
    sphere{
      <0, 21, 0> 18
      pigment {
        White
      }


      scale <1,1,1>
      rotate<0,0,0>
      translate<0,0,0>
    }
    // Inner sphere
    sphere{
      <0, 23, 0> 18.5
      pigment {
        White
      }

      scale <1,1,1>
      rotate <0,0,0>
      translate <0,0,0>
    }
  }
  box{
   <-18, 20, -18>
   <36, 50, 36>
   pigment{
     White
   }
  }
}
