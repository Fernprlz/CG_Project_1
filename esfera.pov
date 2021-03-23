#include "colors.inc"
#include "glass.inc"

//######### Camera #########//
camera {
  location <0, 45, -100>
  look_at <0, 0, 40>
}

//######### Lights #########//
light_source {
  <50, 100, 100>
  White
}   

#declare Colorsito = color rgb <212, 52, 18>;

plane {
<0, -.5, 0>, 1
  pigment {
    White
  }
  finish {
    ambient .2
  }
}

// 1. Outer sphere
#declare outer_sphere =
  sphere {
    <0, 12, 0>, 15
    pigment {
       color rgbf <0.9, 0.1, 0.2, 0.5>
       
       }
    //finish {F_Glass10 }
    //interior { I_Glass2 }
  }     
  
outer_sphere
