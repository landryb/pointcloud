# Find the LibGHT headers and libraries
#
#  LIBGHT_INCLUDE_DIRS - The LibGHT include directory (directory where LibGHT/LibGHT.h was found)
#  LIBGHT_LIBRARIES    - The libraries needed to use LibGHT
#  LIBGHT_FOUND        - True if LibGHT found in system
 
 
FIND_PATH(LIBGHT_INCLUDE_DIR NAMES ght.h)
 
FIND_LIBRARY(LIBGHT_LIBRARY NAMES 
    ght
    libght
    ghtlib
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LibGHT DEFAULT_MSG LIBGHT_LIBRARY LIBGHT_INCLUDE_DIR)
 
IF(LIBGHT_FOUND)
  SET(LIBGHT_LIBRARIES ${LIBGHT_LIBRARY})
  SET(LIBGHT_INCLUDE_DIRS ${LIBGHT_INCLUDE_DIR})
ENDIF(LIBGHT_FOUND)

MARK_AS_ADVANCED(CLEAR LIBGHT_INCLUDE_DIR)
MARK_AS_ADVANCED(CLEAR LIBGHT_LIBRARY)
 
