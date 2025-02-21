#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include "c99.h"
#include "name.h"
#include "fail.h"
#include "types.h"
#include "mem.h"

#define T unsigned int
#define SORT_SUFFIX _ui
#include "sort_imp.h"
#undef SORT_SUFFIX
#undef T

#if defined(GSLIB_USE_LONG) || defined(GSLIB_USE_GLOBAL_LONG)
#  define T unsigned long
#  define SORT_SUFFIX _ul
#  include "sort_imp.h"
#  undef SORT_SUFFIX
#  undef T
#endif

#if defined(GSLIB_USE_LONG_LONG) || defined(GSLIB_USE_GLOBAL_LONG_LONG)
#  define T unsigned long long
#  define SORT_SUFFIX _ull
#  include "sort_imp.h"
#  undef SORT_SUFFIX
#  undef T
#endif

#define REALSORT
#  define T double
#  define SORT_SUFFIX _double
#  include "sort_imp.h"
#  undef SORT_SUFFIX
#  undef T

#  define T float
#  define SORT_SUFFIX _float
#  include "sort_imp.h"
#  undef SORT_SUFFIX
#  undef T
#undef REALSORT
