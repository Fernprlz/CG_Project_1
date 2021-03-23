#include "colors.inc"
#include "woods.inc"

//######### Camera #########//
camera {
  location <0, 100, 0>
  look_at <0, 0, 0>
}



//######### Lights #########//
light_source {
  <50, 50, 100>
  White
}       


//######### Background #########//
sky_sphere {
  pigment {
    gradient y
    // Define the colors of the gradient
    color_map{
      [0 color White]
      [1 color Orange]
    }
    // Scale the gradient to make it twice as big
    scale 2

    // Move the color map of the gradient
    translate <0, 1, 0>
  }
}

plane {
<0, -.5, 0>, 1
  pigment {
    White
  }
  finish {
    ambient .2
  }
}


//######### Objects #########//

// Red Crystal Sphere
sphere {
  <-24.3, 0, -15.5>, 8

  // Color of the object
  pigment {
    Red
  }

  // How bright the object is
  finish {
    ambient .4
  }
  translate <0, 4, 0>
}

// Wite Bowl
sphere {
  <25.2, 0, -24.2>, 12

  // Color of the object
  pigment {
    White
  }

  // How bright the object is
  finish {
    ambient .4
  }
  translate <0, 6, 0>
}

// Incense Cubic shape
box {
  <-9.4, 0, 1.6>,  // Near lower left corner
  <16.2, 20, 15>   // Far upper right corner
  texture {
    T_Wood1
    scale 4
  }
  rotate <0, 5.3, 0>
}

  /*
prism {
   linear_sweep
   linear_spline
   0, 
   1, 
   7, 
   <-29.8, 18.5>, <-12.4, 19.1>, <-4.8, 30.9>, <-12.4, 42.6>, <-29.8, 42.6>, <-37.8, 30.9>, <5,0>,
   pigment { 
    Green 
   }
 }
    */