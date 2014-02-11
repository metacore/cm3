/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 * 
 * This file is not intended to be easily readable and contains a number of 
 * coding conventions designed to improve portability and efficiency. Do not make
 * changes to this file unless you know what you are doing--modify the SWIG 
 * interface file instead. 
 * ----------------------------------------------------------------------------- */

#define SWIGMODULA3


#ifdef __cplusplus
/* SwigValueWrapper is described in swig.swg */
template<typename T> class SwigValueWrapper {
  struct SwigMovePointer {
    T *ptr;
    SwigMovePointer(T *p) : ptr(p) { }
    ~SwigMovePointer() { delete ptr; }
    SwigMovePointer& operator=(SwigMovePointer& rhs) { T* oldptr = ptr; ptr = 0; delete oldptr; ptr = rhs.ptr; rhs.ptr = 0; return *this; }
  } pointer;
  SwigValueWrapper& operator=(const SwigValueWrapper<T>& rhs);
  SwigValueWrapper(const SwigValueWrapper<T>& rhs);
public:
  SwigValueWrapper() : pointer(0) { }
  SwigValueWrapper& operator=(const T& t) { SwigMovePointer tmp(new T(t)); pointer = tmp; return *this; }
  operator T&() const { return *pointer.ptr; }
  T *operator&() { return pointer.ptr; }
};

template <typename T> T SwigValueInit() {
  return T();
}
#endif

/* -----------------------------------------------------------------------------
 *  This section contains generic SWIG labels for method/variable
 *  declarations/attributes, and other compiler dependent labels.
 * ----------------------------------------------------------------------------- */

/* template workaround for compilers that cannot correctly implement the C++ standard */
#ifndef SWIGTEMPLATEDISAMBIGUATOR
# if defined(__SUNPRO_CC) && (__SUNPRO_CC <= 0x560)
#  define SWIGTEMPLATEDISAMBIGUATOR template
# elif defined(__HP_aCC)
/* Needed even with `aCC -AA' when `aCC -V' reports HP ANSI C++ B3910B A.03.55 */
/* If we find a maximum version that requires this, the test would be __HP_aCC <= 35500 for A.03.55 */
#  define SWIGTEMPLATEDISAMBIGUATOR template
# else
#  define SWIGTEMPLATEDISAMBIGUATOR
# endif
#endif

/* inline attribute */
#ifndef SWIGINLINE
# if defined(__cplusplus) || (defined(__GNUC__) && !defined(__STRICT_ANSI__))
#   define SWIGINLINE inline
# else
#   define SWIGINLINE
# endif
#endif

/* attribute recognised by some compilers to avoid 'unused' warnings */
#ifndef SWIGUNUSED
# if defined(__GNUC__)
#   if !(defined(__cplusplus)) || (__GNUC__ > 3 || (__GNUC__ == 3 && __GNUC_MINOR__ >= 4))
#     define SWIGUNUSED __attribute__ ((__unused__)) 
#   else
#     define SWIGUNUSED
#   endif
# elif defined(__ICC)
#   define SWIGUNUSED __attribute__ ((__unused__)) 
# else
#   define SWIGUNUSED 
# endif
#endif

#ifndef SWIG_MSC_UNSUPPRESS_4505
# if defined(_MSC_VER)
#   pragma warning(disable : 4505) /* unreferenced local function has been removed */
# endif 
#endif

#ifndef SWIGUNUSEDPARM
# ifdef __cplusplus
#   define SWIGUNUSEDPARM(p)
# else
#   define SWIGUNUSEDPARM(p) p SWIGUNUSED 
# endif
#endif

/* internal SWIG method */
#ifndef SWIGINTERN
# define SWIGINTERN static SWIGUNUSED
#endif

/* internal inline SWIG method */
#ifndef SWIGINTERNINLINE
# define SWIGINTERNINLINE SWIGINTERN SWIGINLINE
#endif

/* exporting methods */
#if (__GNUC__ >= 4) || (__GNUC__ == 3 && __GNUC_MINOR__ >= 4)
#  ifndef GCC_HASCLASSVISIBILITY
#    define GCC_HASCLASSVISIBILITY
#  endif
#endif

#ifndef SWIGEXPORT
# if defined(_WIN32) || defined(__WIN32__) || defined(__CYGWIN__)
#   if defined(STATIC_LINKED)
#     define SWIGEXPORT
#   else
#     define SWIGEXPORT __declspec(dllexport)
#   endif
# else
#   if defined(__GNUC__) && defined(GCC_HASCLASSVISIBILITY)
#     define SWIGEXPORT __attribute__ ((visibility("default")))
#   else
#     define SWIGEXPORT
#   endif
# endif
#endif

