#include "colors.inc"
#include "woods.inc"
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

plane {
<0, -.5, 0>, 1
  pigment {
    White
  }
  finish {
    ambient .2
  }
}




// 1. Box with central, horizontal cylinder
#declare censer_1 =
    difference {
        box {
            <-12, 0, -10>,  // Near lower left corner
            <12, 22, 10>   // Far upper right corner
            texture {
                T_Wood10
                scale 4
            }
            rotate <0, 9, 0>
        }

        cylinder {
            <0, 0, 0>, <0, 60, 0>, 7
            texture {
                T_Wood10
                scale 4
            }
            finish {ambient .4 }
            rotate <90, 12, 0>
            translate <-1.5, 11, -12>
        }
    }

// 2. Adds smaller, vertical cylinder
#declare censer_2 =
    difference {
        object {
            censer_1
        }
        cylinder {
            <0, 11, 0>, <0, 23, 0>, 4
            texture {
                T_Wood10
                scale 4
            }
            finish {ambient .4 }
            //rotate <90, 12, 0>
            //translate <-1.5, 11, -12>
        }
    }

// 3. Makes room for the crystal vase
#declare censer_3 =
    difference {
        object {
            censer_1
        }
        cylinder {
            <0, 3.9, 0>, <0, 21.1, 0>, 5.6
            texture {
                T_Wood10
                scale 4
            }
            finish {ambient .4 }
            //rotate <90, 12, 0>
            //translate <-1.5, 11, -12>
        }
    }

// 4. Adds crystal vase
#declare censer_4 =
    object {
        censer_3
    }
    cylinder {
        <0, 4, 0>, <0, 21, 0>, 5.5
        pigment {
           Col_Glass_General
        }
         finish {F_Glass10 }
            //rotate <90, 12, 0>
            //translate <-1.5, 11, -12>
}

// 5. Top vertical hole in the crystal vase
#declare censer_5 =
    difference {
        object {
            censer_4
        }
        cylinder {
           <0, 11, 0>, <0, 23, 0>, 3.5
           pigment {
              Col_Glass_General
        }
         finish {F_Glass10 }
            finish {ambient .4 }
            //rotate <90, 12, 0>
            //translate <-1.5, 11, -12>
        }
    }

// 6. Liquid on the bottom of the vase
#declare censer_6 =
    object {
        censer_5
    }
    cylinder {
        <0, 4, 0>, <0, 5, 0>, 5.4
        pigment {
           Green
        }
        finish {F_Glass10}
            //rotate <90, 12, 0>
            //translate <-1.5, 11, -12>
}

// 7. Incense bars
#declare censer_final =
   object {
    censer_6
   }
   cylinder {
        <-2, 5, -2>, <8, 60, 9>, 0.5
        texture{ pigment{ color MediumForestGreen}
          finish { phong 1} 
          }
    }  
    cylinder {
        <3, 5, -2>, <-8, 60, -3>, 0.5
        texture{ pigment{ color MediumForestGreen}
          finish { phong 1} 
          }
    } 
    cylinder {
        <1, 5, -2>, <-2, 60, 10>, 0.5
        texture{ pigment{ color MediumForestGreen}
          finish { phong 1} 
          }
    }   
      
object { censer_final }
