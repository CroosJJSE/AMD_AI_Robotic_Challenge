#ifndef G2O_CONFIG_H
#define G2O_CONFIG_H

/* #undef G2O_HAVE_OPENGL */
/* #undef G2O_OPENGL_FOUND */
/* #undef G2O_OPENMP */
#define G2O_SHARED_LIBS 1
/* #undef G2O_LGPL_SHARED_LIBS */

// available sparse matrix libraries
/* #undef G2O_HAVE_CHOLMOD */
/* #undef G2O_HAVE_CSPARSE */

// logging framework available
/* #undef G2O_HAVE_LOGGING */

/* #undef G2O_NO_IMPLICIT_OWNERSHIP_OF_OBJECTS */

#ifdef G2O_NO_IMPLICIT_OWNERSHIP_OF_OBJECTS
#define G2O_DELETE_IMPLICITLY_OWNED_OBJECTS 0
#else
#define G2O_DELETE_IMPLICITLY_OWNED_OBJECTS 1
#endif

#define G2O_CXX_COMPILER "GNU /usr/bin/aarch64-linux-gnu-g++"
#define G2O_SRC_DIR "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master"

#endif