/* calling conventions for Windows */
#ifndef SWIGSTDCALL
# if defined(_WIN32) || defined(__WIN32__) || defined(__CYGWIN__)
#   define SWIGSTDCALL __stdcall
# else
#   define SWIGSTDCALL
# endif 
#endif

/* Deal with Microsoft's attempt at deprecating C standard runtime functions */
#if !defined(SWIG_NO_CRT_SECURE_NO_DEPRECATE) && defined(_MSC_VER) && !defined(_CRT_SECURE_NO_DEPRECATE)
# define _CRT_SECURE_NO_DEPRECATE
#endif

/* Deal with Microsoft's attempt at deprecating methods in the standard C++ library */
#if !defined(SWIG_NO_SCL_SECURE_NO_DEPRECATE) && defined(_MSC_VER) && !defined(_SCL_SECURE_NO_DEPRECATE)
# define _SCL_SECURE_NO_DEPRECATE
#endif




#include <stdlib.h>
#include <string.h>
#include <stdio.h>


#include <QtGui/qabstractbutton.h>


#ifdef __cplusplus
extern "C" {
#endif

SWIGEXPORT void Delete_QAbstractButton(QAbstractButton * self) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  
  arg1 = *(QAbstractButton **)&self; 
  delete arg1;
}


SWIGEXPORT void QAbstractButton_setText(QAbstractButton * self, QString * text) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  QString *arg2 = 0 ;
  
  arg1 = *(QAbstractButton **)&self; 
  arg2 = *(QString **)&text;
  (arg1)->setText((QString const &)*arg2);
}


SWIGEXPORT QString * QAbstractButton_text(QAbstractButton const * self) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  QString * cresult ;
  
  arg1 = *(QAbstractButton **)&self; 
  *(QString **)&cresult = new QString((const QString &)((QAbstractButton const *)arg1)->text());
  return cresult;
}


SWIGEXPORT void QAbstractButton_setIcon(QAbstractButton * self, QIcon * icon) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  QIcon *arg2 = 0 ;
  
  arg1 = *(QAbstractButton **)&self; 
  arg2 = *(QIcon **)&icon;
  (arg1)->setIcon((QIcon const &)*arg2);
}


SWIGEXPORT QIcon * QAbstractButton_icon(QAbstractButton const * self) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  QIcon * cresult ;
  
  arg1 = *(QAbstractButton **)&self; 
  *(QIcon **)&cresult = new QIcon((const QIcon &)((QAbstractButton const *)arg1)->icon());
  return cresult;
}


SWIGEXPORT QSize * QAbstractButton_iconSize(QAbstractButton const * self) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  QSize * cresult ;
  
  arg1 = *(QAbstractButton **)&self; 
  *(QSize **)&cresult = new QSize((const QSize &)((QAbstractButton const *)arg1)->iconSize());
  return cresult;
}


SWIGEXPORT void QAbstractButton_setShortcut(QAbstractButton * self, QKeySequence * key) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  QKeySequence *arg2 = 0 ;
  
  arg1 = *(QAbstractButton **)&self; 
  arg2 = *(QKeySequence **)&key;
  (arg1)->setShortcut((QKeySequence const &)*arg2);
}


SWIGEXPORT QKeySequence * QAbstractButton_shortcut(QAbstractButton const * self) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  QKeySequence * cresult ;
  
  arg1 = *(QAbstractButton **)&self; 
  *(QKeySequence **)&cresult = new QKeySequence((const QKeySequence &)((QAbstractButton const *)arg1)->shortcut());
  return cresult;
}


SWIGEXPORT void QAbstractButton_setCheckable(QAbstractButton * self, bool m3arg2) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  bool arg2 ;
  
  arg1 = *(QAbstractButton **)&self; 
  arg2 = m3arg2 ? true : false; 
  (arg1)->setCheckable(arg2);
}


SWIGEXPORT bool QAbstractButton_isCheckable(QAbstractButton const * self) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QAbstractButton **)&self; 
  result = (bool)((QAbstractButton const *)arg1)->isCheckable();
  cresult = result; 
  return cresult;
}


SWIGEXPORT bool QAbstractButton_isChecked(QAbstractButton const * self) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QAbstractButton **)&self; 
  result = (bool)((QAbstractButton const *)arg1)->isChecked();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QAbstractButton_setDown(QAbstractButton * self, bool m3arg2) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  bool arg2 ;
  
  arg1 = *(QAbstractButton **)&self; 
  arg2 = m3arg2 ? true : false; 
  (arg1)->setDown(arg2);
}


SWIGEXPORT bool QAbstractButton_isDown(QAbstractButton const * self) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QAbstractButton **)&self; 
  result = (bool)((QAbstractButton const *)arg1)->isDown();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QAbstractButton_setAutoRepeat(QAbstractButton * self, bool m3arg2) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  bool arg2 ;
  
  arg1 = *(QAbstractButton **)&self; 
  arg2 = m3arg2 ? true : false; 
  (arg1)->setAutoRepeat(arg2);
}


SWIGEXPORT bool QAbstractButton_autoRepeat(QAbstractButton const * self) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QAbstractButton **)&self; 
  result = (bool)((QAbstractButton const *)arg1)->autoRepeat();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QAbstractButton_setAutoRepeatDelay(QAbstractButton * self, int m3arg2) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  int arg2 ;
  
  arg1 = *(QAbstractButton **)&self; 
  arg2 = (int)m3arg2; 
  (arg1)->setAutoRepeatDelay(arg2);
}


SWIGEXPORT int QAbstractButton_autoRepeatDelay(QAbstractButton const * self) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QAbstractButton **)&self; 
  result = (int)((QAbstractButton const *)arg1)->autoRepeatDelay();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QAbstractButton_setAutoRepeatInterval(QAbstractButton * self, int m3arg2) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  int arg2 ;
  
  arg1 = *(QAbstractButton **)&self; 
  arg2 = (int)m3arg2; 
  (arg1)->setAutoRepeatInterval(arg2);
}


SWIGEXPORT int QAbstractButton_autoRepeatInterval(QAbstractButton const * self) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QAbstractButton **)&self; 
  result = (int)((QAbstractButton const *)arg1)->autoRepeatInterval();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QAbstractButton_setAutoExclusive(QAbstractButton * self, bool m3arg2) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  bool arg2 ;
  
  arg1 = *(QAbstractButton **)&self; 
  arg2 = m3arg2 ? true : false; 
  (arg1)->setAutoExclusive(arg2);
}


SWIGEXPORT bool QAbstractButton_autoExclusive(QAbstractButton const * self) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QAbstractButton **)&self; 
  result = (bool)((QAbstractButton const *)arg1)->autoExclusive();
  cresult = result; 
  return cresult;
}


SWIGEXPORT QButtonGroup * QAbstractButton_group(QAbstractButton const * self) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  QButtonGroup *result = 0 ;
  QButtonGroup * cresult ;
  
  arg1 = *(QAbstractButton **)&self; 
  result = (QButtonGroup *)((QAbstractButton const *)arg1)->group();
  *(QButtonGroup **)&cresult = result; 
  return cresult;
}


SWIGEXPORT void QAbstractButton_setIconSize(QAbstractButton * self, QSize * size) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  QSize *arg2 = 0 ;
  
  arg1 = *(QAbstractButton **)&self; 
  arg2 = *(QSize **)&size;
  (arg1)->setIconSize((QSize const &)*arg2);
}


SWIGEXPORT void QAbstractButton_animateClick(QAbstractButton * self, int msec) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  int arg2 ;
  
  arg1 = *(QAbstractButton **)&self; 
  arg2 = (int)msec; 
  (arg1)->animateClick(arg2);
}


SWIGEXPORT void QAbstractButton_animateClick1(QAbstractButton * self) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  
  arg1 = *(QAbstractButton **)&self; 
  (arg1)->animateClick();
}


SWIGEXPORT void QAbstractButton_click(QAbstractButton * self) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  
  arg1 = *(QAbstractButton **)&self; 
  (arg1)->click();
}


SWIGEXPORT void QAbstractButton_toggle(QAbstractButton * self) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  
  arg1 = *(QAbstractButton **)&self; 
  (arg1)->toggle();
}


SWIGEXPORT void QAbstractButton_setChecked(QAbstractButton * self, bool m3arg2) {
  QAbstractButton *arg1 = (QAbstractButton *) 0 ;
  bool arg2 ;
  
  arg1 = *(QAbstractButton **)&self; 
  arg2 = m3arg2 ? true : false; 
  (arg1)->setChecked(arg2);
}


SWIGEXPORT long Modula3_QAbstractButtonToQWidget(long objectRef) {
    long baseptr = 0;
    *(QWidget **)&baseptr = *(QAbstractButton **)&objectRef;
    return baseptr;
}

#ifdef __cplusplus
}
#endif

