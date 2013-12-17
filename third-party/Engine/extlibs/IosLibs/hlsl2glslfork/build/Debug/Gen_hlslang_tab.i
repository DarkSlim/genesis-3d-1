

























































































































#line 9 "hlslang.y"



























































   






























 



  
   
  


  typedef unsigned long POINTER_64_INT;
 
 


























#pragma once



extern "C" {


typedef signed char         INT8, *PINT8;
typedef signed short        INT16, *PINT16;
typedef signed int          INT32, *PINT32;
typedef signed __int64      INT64, *PINT64;
typedef unsigned char       UINT8, *PUINT8;
typedef unsigned short      UINT16, *PUINT16;
typedef unsigned int        UINT32, *PUINT32;
typedef unsigned __int64    UINT64, *PUINT64;





typedef signed int LONG32, *PLONG32;





typedef unsigned int ULONG32, *PULONG32;
typedef unsigned int DWORD32, *PDWORD32;






































    typedef __w64 int INT_PTR, *PINT_PTR;
    typedef __w64 unsigned int UINT_PTR, *PUINT_PTR;

    typedef __w64 long LONG_PTR, *PLONG_PTR;
    typedef __w64 unsigned long ULONG_PTR, *PULONG_PTR;

    
































































































































































































typedef unsigned short UHALF_PTR, *PUHALF_PTR;
typedef short HALF_PTR, *PHALF_PTR;
typedef __w64 long SHANDLE_PTR;
typedef __w64 unsigned long HANDLE_PTR;

















__inline
void * __ptr64
PtrToPtr64(
    const void *p
    )
{
    return((void * __ptr64) (unsigned __int64) (ULONG_PTR)p );
}

__inline
void *
Ptr64ToPtr(
    const void * __ptr64 p
    )
{
    return((void *) (ULONG_PTR) (unsigned __int64) p);
}

__inline
void * __ptr64
HandleToHandle64(
    const void *h
    )
{
    return((void * __ptr64)(__int64)(LONG_PTR)h );
}

__inline
void *
Handle64ToHandle(
    const void * __ptr64 h
    )
{
    return((void *) (ULONG_PTR) (unsigned __int64) h );
}































typedef ULONG_PTR SIZE_T, *PSIZE_T;
typedef LONG_PTR SSIZE_T, *PSSIZE_T;















































typedef ULONG_PTR DWORD_PTR, *PDWORD_PTR;





typedef __int64 LONG64, *PLONG64;






typedef unsigned __int64 ULONG64, *PULONG64;
typedef unsigned __int64 DWORD64, *PDWORD64;





typedef ULONG_PTR KAFFINITY;
typedef KAFFINITY *PKAFFINITY;


}















   #pragma warning(disable : 4786) 
   #pragma warning(disable : 4514) 
   #pragma warning(disable : 4201) 




#pragma once





#pragma once





#pragma once





#pragma once




#pragma once


















 























































#pragma once





























































































































































#pragma once















typedef __w64 unsigned int   size_t;






















namespace vc_attributes
{


enum YesNoMaybe
{
	
	No = 0x0fff0001,
	Maybe = 0x0fff0010,
	Yes = 0x0fff0100
};

typedef enum YesNoMaybe YesNoMaybe;

enum AccessType
{
	NoAccess = 0,
	Read = 1,
	Write = 2,
	ReadWrite = 3
};

typedef enum AccessType AccessType;



[repeatable]
[source_annotation_attribute( Parameter )]
struct PreAttribute
{

	PreAttribute();


	unsigned int Deref;
	YesNoMaybe Valid;
	YesNoMaybe Null;
	YesNoMaybe Tainted;
	AccessType Access;
	size_t ValidElementsConst;
	size_t ValidBytesConst;
	const wchar_t* ValidElements;
	const wchar_t* ValidBytes;
	const wchar_t* ValidElementsLength;
	const wchar_t* ValidBytesLength;
	size_t WritableElementsConst;
	size_t WritableBytesConst;
	const wchar_t* WritableElements;
	const wchar_t* WritableBytes;
	const wchar_t* WritableElementsLength;
	const wchar_t* WritableBytesLength;
	size_t ElementSizeConst;
	const wchar_t* ElementSize;
	YesNoMaybe NullTerminated;
	const wchar_t* Condition;
};

[repeatable]
[source_annotation_attribute( Parameter|ReturnValue )]
struct PostAttribute
{

	PostAttribute();


	unsigned int Deref;
	YesNoMaybe Valid;
	YesNoMaybe Null;
	YesNoMaybe Tainted;
	AccessType Access;
	size_t ValidElementsConst;
	size_t ValidBytesConst;
	const wchar_t* ValidElements;
	const wchar_t* ValidBytes;
	const wchar_t* ValidElementsLength;
	const wchar_t* ValidBytesLength;
	size_t WritableElementsConst;
	size_t WritableBytesConst;
	const wchar_t* WritableElements;
	const wchar_t* WritableBytes;
	const wchar_t* WritableElementsLength;
	const wchar_t* WritableBytesLength;
	size_t ElementSizeConst;
	const wchar_t* ElementSize;
	YesNoMaybe NullTerminated;
	YesNoMaybe MustCheck;
	const wchar_t* Condition;
};

[source_annotation_attribute( Parameter )]
struct FormatStringAttribute
{

	FormatStringAttribute();


	const wchar_t* Style;
	const wchar_t* UnformattedAlternative;
};

[repeatable]
[source_annotation_attribute( ReturnValue )]
struct InvalidCheckAttribute
{

	InvalidCheckAttribute();


	long Value;
};

[source_annotation_attribute( Method )]
struct SuccessAttribute
{

	SuccessAttribute();


	const wchar_t* Condition;
};

[repeatable]
[source_annotation_attribute( Parameter )]
struct PreBoundAttribute
{

	PreBoundAttribute();

	unsigned int Deref;
};

[repeatable]
[source_annotation_attribute( Parameter|ReturnValue )]
struct PostBoundAttribute
{

	PostBoundAttribute();

	unsigned int Deref;
};

[repeatable]
[source_annotation_attribute( Parameter )]
struct PreRangeAttribute
{

	PreRangeAttribute();

	unsigned int Deref;
	const char* MinVal;
	const char* MaxVal;
};

[repeatable]
[source_annotation_attribute( Parameter|ReturnValue )]
struct PostRangeAttribute
{

	PostRangeAttribute();

	unsigned int Deref;
	const char* MinVal;
	const char* MaxVal;
};




};  























typedef ::vc_attributes::YesNoMaybe SA_YesNoMaybe;
const ::vc_attributes::YesNoMaybe SA_Yes = ::vc_attributes::Yes;
const ::vc_attributes::YesNoMaybe SA_No = ::vc_attributes::No;
const ::vc_attributes::YesNoMaybe SA_Maybe = ::vc_attributes::Maybe;

typedef ::vc_attributes::AccessType SA_AccessType;
const ::vc_attributes::AccessType SA_NoAccess = ::vc_attributes::NoAccess;
const ::vc_attributes::AccessType SA_Read = ::vc_attributes::Read;
const ::vc_attributes::AccessType SA_Write = ::vc_attributes::Write;
const ::vc_attributes::AccessType SA_ReadWrite = ::vc_attributes::ReadWrite;


typedef ::vc_attributes::PreAttribute          SA_Pre;
typedef ::vc_attributes::PostAttribute         SA_Post;
typedef ::vc_attributes::FormatStringAttribute SA_FormatString;
typedef ::vc_attributes::InvalidCheckAttribute SA_InvalidCheck; 
typedef ::vc_attributes::SuccessAttribute      SA_Success;
typedef ::vc_attributes::PreBoundAttribute     SA_PreBound;
typedef ::vc_attributes::PostBoundAttribute    SA_PostBound;
typedef ::vc_attributes::PreRangeAttribute     SA_PreRange;
typedef ::vc_attributes::PostRangeAttribute    SA_PostRange;





















































































































































































































































































































































































































































































































































































































































































































                                                




                                                







































































































































































































































































































































































































































































































































































































































































































extern "C" {


































































































































































































































    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    




































































































































































































































    
    











}









#pragma pack(push,8)














#pragma once















#pragma pack(push,8)


extern "C" {















typedef __w64 unsigned int   uintptr_t;








typedef char *  va_list;





















































































}


#pragma pack(pop)





extern "C" {









































































































 


  
 





















































































































































 
  
 







 
  
  
 







 
  
   
  


 







 
  
 







 
  
 



































typedef size_t rsize_t;








typedef __w64 int            intptr_t;

















typedef __w64 int            ptrdiff_t;










typedef unsigned short wint_t;
typedef unsigned short wctype_t;




















typedef int errno_t;



typedef __w64 long __time32_t;   




typedef __int64 __time64_t;     







typedef __time64_t time_t;      
























































  void __cdecl _invalid_parameter(   const wchar_t *,    const wchar_t *,    const wchar_t *, unsigned int, uintptr_t);





 __declspec(noreturn)
void __cdecl _invoke_watson(   const wchar_t *,    const wchar_t *,    const wchar_t *, unsigned int, uintptr_t);


 
  
 





















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct * pthreadlocinfo;
typedef struct threadmbcinfostruct * pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct
{
    pthreadlocinfo locinfo;
    pthreadmbcinfo mbcinfo;
} _locale_tstruct, *_locale_t;


typedef struct tagLC_ID {
        unsigned short wLanguage;
        unsigned short wCountry;
        unsigned short wCodePage;
} LC_ID, *LPLC_ID;




typedef struct threadlocaleinfostruct {
        int refcount;
        unsigned int lc_codepage;
        unsigned int lc_collate_cp;
        unsigned long lc_handle[6]; 
        LC_ID lc_id[6];
        struct {
            char *locale;
            wchar_t *wlocale;
            int *refcount;
            int *wrefcount;
        } lc_category[6];
        int lc_clike;
        int mb_cur_max;
        int * lconv_intl_refcount;
        int * lconv_num_refcount;
        int * lconv_mon_refcount;
        struct lconv * lconv;
        int * ctype1_refcount;
        unsigned short * ctype1;
        const unsigned short * pctype;
        const unsigned char * pclmap;
        const unsigned char * pcumap;
        struct __lc_time_data * lc_time_curr;
} threadlocinfo;




}































#pragma pack(pop)





#pragma pack(push,8)









 















































		








		


		




		

 
  

 



 
  
 


 


 
  
 













































	
	






		
			
		


	

	
	




		
			
		


	

	
	
		
	













	
		#pragma detect_mismatch("_MSC_VER", "1600")
	

	
		




		     #pragma detect_mismatch("_ITERATOR_DEBUG_LEVEL", "2")
		


	


































 



 














 
 

 

 









 









 









 

 









 









 




 





 









































#pragma once
























#pragma comment(lib,"libcpmtd")


































 











 
  


   
  
 






 










 
  


   
  
 

 
  


   
  
 


 

   



    
   

 


 
  


   
  
 


 
  


   
  
 


 
  


   
  
 

 



 
   


     
   
 


    




		

 
  
  
  




  
  
  

  







   
   
   
  

  
  
  
  

 














 

 
namespace std {
typedef bool _Bool;
}
 

		





		






typedef __int64 _Longlong;
typedef unsigned __int64 _ULonglong;

		


 
  
 






 


		
 

 
  
typedef unsigned short char16_t;
typedef unsigned int char32_t;
 

 

		
		






 
namespace std {
enum _Uninitialized
	{	
	_Noinit
	};

		

#pragma warning(push)
#pragma warning(disable:4412)
class  _Lockit
	{	
public:
 

  

















	__thiscall _Lockit();	
	explicit __thiscall _Lockit(int);	
	__thiscall ~_Lockit();	
  

    static  void __cdecl _Lockit_ctor(int);
    static  void __cdecl _Lockit_dtor(int);

private:
    static  void __cdecl _Lockit_ctor(_Lockit *);
    static  void __cdecl _Lockit_ctor(_Lockit *, int);
    static  void __cdecl _Lockit_dtor(_Lockit *);

	 _Lockit(const _Lockit&);				
	_Lockit&  operator=(const _Lockit&);	

	int _Locktype;

  












	};

 



































































  



  


  



  


  
 

class  _Mutex
	{	
public:

 
  

























    __thiscall _Mutex(_Uninitialized)
		{	
		}

    __thiscall _Mutex();
	__thiscall ~_Mutex();
	void __thiscall _Lock();
	void __thiscall _Unlock();
  

private:
    static  void __cdecl _Mutex_ctor(_Mutex *);
    static  void __cdecl _Mutex_dtor(_Mutex *);
    static  void __cdecl _Mutex_Lock(_Mutex *);
    static  void __cdecl _Mutex_Unlock(_Mutex *);

	 _Mutex(const _Mutex&);				
	_Mutex&  operator=(const _Mutex&);	
	void *_Mtx;

  








	};

class  _Init_locks
	{	
public:
 
      











    __thiscall _Init_locks();
	__thiscall ~_Init_locks();
  

private:
    static  void __cdecl _Init_locks_ctor(_Init_locks *);
    static  void __cdecl _Init_locks_dtor(_Init_locks *);

 








	};

#pragma warning(pop)
}
 





		

 void __cdecl _Atexit(void (__cdecl *)(void));

typedef int _Mbstatet;
typedef unsigned long _Uint32t;





 

 #pragma pack(pop)
















 















#pragma once



















 
























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#pragma once
















 




























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#pragma pack(push,8)


extern "C" {




















typedef int (__cdecl * _onexit_t)(void);






















typedef struct _div_t {
        int quot;
        int rem;
} div_t;

typedef struct _ldiv_t {
        long quot;
        long rem;
} ldiv_t;

typedef struct _lldiv_t {
        long long quot;
        long long rem;
} lldiv_t;













#pragma pack(4)
typedef struct {
    unsigned char ld[10];
} _LDOUBLE;
#pragma pack()















typedef struct {
        double x;
} _CRT_DOUBLE;

typedef struct {
    float f;
} _CRT_FLOAT;





typedef struct {
        


        long double x;
} _LONGDOUBLE;



#pragma pack(4)
typedef struct {
    unsigned char ld12[12];
} _LDBL12;
#pragma pack()















 extern int __mb_cur_max;




 int __cdecl ___mb_cur_max_func(void);
 int __cdecl ___mb_cur_max_l_func(_locale_t);






































typedef void (__cdecl *_purecall_handler)(void); 


 _purecall_handler __cdecl _set_purecall_handler(   _purecall_handler _Handler);
 _purecall_handler __cdecl _get_purecall_handler(void);



extern "C++"
{





}




typedef void (__cdecl *_invalid_parameter_handler)(const wchar_t *, const wchar_t *, const wchar_t *, unsigned int, uintptr_t); 


 _invalid_parameter_handler __cdecl _set_invalid_parameter_handler(   _invalid_parameter_handler _Handler);
 _invalid_parameter_handler __cdecl _get_invalid_parameter_handler(void);



extern "C++"
{





}





 extern int * __cdecl _errno(void);


errno_t __cdecl _set_errno(  int _Value);
errno_t __cdecl _get_errno(  int * _Value);


 unsigned long * __cdecl __doserrno(void);


errno_t __cdecl _set_doserrno(  unsigned long _Value);
errno_t __cdecl _get_doserrno(  unsigned long * _Value);


 __declspec(deprecated("This function or variable may be unsafe. Consider using " "strerror" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char ** __cdecl __sys_errlist(void);


 __declspec(deprecated("This function or variable may be unsafe. Consider using " "strerror" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) int * __cdecl __sys_nerr(void);
















 extern int __argc;          
 extern char ** __argv;      
 extern wchar_t ** __wargv;  













 extern char ** _environ;    
 extern wchar_t ** _wenviron;    


__declspec(deprecated("This function or variable may be unsafe. Consider using " "_get_pgmptr" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  extern char * _pgmptr;      
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_get_wpgmptr" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  extern wchar_t * _wpgmptr;  
















errno_t __cdecl _get_pgmptr(     char ** _Value);
errno_t __cdecl _get_wpgmptr(     wchar_t ** _Value);



__declspec(deprecated("This function or variable may be unsafe. Consider using " "_get_fmode" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  extern int _fmode;          





 errno_t __cdecl _set_fmode(  int _Mode);
 errno_t __cdecl _get_fmode(  int * _PMode);






extern "C++"
{
template <typename _CountofType, size_t _SizeOfArray>
char (*__countof_helper( _CountofType (&_Array)[_SizeOfArray]))[_SizeOfArray];

}







 __declspec(noreturn) void __cdecl exit(  int _Code);
 __declspec(noreturn) void __cdecl _exit(  int _Code);
 void __cdecl abort(void);


 unsigned int __cdecl _set_abort_behavior(  unsigned int _Flags,   unsigned int _Mask);



        int       __cdecl abs(  int _X);
        long      __cdecl labs(  long _X);
        long long __cdecl llabs(  long long _X);


        __int64    __cdecl _abs64(__int64);






























        int    __cdecl atexit(void (__cdecl *)(void));



  double  __cdecl atof(   const char *_String);
  double  __cdecl _atof_l(   const char *_String,    _locale_t _Locale);

   int    __cdecl atoi(   const char *_Str);
  int    __cdecl _atoi_l(   const char *_Str,    _locale_t _Locale);
  long   __cdecl atol(   const char *_Str);
  long   __cdecl _atol_l(   const char *_Str,    _locale_t _Locale);



  void * __cdecl bsearch_s(  const void * _Key,    const void * _Base, 
          rsize_t _NumOfElements,   rsize_t _SizeOfElements,
          int (__cdecl * _PtFuncCompare)(void *, const void *, const void *), void * _Context);

  void * __cdecl bsearch(  const void * _Key,    const void * _Base, 
          size_t _NumOfElements,   size_t _SizeOfElements,
          int (__cdecl * _PtFuncCompare)(const void *, const void *));


 void __cdecl qsort_s(   void * _Base, 
          rsize_t _NumOfElements,   rsize_t _SizeOfElements,
          int (__cdecl * _PtFuncCompare)(void *, const void *, const void *), void *_Context);

 void __cdecl qsort(   void * _Base, 
	  size_t _NumOfElements,   size_t _SizeOfElements, 
          int (__cdecl * _PtFuncCompare)(const void *, const void *));

         unsigned short __cdecl _byteswap_ushort(  unsigned short _Short);
         unsigned long  __cdecl _byteswap_ulong (  unsigned long _Long);
         unsigned __int64 __cdecl _byteswap_uint64(  unsigned __int64 _Int64);
  div_t  __cdecl div(  int _Numerator,   int _Denominator);
  __declspec(deprecated("This function or variable may be unsafe. Consider using " "_dupenv_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl getenv(   const char * _VarName);

  errno_t __cdecl getenv_s(  size_t * _ReturnSize,     char * _DstBuf,   rsize_t _DstSize,    const char * _VarName);

extern "C++" { template <size_t _Size> inline errno_t __cdecl getenv_s(  size_t * _ReturnSize, char (&_Dest)[_Size],    const char * _VarName) throw() { return getenv_s(_ReturnSize, _Dest, _Size, _VarName); } }





  errno_t __cdecl _dupenv_s(    char **_PBuffer,   size_t * _PBufferSizeInBytes,    const char * _VarName);





  errno_t __cdecl _itoa_s(  int _Value,     char * _DstBuf,   size_t _Size,   int _Radix);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _itoa_s(  int _Value, char (&_Dest)[_Size],   int _Radix) throw() { return _itoa_s(_Value, _Dest, _Size, _Radix); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_itoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl _itoa( int _Value,   char *_Dest,  int _Radix);
  errno_t __cdecl _i64toa_s(  __int64 _Val,     char * _DstBuf,   size_t _Size,   int _Radix);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_i64toa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl _i64toa(  __int64 _Val,    char * _DstBuf,   int _Radix);
  errno_t __cdecl _ui64toa_s(  unsigned __int64 _Val,     char * _DstBuf,   size_t _Size,   int _Radix);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ui64toa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl _ui64toa(  unsigned __int64 _Val,    char * _DstBuf,   int _Radix);
  __int64 __cdecl _atoi64(   const char * _String);
  __int64 __cdecl _atoi64_l(   const char * _String,    _locale_t _Locale);
  __int64 __cdecl _strtoi64(   const char * _String,     char ** _EndPtr,   int _Radix);
  __int64 __cdecl _strtoi64_l(   const char * _String,     char ** _EndPtr,   int _Radix,    _locale_t _Locale);
  unsigned __int64 __cdecl _strtoui64(   const char * _String,     char ** _EndPtr,   int _Radix);
  unsigned __int64 __cdecl _strtoui64_l(   const char * _String,     char ** _EndPtr,   int  _Radix,    _locale_t _Locale);
  ldiv_t __cdecl ldiv(  long _Numerator,   long _Denominator);
  lldiv_t __cdecl lldiv(  long long _Numerator,   long long _Denominator);

extern "C++"
{
    inline long abs(long _X)
    {
        return labs(_X);
    }
    inline long long abs(long long _X)
    {
        return llabs(_X);
    }
    inline ldiv_t div(long _A1, long _A2)
    {
        return ldiv(_A1, _A2);
    }
    inline lldiv_t div(long long _A1, long long _A2)
    {
        return lldiv(_A1, _A2);
    }
}

  errno_t __cdecl _ltoa_s(  long _Val,     char * _DstBuf,   size_t _Size,   int _Radix);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _ltoa_s(  long _Value, char (&_Dest)[_Size],   int _Radix) throw() { return _ltoa_s(_Value, _Dest, _Size, _Radix); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_ltoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl _ltoa( long _Value,   char *_Dest,  int _Radix);
  int    __cdecl mblen(     const char * _Ch,   size_t _MaxCount);
  int    __cdecl _mblen_l(     const char * _Ch,   size_t _MaxCount,    _locale_t _Locale);
  size_t __cdecl _mbstrlen(   const char * _Str);
  size_t __cdecl _mbstrlen_l(   const char *_Str,    _locale_t _Locale);
  size_t __cdecl _mbstrnlen(   const char *_Str,   size_t _MaxCount);
  size_t __cdecl _mbstrnlen_l(   const char *_Str,   size_t _MaxCount,    _locale_t _Locale);
 int    __cdecl mbtowc(   wchar_t * _DstCh,      const char * _SrcCh,   size_t _SrcSizeInBytes);
 int    __cdecl _mbtowc_l(   wchar_t * _DstCh,      const char * _SrcCh,   size_t _SrcSizeInBytes,    _locale_t _Locale);
  errno_t __cdecl mbstowcs_s(  size_t * _PtNumOfCharConverted,     wchar_t * _DstBuf,   size_t _SizeInWords,      const char * _SrcBuf,   size_t _MaxCount );
extern "C++" { template <size_t _Size> inline errno_t __cdecl mbstowcs_s(  size_t * _PtNumOfCharConverted,   wchar_t (&_Dest)[_Size],    const char * _Source,   size_t _MaxCount) throw() { return mbstowcs_s(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "mbstowcs_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  size_t __cdecl mbstowcs(  wchar_t *_Dest,  const char * _Source,  size_t _MaxCount);

  errno_t __cdecl _mbstowcs_s_l(  size_t * _PtNumOfCharConverted,     wchar_t * _DstBuf,   size_t _SizeInWords,      const char * _SrcBuf,   size_t _MaxCount,    _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbstowcs_s_l(  size_t * _PtNumOfCharConverted, wchar_t (&_Dest)[_Size],    const char * _Source,   size_t _MaxCount,    _locale_t _Locale) throw() { return _mbstowcs_s_l(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbstowcs_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  size_t __cdecl _mbstowcs_l(    wchar_t *_Dest,    const char * _Source,   size_t _MaxCount,    _locale_t _Locale);

  int    __cdecl rand(void);




  int    __cdecl _set_error_mode(  int _Mode);

 void   __cdecl srand(  unsigned int _Seed);
  double __cdecl strtod(   const char * _Str,     char ** _EndPtr);
  double __cdecl _strtod_l(   const char * _Str,     char ** _EndPtr,    _locale_t _Locale);
  long   __cdecl strtol(   const char * _Str,     char ** _EndPtr,   int _Radix );
  long   __cdecl _strtol_l(   const char *_Str,     char **_EndPtr,   int _Radix,    _locale_t _Locale);
  unsigned long __cdecl strtoul(   const char * _Str,     char ** _EndPtr,   int _Radix);
  unsigned long __cdecl _strtoul_l(const char * _Str,     char **_EndPtr,   int _Radix,    _locale_t _Locale);


 int __cdecl system(   const char * _Command);

  errno_t __cdecl _ultoa_s(  unsigned long _Val,     char * _DstBuf,   size_t _Size,   int _Radix);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _ultoa_s(  unsigned long _Value, char (&_Dest)[_Size],   int _Radix) throw() { return _ultoa_s(_Value, _Dest, _Size, _Radix); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_ultoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl _ultoa( unsigned long _Value,   char *_Dest,  int _Radix);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "wctomb_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) int    __cdecl wctomb(    char * _MbCh,   wchar_t _WCh);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wctomb_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) int    __cdecl _wctomb_l(   char * _MbCh,   wchar_t _WCh,    _locale_t _Locale);

  errno_t __cdecl wctomb_s(  int * _SizeConverted,     char * _MbCh,   rsize_t _SizeInBytes,   wchar_t _WCh);

  errno_t __cdecl _wctomb_s_l(  int * _SizeConverted,     char * _MbCh,   size_t _SizeInBytes,   wchar_t _WCh,    _locale_t _Locale);
  errno_t __cdecl wcstombs_s(  size_t * _PtNumOfCharConverted,     char * _Dst,   size_t _DstSizeInBytes,    const wchar_t * _Src,   size_t _MaxCountInBytes);
extern "C++" { template <size_t _Size> inline errno_t __cdecl wcstombs_s(  size_t * _PtNumOfCharConverted,   char (&_Dest)[_Size],    const wchar_t * _Source,   size_t _MaxCount) throw() { return wcstombs_s(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcstombs_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  size_t __cdecl wcstombs(  char *_Dest,  const wchar_t * _Source,  size_t _MaxCount);
  errno_t __cdecl _wcstombs_s_l(  size_t * _PtNumOfCharConverted,     char * _Dst,   size_t _DstSizeInBytes,    const wchar_t * _Src,   size_t _MaxCountInBytes,    _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcstombs_s_l(  size_t * _PtNumOfCharConverted,   char (&_Dest)[_Size],    const wchar_t * _Source,   size_t _MaxCount,    _locale_t _Locale) throw() { return _wcstombs_s_l(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcstombs_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  size_t __cdecl _wcstombs_l(    char *_Dest,    const wchar_t * _Source,   size_t _MaxCount,    _locale_t _Locale);





























































    __declspec(noalias) __declspec(restrict)    void * __cdecl calloc(  size_t _Count,   size_t _Size);
                     __declspec(noalias)                                                                             void   __cdecl free( void * _Memory);
    __declspec(noalias) __declspec(restrict)                              void * __cdecl malloc(  size_t _Size);

   __declspec(noalias) __declspec(restrict)                           void * __cdecl realloc( void * _Memory,   size_t _NewSize);

   __declspec(noalias) __declspec(restrict)                       void * __cdecl _recalloc( void * _Memory,   size_t _Count,   size_t _Size);
                     __declspec(noalias)                                                                             void   __cdecl _aligned_free( void * _Memory);
   __declspec(noalias) __declspec(restrict)                              void * __cdecl _aligned_malloc(  size_t _Size,   size_t _Alignment);
   __declspec(noalias) __declspec(restrict)                              void * __cdecl _aligned_offset_malloc(  size_t _Size,   size_t _Alignment,   size_t _Offset);

   __declspec(noalias) __declspec(restrict)                              void * __cdecl _aligned_realloc( void * _Memory,   size_t _NewSize,   size_t _Alignment);

   __declspec(noalias) __declspec(restrict)                       void * __cdecl _aligned_recalloc( void * _Memory,   size_t _Count,   size_t _Size,   size_t _Alignment);

   __declspec(noalias) __declspec(restrict)                              void * __cdecl _aligned_offset_realloc( void * _Memory,   size_t _NewSize,   size_t _Alignment,   size_t _Offset);

   __declspec(noalias) __declspec(restrict)                       void * __cdecl _aligned_offset_recalloc( void * _Memory,   size_t _Count,   size_t _Size,   size_t _Alignment,   size_t _Offset);
                                                   size_t __cdecl _aligned_msize( void * _Memory,   size_t _Alignment,   size_t _Offset);


























  errno_t __cdecl _itow_s (  int _Val,     wchar_t * _DstBuf,   size_t _SizeInWords,   int _Radix);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _itow_s(  int _Value, wchar_t (&_Dest)[_Size],   int _Radix) throw() { return _itow_s(_Value, _Dest, _Size, _Radix); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_itow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _itow( int _Value,   wchar_t *_Dest,  int _Radix);
  errno_t __cdecl _ltow_s (  long _Val,     wchar_t * _DstBuf,   size_t _SizeInWords,   int _Radix);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _ltow_s(  long _Value, wchar_t (&_Dest)[_Size],   int _Radix) throw() { return _ltow_s(_Value, _Dest, _Size, _Radix); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_ltow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _ltow( long _Value,   wchar_t *_Dest,  int _Radix);
  errno_t __cdecl _ultow_s (  unsigned long _Val,     wchar_t * _DstBuf,   size_t _SizeInWords,   int _Radix);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _ultow_s(  unsigned long _Value, wchar_t (&_Dest)[_Size],   int _Radix) throw() { return _ultow_s(_Value, _Dest, _Size, _Radix); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_ultow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _ultow( unsigned long _Value,   wchar_t *_Dest,  int _Radix);
  double __cdecl wcstod(   const wchar_t * _Str,     wchar_t ** _EndPtr);
  double __cdecl _wcstod_l(   const wchar_t *_Str,     wchar_t ** _EndPtr,    _locale_t _Locale);
  long   __cdecl wcstol(   const wchar_t *_Str,     wchar_t ** _EndPtr, int _Radix);
  long   __cdecl _wcstol_l(   const wchar_t *_Str,     wchar_t **_EndPtr, int _Radix,    _locale_t _Locale);
  unsigned long __cdecl wcstoul(   const wchar_t *_Str,     wchar_t ** _EndPtr, int _Radix);
  unsigned long __cdecl _wcstoul_l(   const wchar_t *_Str,     wchar_t **_EndPtr, int _Radix,    _locale_t _Locale);
  __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wdupenv_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) wchar_t * __cdecl _wgetenv(   const wchar_t * _VarName);
  errno_t __cdecl _wgetenv_s(  size_t * _ReturnSize,     wchar_t * _DstBuf,   size_t _DstSizeInWords,    const wchar_t * _VarName);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wgetenv_s(  size_t * _ReturnSize, wchar_t (&_Dest)[_Size],    const wchar_t * _VarName) throw() { return _wgetenv_s(_ReturnSize, _Dest, _Size, _VarName); } }






  errno_t __cdecl _wdupenv_s(    wchar_t **_Buffer,   size_t *_BufferSizeInWords,    const wchar_t *_VarName);







 int __cdecl _wsystem(   const wchar_t * _Command);

  double __cdecl _wtof(   const wchar_t *_Str);
  double __cdecl _wtof_l(   const wchar_t *_Str,    _locale_t _Locale);
  int __cdecl _wtoi(   const wchar_t *_Str);
  int __cdecl _wtoi_l(   const wchar_t *_Str,    _locale_t _Locale);
  long __cdecl _wtol(   const wchar_t *_Str);
  long __cdecl _wtol_l(   const wchar_t *_Str,    _locale_t _Locale);

  errno_t __cdecl _i64tow_s(  __int64 _Val,     wchar_t * _DstBuf,   size_t _SizeInWords,   int _Radix);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_i64tow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) wchar_t * __cdecl _i64tow(  __int64 _Val,    wchar_t * _DstBuf,   int _Radix);
  errno_t __cdecl _ui64tow_s(  unsigned __int64 _Val,     wchar_t * _DstBuf,   size_t _SizeInWords,   int _Radix);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ui64tow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) wchar_t * __cdecl _ui64tow(  unsigned __int64 _Val,    wchar_t * _DstBuf,   int _Radix);
  __int64   __cdecl _wtoi64(   const wchar_t *_Str);
  __int64   __cdecl _wtoi64_l(   const wchar_t *_Str,    _locale_t _Locale);
  __int64   __cdecl _wcstoi64(   const wchar_t * _Str,     wchar_t ** _EndPtr,   int _Radix);
  __int64   __cdecl _wcstoi64_l(   const wchar_t * _Str,     wchar_t ** _EndPtr,   int _Radix,    _locale_t _Locale);
  unsigned __int64  __cdecl _wcstoui64(   const wchar_t * _Str,     wchar_t ** _EndPtr,   int _Radix);
  unsigned __int64  __cdecl _wcstoui64_l(   const wchar_t *_Str ,     wchar_t ** _EndPtr,   int _Radix,    _locale_t _Locale);



















  char * __cdecl _fullpath(    char * _FullPath,    const char * _Path,   size_t _SizeInBytes);







  errno_t __cdecl _ecvt_s(    char * _DstBuf,   size_t _Size,   double _Val,   int _NumOfDights,   int * _PtDec,   int * _PtSign);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _ecvt_s(char (&_Dest)[_Size],   double _Value,   int _NumOfDigits,   int * _PtDec,   int * _PtSign) throw() { return _ecvt_s(_Dest, _Size, _Value, _NumOfDigits, _PtDec, _PtSign); } }
  __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ecvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl _ecvt(  double _Val,   int _NumOfDigits,   int * _PtDec,   int * _PtSign);
  errno_t __cdecl _fcvt_s(    char * _DstBuf,   size_t _Size,   double _Val,   int _NumOfDec,   int * _PtDec,   int * _PtSign);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _fcvt_s(char (&_Dest)[_Size],   double _Value,   int _NumOfDigits,   int * _PtDec,   int * _PtSign) throw() { return _fcvt_s(_Dest, _Size, _Value, _NumOfDigits, _PtDec, _PtSign); } }
  __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fcvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl _fcvt(  double _Val,   int _NumOfDec,   int * _PtDec,   int * _PtSign);
 errno_t __cdecl _gcvt_s(    char * _DstBuf,   size_t _Size,   double _Val,   int _NumOfDigits);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _gcvt_s(char (&_Dest)[_Size],   double _Value,   int _NumOfDigits) throw() { return _gcvt_s(_Dest, _Size, _Value, _NumOfDigits); } }
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_gcvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl _gcvt(  double _Val,   int _NumOfDigits,    char * _DstBuf);

  int __cdecl _atodbl(  _CRT_DOUBLE * _Result,    char * _Str);
  int __cdecl _atoldbl(  _LDOUBLE * _Result,    char * _Str);
  int __cdecl _atoflt(  _CRT_FLOAT * _Result,    char * _Str);
  int __cdecl _atodbl_l(  _CRT_DOUBLE * _Result,    char * _Str,    _locale_t _Locale);
  int __cdecl _atoldbl_l(  _LDOUBLE * _Result,    char * _Str,    _locale_t _Locale);
  int __cdecl _atoflt_l(  _CRT_FLOAT * _Result,    char * _Str,    _locale_t _Locale);
         unsigned long __cdecl _lrotl(  unsigned long _Val,   int _Shift);
         unsigned long __cdecl _lrotr(  unsigned long _Val,   int _Shift);
  errno_t   __cdecl _makepath_s(    char * _PathResult,   size_t _SizeInWords,    const char * _Drive,    const char * _Dir,    const char * _Filename,
           const char * _Ext);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _makepath_s(char (&_Path)[_Size],    const char * _Drive,    const char * _Dir,    const char * _Filename,    const char * _Ext) throw() { return _makepath_s(_Path, _Size, _Drive, _Dir, _Filename, _Ext); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_makepath_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  void __cdecl _makepath(  char *_Path,  const char * _Drive,  const char * _Dir,  const char * _Filename,  const char * _Ext);


























        _onexit_t __cdecl _onexit(   _onexit_t _Func);

        


 void __cdecl perror(   const char * _ErrMsg);


#pragma warning (push)
#pragma warning (disable:6540) 
  int    __cdecl _putenv(   const char * _EnvString);
  errno_t __cdecl _putenv_s(   const char * _Name,    const char * _Value);
         unsigned int __cdecl _rotl(  unsigned int _Val,   int _Shift);
         unsigned __int64 __cdecl _rotl64(  unsigned __int64 _Val,   int _Shift);
         unsigned int __cdecl _rotr(  unsigned int _Val,   int _Shift);
         unsigned __int64 __cdecl _rotr64(  unsigned __int64 _Val,   int _Shift);
#pragma warning (pop)

 errno_t __cdecl _searchenv_s(   const char * _Filename,    const char * _EnvVar,     char * _ResultPath,   size_t _SizeInBytes);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _searchenv_s(   const char * _Filename,    const char * _EnvVar, char (&_ResultPath)[_Size]) throw() { return _searchenv_s(_Filename, _EnvVar, _ResultPath, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_searchenv_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  void __cdecl _searchenv( const char * _Filename,  const char * _EnvVar,   char *_ResultPath);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_splitpath_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  void   __cdecl _splitpath(   const char * _FullPath,    char * _Drive,    char * _Dir,    char * _Filename,    char * _Ext);
  errno_t  __cdecl _splitpath_s(   const char * _FullPath, 
		    char * _Drive,   size_t _DriveSize, 
		    char * _Dir,   size_t _DirSize, 
		    char * _Filename,   size_t _FilenameSize, 
		    char * _Ext,   size_t _ExtSize);
extern "C++" { template <size_t _DriveSize, size_t _DirSize, size_t _NameSize, size_t _ExtSize> inline errno_t __cdecl _splitpath_s(  const char *_Dest, char (&_Drive)[_DriveSize], char (&_Dir)[_DirSize], char (&_Name)[_NameSize], char (&_Ext)[_ExtSize]) throw() { return _splitpath_s(_Dest, _Drive, _DriveSize, _Dir, _DirSize, _Name, _NameSize, _Ext, _ExtSize); } }

 void   __cdecl _swab(     char * _Buf1,      char * _Buf2, int _SizeInBytes);










  wchar_t * __cdecl _wfullpath(    wchar_t * _FullPath,    const wchar_t * _Path,   size_t _SizeInWords);





  errno_t __cdecl _wmakepath_s(    wchar_t * _PathResult,   size_t _SIZE,    const wchar_t * _Drive,    const wchar_t * _Dir,    const wchar_t * _Filename,
           const wchar_t * _Ext);        
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wmakepath_s(wchar_t (&_ResultPath)[_Size],    const wchar_t * _Drive,    const wchar_t * _Dir,    const wchar_t * _Filename,    const wchar_t * _Ext) throw() { return _wmakepath_s(_ResultPath, _Size, _Drive, _Dir, _Filename, _Ext); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wmakepath_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  void __cdecl _wmakepath(  wchar_t *_ResultPath,  const wchar_t * _Drive,  const wchar_t * _Dir,  const wchar_t * _Filename,  const wchar_t * _Ext);


 void __cdecl _wperror(   const wchar_t * _ErrMsg);

  int    __cdecl _wputenv(   const wchar_t * _EnvString);
  errno_t __cdecl _wputenv_s(   const wchar_t * _Name,    const wchar_t * _Value);
 errno_t __cdecl _wsearchenv_s(   const wchar_t * _Filename,    const wchar_t * _EnvVar,     wchar_t * _ResultPath,   size_t _SizeInWords);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wsearchenv_s(   const wchar_t * _Filename,    const wchar_t * _EnvVar, wchar_t (&_ResultPath)[_Size]) throw() { return _wsearchenv_s(_Filename, _EnvVar, _ResultPath, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wsearchenv_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  void __cdecl _wsearchenv( const wchar_t * _Filename,  const wchar_t * _EnvVar,   wchar_t *_ResultPath);
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wsplitpath_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  void   __cdecl _wsplitpath(   const wchar_t * _FullPath,    wchar_t * _Drive,    wchar_t * _Dir,    wchar_t * _Filename,    wchar_t * _Ext);
 errno_t __cdecl _wsplitpath_s(   const wchar_t * _FullPath, 
		    wchar_t * _Drive,   size_t _DriveSize, 
		    wchar_t * _Dir,   size_t _DirSize, 
		    wchar_t * _Filename,   size_t _FilenameSize, 
		    wchar_t * _Ext,   size_t _ExtSize);
extern "C++" { template <size_t _DriveSize, size_t _DirSize, size_t _NameSize, size_t _ExtSize> inline errno_t __cdecl _wsplitpath_s(  const wchar_t *_Path, wchar_t (&_Drive)[_DriveSize], wchar_t (&_Dir)[_DirSize], wchar_t (&_Name)[_NameSize], wchar_t (&_Ext)[_ExtSize]) throw() { return _wsplitpath_s(_Path, _Drive, _DriveSize, _Dir, _DirSize, _Name, _NameSize, _Ext, _ExtSize); } }





__declspec(deprecated("This function or variable has been superceded by newer library or operating system functionality. Consider using " "SetErrorMode" " instead. See online help for details."))  void __cdecl _seterrormode(  int _Mode);
__declspec(deprecated("This function or variable has been superceded by newer library or operating system functionality. Consider using " "Beep" " instead. See online help for details."))  void __cdecl _beep(  unsigned _Frequency,   unsigned _Duration);
__declspec(deprecated("This function or variable has been superceded by newer library or operating system functionality. Consider using " "Sleep" " instead. See online help for details."))  void __cdecl _sleep(  unsigned long _Duration);


















#pragma warning(push)
#pragma warning(disable: 4141)  
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_ecvt" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ecvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl ecvt(  double _Val,   int _NumOfDigits,   int * _PtDec,   int * _PtSign);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_fcvt" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fcvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl fcvt(  double _Val,   int _NumOfDec,   int * _PtDec,   int * _PtSign);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_gcvt" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fcvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))		 char * __cdecl gcvt(  double _Val,   int _NumOfDigits,    char * _DstBuf);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_itoa" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_itoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))		 char * __cdecl itoa(  int _Val,    char * _DstBuf,   int _Radix);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_ltoa" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ltoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))		 char * __cdecl ltoa(  long _Val,    char * _DstBuf,   int _Radix);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_putenv" ". See online help for details."))  int    __cdecl putenv(   const char * _EnvString);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_swab" ". See online help for details."))										 void   __cdecl swab(    char * _Buf1,    char * _Buf2,   int _SizeInBytes);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_ultoa" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ultoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))	 char * __cdecl ultoa(  unsigned long _Val,    char * _Dstbuf,   int _Radix);
#pragma warning(pop)
_onexit_t __cdecl onexit(   _onexit_t _Func);






}



#pragma pack(pop)






 

namespace std {
using :: size_t; using :: div_t; using :: ldiv_t;

using :: abort; using :: abs; using :: atexit;
using :: atof; using :: atoi; using :: atol;
using :: bsearch; using :: calloc; using :: div;
using :: exit; using :: free; using :: getenv;
using :: labs; using :: ldiv; using :: malloc;
using :: mblen; using :: mbstowcs; using :: mbtowc;
using :: qsort; using :: rand; using :: realloc;
using :: srand; using :: strtod; using :: strtol;
using :: strtoul; using :: system;
using :: wcstombs; using :: wctomb;

using :: lldiv_t;

using :: llabs; using :: lldiv;
}
 










#pragma once





#pragma once






#pragma once





#pragma once






#pragma once





 
  
  
  
 



#pragma once










 














#pragma once



















 











































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































extern "C" {














namespace std { typedef decltype(__nullptr) nullptr_t; }
using ::std::nullptr_t;

































 extern unsigned long  __cdecl __threadid(void);

 extern uintptr_t __cdecl __threadhandle(void);


}






 
namespace std {
using :: ptrdiff_t; using :: size_t;
}
 









 #pragma pack(push,8)
 #pragma warning(push,3)

namespace std {
		
 

 
 
 
 
 

 
 

 



  
  

   
   

 


























		


		
 
 

		

template<bool _Test,
	class _Ty1,
	class _Ty2>
	class _If
	{	
public:
	typedef _Ty2 _Type;
	};

template<class _Ty1,
	class _Ty2>
	class _If<true, _Ty1, _Ty2>
	{	
public:
	typedef _Ty1 _Type;
	};

 
  

	namespace tr1 {
typedef char (&_No)[1];
typedef char (&_Yes)[2];
	}	
 

 

  

struct _Bool_struct
	{	
	int _Member;
	};

  









   

typedef int _Bool_struct::* _Bool_type;
  

 

		
		
template<class _Arg,
	class _Result>
	struct unary_function
	{	
	typedef _Arg argument_type;
	typedef _Result result_type;
	};

		
template<class _Arg1,
	class _Arg2,
	class _Result>
	struct binary_function
	{	
	typedef _Arg1 first_argument_type;
	typedef _Arg2 second_argument_type;
	typedef _Result result_type;
	};
}


 #pragma warning(pop)
 #pragma pack(pop)










 #pragma pack(push,8)
 #pragma warning(push,3)










namespace std {

  


  



  



}

 

 











#pragma once
















 

















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#pragma pack(push,8)







typedef void (__cdecl *terminate_function)();
typedef void (__cdecl *terminate_handler)();
typedef void (__cdecl *unexpected_function)();
typedef void (__cdecl *unexpected_handler)();














struct _EXCEPTION_POINTERS;

typedef void (__cdecl *_se_translator_function)(unsigned int, struct _EXCEPTION_POINTERS*);


 __declspec(noreturn) void __cdecl terminate(void);
 void __cdecl unexpected(void);

 int __cdecl _is_exception_typeof(  const type_info &_Type,   struct _EXCEPTION_POINTERS * _ExceptionPtr);



 terminate_function __cdecl set_terminate(   terminate_function _NewPtFunc);
extern "C"  terminate_function __cdecl _get_terminate(void);
 unexpected_function __cdecl set_unexpected(   unexpected_function _NewPtFunc);
extern "C"  unexpected_function __cdecl _get_unexpected(void);




 _se_translator_function __cdecl _set_se_translator(   _se_translator_function _NewPtFunc);

 bool __cdecl __uncaught_exception();









#pragma pack(pop)



 














#pragma once



















 














































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#pragma pack(push,8)


extern "C" {




























typedef struct _heapinfo {
        int * _pentry;
        size_t _size;
        int _useflag;
        } _HEAPINFO;















































































 int     __cdecl _resetstkoflw (void);



 unsigned long __cdecl _set_malloc_crt_max_wait(  unsigned long _NewValue);










   void *  __cdecl _expand( void * _Memory,   size_t _NewSize);
  size_t  __cdecl _msize( void * _Memory);






 void *          __cdecl _alloca(  size_t _Size);
  int     __cdecl _heapadd(  void * _Memory,   size_t _Size);
  int     __cdecl _heapchk(void);
  int     __cdecl _heapmin(void);
 int     __cdecl _heapset(  unsigned int _Fill);
  int     __cdecl _heapwalk(   _HEAPINFO * _EntryInfo);
 size_t  __cdecl _heapused(size_t * _Used, size_t * _Commit);

 intptr_t __cdecl _get_heap_handle(void);













typedef char __static_assert_t[ (sizeof(unsigned int) <= 8) ];


#pragma warning(push)
#pragma warning(disable:6540)
__inline void *_MarkAllocaS(   void *_Ptr, unsigned int _Marker)
{
    if (_Ptr)
    {
        *((unsigned int*)_Ptr) = _Marker;
        _Ptr = (char*)_Ptr + 8;
    }
    return _Ptr;
}
#pragma warning(pop)

























__declspec(noalias) __inline void __cdecl _freea( void * _Memory)
{
    unsigned int _Marker;
    if (_Memory)
    {
        _Memory = (char*)_Memory - 8;
        _Marker = *(unsigned int *)_Memory;
        if (_Marker == 0xDDDD)
        {
            free(_Memory);
        }






    }
}































}


#pragma pack(pop)



 














#pragma once



















 











































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































extern "C" {






















 void *  __cdecl _memccpy(   void * _Dst,   const void * _Src,   int _Val,   size_t _MaxCount);
  const void *  __cdecl memchr(    const void * _Buf ,   int _Val,   size_t _MaxCount);
  int     __cdecl _memicmp(   const void * _Buf1,    const void * _Buf2,   size_t _Size);
  int     __cdecl _memicmp_l(   const void * _Buf1,    const void * _Buf2,   size_t _Size,    _locale_t _Locale);
         int     __cdecl memcmp(   const void * _Buf1,    const void * _Buf2,   size_t _Size);
         void *  __cdecl memcpy(    void * _Dst,    const void * _Src,   size_t _Size);

 errno_t  __cdecl memcpy_s(    void * _Dst,   rsize_t _DstSize,    const void * _Src,   rsize_t _MaxCount);


































        void *  __cdecl memset(    void * _Dst,   int _Val,   size_t _Size);



__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_memccpy" ". See online help for details."))  void * __cdecl memccpy(  void * _Dst,    const void * _Src,   int _Val,   size_t _Size);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_memicmp" ". See online help for details."))  int __cdecl memicmp(   const void * _Buf1,    const void * _Buf2,   size_t _Size);




  errno_t __cdecl _strset_s(    char * _Dst,   size_t _DstSize,   int _Value);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strset_s(    char (&_Dest)[_Size],   int _Value) throw() { return _strset_s(_Dest, _Size, _Value); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl _strset(  char *_Dest,  int _Value);

  errno_t __cdecl strcpy_s(    char * _Dst,   rsize_t _SizeInBytes,    const char * _Src);

extern "C++" { template <size_t _Size> inline errno_t __cdecl strcpy_s(  char (&_Dest)[_Size],    const char * _Source) throw() { return strcpy_s(_Dest, _Size, _Source); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "strcpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl strcpy(  char *_Dest,  const char * _Source);

  errno_t __cdecl strcat_s(    char * _Dst,   rsize_t _SizeInBytes,    const char * _Src);

extern "C++" { template <size_t _Size> inline errno_t __cdecl strcat_s(    char (&_Dest)[_Size],    const char * _Source) throw() { return strcat_s(_Dest, _Size, _Source); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "strcat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl strcat(  char *_Dest,  const char * _Source);
         int     __cdecl strcmp(   const char * _Str1,    const char * _Str2);
         size_t  __cdecl strlen(   const char * _Str);
  size_t  __cdecl strnlen(   const char * _Str,   size_t _MaxCount);

 static __inline size_t  __cdecl strnlen_s(    const char * _Str,   size_t _MaxCount)
{
    return (_Str==0) ? 0 : strnlen(_Str, _MaxCount);
}


  errno_t __cdecl memmove_s(    void * _Dst,   rsize_t _DstSize,    const void * _Src,   rsize_t _MaxCount);





  void *  __cdecl memmove(    void * _Dst,    const void * _Src,   size_t _Size);







  char *  __cdecl _strdup(   const char * _Src);





  const char *  __cdecl strchr(   const char * _Str,   int _Val);
  int     __cdecl _stricmp(    const char * _Str1,     const char * _Str2);
  int     __cdecl _strcmpi(    const char * _Str1,     const char * _Str2);
  int     __cdecl _stricmp_l(    const char * _Str1,     const char * _Str2,    _locale_t _Locale);
  int     __cdecl strcoll(    const char * _Str1,     const  char * _Str2);
  int     __cdecl _strcoll_l(    const char * _Str1,     const char * _Str2,    _locale_t _Locale);
  int     __cdecl _stricoll(    const char * _Str1,     const char * _Str2);
  int     __cdecl _stricoll_l(    const char * _Str1,     const char * _Str2,    _locale_t _Locale);
  int     __cdecl _strncoll  (   const char * _Str1,    const char * _Str2,   size_t _MaxCount);
  int     __cdecl _strncoll_l(   const char * _Str1,    const char * _Str2,   size_t _MaxCount,    _locale_t _Locale);
  int     __cdecl _strnicoll (   const char * _Str1,    const char * _Str2,   size_t _MaxCount);
  int     __cdecl _strnicoll_l(   const char * _Str1,    const char * _Str2,   size_t _MaxCount,    _locale_t _Locale);
  size_t  __cdecl strcspn(    const char * _Str,     const char * _Control);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_strerror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char *  __cdecl _strerror(   const char * _ErrMsg);
  errno_t __cdecl _strerror_s(    char * _Buf,   size_t _SizeInBytes,    const char * _ErrMsg);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strerror_s(char (&_Buffer)[_Size],    const char * _ErrorMessage) throw() { return _strerror_s(_Buffer, _Size, _ErrorMessage); } }
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "strerror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char *  __cdecl strerror(  int);

  errno_t __cdecl strerror_s(    char * _Buf,   size_t _SizeInBytes,   int _ErrNum);

extern "C++" { template <size_t _Size> inline errno_t __cdecl strerror_s(char (&_Buffer)[_Size],   int _ErrorMessage) throw() { return strerror_s(_Buffer, _Size, _ErrorMessage); } }
  errno_t __cdecl _strlwr_s(    char * _Str,   size_t _Size);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strlwr_s(    char (&_String)[_Size]) throw() { return _strlwr_s(_String, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strlwr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl _strlwr(  char *_String);
  errno_t __cdecl _strlwr_s_l(    char * _Str,   size_t _Size,    _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strlwr_s_l(    char (&_String)[_Size],    _locale_t _Locale) throw() { return _strlwr_s_l(_String, _Size, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strlwr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl _strlwr_l(    char *_String,    _locale_t _Locale);

  errno_t __cdecl strncat_s(    char * _Dst,   rsize_t _SizeInBytes,    const char * _Src,   rsize_t _MaxCount);

extern "C++" { template <size_t _Size> inline errno_t __cdecl strncat_s(    char (&_Dest)[_Size],    const char * _Source,   size_t _Count) throw() { return strncat_s(_Dest, _Size, _Source, _Count); } }
#pragma warning(push)
#pragma warning(disable:6059)

__declspec(deprecated("This function or variable may be unsafe. Consider using " "strncat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl strncat(    char *_Dest,    const char * _Source,   size_t _Count);
#pragma warning(pop)



  int     __cdecl strncmp(   const char * _Str1,    const char * _Str2,   size_t _MaxCount);

  int     __cdecl _strnicmp(   const char * _Str1,    const char * _Str2,   size_t _MaxCount);
  int     __cdecl _strnicmp_l(   const char * _Str1,    const char * _Str2,   size_t _MaxCount,    _locale_t _Locale);

  errno_t __cdecl strncpy_s(    char * _Dst,   rsize_t _SizeInBytes,    const char * _Src,   rsize_t _MaxCount);

extern "C++" { template <size_t _Size> inline errno_t __cdecl strncpy_s(char (&_Dest)[_Size],    const char * _Source,   size_t _Count) throw() { return strncpy_s(_Dest, _Size, _Source, _Count); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "strncpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl strncpy(   char *_Dest,    const char * _Source,   size_t _Count);
  errno_t __cdecl _strnset_s(    char * _Str,   size_t _SizeInBytes,   int _Val,   size_t _MaxCount);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strnset_s(    char (&_Dest)[_Size],   int _Val,   size_t _Count) throw() { return _strnset_s(_Dest, _Size, _Val, _Count); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strnset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl _strnset(    char *_Dest,   int _Val,   size_t _Count);
  const char *  __cdecl strpbrk(   const char * _Str,    const char * _Control);
  const char *  __cdecl strrchr(   const char * _Str,   int _Ch);
 char *  __cdecl _strrev(    char * _Str);
  size_t  __cdecl strspn(   const char * _Str,    const char * _Control);
  const char *  __cdecl strstr(   const char * _Str,    const char * _SubStr);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "strtok_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char *  __cdecl strtok(    char * _Str,    const char * _Delim);

  char *  __cdecl strtok_s(    char * _Str,    const char * _Delim,        char ** _Context);

  errno_t __cdecl _strupr_s(    char * _Str,   size_t _Size);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strupr_s(    char (&_String)[_Size]) throw() { return _strupr_s(_String, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strupr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl _strupr(  char *_String);
  errno_t __cdecl _strupr_s_l(    char * _Str,   size_t _Size, _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strupr_s_l(    char (&_String)[_Size], _locale_t _Locale) throw() { return _strupr_s_l(_String, _Size, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strupr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl _strupr_l(    char *_String,    _locale_t _Locale);
  size_t  __cdecl strxfrm (   char * _Dst,    const char * _Src,   size_t _MaxCount);
  size_t  __cdecl _strxfrm_l(   char * _Dst,    const char * _Src,   size_t _MaxCount,    _locale_t _Locale);


extern "C++" {


 inline char * __cdecl strchr(   char * _Str,   int _Ch)
	{ return (char*)strchr((const char*)_Str, _Ch); }
 inline char * __cdecl strpbrk(   char * _Str,    const char * _Control)
	{ return (char*)strpbrk((const char*)_Str, _Control); }
 inline char * __cdecl strrchr(   char * _Str,   int _Ch)
	{ return (char*)strrchr((const char*)_Str, _Ch); }
 inline char * __cdecl strstr(   char * _Str,    const char * _SubStr)
	{ return (char*)strstr((const char*)_Str, _SubStr); }



 inline void * __cdecl memchr(   void * _Pv,   int _C,   size_t _N)
	{ return (void*)memchr((const void*)_Pv, _C, _N); }

}









 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strdup" ". See online help for details."))  char * __cdecl strdup(   const char * _Src);






 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strcmpi" ". See online help for details."))  int __cdecl strcmpi(   const char * _Str1,    const char * _Str2);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_stricmp" ". See online help for details."))  int __cdecl stricmp(   const char * _Str1,    const char * _Str2);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strlwr" ". See online help for details."))  char * __cdecl strlwr(    char * _Str);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strnicmp" ". See online help for details."))  int __cdecl strnicmp(   const char * _Str1,    const char * _Str,   size_t _MaxCount);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strnset" ". See online help for details."))  char * __cdecl strnset(    char * _Str,   int _Val,   size_t _MaxCount);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strrev" ". See online help for details."))  char * __cdecl strrev(    char * _Str);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strset" ". See online help for details."))         char * __cdecl strset(    char * _Str,   int _Val);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strupr" ". See online help for details."))  char * __cdecl strupr(    char * _Str);













  wchar_t * __cdecl _wcsdup(   const wchar_t * _Str);






  errno_t __cdecl wcscat_s(    wchar_t * _Dst,   rsize_t _SizeInWords,    const wchar_t * _Src);

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcscat_s(    wchar_t (&_Dest)[_Size],    const wchar_t * _Source) throw() { return wcscat_s(_Dest, _Size, _Source); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcscat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl wcscat(  wchar_t *_Dest,  const wchar_t * _Source);
  const wchar_t * __cdecl wcschr(   const wchar_t * _Str, wchar_t _Ch);
  int __cdecl wcscmp(   const wchar_t * _Str1,    const wchar_t * _Str2);

  errno_t __cdecl wcscpy_s(    wchar_t * _Dst,   rsize_t _SizeInWords,    const wchar_t * _Src);

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcscpy_s(wchar_t (&_Dest)[_Size],    const wchar_t * _Source) throw() { return wcscpy_s(_Dest, _Size, _Source); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcscpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl wcscpy(  wchar_t *_Dest,  const wchar_t * _Source);
  size_t __cdecl wcscspn(   const wchar_t * _Str,    const wchar_t * _Control);
  size_t __cdecl wcslen(   const wchar_t * _Str);
  size_t __cdecl wcsnlen(   const wchar_t * _Src,   size_t _MaxCount);

 static __inline size_t __cdecl wcsnlen_s(   const wchar_t * _Src,   size_t _MaxCount)
{
    return (_Src == 0) ? 0 : wcsnlen(_Src, _MaxCount);
}


  errno_t __cdecl wcsncat_s(    wchar_t * _Dst,   rsize_t _SizeInWords,    const wchar_t * _Src,   rsize_t _MaxCount);

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcsncat_s(    wchar_t (&_Dest)[_Size],    const wchar_t * _Source,   size_t _Count) throw() { return wcsncat_s(_Dest, _Size, _Source, _Count); } }
#pragma warning(push)
#pragma warning(disable:6059)
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcsncat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl wcsncat(    wchar_t *_Dest,    const wchar_t * _Source,   size_t _Count);
#pragma warning(pop)
  int __cdecl wcsncmp(   const wchar_t * _Str1,    const wchar_t * _Str2,   size_t _MaxCount);

  errno_t __cdecl wcsncpy_s(    wchar_t * _Dst,   rsize_t _SizeInWords,    const wchar_t * _Src,   rsize_t _MaxCount);

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcsncpy_s(wchar_t (&_Dest)[_Size],    const wchar_t * _Source,   size_t _Count) throw() { return wcsncpy_s(_Dest, _Size, _Source, _Count); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcsncpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl wcsncpy(   wchar_t *_Dest,    const wchar_t * _Source,   size_t _Count);
  const wchar_t * __cdecl wcspbrk(   const wchar_t * _Str,    const wchar_t * _Control);
  const wchar_t * __cdecl wcsrchr(   const wchar_t * _Str,   wchar_t _Ch);
  size_t __cdecl wcsspn(   const wchar_t * _Str,    const wchar_t * _Control);
  const wchar_t * __cdecl wcsstr(   const wchar_t * _Str,    const wchar_t * _SubStr);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "wcstok_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl wcstok(    wchar_t * _Str,    const wchar_t * _Delim);

  wchar_t * __cdecl wcstok_s(    wchar_t * _Str,    const wchar_t * _Delim,        wchar_t ** _Context);

 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcserror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wcserror(  int _ErrNum);
  errno_t __cdecl _wcserror_s(    wchar_t * _Buf,   size_t _SizeInWords,   int _ErrNum);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcserror_s(wchar_t (&_Buffer)[_Size],   int _Error) throw() { return _wcserror_s(_Buffer, _Size, _Error); } }
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "__wcserror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl __wcserror(   const wchar_t * _Str);
  errno_t __cdecl __wcserror_s(    wchar_t * _Buffer,   size_t _SizeInWords,    const wchar_t * _ErrMsg);
extern "C++" { template <size_t _Size> inline errno_t __cdecl __wcserror_s(wchar_t (&_Buffer)[_Size],    const wchar_t * _ErrorMessage) throw() { return __wcserror_s(_Buffer, _Size, _ErrorMessage); } }

  int __cdecl _wcsicmp(   const wchar_t * _Str1,    const wchar_t * _Str2);
  int __cdecl _wcsicmp_l(   const wchar_t * _Str1,    const wchar_t * _Str2,    _locale_t _Locale);
  int __cdecl _wcsnicmp(   const wchar_t * _Str1,    const wchar_t * _Str2,   size_t _MaxCount);
  int __cdecl _wcsnicmp_l(   const wchar_t * _Str1,    const wchar_t * _Str2,   size_t _MaxCount,    _locale_t _Locale);
  errno_t __cdecl _wcsnset_s(    wchar_t * _Dst,   size_t _SizeInWords,   wchar_t _Val,   size_t _MaxCount);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsnset_s(    wchar_t (&_Dst)[_Size], wchar_t _Val,   size_t _MaxCount) throw() { return _wcsnset_s(_Dst, _Size, _Val, _MaxCount); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsnset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wcsnset(    wchar_t *_Str, wchar_t _Val,   size_t _MaxCount);
 wchar_t * __cdecl _wcsrev(    wchar_t * _Str);
  errno_t __cdecl _wcsset_s(    wchar_t * _Dst,   size_t _SizeInWords,   wchar_t _Value);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsset_s(    wchar_t (&_Str)[_Size], wchar_t _Val) throw() { return _wcsset_s(_Str, _Size, _Val); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wcsset(    wchar_t *_Str, wchar_t _Val);

  errno_t __cdecl _wcslwr_s(    wchar_t * _Str,   size_t _SizeInWords);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcslwr_s(    wchar_t (&_String)[_Size]) throw() { return _wcslwr_s(_String, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcslwr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wcslwr(  wchar_t *_String);
  errno_t __cdecl _wcslwr_s_l(    wchar_t * _Str,   size_t _SizeInWords,    _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcslwr_s_l(    wchar_t (&_String)[_Size],    _locale_t _Locale) throw() { return _wcslwr_s_l(_String, _Size, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcslwr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wcslwr_l(    wchar_t *_String,    _locale_t _Locale);
  errno_t __cdecl _wcsupr_s(    wchar_t * _Str,   size_t _Size);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsupr_s(    wchar_t (&_String)[_Size]) throw() { return _wcsupr_s(_String, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsupr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wcsupr(  wchar_t *_String);
  errno_t __cdecl _wcsupr_s_l(    wchar_t * _Str,   size_t _Size,    _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsupr_s_l(    wchar_t (&_String)[_Size],    _locale_t _Locale) throw() { return _wcsupr_s_l(_String, _Size, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsupr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wcsupr_l(    wchar_t *_String,    _locale_t _Locale);
  size_t __cdecl wcsxfrm(   wchar_t * _Dst,    const wchar_t * _Src,   size_t _MaxCount);
  size_t __cdecl _wcsxfrm_l(   wchar_t * _Dst,    const wchar_t *_Src,   size_t _MaxCount,    _locale_t _Locale);
  int __cdecl wcscoll(   const wchar_t * _Str1,    const wchar_t * _Str2);
  int __cdecl _wcscoll_l(   const wchar_t * _Str1,    const wchar_t * _Str2,    _locale_t _Locale);
  int __cdecl _wcsicoll(   const wchar_t * _Str1,    const wchar_t * _Str2);
  int __cdecl _wcsicoll_l(   const wchar_t * _Str1,    const wchar_t *_Str2,    _locale_t _Locale);
  int __cdecl _wcsncoll(   const wchar_t * _Str1,    const wchar_t * _Str2,   size_t _MaxCount);
  int __cdecl _wcsncoll_l(   const wchar_t * _Str1,    const wchar_t * _Str2,   size_t _MaxCount,    _locale_t _Locale);
  int __cdecl _wcsnicoll(   const wchar_t * _Str1,    const wchar_t * _Str2,   size_t _MaxCount);
  int __cdecl _wcsnicoll_l(   const wchar_t * _Str1,    const wchar_t * _Str2,   size_t _MaxCount,    _locale_t _Locale);




extern "C++" {
 inline wchar_t * __cdecl wcschr(   wchar_t *_Str, wchar_t _Ch)
        {return ((wchar_t *)wcschr((const wchar_t *)_Str, _Ch)); }
 inline wchar_t * __cdecl wcspbrk(   wchar_t *_Str,    const wchar_t *_Control)
        {return ((wchar_t *)wcspbrk((const wchar_t *)_Str, _Control)); }
 inline wchar_t * __cdecl wcsrchr(   wchar_t *_Str,   wchar_t _Ch)
        {return ((wchar_t *)wcsrchr((const wchar_t *)_Str, _Ch)); }
 inline wchar_t * __cdecl wcsstr(   wchar_t *_Str,    const wchar_t *_SubStr)
        {return ((wchar_t *)wcsstr((const wchar_t *)_Str, _SubStr)); }
}










 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsdup" ". See online help for details."))  wchar_t * __cdecl wcsdup(   const wchar_t * _Str);









 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsicmp" ". See online help for details."))  int __cdecl wcsicmp(   const wchar_t * _Str1,    const wchar_t * _Str2);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsnicmp" ". See online help for details."))  int __cdecl wcsnicmp(   const wchar_t * _Str1,    const wchar_t * _Str2,   size_t _MaxCount);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsnset" ". See online help for details."))  wchar_t * __cdecl wcsnset(    wchar_t * _Str,   wchar_t _Val,   size_t _MaxCount);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsrev" ". See online help for details."))  wchar_t * __cdecl wcsrev(    wchar_t * _Str);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsset" ". See online help for details."))  wchar_t * __cdecl wcsset(    wchar_t * _Str, wchar_t _Val);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcslwr" ". See online help for details."))  wchar_t * __cdecl wcslwr(    wchar_t * _Str);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsupr" ". See online help for details."))  wchar_t * __cdecl wcsupr(    wchar_t * _Str);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsicoll" ". See online help for details."))  int __cdecl wcsicoll(   const wchar_t * _Str1,    const wchar_t * _Str2);








}





 



 





































 namespace std {





 


class  exception
    {   
public:
      exception();
     explicit  exception(const char * const &);
      exception(const char * const &, int);
      exception(const exception&);
     exception&  operator=(const exception&);
     virtual  ~exception();
     virtual const char *  what() const;

private:
     void  _Copy_str(const char *);
     void  _Tidy();

    const char * _Mywhat;
    bool _Mydofree;
    };

















































































using ::set_terminate; using ::terminate_handler; using ::terminate; using ::set_unexpected; using ::unexpected_handler; using ::unexpected;

typedef void (__cdecl *_Prhand)(const exception&);

 bool __cdecl uncaught_exception();

}

 













































































































namespace std {




		
class bad_exception : public exception
	{	
public:
	 bad_exception(const char *_Message = "bad exception")
		throw ()
		: exception(_Message)
		{	
		}

	virtual  ~bad_exception() throw ()
		{	
		}

 







	};

		
class bad_alloc : public exception
	{	
public:
	 bad_alloc(const char *_Message) throw ()
		: exception(_Message)
		{	
		}

	 bad_alloc() throw ()
		: exception("bad allocation", 1)
		{	
		}

	virtual  ~bad_alloc() throw ()
		{	
		}

 







	};


		
class bad_array_new_length
	: public bad_alloc
	{	
public:

	bad_array_new_length() throw ()
		: bad_alloc("bad array new length")
		{	
		}
	};



}











 void __cdecl __ExceptionPtrCreate(  void* );
 void __cdecl __ExceptionPtrDestroy(   void* );
 void __cdecl __ExceptionPtrCopy(  void*,   const void* );
 void __cdecl __ExceptionPtrAssign(   void*,   const void* );
 bool __cdecl __ExceptionPtrCompare(  const void*,   const void*);

 void __cdecl __ExceptionPtrCurrentException(  void*);
 void __cdecl __ExceptionPtrRethrow(  const void*);
 void __cdecl __ExceptionPtrCopyException(   void*,   const void*,   const void*);

namespace std {


typedef ::std:: nullptr_t _Null_type;




class _Exception_ptr
	{
public:
	_Exception_ptr()
		{
		__ExceptionPtrCreate(this);
		}
	_Exception_ptr(_Null_type)
		{
		__ExceptionPtrCreate(this);
		}
	~_Exception_ptr()
		{
		__ExceptionPtrDestroy(this);
		}
	_Exception_ptr(  const _Exception_ptr& _Rhs)
		{
		__ExceptionPtrCopy(this, const_cast<_Exception_ptr*>(&_Rhs));
		}
	_Exception_ptr& operator=(  const _Exception_ptr& _Rhs)
		{
		__ExceptionPtrAssign(this, const_cast<_Exception_ptr*>(&_Rhs));
		return *this;
		}
	_Exception_ptr& operator=(_Null_type)
		{
		_Exception_ptr _Ptr;
		__ExceptionPtrAssign(this, &_Ptr);
		return *this;
		}

	void _RethrowException() const
		{
		__ExceptionPtrRethrow(const_cast<_Exception_ptr*>(this));
		}

	static _Exception_ptr _Current_exception()
		{
		_Exception_ptr _Retval;
		__ExceptionPtrCurrentException(&_Retval);
		return _Retval;
		}
	static _Exception_ptr _Copy_exception(  void* _Except,   const void* _Ptr)
		{
		_Exception_ptr _Retval = 0;
		if (!_Ptr)
			{
			
			return _Retval;
			}
		__ExceptionPtrCopyException(&_Retval, _Except, _Ptr);
		return _Retval;
		}
private:
	void* _Data1;
	void* _Data2;
	};

inline bool operator==(  const _Exception_ptr& _Lhs,   const _Exception_ptr& _Rhs)
	{
	return __ExceptionPtrCompare(const_cast<_Exception_ptr*>(&_Lhs),const_cast<_Exception_ptr*>(&_Rhs));
	}

inline bool operator==(_Null_type,   const _Exception_ptr& _Rhs)
	{
	_Exception_ptr _Ptr;
	return __ExceptionPtrCompare(&_Ptr,const_cast<_Exception_ptr*>(&_Rhs));
	}

inline bool operator==(  const _Exception_ptr& _Lhs, _Null_type)
	{
	return operator==(0,_Lhs);
	}

typedef _Exception_ptr exception_ptr;

inline exception_ptr current_exception()
	{
	return _Exception_ptr::_Current_exception();
	}

inline void rethrow_exception(  exception_ptr _P)
	{
	_P._RethrowException();
	}

template <class _E> void *__GetExceptionInfo(_E);

template<class _E> exception_ptr copy_exception(_E _Except)
	{
	return _Exception_ptr::_Copy_exception(&_Except, __GetExceptionInfo(_Except));
	}

}







 #pragma warning(pop)
 #pragma pack(pop)










 #pragma pack(push,8)
 #pragma warning(push,3)
 

  










namespace std {

		
 




typedef void (__cdecl * new_handler) ();

 

 
struct nothrow_t
	{	
	};

extern const nothrow_t nothrow;	
 

		
 new_handler __cdecl set_new_handler(   new_handler)
	throw ();	
}

		
void __cdecl operator delete(void *) throw ();
#pragma warning (suppress: 4985)
 void *__cdecl operator new(size_t _Size) throw (...);

 
  
inline void *__cdecl operator new(size_t, void *_Where) throw ()
	{	
	return (_Where);
	}

inline void __cdecl operator delete(void *, void *) throw ()
	{	
	}
 

 
  
inline void *__cdecl operator new[](size_t, void *_Where) throw ()
	{	
	return (_Where);
	}

inline void __cdecl operator delete[](void *, void *) throw ()
	{	
	}
 

void __cdecl operator delete[](void *) throw ();	

 void *__cdecl operator new[](size_t _Size)
	throw (...);	

 
  
 void *__cdecl operator new(size_t _Size, const ::std:: nothrow_t&)
	throw ();

 void *__cdecl operator new[](size_t _Size, const ::std:: nothrow_t&)
	throw ();	

void __cdecl operator delete(void *, const ::std:: nothrow_t&)
	throw ();	

void __cdecl operator delete[](void *, const ::std:: nothrow_t&)
	throw ();	
 


 
using ::std:: new_handler;
 

 
 #pragma warning(pop)
 #pragma pack(pop)











#pragma once





#pragma once















#pragma once






#pragma once





#pragma once










 














#pragma once



















 














































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#pragma pack(push,8)


extern "C" {


























struct _iobuf {
        char *_ptr;
        int   _cnt;
        char *_base;
        int   _flag;
        int   _file;
        int   _charbuf;
        int   _bufsiz;
        char *_tmpfname;
        };
typedef struct _iobuf FILE;






























































 FILE * __cdecl __iob_func(void);















typedef __int64 fpos_t;








































  int __cdecl _filbuf(   FILE * _File );
  int __cdecl _flsbuf(  int _Ch,    FILE * _File);




  FILE * __cdecl _fsopen(   const char * _Filename,    const char * _Mode,   int _ShFlag);


 void __cdecl clearerr(   FILE * _File);

  errno_t __cdecl clearerr_s(   FILE * _File );

  int __cdecl fclose(   FILE * _File);
  int __cdecl _fcloseall(void);




  FILE * __cdecl _fdopen(  int _FileHandle,    const char * _Mode);


  int __cdecl feof(  FILE * _File);
  int __cdecl ferror(  FILE * _File);
  int __cdecl fflush(   FILE * _File);
  int __cdecl fgetc(   FILE * _File);
  int __cdecl _fgetchar(void);
  int __cdecl fgetpos(   FILE * _File ,   fpos_t * _Pos);
  char * __cdecl fgets(    char * _Buf,   int _MaxCount,    FILE * _File);




  int __cdecl _fileno(  FILE * _File);







  char * __cdecl _tempnam(   const char * _DirName,    const char * _FilePrefix);





  int __cdecl _flushall(void);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "fopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  FILE * __cdecl fopen(   const char * _Filename,    const char * _Mode);

  errno_t __cdecl fopen_s(     FILE ** _File,    const char * _Filename,    const char * _Mode);

  int __cdecl fprintf(   FILE * _File,     const char * _Format, ...);

  int __cdecl fprintf_s(   FILE * _File,     const char * _Format, ...);

  int __cdecl fputc(  int _Ch,    FILE * _File);
  int __cdecl _fputchar(  int _Ch);
  int __cdecl fputs(   const char * _Str,    FILE * _File);
  size_t __cdecl fread(  void * _DstBuf,   size_t _ElementSize,   size_t _Count,    FILE * _File);

  size_t __cdecl fread_s(  void * _DstBuf,   size_t _DstSize,   size_t _ElementSize,   size_t _Count,    FILE * _File);

 __declspec(deprecated("This function or variable may be unsafe. Consider using " "freopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  FILE * __cdecl freopen(   const char * _Filename,    const char * _Mode,    FILE * _File);

  errno_t __cdecl freopen_s(     FILE ** _File,    const char * _Filename,    const char * _Mode,    FILE * _OldFile);

 __declspec(deprecated("This function or variable may be unsafe. Consider using " "fscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl fscanf(   FILE * _File,     const char * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _fscanf_l(   FILE * _File,     const char * _Format,    _locale_t _Locale, ...);
#pragma warning(push)
#pragma warning(disable:6530)

  int __cdecl fscanf_s(   FILE * _File,     const char * _Format, ...);

  int __cdecl _fscanf_s_l(   FILE * _File,     const char * _Format,    _locale_t _Locale, ...);
#pragma warning(pop)
  int __cdecl fsetpos(   FILE * _File,   const fpos_t * _Pos);
  int __cdecl fseek(   FILE * _File,   long _Offset,   int _Origin);
  long __cdecl ftell(   FILE * _File);

  int __cdecl _fseeki64(   FILE * _File,   __int64 _Offset,   int _Origin);
  __int64 __cdecl _ftelli64(   FILE * _File);

  size_t __cdecl fwrite(   const void * _Str,   size_t _Size,   size_t _Count,    FILE * _File);
  int __cdecl getc(   FILE * _File);
  int __cdecl getchar(void);
  int __cdecl _getmaxstdio(void);

 char * __cdecl gets_s(    char * _Buf,   rsize_t _Size);

extern "C++" { template <size_t _Size> inline char * __cdecl gets_s(char (&_Buffer)[_Size]) throw() { return gets_s(_Buffer, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "gets_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl gets(  char *_Buffer);
 int __cdecl _getw(   FILE * _File);




  int __cdecl _pclose(   FILE * _File);
  FILE * __cdecl _popen(   const char * _Command,    const char * _Mode);
  int __cdecl printf(    const char * _Format, ...);

  int __cdecl printf_s(    const char * _Format, ...);

  int __cdecl putc(  int _Ch,    FILE * _File);
  int __cdecl putchar(  int _Ch);
  int __cdecl puts(   const char * _Str);
  int __cdecl _putw(  int _Word,    FILE * _File);


 int __cdecl remove(   const char * _Filename);
  int __cdecl rename(   const char * _OldFilename,    const char * _NewFilename);
 int __cdecl _unlink(   const char * _Filename);

__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_unlink" ". See online help for details."))  int __cdecl unlink(   const char * _Filename);


 void __cdecl rewind(   FILE * _File);
  int __cdecl _rmtmp(void);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "scanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl scanf(    const char * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_scanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _scanf_l(    const char * _Format,    _locale_t _Locale, ...);
#pragma warning(push)
#pragma warning(disable:6530)

  int __cdecl scanf_s(    const char * _Format, ...);

  int __cdecl _scanf_s_l(    const char * _Format,    _locale_t _Locale, ...);
#pragma warning(pop)
__declspec(deprecated("This function or variable may be unsafe. Consider using " "setvbuf" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  void __cdecl setbuf(   FILE * _File,      char * _Buffer);
  int __cdecl _setmaxstdio(  int _Max);
  unsigned int __cdecl _set_output_format(  unsigned int _Format);
  unsigned int __cdecl _get_output_format(void);
  int __cdecl setvbuf(   FILE * _File,     char * _Buf,   int _Mode,   size_t _Size);
  int __cdecl _snprintf_s(    char * _DstBuf,   size_t _SizeInBytes,   size_t _MaxCount,     const char * _Format, ...);
extern "C++" { __pragma(warning(push)); __pragma(warning(disable: 4793)); template <size_t _Size> inline int __cdecl _snprintf_s(  char (&_Dest)[_Size],   size_t _MaxCount,     const char * _Format, ...) throw() { va_list _ArgList; ( _ArgList = (va_list)( &reinterpret_cast<const char &>(_Format) ) + ( (sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1) ) ); return _vsnprintf_s(_Dest, _Size, _MaxCount, _Format, _ArgList); } __pragma(warning(pop)); }

  int __cdecl sprintf_s(    char * _DstBuf,   size_t _SizeInBytes,     const char * _Format, ...);

extern "C++" { __pragma(warning(push)); __pragma(warning(disable: 4793)); template <size_t _Size> inline int __cdecl sprintf_s(  char (&_Dest)[_Size],     const char * _Format, ...) throw() { va_list _ArgList; ( _ArgList = (va_list)( &reinterpret_cast<const char &>(_Format) ) + ( (sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1) ) ); return vsprintf_s(_Dest, _Size, _Format, _ArgList); } __pragma(warning(pop)); }
  int __cdecl _scprintf(    const char * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "sscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl sscanf(   const char * _Src,     const char * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_sscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _sscanf_l(   const char * _Src,     const char * _Format,    _locale_t _Locale, ...);
#pragma warning(push)
#pragma warning(disable:6530)

  int __cdecl sscanf_s(   const char * _Src,     const char * _Format, ...);

  int __cdecl _sscanf_s_l(   const char * _Src,     const char * _Format,    _locale_t _Locale, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _snscanf(     const char * _Src,   size_t _MaxCount,     const char * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _snscanf_l(     const char * _Src,   size_t _MaxCount,     const char * _Format,    _locale_t _Locale, ...);
  int __cdecl _snscanf_s(     const char * _Src,   size_t _MaxCount,     const char * _Format, ...);
  int __cdecl _snscanf_s_l(     const char * _Src,   size_t _MaxCount,     const char * _Format,    _locale_t _Locale, ...);
#pragma warning(pop)
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "tmpfile_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  FILE * __cdecl tmpfile(void);

  errno_t __cdecl tmpfile_s(    FILE ** _File);
  errno_t __cdecl tmpnam_s(    char * _Buf,   rsize_t _Size);

extern "C++" { template <size_t _Size> inline errno_t __cdecl tmpnam_s(  char (&_Buf)[_Size]) throw() { return tmpnam_s(_Buf, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "tmpnam_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl tmpnam(  char *_Buffer);
  int __cdecl ungetc(  int _Ch,    FILE * _File);
  int __cdecl vfprintf(   FILE * _File,     const char * _Format, va_list _ArgList);

  int __cdecl vfprintf_s(   FILE * _File,     const char * _Format, va_list _ArgList);

  int __cdecl vprintf(    const char * _Format, va_list _ArgList);

  int __cdecl vprintf_s(    const char * _Format, va_list _ArgList);

 __declspec(deprecated("This function or variable may be unsafe. Consider using " "vsnprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl vsnprintf(  char * _DstBuf,   size_t _MaxCount,     const char * _Format, va_list _ArgList);

  int __cdecl vsnprintf_s(    char * _DstBuf,   size_t _DstSize,   size_t _MaxCount,     const char * _Format, va_list _ArgList);
extern "C++" { template <size_t _Size> inline int __cdecl vsnprintf_s(  char (&_Dest)[_Size],   size_t _MaxCount,     const char * _Format, va_list _Args) throw() { return vsnprintf_s(_Dest, _Size, _MaxCount, _Format, _Args); } }

  int __cdecl _vsnprintf_s(    char * _DstBuf,   size_t _SizeInBytes,   size_t _MaxCount,     const char * _Format, va_list _ArgList);
extern "C++" { template <size_t _Size> inline int __cdecl _vsnprintf_s(  char (&_Dest)[_Size],   size_t _MaxCount,     const char * _Format, va_list _Args) throw() { return _vsnprintf_s(_Dest, _Size, _MaxCount, _Format, _Args); } }
#pragma warning(push)
#pragma warning(disable:4793)
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_snprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _snprintf(   char *_Dest,   size_t _Count,     const char * _Format, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsnprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _vsnprintf(   char *_Dest,   size_t _Count,     const char * _Format, va_list _Args);
#pragma warning(pop)

 int __cdecl vsprintf_s(    char * _DstBuf,   size_t _SizeInBytes,     const char * _Format, va_list _ArgList);
extern "C++" { template <size_t _Size> inline int __cdecl vsprintf_s(  char (&_Dest)[_Size],     const char * _Format, va_list _Args) throw() { return vsprintf_s(_Dest, _Size, _Format, _Args); } }

#pragma warning(push)
#pragma warning(disable:4793)
__declspec(deprecated("This function or variable may be unsafe. Consider using " "sprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl sprintf(  char *_Dest,  const char * _Format, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "vsprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl vsprintf(  char *_Dest,  const char * _Format, va_list _Args);
#pragma warning(pop)
  int __cdecl _vscprintf(    const char * _Format, va_list _ArgList);
  int __cdecl _snprintf_c(  char * _DstBuf,   size_t _MaxCount,     const char * _Format, ...);
  int __cdecl _vsnprintf_c(  char *_DstBuf,   size_t _MaxCount,     const char * _Format, va_list _ArgList);

  int __cdecl _fprintf_p(   FILE * _File,     const char * _Format, ...);
  int __cdecl _printf_p(    const char * _Format, ...);
  int __cdecl _sprintf_p(    char * _Dst,   size_t _MaxCount,     const char * _Format, ...);
  int __cdecl _vfprintf_p(   FILE * _File,     const char * _Format, va_list _ArgList);
  int __cdecl _vprintf_p(    const char * _Format, va_list _ArgList);
  int __cdecl _vsprintf_p(    char * _Dst,   size_t _MaxCount,     const char * _Format, va_list _ArgList);
  int __cdecl _scprintf_p(    const char * _Format, ...);
  int __cdecl _vscprintf_p(    const char * _Format, va_list _ArgList);
 int __cdecl _set_printf_count_output(  int _Value);
 int __cdecl _get_printf_count_output(void);

  int __cdecl _printf_l(    const char * _Format,    _locale_t _Locale, ...);
  int __cdecl _printf_p_l(    const char * _Format,    _locale_t _Locale, ...);
  int __cdecl _printf_s_l(    const char * _Format,    _locale_t _Locale, ...);
  int __cdecl _vprintf_l(    const char * _Format,    _locale_t _Locale, va_list _ArgList);
  int __cdecl _vprintf_p_l(    const char * _Format,    _locale_t _Locale, va_list _ArgList);
  int __cdecl _vprintf_s_l(    const char * _Format,    _locale_t _Locale, va_list _ArgList);

  int __cdecl _fprintf_l(   FILE * _File,     const char * _Format,    _locale_t _Locale, ...);
  int __cdecl _fprintf_p_l(   FILE * _File,     const char * _Format,    _locale_t _Locale, ...);
  int __cdecl _fprintf_s_l(   FILE * _File,     const char * _Format,    _locale_t _Locale, ...);
  int __cdecl _vfprintf_l(   FILE * _File,    const char * _Format,    _locale_t _Locale, va_list _ArgList);
  int __cdecl _vfprintf_p_l(   FILE * _File,    const char * _Format,    _locale_t _Locale, va_list _ArgList);
  int __cdecl _vfprintf_s_l(   FILE * _File,    const char * _Format,    _locale_t _Locale, va_list _ArgList);

 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_sprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _sprintf_l(   char * _DstBuf,     const char * _Format,    _locale_t _Locale, ...);
  int __cdecl _sprintf_p_l(    char * _DstBuf,   size_t _MaxCount,     const char * _Format,    _locale_t _Locale, ...);
  int __cdecl _sprintf_s_l(    char * _DstBuf,   size_t _DstSize,     const char * _Format,    _locale_t _Locale, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _vsprintf_l(   char * _DstBuf,    const char * _Format,    _locale_t, va_list _ArgList);
  int __cdecl _vsprintf_p_l(    char * _DstBuf,   size_t _MaxCount,     const char* _Format,    _locale_t _Locale,  va_list _ArgList);
  int __cdecl _vsprintf_s_l(    char * _DstBuf,   size_t _DstSize,     const char * _Format,    _locale_t _Locale, va_list _ArgList);

  int __cdecl _scprintf_l(    const char * _Format,    _locale_t _Locale, ...);
  int __cdecl _scprintf_p_l(    const char * _Format,    _locale_t _Locale, ...);
  int __cdecl _vscprintf_l(    const char * _Format,    _locale_t _Locale, va_list _ArgList);
  int __cdecl _vscprintf_p_l(    const char * _Format,    _locale_t _Locale, va_list _ArgList);

 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _snprintf_l(  char * _DstBuf,   size_t _MaxCount,     const char * _Format,    _locale_t _Locale, ...);
  int __cdecl _snprintf_c_l(  char * _DstBuf,   size_t _MaxCount,     const char * _Format,    _locale_t _Locale, ...);
  int __cdecl _snprintf_s_l(    char * _DstBuf,   size_t _DstSize,   size_t _MaxCount,     const char * _Format,    _locale_t _Locale, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsnprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _vsnprintf_l(  char * _DstBuf,   size_t _MaxCount,     const char * _Format,    _locale_t _Locale, va_list _ArgList);
  int __cdecl _vsnprintf_c_l(  char * _DstBuf,   size_t _MaxCount, const char *,    _locale_t _Locale, va_list _ArgList);
  int __cdecl _vsnprintf_s_l(    char * _DstBuf,   size_t _DstSize,   size_t _MaxCount,     const char* _Format,   _locale_t _Locale, va_list _ArgList);












  FILE * __cdecl _wfsopen(   const wchar_t * _Filename,    const wchar_t * _Mode,   int _ShFlag);


  wint_t __cdecl fgetwc(   FILE * _File);
  wint_t __cdecl _fgetwchar(void);
  wint_t __cdecl fputwc(  wchar_t _Ch,    FILE * _File);
  wint_t __cdecl _fputwchar(  wchar_t _Ch);
  wint_t __cdecl getwc(   FILE * _File);
  wint_t __cdecl getwchar(void);
  wint_t __cdecl putwc(  wchar_t _Ch,    FILE * _File);
  wint_t __cdecl putwchar(  wchar_t _Ch);
  wint_t __cdecl ungetwc(  wint_t _Ch,    FILE * _File);

  wchar_t * __cdecl fgetws(    wchar_t * _Dst,   int _SizeInWords,    FILE * _File);
  int __cdecl fputws(   const wchar_t * _Str,    FILE * _File);
  wchar_t * __cdecl _getws_s(    wchar_t * _Str,   size_t _SizeInWords);
extern "C++" { template <size_t _Size> inline wchar_t * __cdecl _getws_s(  wchar_t (&_String)[_Size]) throw() { return _getws_s(_String, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_getws_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _getws(  wchar_t *_String);
  int __cdecl _putws(   const wchar_t * _Str);

  int __cdecl fwprintf(   FILE * _File,     const wchar_t * _Format, ...);

  int __cdecl fwprintf_s(   FILE * _File,     const wchar_t * _Format, ...);

  int __cdecl wprintf(    const wchar_t * _Format, ...);

  int __cdecl wprintf_s(    const wchar_t * _Format, ...);

  int __cdecl _scwprintf(    const wchar_t * _Format, ...);
  int __cdecl vfwprintf(   FILE * _File,     const wchar_t * _Format, va_list _ArgList);

  int __cdecl vfwprintf_s(   FILE * _File,     const wchar_t * _Format, va_list _ArgList);

  int __cdecl vwprintf(    const wchar_t * _Format, va_list _ArgList);

  int __cdecl vwprintf_s(    const wchar_t * _Format, va_list _ArgList);



 int __cdecl swprintf_s(    wchar_t * _Dst,   size_t _SizeInWords,     const wchar_t * _Format, ...);

extern "C++" { __pragma(warning(push)); __pragma(warning(disable: 4793)); template <size_t _Size> inline int __cdecl swprintf_s(  wchar_t (&_Dest)[_Size],     const wchar_t * _Format, ...) throw() { va_list _ArgList; ( _ArgList = (va_list)( &reinterpret_cast<const char &>(_Format) ) + ( (sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1) ) ); return vswprintf_s(_Dest, _Size, _Format, _ArgList); } __pragma(warning(pop)); }

 int __cdecl vswprintf_s(    wchar_t * _Dst,   size_t _SizeInWords,     const wchar_t * _Format, va_list _ArgList);

extern "C++" { template <size_t _Size> inline int __cdecl vswprintf_s(  wchar_t (&_Dest)[_Size],     const wchar_t * _Format, va_list _Args) throw() { return vswprintf_s(_Dest, _Size, _Format, _Args); } }

  int __cdecl _swprintf_c(    wchar_t * _DstBuf,   size_t _SizeInWords,     const wchar_t * _Format, ...);
  int __cdecl _vswprintf_c(    wchar_t * _DstBuf,   size_t _SizeInWords,     const wchar_t * _Format, va_list _ArgList);

  int __cdecl _snwprintf_s(    wchar_t * _DstBuf,   size_t _SizeInWords,   size_t _MaxCount,     const wchar_t * _Format, ...);
extern "C++" { __pragma(warning(push)); __pragma(warning(disable: 4793)); template <size_t _Size> inline int __cdecl _snwprintf_s(  wchar_t (&_Dest)[_Size],   size_t _Count,     const wchar_t * _Format, ...) throw() { va_list _ArgList; ( _ArgList = (va_list)( &reinterpret_cast<const char &>(_Format) ) + ( (sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1) ) ); return _vsnwprintf_s(_Dest, _Size, _Count, _Format, _ArgList); } __pragma(warning(pop)); }
  int __cdecl _vsnwprintf_s(    wchar_t * _DstBuf,   size_t _SizeInWords,   size_t _MaxCount,     const wchar_t * _Format, va_list _ArgList);
extern "C++" { template <size_t _Size> inline int __cdecl _vsnwprintf_s(  wchar_t (&_Dest)[_Size],   size_t _Count,     const wchar_t * _Format, va_list _Args) throw() { return _vsnwprintf_s(_Dest, _Size, _Count, _Format, _Args); } }
#pragma warning(push)
#pragma warning(disable:4793)
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_snwprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _snwprintf(   wchar_t *_Dest,   size_t _Count,     const wchar_t * _Format, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsnwprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _vsnwprintf(   wchar_t *_Dest,   size_t _Count,     const wchar_t * _Format, va_list _Args);
#pragma warning(pop)

  int __cdecl _fwprintf_p(   FILE * _File,     const wchar_t * _Format, ...);
  int __cdecl _wprintf_p(    const wchar_t * _Format, ...);
  int __cdecl _vfwprintf_p(   FILE * _File,     const wchar_t * _Format, va_list _ArgList);
  int __cdecl _vwprintf_p(    const wchar_t * _Format, va_list _ArgList);
  int __cdecl _swprintf_p(    wchar_t * _DstBuf,   size_t _MaxCount,     const wchar_t * _Format, ...);
  int __cdecl _vswprintf_p(    wchar_t * _DstBuf,   size_t _MaxCount,     const wchar_t * _Format, va_list _ArgList);
  int __cdecl _scwprintf_p(    const wchar_t * _Format, ...);
  int __cdecl _vscwprintf_p(    const wchar_t * _Format, va_list _ArgList);

  int __cdecl _wprintf_l(    const wchar_t * _Format,    _locale_t _Locale, ...);
  int __cdecl _wprintf_p_l(    const wchar_t * _Format,    _locale_t _Locale, ...);
  int __cdecl _wprintf_s_l(    const wchar_t * _Format,    _locale_t _Locale, ...);
  int __cdecl _vwprintf_l(    const wchar_t * _Format,    _locale_t _Locale, va_list _ArgList);
  int __cdecl _vwprintf_p_l(    const wchar_t * _Format,    _locale_t _Locale, va_list _ArgList);
  int __cdecl _vwprintf_s_l(    const wchar_t * _Format,    _locale_t _Locale, va_list _ArgList);

  int __cdecl _fwprintf_l(   FILE * _File,     const wchar_t * _Format,    _locale_t _Locale, ...);
  int __cdecl _fwprintf_p_l(   FILE * _File,     const wchar_t * _Format,    _locale_t _Locale, ...);
  int __cdecl _fwprintf_s_l(   FILE * _File,     const wchar_t * _Format,    _locale_t _Locale, ...);
  int __cdecl _vfwprintf_l(   FILE * _File,     const wchar_t * _Format,    _locale_t _Locale, va_list _ArgList);
  int __cdecl _vfwprintf_p_l(   FILE * _File,     const wchar_t * _Format,    _locale_t _Locale, va_list _ArgList);
  int __cdecl _vfwprintf_s_l(   FILE * _File,     const wchar_t * _Format,    _locale_t _Locale, va_list _ArgList);

  int __cdecl _swprintf_c_l(    wchar_t * _DstBuf,   size_t _MaxCount,     const wchar_t * _Format,    _locale_t _Locale, ...);
  int __cdecl _swprintf_p_l(    wchar_t * _DstBuf,   size_t _MaxCount,     const wchar_t * _Format,    _locale_t _Locale, ...);
  int __cdecl _swprintf_s_l(    wchar_t * _DstBuf,   size_t _DstSize,     const wchar_t * _Format,    _locale_t _Locale, ...);
  int __cdecl _vswprintf_c_l(    wchar_t * _DstBuf,   size_t _MaxCount,     const wchar_t * _Format,    _locale_t _Locale, va_list _ArgList);
  int __cdecl _vswprintf_p_l(    wchar_t * _DstBuf,   size_t _MaxCount,     const wchar_t * _Format,    _locale_t _Locale, va_list _ArgList);
  int __cdecl _vswprintf_s_l(    wchar_t * _DstBuf,   size_t _DstSize,     const wchar_t * _Format,    _locale_t _Locale, va_list _ArgList);

  int __cdecl _scwprintf_l(    const wchar_t * _Format,    _locale_t _Locale, ...);
  int __cdecl _scwprintf_p_l(    const wchar_t * _Format,    _locale_t _Locale, ...);
  int __cdecl _vscwprintf_p_l(    const wchar_t * _Format,    _locale_t _Locale, va_list _ArgList);

 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snwprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _snwprintf_l(  wchar_t * _DstBuf,   size_t _MaxCount,     const wchar_t * _Format,    _locale_t _Locale, ...);
  int __cdecl _snwprintf_s_l(    wchar_t * _DstBuf,   size_t _DstSize,   size_t _MaxCount,     const wchar_t * _Format,    _locale_t _Locale, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsnwprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _vsnwprintf_l(  wchar_t * _DstBuf,   size_t _MaxCount,     const wchar_t * _Format,    _locale_t _Locale, va_list _ArgList);
  int __cdecl _vsnwprintf_s_l(    wchar_t * _DstBuf,   size_t _DstSize,   size_t _MaxCount,     const wchar_t * _Format,    _locale_t _Locale, va_list _ArgList);













#pragma warning(push)
#pragma warning(disable:4141 4996 4793)
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_swprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS."))  int __cdecl _swprintf(   wchar_t *_Dest,     const wchar_t * _Format, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "vswprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS."))  int __cdecl _vswprintf(   wchar_t *_Dest,     const wchar_t * _Format, va_list _Args);
__declspec(deprecated("This function or variable may be unsafe. Consider using " "__swprintf_l_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS."))  int __cdecl __swprintf_l( wchar_t *_Dest,     const wchar_t * _Format, _locale_t _Plocinfo, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vswprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS."))  int __cdecl __vswprintf_l( wchar_t *_Dest,     const wchar_t * _Format, _locale_t _Plocinfo, va_list _Args);
#pragma warning(pop)















#pragma once




















#pragma warning( push )
#pragma warning( disable : 4793 4412 )
static __inline int swprintf(wchar_t * _String, size_t _Count, const wchar_t * _Format, ...)
{
    va_list _Arglist;
    int _Ret;
    ( _Arglist = (va_list)( &reinterpret_cast<const char &>(_Format) ) + ( (sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1) ) );
    _Ret = _vswprintf_c_l(_String, _Count, _Format, 0, _Arglist);
    ( _Arglist = (va_list)0 );
    return _Ret;
}
#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4412 )
static __inline int __cdecl vswprintf(wchar_t * _String, size_t _Count, const wchar_t * _Format, va_list _Ap)
{
    return _vswprintf_c_l(_String, _Count, _Format, 0, _Ap);
}
#pragma warning( pop )




#pragma warning( push )
#pragma warning( disable : 4793 4412 )
static __inline int _swprintf_l(wchar_t * _String, size_t _Count, const wchar_t * _Format, _locale_t _Plocinfo, ...)
{
    va_list _Arglist;
    int _Ret;
    ( _Arglist = (va_list)( &reinterpret_cast<const char &>(_Plocinfo) ) + ( (sizeof(_Plocinfo) + sizeof(int) - 1) & ~(sizeof(int) - 1) ) );
    _Ret = _vswprintf_c_l(_String, _Count, _Format, _Plocinfo, _Arglist);
    ( _Arglist = (va_list)0 );
    return _Ret;
}
#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4412 )
static __inline int __cdecl _vswprintf_l(wchar_t * _String, size_t _Count, const wchar_t * _Format, _locale_t _Plocinfo, va_list _Ap)
{
    return _vswprintf_c_l(_String, _Count, _Format, _Plocinfo, _Ap);
}
#pragma warning( pop )


#pragma warning( push )
#pragma warning( disable : 4996 )

#pragma warning( push )
#pragma warning( disable : 4793 4141 )
extern "C++" __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "swprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline int swprintf(   wchar_t * _String,     const wchar_t * _Format, ...)
{
    va_list _Arglist;
    ( _Arglist = (va_list)( &reinterpret_cast<const char &>(_Format) ) + ( (sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1) ) );
    int _Ret = _vswprintf(_String, _Format, _Arglist);
    ( _Arglist = (va_list)0 );
    return _Ret;
}
#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4141 )
extern "C++" __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "vswprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline int __cdecl vswprintf(   wchar_t * _String,     const wchar_t * _Format, va_list _Ap)
{
    return _vswprintf(_String, _Format, _Ap);
}
#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4793 4141 )
extern "C++" __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_swprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline int _swprintf_l(   wchar_t * _String,     const wchar_t * _Format, _locale_t _Plocinfo, ...)
{
    va_list _Arglist;
    ( _Arglist = (va_list)( &reinterpret_cast<const char &>(_Plocinfo) ) + ( (sizeof(_Plocinfo) + sizeof(int) - 1) & ~(sizeof(int) - 1) ) );
    int _Ret = __vswprintf_l(_String, _Format, _Plocinfo, _Arglist);
    ( _Arglist = (va_list)0 );
    return _Ret;
}
#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4141 )
extern "C++" __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vswprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline int __cdecl _vswprintf_l(   wchar_t * _String,     const wchar_t * _Format, _locale_t _Plocinfo, va_list _Ap)
{
    return __vswprintf_l(_String, _Format, _Plocinfo, _Ap);
}
#pragma warning( pop )

#pragma warning( pop )























  wchar_t * __cdecl _wtempnam(   const wchar_t * _Directory,    const wchar_t * _FilePrefix);





  int __cdecl _vscwprintf(    const wchar_t * _Format, va_list _ArgList);
  int __cdecl _vscwprintf_l(    const wchar_t * _Format,    _locale_t _Locale, va_list _ArgList);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "fwscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl fwscanf(   FILE * _File,     const wchar_t * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fwscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _fwscanf_l(   FILE * _File,     const wchar_t * _Format,    _locale_t _Locale, ...);
#pragma warning(push)
#pragma warning(disable:6530)

  int __cdecl fwscanf_s(   FILE * _File,     const wchar_t * _Format, ...);

  int __cdecl _fwscanf_s_l(   FILE * _File,     const wchar_t * _Format,    _locale_t _Locale, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "swscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl swscanf(   const wchar_t * _Src,     const wchar_t * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_swscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _swscanf_l(   const wchar_t * _Src,     const wchar_t * _Format,    _locale_t _Locale, ...);

  int __cdecl swscanf_s(   const wchar_t *_Src,     const wchar_t * _Format, ...);

  int __cdecl _swscanf_s_l(   const wchar_t * _Src,     const wchar_t * _Format,    _locale_t _Locale, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snwscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _snwscanf(     const wchar_t * _Src,   size_t _MaxCount,     const wchar_t * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snwscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _snwscanf_l(     const wchar_t * _Src,   size_t _MaxCount,     const wchar_t * _Format,    _locale_t _Locale, ...);
  int __cdecl _snwscanf_s(     const wchar_t * _Src,   size_t _MaxCount,     const wchar_t * _Format, ...);
  int __cdecl _snwscanf_s_l(     const wchar_t * _Src,   size_t _MaxCount,     const wchar_t * _Format,    _locale_t _Locale, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "wscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl wscanf(    const wchar_t * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _wscanf_l(    const wchar_t * _Format,    _locale_t _Locale, ...);

  int __cdecl wscanf_s(    const wchar_t * _Format, ...);

  int __cdecl _wscanf_s_l(    const wchar_t * _Format,    _locale_t _Locale, ...);
#pragma warning(pop)

  FILE * __cdecl _wfdopen(  int _FileHandle ,    const wchar_t * _Mode);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wfopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  FILE * __cdecl _wfopen(   const wchar_t * _Filename,    const wchar_t * _Mode);
  errno_t __cdecl _wfopen_s(     FILE ** _File,    const wchar_t * _Filename,    const wchar_t * _Mode);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wfreopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  FILE * __cdecl _wfreopen(   const wchar_t * _Filename,    const wchar_t * _Mode,    FILE * _OldFile);
  errno_t __cdecl _wfreopen_s(     FILE ** _File,    const wchar_t * _Filename,    const wchar_t * _Mode,    FILE * _OldFile);





  FILE * __cdecl _wpopen(   const wchar_t *_Command,    const wchar_t * _Mode);
 int __cdecl _wremove(   const wchar_t * _Filename);
  errno_t __cdecl _wtmpnam_s(    wchar_t * _DstBuf,   size_t _SizeInWords);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wtmpnam_s(  wchar_t (&_Buffer)[_Size]) throw() { return _wtmpnam_s(_Buffer, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wtmpnam_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wtmpnam(  wchar_t *_Buffer);

  wint_t __cdecl _fgetwc_nolock(   FILE * _File);
  wint_t __cdecl _fputwc_nolock(  wchar_t _Ch,    FILE * _File);
  wint_t __cdecl _ungetwc_nolock(  wint_t _Ch,    FILE * _File);







inline wint_t __cdecl getwchar()
        {return (fgetwc((&__iob_func()[0]))); }   
inline wint_t __cdecl putwchar(wchar_t _C)
        {return (fputwc(_C, (&__iob_func()[1]))); }       













































 void __cdecl _lock_file(   FILE * _File);
 void __cdecl _unlock_file(   FILE * _File);

  int __cdecl _fclose_nolock(   FILE * _File);
  int __cdecl _fflush_nolock(   FILE * _File);
  size_t __cdecl _fread_nolock(  void * _DstBuf,   size_t _ElementSize,   size_t _Count,    FILE * _File);
  size_t __cdecl _fread_nolock_s(  void * _DstBuf,   size_t _DstSize,   size_t _ElementSize,   size_t _Count,    FILE * _File);
  int __cdecl _fseek_nolock(   FILE * _File,   long _Offset,   int _Origin);
  long __cdecl _ftell_nolock(   FILE * _File);
  int __cdecl _fseeki64_nolock(   FILE * _File,   __int64 _Offset,   int _Origin);
  __int64 __cdecl _ftelli64_nolock(   FILE * _File);
  size_t __cdecl _fwrite_nolock(   const void * _DstBuf,   size_t _Size,   size_t _Count,    FILE * _File);
  int __cdecl _ungetc_nolock(  int _Ch,    FILE * _File);


























__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_tempnam" ". See online help for details."))  char * __cdecl tempnam(   const char * _Directory,    const char * _FilePrefix);





 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_fcloseall" ". See online help for details."))  int __cdecl fcloseall(void);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_fdopen" ". See online help for details."))  FILE * __cdecl fdopen(  int _FileHandle,    const char * _Format);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_fgetchar" ". See online help for details."))  int __cdecl fgetchar(void);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_fileno" ". See online help for details."))  int __cdecl fileno(  FILE * _File);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_flushall" ". See online help for details."))  int __cdecl flushall(void);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_fputchar" ". See online help for details."))  int __cdecl fputchar(  int _Ch);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_getw" ". See online help for details."))  int __cdecl getw(   FILE * _File);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_putw" ". See online help for details."))  int __cdecl putw(  int _Ch,    FILE * _File);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_rmtmp" ". See online help for details."))  int __cdecl rmtmp(void);




}


#pragma pack(pop)







 
 
 
 
 
 
 

 
 
 
 





typedef FILE _iobuf;

 
namespace std {
using :: _iobuf;

using :: size_t; using :: fpos_t; using :: FILE;
using :: clearerr; using :: fclose; using :: feof;
using :: ferror; using :: fflush; using :: fgetc;
using :: fgetpos; using :: fgets; using :: fopen;
using :: fprintf; using :: fputc; using :: fputs;
using :: fread; using :: freopen; using :: fscanf;
using :: fseek; using :: fsetpos; using :: ftell;
using :: fwrite; using :: getc; using :: getchar;
using :: gets; using :: perror;
using :: putc; using :: putchar;
using :: printf; using :: puts; using :: remove;
using :: rename; using :: rewind; using :: scanf;
using :: setbuf; using :: setvbuf; using :: sprintf;
using :: sscanf; using :: tmpfile; using :: tmpnam;
using :: ungetc; using :: vfprintf; using :: vprintf;
using :: vsprintf;
}
 










#pragma once










 


 
namespace std {
using :: size_t; using :: memchr; using :: memcmp;

using :: memcpy; using :: memmove; using :: memset;
using :: strcat; using :: strchr; using :: strcmp;
using :: strcoll; using :: strcpy; using :: strcspn;
using :: strerror; using :: strlen; using :: strncat;
using :: strncmp; using :: strncpy; using :: strpbrk;
using :: strrchr; using :: strspn; using :: strstr;
using :: strtok; using :: strxfrm;
}
 










#pragma once










 

















#pragma once



















 










































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#pragma pack(push,8)


extern "C" {






















































typedef unsigned long _fsize_t; 





struct _wfinddata32_t {
        unsigned    attrib;
        __time32_t  time_create;    
        __time32_t  time_access;    
        __time32_t  time_write;
        _fsize_t    size;
        wchar_t     name[260];
};

struct _wfinddata32i64_t {
        unsigned    attrib;
        __time32_t  time_create;    
        __time32_t  time_access;    
        __time32_t  time_write;
        __int64     size;
        wchar_t     name[260];
};

struct _wfinddata64i32_t {
        unsigned    attrib;
        __time64_t  time_create;    
        __time64_t  time_access;    
        __time64_t  time_write;
        _fsize_t    size;
        wchar_t     name[260];
};

struct _wfinddata64_t {
        unsigned    attrib;
        __time64_t  time_create;    
        __time64_t  time_access;    
        __time64_t  time_write;
        __int64     size;
        wchar_t     name[260];
};


























































 const unsigned short * __cdecl __pctype_func(void);

 extern const unsigned short *_pctype;










 extern const unsigned short _wctype[];


 const wctype_t * __cdecl __pwctype_func(void);

 extern const wctype_t *_pwctype;












                                
















  int __cdecl iswalpha(  wint_t _C);
  int __cdecl _iswalpha_l(  wint_t _C,    _locale_t _Locale);
  int __cdecl iswupper(  wint_t _C);
  int __cdecl _iswupper_l(  wint_t _C,    _locale_t _Locale);
  int __cdecl iswlower(  wint_t _C);
  int __cdecl _iswlower_l(  wint_t _C,    _locale_t _Locale);
  int __cdecl iswdigit(  wint_t _C);
  int __cdecl _iswdigit_l(  wint_t _C,    _locale_t _Locale);
  int __cdecl iswxdigit(  wint_t _C);
  int __cdecl _iswxdigit_l(  wint_t _C,    _locale_t _Locale);
  int __cdecl iswspace(  wint_t _C);
  int __cdecl _iswspace_l(  wint_t _C,    _locale_t _Locale);
  int __cdecl iswpunct(  wint_t _C);
  int __cdecl _iswpunct_l(  wint_t _C,    _locale_t _Locale);
  int __cdecl iswalnum(  wint_t _C);
  int __cdecl _iswalnum_l(  wint_t _C,    _locale_t _Locale);
  int __cdecl iswprint(  wint_t _C);
  int __cdecl _iswprint_l(  wint_t _C,    _locale_t _Locale);
  int __cdecl iswgraph(  wint_t _C);
  int __cdecl _iswgraph_l(  wint_t _C,    _locale_t _Locale);
  int __cdecl iswcntrl(  wint_t _C);
  int __cdecl _iswcntrl_l(  wint_t _C,    _locale_t _Locale);
  int __cdecl iswascii(  wint_t _C);
  int __cdecl isleadbyte(  int _C);
  int __cdecl _isleadbyte_l(  int _C,    _locale_t _Locale);

  wint_t __cdecl towupper(  wint_t _C);
  wint_t __cdecl _towupper_l(  wint_t _C,    _locale_t _Locale);
  wint_t __cdecl towlower(  wint_t _C);
  wint_t __cdecl _towlower_l(  wint_t _C,    _locale_t _Locale); 
  int __cdecl iswctype(  wint_t _C,   wctype_t _Type);
  int __cdecl _iswctype_l(  wint_t _C,   wctype_t _Type,    _locale_t _Locale);

  int __cdecl __iswcsymf(  wint_t _C);
  int __cdecl _iswcsymf_l(  wint_t _C,    _locale_t _Locale);
  int __cdecl __iswcsym(  wint_t _C);
  int __cdecl _iswcsym_l(  wint_t _C,    _locale_t _Locale);

__declspec(deprecated("This function or variable has been superceded by newer library or operating system functionality. Consider using " "iswctype" " instead. See online help for details."))  int __cdecl is_wctype(  wint_t _C,   wctype_t _Type);

















    wchar_t * __cdecl _wgetcwd(  wchar_t * _DstBuf,   int _SizeInWords);
    wchar_t * __cdecl _wgetdcwd(  int _Drive,   wchar_t * _DstBuf,   int _SizeInWords);
   wchar_t * __cdecl _wgetdcwd_nolock(  int _Drive,   wchar_t * _DstBuf,   int _SizeInWords);







  int __cdecl _wchdir(   const wchar_t * _Path);
  int __cdecl _wmkdir(   const wchar_t * _Path);
  int __cdecl _wrmdir(   const wchar_t * _Path);






  int __cdecl _waccess(   const wchar_t * _Filename,   int _AccessMode);
  errno_t __cdecl _waccess_s(   const wchar_t * _Filename,   int _AccessMode);
  int __cdecl _wchmod(   const wchar_t * _Filename,   int _Mode);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wsopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _wcreat(   const wchar_t * _Filename,   int _PermissionMode);
  intptr_t __cdecl _wfindfirst32(   const wchar_t * _Filename,   struct _wfinddata32_t * _FindData);
  int __cdecl _wfindnext32(  intptr_t _FindHandle,   struct _wfinddata32_t * _FindData);
 int __cdecl _wunlink(   const wchar_t * _Filename);
  int __cdecl _wrename(   const wchar_t * _OldFilename,    const wchar_t * _NewFilename);
 errno_t __cdecl _wmktemp_s(    wchar_t * _TemplateName,   size_t _SizeInWords);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wmktemp_s(wchar_t (&_TemplateName)[_Size]) throw() { return _wmktemp_s(_TemplateName, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wmktemp_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wmktemp(  wchar_t *_TemplateName);

  intptr_t __cdecl _wfindfirst32i64(   const wchar_t * _Filename,   struct _wfinddata32i64_t * _FindData);
  intptr_t __cdecl _wfindfirst64i32(   const wchar_t * _Filename,   struct _wfinddata64i32_t * _FindData);
  intptr_t __cdecl _wfindfirst64(   const wchar_t * _Filename,   struct _wfinddata64_t * _FindData);
  int __cdecl _wfindnext32i64(  intptr_t _FindHandle,   struct _wfinddata32i64_t * _FindData);
  int __cdecl _wfindnext64i32(  intptr_t _FindHandle,   struct _wfinddata64i32_t * _FindData);
  int __cdecl _wfindnext64(  intptr_t _FindHandle,   struct _wfinddata64_t * _FindData);

  errno_t __cdecl _wsopen_s(  int * _FileHandle,    const wchar_t * _Filename,   int _OpenFlag,   int _ShareFlag,   int _PermissionFlag);









extern "C++" __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wsopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _wopen(   const wchar_t * _Filename,   int _OpenFlag,   int _PermissionMode = 0);
extern "C++" __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wsopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _wsopen(   const wchar_t * _Filename,   int _OpenFlag,   int _ShareFlag, int _PermissionMode = 0);










  wchar_t * __cdecl _wsetlocale(  int _Category,    const wchar_t * _Locale);








 intptr_t __cdecl _wexecl(   const wchar_t * _Filename,    const wchar_t * _ArgList, ...);
 intptr_t __cdecl _wexecle(   const wchar_t * _Filename,    const wchar_t * _ArgList, ...);
 intptr_t __cdecl _wexeclp(   const wchar_t * _Filename,    const wchar_t * _ArgList, ...);
 intptr_t __cdecl _wexeclpe(   const wchar_t * _Filename,    const wchar_t * _ArgList, ...);
 intptr_t __cdecl _wexecv(   const wchar_t * _Filename,    const wchar_t * const * _ArgList);
 intptr_t __cdecl _wexecve(   const wchar_t * _Filename,    const wchar_t * const * _ArgList,
           const wchar_t * const * _Env);
 intptr_t __cdecl _wexecvp(   const wchar_t * _Filename,    const wchar_t * const * _ArgList);
 intptr_t __cdecl _wexecvpe(   const wchar_t * _Filename,    const wchar_t * const * _ArgList, 
           const wchar_t * const * _Env);
 intptr_t __cdecl _wspawnl(  int _Mode,    const wchar_t * _Filename,    const wchar_t * _ArgList, ...);
 intptr_t __cdecl _wspawnle(  int _Mode,    const wchar_t * _Filename,    const wchar_t * _ArgList, ...);
 intptr_t __cdecl _wspawnlp(  int _Mode,    const wchar_t * _Filename,    const wchar_t * _ArgList, ...);
 intptr_t __cdecl _wspawnlpe(  int _Mode,    const wchar_t * _Filename,    const wchar_t * _ArgList, ...);
 intptr_t __cdecl _wspawnv(  int _Mode,    const wchar_t * _Filename,    const wchar_t * const * _ArgList);
 intptr_t __cdecl _wspawnve(  int _Mode,    const wchar_t * _Filename,    const wchar_t * const * _ArgList,
           const wchar_t * const * _Env);
 intptr_t __cdecl _wspawnvp(  int _Mode,    const wchar_t * _Filename,    const wchar_t * const * _ArgList);
 intptr_t __cdecl _wspawnvpe(  int _Mode,    const wchar_t * _Filename,    const wchar_t * const * _ArgList,
           const wchar_t * const * _Env);














































































typedef unsigned short _ino_t;      


typedef unsigned short ino_t;





typedef unsigned int _dev_t;        


typedef unsigned int dev_t;





typedef long _off_t;                


typedef long off_t;






struct _stat32 {
        _dev_t     st_dev;
        _ino_t     st_ino;
        unsigned short st_mode;
        short      st_nlink;
        short      st_uid;
        short      st_gid;
        _dev_t     st_rdev;
        _off_t     st_size;
        __time32_t st_atime;
        __time32_t st_mtime;
        __time32_t st_ctime;
        };



struct stat {
        _dev_t     st_dev;
        _ino_t     st_ino;
        unsigned short st_mode;
        short      st_nlink;
        short      st_uid;
        short      st_gid;
        _dev_t     st_rdev;
        _off_t     st_size;
        time_t st_atime;
        time_t st_mtime;
        time_t st_ctime;
        };



struct _stat32i64 {
        _dev_t     st_dev;
        _ino_t     st_ino;
        unsigned short st_mode;
        short      st_nlink;
        short      st_uid;
        short      st_gid;
        _dev_t     st_rdev;
        __int64    st_size;
        __time32_t st_atime;
        __time32_t st_mtime;
        __time32_t st_ctime;
        };

struct _stat64i32 {
        _dev_t     st_dev;
        _ino_t     st_ino;
        unsigned short st_mode;
        short      st_nlink;
        short      st_uid;
        short      st_gid;
        _dev_t     st_rdev;
        _off_t     st_size;
        __time64_t st_atime;
        __time64_t st_mtime;
        __time64_t st_ctime;
        };

struct _stat64 {
        _dev_t     st_dev;
        _ino_t     st_ino;
        unsigned short st_mode;
        short      st_nlink;
        short      st_uid;
        short      st_gid;
        _dev_t     st_rdev;
        __int64    st_size;
        __time64_t st_atime;
        __time64_t st_mtime;
        __time64_t st_ctime;
        };

































 int __cdecl _wstat32(   const wchar_t * _Name,   struct _stat32 * _Stat);

 int __cdecl _wstat32i64(   const wchar_t * _Name,   struct _stat32i64 * _Stat);
 int __cdecl _wstat64i32(   const wchar_t * _Name,   struct _stat64i32 * _Stat);
 int __cdecl _wstat64(   const wchar_t * _Name,   struct _stat64 * _Stat);















  errno_t __cdecl _cgetws_s(    wchar_t * _Buffer, size_t _SizeInWords,   size_t * _SizeRead);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _cgetws_s(  wchar_t (&_Buffer)[_Size], size_t * _SizeRead) throw() { return _cgetws_s(_Buffer, _Size, _SizeRead); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_cgetws_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _cgetws(    wchar_t *_Buffer);
  wint_t __cdecl _getwch(void);
  wint_t __cdecl _getwche(void);
  wint_t __cdecl _putwch(wchar_t _WCh);
  wint_t __cdecl _ungetwch(wint_t _WCh);
  int __cdecl _cputws(   const wchar_t * _String);
  int __cdecl _cwprintf(    const wchar_t * _Format, ...);
  int __cdecl _cwprintf_s(    const wchar_t * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_cwscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _cwscanf(    const wchar_t * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_cwscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  int __cdecl _cwscanf_l(    const wchar_t * _Format,    _locale_t _Locale, ...);
  int __cdecl _cwscanf_s(    const wchar_t * _Format, ...);
  int __cdecl _cwscanf_s_l(    const wchar_t * _Format,    _locale_t _Locale, ...);
  int __cdecl _vcwprintf(    const wchar_t *_Format, va_list _ArgList);
  int __cdecl _vcwprintf_s(    const wchar_t *_Format, va_list _ArgList);

  int __cdecl _cwprintf_p(    const wchar_t * _Format, ...);
  int __cdecl _vcwprintf_p(    const wchar_t*  _Format, va_list _ArgList);

 int __cdecl _cwprintf_l(    const wchar_t * _Format,    _locale_t _Locale, ...);
 int __cdecl _cwprintf_s_l(    const wchar_t * _Format,    _locale_t _Locale, ...);
 int __cdecl _vcwprintf_l(    const wchar_t *_Format,    _locale_t _Locale, va_list _ArgList);
 int __cdecl _vcwprintf_s_l(    const wchar_t * _Format,    _locale_t _Locale, va_list _ArgList);
 int __cdecl _cwprintf_p_l(    const wchar_t * _Format,    _locale_t _Locale, ...);
 int __cdecl _vcwprintf_p_l(    const wchar_t * _Format,    _locale_t _Locale, va_list _ArgList);

 wint_t __cdecl _putwch_nolock(wchar_t _WCh);
 wint_t __cdecl _getwch_nolock(void);
 wint_t __cdecl _getwche_nolock(void);
 wint_t __cdecl _ungetwch_nolock(wint_t _WCh);
























































































































































































































































































































































































































































































struct tm {
        int tm_sec;     
        int tm_min;     
        int tm_hour;    
        int tm_mday;    
        int tm_mon;     
        int tm_year;    
        int tm_wday;    
        int tm_yday;    
        int tm_isdst;   
        };






 
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wasctime_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wasctime(  const struct tm * _Tm);
 errno_t __cdecl _wasctime_s(    wchar_t *_Buf,   size_t _SizeInWords,   const struct tm * _Tm);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wasctime_s(  wchar_t (&_Buffer)[_Size],   const struct tm * _Time) throw() { return _wasctime_s(_Buffer, _Size, _Time); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wctime32_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wctime32(  const __time32_t *_Time);
 errno_t __cdecl _wctime32_s(    wchar_t* _Buf,   size_t _SizeInWords,   const __time32_t * _Time);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wctime32_s(  wchar_t (&_Buffer)[_Size],   const __time32_t * _Time) throw() { return _wctime32_s(_Buffer, _Size, _Time); } }

 size_t __cdecl wcsftime(    wchar_t * _Buf,   size_t _SizeInWords,     const wchar_t * _Format,    const struct tm * _Tm);
 size_t __cdecl _wcsftime_l(    wchar_t * _Buf,   size_t _SizeInWords,     const wchar_t *_Format,   const struct tm *_Tm,    _locale_t _Locale);

 errno_t __cdecl _wstrdate_s(    wchar_t * _Buf,   size_t _SizeInWords);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wstrdate_s(  wchar_t (&_Buffer)[_Size]) throw() { return _wstrdate_s(_Buffer, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wstrdate_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wstrdate(  wchar_t *_Buffer);

 errno_t __cdecl _wstrtime_s(    wchar_t * _Buf,   size_t _SizeInWords);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wstrtime_s(  wchar_t (&_Buffer)[_Size]) throw() { return _wstrtime_s(_Buffer, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wstrtime_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wstrtime(  wchar_t *_Buffer);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wctime64_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wctime64(  const __time64_t * _Time);
 errno_t __cdecl _wctime64_s(    wchar_t* _Buf,   size_t _SizeInWords,   const __time64_t *_Time);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wctime64_s(  wchar_t (&_Buffer)[_Size],   const __time64_t * _Time) throw() { return _wctime64_s(_Buffer, _Size, _Time); } }















#pragma once













#pragma warning(push)
#pragma warning(disable:4996)















static __inline wchar_t * __cdecl _wctime(const time_t * _Time)
{
#pragma warning( push )
#pragma warning( disable : 4996 )
    return _wctime64(_Time);
#pragma warning( pop )
}

static __inline errno_t __cdecl _wctime_s(wchar_t *_Buffer, size_t _SizeInWords, const time_t * _Time)
{
    return _wctime64_s(_Buffer, _SizeInWords, _Time);
}


#pragma warning(pop)










typedef int mbstate_t;
typedef wchar_t _Wint_t;

 wint_t __cdecl btowc(int);
 size_t __cdecl mbrlen(     const char * _Ch,   size_t _SizeInBytes,
                                mbstate_t * _State);
 size_t __cdecl mbrtowc(   wchar_t * _DstCh,      const char * _SrcCh,
                                 size_t _SizeInBytes,   mbstate_t * _State);
 errno_t __cdecl mbsrtowcs_s(  size_t* _Retval,     wchar_t * _Dst,   size_t _Size,        const char ** _PSrc,   size_t _N,   mbstate_t * _State);
extern "C++" { template <size_t _Size> inline errno_t __cdecl mbsrtowcs_s(  size_t * _Retval,   wchar_t (&_Dest)[_Size],        const char ** _PSource,   size_t _Count,   mbstate_t * _State) throw() { return mbsrtowcs_s(_Retval, _Dest, _Size, _PSource, _Count, _State); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "mbsrtowcs_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  size_t __cdecl mbsrtowcs(  wchar_t *_Dest,  const char ** _PSrc,  size_t _Count,  mbstate_t * _State);

 errno_t __cdecl wcrtomb_s(  size_t * _Retval,     char * _Dst,
          size_t _SizeInBytes,   wchar_t _Ch,   mbstate_t * _State);
extern "C++" { template <size_t _Size> inline errno_t __cdecl wcrtomb_s(  size_t * _Retval,     char (&_Dest)[_Size],   wchar_t _Source,   mbstate_t * _State) throw() { return wcrtomb_s(_Retval, _Dest, _Size, _Source, _State); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcrtomb_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  size_t __cdecl wcrtomb(  char *_Dest,  wchar_t _Source,  mbstate_t * _State);
 errno_t __cdecl wcsrtombs_s(  size_t * _Retval,     char * _Dst,
          size_t _SizeInBytes,        const wchar_t ** _Src,   size_t _Size,   mbstate_t * _State);
extern "C++" { template <size_t _Size> inline errno_t __cdecl wcsrtombs_s(  size_t * _Retval,     char (&_Dest)[_Size],        const wchar_t ** _PSrc,   size_t _Count,   mbstate_t * _State) throw() { return wcsrtombs_s(_Retval, _Dest, _Size, _PSrc, _Count, _State); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcsrtombs_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  size_t __cdecl wcsrtombs(  char *_Dest,  const wchar_t ** _PSource,  size_t _Count,  mbstate_t * _State);
 int __cdecl wctob(  wint_t _WCh);







  void *  __cdecl memmove(    void * _Dst,    const void * _Src,   size_t _Size);

 void *  __cdecl memcpy(    void * _Dst,    const void * _Src,   size_t _Size);

 errno_t __cdecl memcpy_s(    void * _Dst,   rsize_t _DstSize,    const void * _Src,   rsize_t _MaxCount);
 errno_t __cdecl memmove_s(    void * _Dst,   rsize_t _DstSize,    const void * _Src,   rsize_t _MaxCount);

__inline int __cdecl fwide(   FILE * _F, int _M)
        {(void)_F; return (_M); }
__inline int __cdecl mbsinit(   const mbstate_t *_P)
        {return (_P == 0 || *_P == 0); }
__inline const wchar_t * __cdecl wmemchr(   const wchar_t *_S,   wchar_t _C,   size_t _N)
        {for (; 0 < _N; ++_S, --_N)
                if (*_S == _C)
                        return (const wchar_t *)(_S);
        return (0); }
__inline int __cdecl wmemcmp(   const wchar_t *_S1,    const wchar_t *_S2,   size_t _N)
        {for (; 0 < _N; ++_S1, ++_S2, --_N)
                if (*_S1 != *_S2)
                        return (*_S1 < *_S2 ? -1 : +1);
        return (0); }

__inline  wchar_t * __cdecl wmemcpy(  wchar_t *_S1,    const wchar_t *_S2,   size_t _N)
        {
#pragma warning( push )
#pragma warning( disable : 4996 6386 )
            return (wchar_t *)memcpy(_S1, _S2, _N*sizeof(wchar_t));
#pragma warning( pop )
        }

__inline  wchar_t * __cdecl wmemmove(    wchar_t *_S1,    const wchar_t *_S2,   size_t _N)
        {
#pragma warning( push )
#pragma warning( disable : 4996 6386 )
#pragma warning( disable : 6387)
			
            return (wchar_t *)memmove(_S1, _S2, _N*sizeof(wchar_t));
#pragma warning( pop )
        }


errno_t __cdecl wmemcpy_s(    wchar_t *_S1,   rsize_t _N1,    const wchar_t *_S2, rsize_t _N);
errno_t __cdecl wmemmove_s(    wchar_t *_S1,   rsize_t _N1,    const wchar_t *_S2,   rsize_t _N);


__inline wchar_t * __cdecl wmemset(    wchar_t *_S,   wchar_t _C,   size_t _N)
        {
            wchar_t *_Su = _S;
            for (; 0 < _N; ++_Su, --_N)
            {
                *_Su = _C;
            }
            return (_S);
        }


extern "C++" {
inline wchar_t * __cdecl wmemchr(   wchar_t *_S,   wchar_t _C,   size_t _N)
        { return (wchar_t *)wmemchr((const wchar_t *)_S, _C, _N); }
}




}       


#pragma pack(pop)






typedef mbstate_t _Mbstatet;

 
namespace std {
using :: _Mbstatet;

using :: mbstate_t; using :: size_t;
using :: tm; using :: wint_t;

using :: btowc; using :: fgetwc; using :: fgetws; using :: fputwc;
using :: fputws; using :: fwide; using :: fwprintf;
using :: fwscanf; using :: getwc; using :: getwchar;
using :: mbrlen; using :: mbrtowc; using :: mbsrtowcs;
using :: mbsinit; using :: putwc; using :: putwchar;
using :: swprintf; using :: swscanf; using :: ungetwc;
using :: vfwprintf; using :: vswprintf; using :: vwprintf;
using :: wcrtomb; using :: wprintf; using :: wscanf;
using :: wcsrtombs; using :: wcstol; using :: wcscat;
using :: wcschr; using :: wcscmp; using :: wcscoll;
using :: wcscpy; using :: wcscspn; using :: wcslen;
using :: wcsncat; using :: wcsncmp; using :: wcsncpy;
using :: wcspbrk; using :: wcsrchr; using :: wcsspn;

using :: wcstod; using :: wcstoul; using :: wcsstr;

using :: wcstok; using :: wcsxfrm; using :: wctob;
using :: wmemchr; using :: wmemcmp; using :: wmemcpy;
using :: wmemmove; using :: wmemset; using :: wcsftime;
}
 






















#pragma once
















 













































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#pragma pack(push,8)












extern "C" {


 





typedef void *_HFILE; 


























typedef int (__cdecl * _CRT_REPORT_HOOK)(int, char *, int *);
typedef int (__cdecl * _CRT_REPORT_HOOKW)(int, wchar_t *, int *);













 





 










typedef int (__cdecl * _CRT_ALLOC_HOOK)(int, void *, size_t, int, long, const unsigned char *, int);







 





































 














typedef void (__cdecl * _CRT_DUMP_CLIENT)(void *, size_t);







struct _CrtMemBlockHeader;
typedef struct _CrtMemState
{
        struct _CrtMemBlockHeader * pBlockHeader;
        size_t lCounts[5];
        size_t lSizes[5];
        size_t lHighWaterCount;
        size_t lTotalCount;
} _CrtMemState;


 


























































































































































 
























 






 extern long _crtAssertBusy;



 _CRT_REPORT_HOOK __cdecl _CrtGetReportHook(
    void
    );







 _CRT_REPORT_HOOK __cdecl _CrtSetReportHook(
       _CRT_REPORT_HOOK _PFnNewHook
        );

 int __cdecl _CrtSetReportHook2(
          int _Mode,
           _CRT_REPORT_HOOK _PFnNewHook
        );

 int __cdecl _CrtSetReportHookW2(
          int _Mode,
           _CRT_REPORT_HOOKW _PFnNewHook
        );




















 int __cdecl _CrtSetReportMode(
          int _ReportType,
          int _ReportMode 
        );

 _HFILE __cdecl _CrtSetReportFile(
          int _ReportType,
           _HFILE _ReportFile 
        );

 int __cdecl _CrtDbgReport(
          int _ReportType,
           const char * _Filename,
          int _Linenumber,
           const char * _ModuleName,
           const char * _Format,
        ...);

 size_t __cdecl _CrtSetDebugFillThreshold(
          size_t _NewDebugFillThreshold
        );




 int __cdecl _CrtDbgReportW(
          int _ReportType,
           const wchar_t * _Filename,
          int _LineNumber,
           const wchar_t * _ModuleName,
           const wchar_t * _Format,
        ...);




















































































































 





















































 extern long _crtBreakAlloc;      


 long __cdecl _CrtSetBreakAlloc(
          long _BreakAlloc 
        );





   void * __cdecl _malloc_dbg(
          size_t _Size,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
        );

   void * __cdecl _calloc_dbg(
          size_t _Count,
          size_t _Size,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
        );


   void * __cdecl _realloc_dbg(
         void * _Memory,
          size_t _NewSize,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
        );


   void * __cdecl _recalloc_dbg
(
         void * _Memory,
          size_t _NumOfElements,
          size_t _SizeOfElements,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
);

   void * __cdecl _expand_dbg(
         void * _Memory,
          size_t _NewSize,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
        );

 void __cdecl _free_dbg(
         void * _Memory,
          int _BlockType
        );

 size_t __cdecl _msize_dbg (
         void * _Memory,
          int _BlockType
        );

 size_t __cdecl _aligned_msize_dbg (
         void * _Memory,
          size_t _Alignment,
          size_t _Offset
        );

   void * __cdecl _aligned_malloc_dbg(
          size_t _Size,
          size_t _Alignment,
           const char * _Filename,
          int _LineNumber
        );


   void * __cdecl _aligned_realloc_dbg(
         void * _Memory,
          size_t _NewSize,
          size_t _Alignment,
           const char * _Filename,
          int _LineNumber
        );


   void * __cdecl _aligned_recalloc_dbg
(
         void * _Memory,
          size_t _NumOfElements,
          size_t _SizeOfElements,
          size_t _Alignment,
           const char * _Filename,
          int _LineNumber
);

   void * __cdecl _aligned_offset_malloc_dbg(
          size_t _Size,
          size_t _Alignment,
          size_t _Offset,
           const char * _Filename,
          int _LineNumber
        );


   void * __cdecl _aligned_offset_realloc_dbg(
         void * _Memory,
          size_t _NewSize,
          size_t _Alignment,
          size_t _Offset,
           const char * _Filename,
          int _LineNumber
        );


   void * __cdecl _aligned_offset_recalloc_dbg
(
         void * _Memory,
          size_t _NumOfElements,
          size_t _SizeOfElements,
          size_t _Alignment,
          size_t _Offset,
           const char * _Filename,
          int _LineNumber
);

 void __cdecl _aligned_free_dbg(
         void * _Memory
        );

    char * __cdecl _strdup_dbg(
           const char * _Str,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
        );

    wchar_t * __cdecl _wcsdup_dbg(
           const wchar_t * _Str,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
        );

    char * __cdecl _tempnam_dbg(
           const char * _DirName,
           const char * _FilePrefix,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
        );

    wchar_t * __cdecl _wtempnam_dbg(
           const wchar_t * _DirName,
           const wchar_t * _FilePrefix,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
        );

    char * __cdecl _fullpath_dbg(
            char * _FullPath, 
           const char * _Path, 
          size_t _SizeInBytes,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
        );

    wchar_t * __cdecl _wfullpath_dbg(
            wchar_t * _FullPath, 
           const wchar_t * _Path, 
          size_t _SizeInWords,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
        );

    char * __cdecl _getcwd_dbg(
            char * _DstBuf,
          int _SizeInBytes,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
        );

    wchar_t * __cdecl _wgetcwd_dbg(
            wchar_t * _DstBuf,
          int _SizeInWords,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
        );

    char * __cdecl _getdcwd_dbg(
          int _Drive,
            char * _DstBuf,
          int _SizeInBytes,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
        );

    wchar_t * __cdecl _wgetdcwd_dbg(
          int _Drive,
            wchar_t * _DstBuf,
          int _SizeInWords,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
        );

   char * __cdecl _getdcwd_lk_dbg(
          int _Drive,
            char * _DstBuf,
          int _SizeInBytes,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
        );

   wchar_t * __cdecl _wgetdcwd_lk_dbg(
          int _Drive,
            wchar_t * _DstBuf,
          int _SizeInWords,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
        );

  errno_t __cdecl _dupenv_s_dbg(
            char ** _PBuffer,
          size_t * _PBufferSizeInBytes,
           const char * _VarName,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
        );

  errno_t __cdecl _wdupenv_s_dbg(
            wchar_t ** _PBuffer,
          size_t * _PBufferSizeInWords,
           const wchar_t * _VarName,
          int _BlockType,
           const char * _Filename,
          int _LineNumber
        );











 





 _CRT_ALLOC_HOOK __cdecl _CrtGetAllocHook
(
    void
);







 _CRT_ALLOC_HOOK __cdecl _CrtSetAllocHook
(
       _CRT_ALLOC_HOOK _PfnNewHook
);










 











 extern int _crtDbgFlag;


 int __cdecl _CrtCheckMemory(
        void
        );

 int __cdecl _CrtSetDbgFlag(
          int _NewFlag
        );

 void __cdecl _CrtDoForAllClientObjects(
          void (__cdecl *_PFn)(void *, void *),
        void * _Context
        );

  int __cdecl _CrtIsValidPointer(
           const void * _Ptr,
          unsigned int _Bytes,
          int _ReadWrite
        );

  int __cdecl _CrtIsValidHeapPointer(
           const void * _HeapPtr
        );

 int __cdecl _CrtIsMemoryBlock(
           const void * _Memory,
          unsigned int _Bytes,
          long * _RequestNumber,
          char ** _Filename,
          int * _LineNumber
        );

  int __cdecl _CrtReportBlockType(
           const void * _Memory
        );


 






 _CRT_DUMP_CLIENT __cdecl _CrtGetDumpClient
(
    void
);







 _CRT_DUMP_CLIENT __cdecl _CrtSetDumpClient
(
       _CRT_DUMP_CLIENT _PFnNewDump
);











  void __cdecl _CrtMemCheckpoint(
          _CrtMemState * _State
        );

  int __cdecl _CrtMemDifference(
          _CrtMemState * _State,
          const _CrtMemState * _OldState,
          const _CrtMemState * _NewState
        );

 void __cdecl _CrtMemDumpAllObjectsSince(
           const _CrtMemState * _State
        );

 void __cdecl _CrtMemDumpStatistics(
          const _CrtMemState * _State
        );

 int __cdecl _CrtDumpMemoryLeaks(
        void
        );

 int __cdecl _CrtSetCheckCount(
          int _CheckCount
        );

 int __cdecl _CrtGetCheckCount(
        void
        );




}



extern "C++" {








































 






 
#pragma warning(suppress: 4985)
 void * __cdecl operator new[](size_t _Size);

 void * __cdecl operator new(
        size_t _Size,
        int,
        const char *,
        int
        );

#pragma warning(suppress: 4985)
 void * __cdecl operator new[](
        size_t _Size,
        int,
        const char *,
        int
        );

void __cdecl operator delete[](void *);

inline void __cdecl operator delete(void * _P, int, const char *, int)
        { ::operator delete(_P); }

inline void __cdecl operator delete[](void * _P, int, const char *, int)
        { ::operator delete[](_P); }























}





#pragma pack(pop)





 #pragma pack(push,8)
 #pragma warning(push,3)

namespace std {
		

typedef _Longlong streamoff;
typedef _Longlong streamsize;

  
  

  


extern   const streamoff _BADOFF;
  

		
template<class _Statetype>
	class fpos
	{	
	typedef fpos<_Statetype> _Myt;

public:
	 fpos(streamoff _Off = 0)
		: _Myoff(_Off), _Fpos(0), _Mystate(_Stz)
		{	
		}

	 fpos(_Statetype _State, fpos_t _Fileposition)
		: _Myoff(0), _Fpos(_Fileposition), _Mystate(_State)
		{	
		}

	_Statetype  state() const
		{	
		return (_Mystate);
		}

	void  state(_Statetype _State)
		{	
		_Mystate = _State;
		}

	fpos_t  seekpos() const
		{	
		return (_Fpos);
		}

	 operator streamoff() const
		{	
		return ((streamoff)(_Myoff + ((long)(_Fpos))));
		}

	streamoff  operator-(const _Myt& _Right) const
		{	
		return ((streamoff)*this - (streamoff)_Right);
		}

	_Myt&  operator+=(streamoff _Off)
		{	
		_Myoff += _Off;
		return (*this);
		}

	_Myt&  operator-=(streamoff _Off)
		{	
		_Myoff -= _Off;
		return (*this);
		}

	_Myt  operator+(streamoff _Off) const
		{	
		_Myt _Tmp = *this;
		return (_Tmp += _Off);
		}

	_Myt  operator-(streamoff _Off) const
		{	
		_Myt _Tmp = *this;
		return (_Tmp -= _Off);
		}

	bool  operator==(const _Myt& _Right) const
		{	
		return ((streamoff)*this == (streamoff)_Right);
		}

	bool  operator==(streamoff _Right) const
		{	
		return ((streamoff)*this == _Right);
		}

	bool  operator!=(const _Myt& _Right) const
		{	
		return (!(*this == _Right));
		}

private:
	 static const _Statetype _Stz;	
	streamoff _Myoff;	
	fpos_t _Fpos;	
	_Statetype _Mystate;	
	};

	
template<class _Statetype>
	 const _Statetype fpos<_Statetype>::_Stz = _Statetype();

 

 
 

typedef fpos<_Mbstatet> streampos;

typedef streampos wstreampos;

		
template<class _Elem,
	class _Int_type>
	struct _Char_traits
	{	
	typedef _Elem char_type;
	typedef _Int_type int_type;
	typedef streampos pos_type;
	typedef streamoff off_type;
	typedef _Mbstatet state_type;

	static int __cdecl compare(
		   const _Elem *_First1,
		   const _Elem *_First2, size_t _Count)
		{	
		for (; 0 < _Count; --_Count, ++_First1, ++_First2)
			if (!eq(*_First1, *_First2))
				return (lt(*_First1, *_First2) ? -1 : +1);
		return (0);
		}

	static size_t __cdecl length(   const _Elem *_First)
		{	
		size_t _Count;
		for (_Count = 0; !eq(*_First, _Elem()); ++_First)
			++_Count;
		return (_Count);
		}

	static _Elem *__cdecl copy(
		  _Elem *_First1,
		   const _Elem *_First2, size_t _Count)
		{	
		_Elem *_Next = _First1;
		for (; 0 < _Count; --_Count, ++_Next, ++_First2)
			assign(*_Next, *_First2);
		return (_First1);
		}

	static _Elem *__cdecl _Copy_s(
		  _Elem *_First1, size_t _Dest_size,
		   const _Elem *_First2, size_t _Count)
		{	
		{ if (!(_Dest_size >= _Count)) { (void) ((!!(("_Dest_size >= _Count" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\iosfwd", 175, 0, L"\"_Dest_size >= _Count\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"_Dest_size >= _Count", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\iosfwd", 175, 0); return (0); } };
		return (copy(_First1, _First2, _Count));
		}

	static const _Elem *__cdecl find(
		   const _Elem *_First,
		size_t _Count, const _Elem& _Ch)
		{	
		for (; 0 < _Count; --_Count, ++_First)
			if (eq(*_First, _Ch))
				return (_First);
		return (0);
		}

	static _Elem *__cdecl move(
		  _Elem *_First1,
		   const _Elem *_First2, size_t _Count)
		{	
		_Elem *_Next = _First1;
		if (_First2 < _Next && _Next < _First2 + _Count)
			for (_Next += _Count, _First2 += _Count; 0 < _Count; --_Count)
				assign(*--_Next, *--_First2);
		else
			for (; 0 < _Count; --_Count, ++_Next, ++_First2)
				assign(*_Next, *_First2);
		return (_First1);
		}

	static _Elem *__cdecl assign(
		  _Elem *_First,
		size_t _Count, _Elem _Ch)
		{	
		_Elem *_Next = _First;
		for (; 0 < _Count; --_Count, ++_Next)
			assign(*_Next, _Ch);
		return (_First);
		}

	static void __cdecl assign(_Elem& _Left, const _Elem& _Right)
		{	
		_Left = _Right;
		}

	static bool __cdecl eq(const _Elem& _Left, const _Elem& _Right)
		{	
		return (_Left == _Right);
		}

	static bool __cdecl lt(const _Elem& _Left, const _Elem& _Right)
		{	
		return (_Left < _Right);
		}

	static _Elem __cdecl to_char_type(const int_type& _Meta)
		{	
		return ((_Elem)_Meta);
		}

	static int_type __cdecl to_int_type(const _Elem& _Ch)
		{	
		return ((int_type)_Ch);
		}

	static bool __cdecl eq_int_type(const int_type& _Left,
		const int_type& _Right)
		{	
		return (_Left == _Right);
		}

	static int_type __cdecl not_eof(const int_type& _Meta)
		{	
		return (_Meta != eof() ? (int_type)_Meta : (int_type)!eof());
		}

	static int_type __cdecl eof()
		{	
		return ((int_type)(-1));
		}
	};

		
template<class _Elem>
	struct char_traits
		: public _Char_traits<_Elem, long>
	{	
	};

 















		
template<>
	struct char_traits<wchar_t>
	{	
	typedef wchar_t _Elem;
	typedef _Elem char_type;	
	typedef wint_t int_type;
	typedef streampos pos_type;
	typedef streamoff off_type;
	typedef _Mbstatet state_type;

	static int __cdecl compare(const _Elem *_First1, const _Elem *_First2,
		size_t _Count)
		{	
		return (:: wmemcmp(_First1, _First2, _Count));
		}

	static size_t __cdecl length(const _Elem *_First)
		{	
		return (:: wcslen(_First));
		}

	static _Elem *__cdecl copy(_Elem *_First1, const _Elem *_First2,
		size_t _Count)
		{	
		return ((_Elem *):: wmemcpy(_First1, _First2, _Count));
		}

	static _Elem *__cdecl _Copy_s(
		  _Elem *_First1, size_t _Size_in_words,
		   const _Elem *_First2, size_t _Count)
		{	
		::wmemcpy_s((_First1), (_Size_in_words), (_First2), (_Count));
		return _First1;
		}

	static const _Elem *__cdecl find(const _Elem *_First, size_t _Count,
		const _Elem& _Ch)
		{	
		return ((const _Elem *):: wmemchr(_First, _Ch, _Count));
		}

	static _Elem *__cdecl move(_Elem *_First1, const _Elem *_First2,
		size_t _Count)
		{	
		return ((_Elem *):: wmemmove(_First1, _First2, _Count));
		}

	static _Elem *__cdecl assign(_Elem *_First, size_t _Count, _Elem _Ch)
		{	
		return ((_Elem *):: wmemset(_First, _Ch, _Count));
		}

	static void __cdecl assign(_Elem& _Left, const _Elem& _Right)
		{	
		_Left = _Right;
		}

	static bool __cdecl eq(const _Elem& _Left, const _Elem& _Right)
		{	
		return (_Left == _Right);
		}

	static bool __cdecl lt(const _Elem& _Left, const _Elem& _Right)
		{	
		return (_Left < _Right);
		}

	static _Elem __cdecl to_char_type(const int_type& _Meta)
		{	
		return (_Meta);
		}

	static int_type __cdecl to_int_type(const _Elem& _Ch)
		{	
		return (_Ch);
		}

	static bool __cdecl eq_int_type(const int_type& _Left,
		const int_type& _Right)
		{	
		return (_Left == _Right);
		}

	static int_type __cdecl not_eof(const int_type& _Meta)
		{	
		return (_Meta != eof() ? _Meta : !eof());
		}

	static int_type __cdecl eof()
		{	
		return ((wint_t)(0xFFFF));
		}
	};

 
		
template<> struct char_traits<unsigned short>
	{	
	typedef unsigned short _Elem;
	typedef _Elem char_type;	
	typedef wint_t int_type;
	typedef streampos pos_type;
	typedef streamoff off_type;
	typedef _Mbstatet state_type;

	static int __cdecl compare(const _Elem *_First1, const _Elem *_First2,
		size_t _Count)
		{	
		return (:: wmemcmp((const wchar_t *)_First1,
			(const wchar_t *)_First2, _Count));
		}

	static size_t __cdecl length(const _Elem *_First)
		{	
		return (:: wcslen((const wchar_t *)_First));
		}

	static _Elem *__cdecl copy(_Elem *_First1, const _Elem *_First2,
		size_t _Count)
		{	
		return ((_Elem *):: wmemcpy((wchar_t *)_First1,
			(const wchar_t *)_First2, _Count));
		}

	static _Elem *__cdecl _Copy_s(
		  _Elem *_First1, size_t _Size_in_words,
		   const _Elem *_First2, size_t _Count)
		{	
		::wmemcpy_s(((wchar_t *)_First1), (_Size_in_words), ((const wchar_t *)_First2), (_Count));
		return _First1;
		}

	static const _Elem *__cdecl find(const _Elem *_First, size_t _Count,
		const _Elem& _Ch)
		{	
		return ((const _Elem *):: wmemchr((const wchar_t *)_First,
			_Ch, _Count));
		}

	static _Elem *__cdecl move(_Elem *_First1, const _Elem *_First2,
		size_t _Count)
		{	
		return ((_Elem *):: wmemmove((wchar_t *)_First1,
			(const wchar_t *)_First2, _Count));
		}

	static _Elem *__cdecl assign(_Elem *_First, size_t _Count, _Elem _Ch)
		{	
		return ((_Elem *):: wmemset((wchar_t *)_First, _Ch, _Count));
		}

	static void __cdecl assign(_Elem& _Left, const _Elem& _Right)
		{	
		_Left = _Right;
		}

	static bool __cdecl eq(const _Elem& _Left, const _Elem& _Right)
		{	
		return (_Left == _Right);
		}

	static bool __cdecl lt(const _Elem& _Left, const _Elem& _Right)
		{	
		return (_Left < _Right);
		}

	static _Elem __cdecl to_char_type(const int_type& _Meta)
		{	
		return (_Meta);
		}

	static int_type __cdecl to_int_type(const _Elem& _Ch)
		{	
		return (_Ch);
		}

	static bool __cdecl eq_int_type(const int_type& _Left,
		const int_type& _Right)
		{	
		return (_Left == _Right);
		}

	static int_type __cdecl not_eof(const int_type& _Meta)
		{	
		return (_Meta != eof() ? _Meta : !eof());
		}

	static int_type __cdecl eof()
		{	
		return ((wint_t)(0xFFFF));
		}
	};
 

		
template<> struct char_traits<char>
	{	
	typedef char _Elem;
	typedef _Elem char_type;
	typedef int int_type;
	typedef streampos pos_type;
	typedef streamoff off_type;
	typedef _Mbstatet state_type;

	static int __cdecl compare(const _Elem *_First1, const _Elem *_First2,
		size_t _Count)
		{	
		return (:: memcmp(_First1, _First2, _Count));
		}

	static size_t __cdecl length(const _Elem *_First)
		{	
		return (:: strlen(_First));
		}

	static _Elem *__cdecl copy(_Elem *_First1, const _Elem *_First2,
		size_t _Count)
		{	
		return ((_Elem *):: memcpy(_First1, _First2, _Count));
		}

	static _Elem *__cdecl _Copy_s(
		  _Elem *_First1, size_t _Size_in_bytes,
		   const _Elem *_First2, size_t _Count)
		{	
		::memcpy_s((_First1), (_Size_in_bytes), (_First2), (_Count));
		return _First1;
		}

	static const _Elem *__cdecl find(const _Elem *_First, size_t _Count,
		const _Elem& _Ch)
		{	
		return ((const _Elem *):: memchr(_First, _Ch, _Count));
		}

	static _Elem *__cdecl move(_Elem *_First1, const _Elem *_First2,
		size_t _Count)
		{	
		return ((_Elem *):: memmove(_First1, _First2, _Count));
		}

	static _Elem *__cdecl assign(_Elem *_First, size_t _Count, _Elem _Ch)
		{	
		return ((_Elem *):: memset(_First, _Ch, _Count));
		}

	static void __cdecl assign(_Elem& _Left, const _Elem& _Right)
		{	
		_Left = _Right;
		}

	static bool __cdecl eq(const _Elem& _Left, const _Elem& _Right)
		{	
		return (_Left == _Right);
		}

	static bool __cdecl lt(const _Elem& _Left, const _Elem& _Right)
		{	
		return ((unsigned char)_Left < (unsigned char)_Right);
		}

	static _Elem __cdecl to_char_type(const int_type& _Meta)
		{	
		return ((_Elem)_Meta);
		}

	static int_type __cdecl to_int_type(const _Elem& _Ch)
		{	
		return ((unsigned char)_Ch);
		}

	static bool __cdecl eq_int_type(const int_type& _Left,
		const int_type& _Right)
		{	
		return (_Left == _Right);
		}

	static int_type __cdecl not_eof(const int_type& _Meta)
		{	
		return (_Meta != eof() ? _Meta : !eof());
		}

	static int_type __cdecl eof()
		{	
		return ((-1));
		}
	};

		
template<class _Ty>
	class allocator;
class ios_base;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class basic_ios;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class istreambuf_iterator;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class ostreambuf_iterator;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class basic_streambuf;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class basic_istream;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class basic_ostream;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class basic_iostream;
template<class _Elem,
	class _Traits = char_traits<_Elem>,
	class _Alloc = allocator<_Elem> >
	class basic_stringbuf;
template<class _Elem,
	class _Traits = char_traits<_Elem>,
	class _Alloc = allocator<_Elem> >
	class basic_istringstream;
template<class _Elem,
	class _Traits = char_traits<_Elem>,
	class _Alloc = allocator<_Elem> >
	class basic_ostringstream;
template<class _Elem,
	class _Traits = char_traits<_Elem>,
	class _Alloc = allocator<_Elem> >
	class basic_stringstream;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class basic_filebuf;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class basic_ifstream;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class basic_ofstream;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class basic_fstream;

 










		
typedef basic_ios<char, char_traits<char> > ios;
typedef basic_streambuf<char, char_traits<char> > streambuf;
typedef basic_istream<char, char_traits<char> > istream;
typedef basic_ostream<char, char_traits<char> > ostream;
typedef basic_iostream<char, char_traits<char> > iostream;
typedef basic_stringbuf<char, char_traits<char>,
	allocator<char> > stringbuf;
typedef basic_istringstream<char, char_traits<char>,
	allocator<char> > istringstream;
typedef basic_ostringstream<char, char_traits<char>,
	allocator<char> > ostringstream;
typedef basic_stringstream<char, char_traits<char>,
	allocator<char> > stringstream;
typedef basic_filebuf<char, char_traits<char> > filebuf;
typedef basic_ifstream<char, char_traits<char> > ifstream;
typedef basic_ofstream<char, char_traits<char> > ofstream;
typedef basic_fstream<char, char_traits<char> > fstream;

		
typedef basic_ios<wchar_t, char_traits<wchar_t> > wios;
typedef basic_streambuf<wchar_t, char_traits<wchar_t> >
	wstreambuf;
typedef basic_istream<wchar_t, char_traits<wchar_t> > wistream;
typedef basic_ostream<wchar_t, char_traits<wchar_t> > wostream;
typedef basic_iostream<wchar_t, char_traits<wchar_t> > wiostream;
typedef basic_stringbuf<wchar_t, char_traits<wchar_t>,
	allocator<wchar_t> > wstringbuf;
typedef basic_istringstream<wchar_t, char_traits<wchar_t>,
	allocator<wchar_t> > wistringstream;
typedef basic_ostringstream<wchar_t, char_traits<wchar_t>,
	allocator<wchar_t> > wostringstream;
typedef basic_stringstream<wchar_t, char_traits<wchar_t>,
	allocator<wchar_t> > wstringstream;
typedef basic_filebuf<wchar_t, char_traits<wchar_t> > wfilebuf;
typedef basic_ifstream<wchar_t, char_traits<wchar_t> > wifstream;
typedef basic_ofstream<wchar_t, char_traits<wchar_t> > wofstream;
typedef basic_fstream<wchar_t, char_traits<wchar_t> > wfstream;


 











}

 #pragma warning(pop)
 #pragma pack(pop)












#pragma once





#pragma once





#pragma once





 
extern "C" {
 


#pragma pack(push, 8)

		





		






		
typedef union
	{	
	unsigned short _Word[8];
	float _Float;
	double _Double;
	long double _Long_double;
	} _Dconst;

		
void __cdecl _Feraise(int);

		
 double __cdecl _Cosh(double, double);
 short __cdecl _Dtest(double *);
 short __cdecl _Exp(double *, double, short);
 double __cdecl _Sinh(double, double);
extern   _Dconst _Denorm, _Hugeval, _Inf,
	_Nan, _Snan;

		
 float __cdecl _FCosh(float, float);
 short __cdecl _FDtest(float *);
 short __cdecl _FExp(float *, float, short);
 float __cdecl _FSinh(float, float);
extern   _Dconst _FDenorm, _FInf, _FNan, _FSnan;

		
 long double __cdecl _LCosh(long double, long double);
 short __cdecl _LDtest(long double *);
 short __cdecl _LExp(long double *, long double, short);
 long double __cdecl _LSinh(long double, long double);
extern   _Dconst _LDenorm, _LInf, _LNan, _LSnan;

 
}
 


#pragma pack(pop)











#pragma once




















#pragma once



















 





















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#pragma once



















 
























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































extern "C" {












































  unsigned int __cdecl _clearfp(void);
#pragma warning(push)
#pragma warning(disable: 4141)
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_controlfp_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  unsigned int __cdecl _controlfp(  unsigned int _NewValue,  unsigned int _Mask);
#pragma warning(pop)
  void __cdecl _set_controlfp(  unsigned int _NewValue,   unsigned int _Mask);
  errno_t __cdecl _controlfp_s(  unsigned int *_CurrentState,   unsigned int _NewValue,   unsigned int _Mask);
  unsigned int __cdecl _statusfp(void);
  void __cdecl _fpreset(void);


  void __cdecl _statusfp2(  unsigned int *_X86_status,   unsigned int *_SSE2_status);













































































  unsigned int __cdecl _control87(  unsigned int _NewValue,  unsigned int _Mask);

  int __cdecl __control87_2(  unsigned int _NewValue,   unsigned int _Mask,
                                    unsigned int* _X86_cw,   unsigned int* _Sse2_cw);




  extern int * __cdecl __fpecode(void);































  double __cdecl _copysign (  double _Number,   double _Sign);
  double __cdecl _chgsign (  double _X);


  double __cdecl _scalb(  double _X,   long _Y);
  double __cdecl _logb(  double _X);
  double __cdecl _nextafter(  double _X,   double _Y);
  int    __cdecl _finite(  double _X);
  int    __cdecl _isnan(  double _X);
  int    __cdecl _fpclass(  double _X);

























  void __cdecl fpreset(void);
































































}















#pragma once










 
































 














































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#pragma pack(push,8)


extern "C" {









struct _exception {
        int type;       
        char *name;     
        double arg1;    
        double arg2;    
        double retval;  
        } ;










struct _complex {
        double x,y; 
        } ;































 extern double _HUGE;

















        double  __cdecl acos(  double _X);
        double  __cdecl asin(  double _X);
        double  __cdecl atan(  double _X);
        double  __cdecl atan2(  double _Y,   double _X);





        double  __cdecl cos(  double _X);
        double  __cdecl cosh(  double _X);
        double  __cdecl exp(  double _X);
 double  __cdecl fabs(  double _X);
        double  __cdecl fmod(  double _X,   double _Y);
        double  __cdecl log(  double _X);
        double  __cdecl log10(  double _X);
        double  __cdecl pow(  double _X,   double _Y);
        double  __cdecl sin(  double _X);
        double  __cdecl sinh(  double _X);
        double  __cdecl tan(  double _X);
        double  __cdecl tanh(  double _X);
        double  __cdecl sqrt(  double _X);






 double  __cdecl _cabs(  struct _complex _Complex_value);
 double  __cdecl ceil(  double _X);
 double  __cdecl floor(  double _X);
 double  __cdecl frexp(  double _X,   int * _Y);
 double  __cdecl _hypot(  double _X,   double _Y);
 float   __cdecl _hypotf(  float _X,   float _Y);
 double  __cdecl _j0(  double _X );
 double  __cdecl _j1(  double _X );
 double  __cdecl _jn(int _X,   double _Y);
 double  __cdecl ldexp(  double _X,   int _Y);





        int     __cdecl _matherr(   struct _exception * _Except);


 double  __cdecl modf(  double _X,   double * _Y);

 double  __cdecl _y0(  double _X);
 double  __cdecl _y1(  double _X);
 double  __cdecl _yn(  int _X,   double _Y);




static __inline double __cdecl hypot(  double _X,   double _Y)
{
    return _hypot(_X, _Y);
}

static __inline float __cdecl hypotf(  float _X,   float _Y)
{
    return _hypotf(_X, _Y);
}





 int     __cdecl _set_SSE2_enable(  int _Flag);
























































































































































inline long double acosl(  long double _X)
        {return (acos((double)_X)); }
inline long double asinl(  long double _X)
        {return (asin((double)_X)); }
inline long double atanl(  long double _X)
        {return (atan((double)_X)); }
inline long double atan2l(  long double _Y,   long double _X)
        {return (atan2((double)_Y, (double)_X)); }
inline long double ceill(  long double _X)
        {return (ceil((double)_X)); }
inline long double cosl(  long double _X)
        {return (cos((double)_X)); }
inline long double coshl(  long double _X)
        {return (cosh((double)_X)); }
inline long double expl(  long double _X)
        {return (exp((double)_X)); }
inline long double fabsl(  long double _X)
        {return (fabs((double)_X)); }
inline long double floorl(  long double _X)
        {return (floor((double)_X)); }
inline long double fmodl(  long double _X,   long double _Y)
        {return (fmod((double)_X, (double)_Y)); }
inline long double frexpl(  long double _X,   int *_Y)
        {return (frexp((double)_X, _Y)); }
inline long double ldexpl(  long double _X,   int _Y)
        {return (ldexp((double)_X, _Y)); }
inline long double logl(  long double _X)
        {return (log((double)_X)); }
inline long double log10l(  long double _X)
        {return (log10((double)_X)); }
inline long double modfl(  long double _X,   long double *_Y)
        {double _Di, _Df = modf((double)_X, &_Di);
        *_Y = (long double)_Di;
        return (_Df); }
inline long double powl(  long double _X,   long double _Y)
        {return (pow((double)_X, (double)_Y)); }
inline long double sinl(  long double _X)
        {return (sin((double)_X)); }
inline long double sinhl(  long double _X)
        {return (sinh((double)_X)); }
inline long double sqrtl(  long double _X)
        {return (sqrt((double)_X)); }

inline long double tanl(  long double _X)
        {return (tan((double)_X)); }




inline long double tanhl(  long double _X)
        {return (tanh((double)_X)); }

inline long double _chgsignl(  long double _Number)
{
    return _chgsign(static_cast<double>(_Number)); 
}

inline long double _copysignl(  long double _Number,   long double _Sign)
{
    return _copysign(static_cast<double>(_Number), static_cast<double>(_Sign)); 
}

inline float frexpf(  float _X,   int *_Y)
        {return ((float)frexp((double)_X, _Y)); }


inline float fabsf(  float _X)
        {return ((float)fabs((double)_X)); }
inline float ldexpf(  float _X,   int _Y)
        {return ((float)ldexp((double)_X, _Y)); }

inline float acosf(  float _X)
        {return ((float)acos((double)_X)); }
inline float asinf(  float _X)
        {return ((float)asin((double)_X)); }
inline float atanf(  float _X)
        {return ((float)atan((double)_X)); }
inline float atan2f(  float _Y,   float _X)
        {return ((float)atan2((double)_Y, (double)_X)); }
inline float ceilf(  float _X)
        {return ((float)ceil((double)_X)); }
inline float cosf(  float _X)
        {return ((float)cos((double)_X)); }
inline float coshf(  float _X)
        {return ((float)cosh((double)_X)); }
inline float expf(  float _X)
        {return ((float)exp((double)_X)); }
inline float floorf(  float _X)
        {return ((float)floor((double)_X)); }
inline float fmodf(  float _X,   float _Y)
        {return ((float)fmod((double)_X, (double)_Y)); }
inline float logf(  float _X)
        {return ((float)log((double)_X)); }
inline float log10f(  float _X)
        {return ((float)log10((double)_X)); }
inline float modff(  float _X,   float *_Y)
        { double _Di, _Df = modf((double)_X, &_Di);
        *_Y = (float)_Di;
        return ((float)_Df); }
inline float powf(  float _X,   float _Y)
        {return ((float)pow((double)_X, (double)_Y)); }
inline float sinf(  float _X)
        {return ((float)sin((double)_X)); }
inline float sinhf(  float _X)
        {return ((float)sinh((double)_X)); }
inline float sqrtf(  float _X)
        {return ((float)sqrt((double)_X)); }
inline float tanf(  float _X)
        {return ((float)tan((double)_X)); }
inline float tanhf(  float _X)
        {return ((float)tanh((double)_X)); }





















 extern double HUGE;




__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_cabs" ". See online help for details."))  double  __cdecl cabs(  struct _complex _X);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_j0" ". See online help for details."))  double  __cdecl j0(  double _X);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_j1" ". See online help for details."))  double  __cdecl j1(  double _X);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_jn" ". See online help for details."))  double  __cdecl jn(  int _X,   double _Y);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_y0" ". See online help for details."))  double  __cdecl y0(  double _X);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_y1" ". See online help for details."))  double  __cdecl y1(  double _X);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_yn" ". See online help for details."))  double  __cdecl yn(  int _X,   double _Y);






}

extern "C++" {

template<class _Ty> inline
        _Ty _Pow_int(_Ty _X, int _Y)
        {unsigned int _N;
        if (_Y >= 0)
                _N = (unsigned int)_Y;
        else
                _N = (unsigned int)(-_Y);
        for (_Ty _Z = _Ty(1); ; _X *= _X)
                {if ((_N & 1) != 0)
                        _Z *= _X;
                if ((_N >>= 1) == 0)
                        return (_Y < 0 ? _Ty(1) / _Z : _Z); }}

inline double __cdecl abs(  double _X)
        {return (fabs(_X)); }
inline double __cdecl pow(  double _X,   int _Y)
        {return (_Pow_int(_X, _Y)); }
inline float __cdecl abs(  float _X)
        {return (fabsf(_X)); }
inline float __cdecl acos(  float _X)
        {return (acosf(_X)); }
inline float __cdecl asin(  float _X)
        {return (asinf(_X)); }
inline float __cdecl atan(  float _X)
        {return (atanf(_X)); }
inline float __cdecl atan2(  float _Y,   float _X)
        {return (atan2f(_Y, _X)); }
inline float __cdecl ceil(  float _X)
        {return (ceilf(_X)); }
inline float __cdecl cos(  float _X)
        {return (cosf(_X)); }
inline float __cdecl cosh(  float _X)
        {return (coshf(_X)); }
inline float __cdecl exp(  float _X)
        {return (expf(_X)); }
inline float __cdecl fabs(  float _X)
        {return (fabsf(_X)); }
inline float __cdecl floor(  float _X)
        {return (floorf(_X)); }
inline float __cdecl fmod(  float _X,   float _Y)
        {return (fmodf(_X, _Y)); }
inline float __cdecl frexp(  float _X,   int * _Y)
        {return (frexpf(_X, _Y)); }
inline float __cdecl ldexp(  float _X,   int _Y)
        {return (ldexpf(_X, _Y)); }
inline float __cdecl log(  float _X)
        {return (logf(_X)); }
inline float __cdecl log10(  float _X)
        {return (log10f(_X)); }
inline float __cdecl modf(  float _X,   float * _Y)
        {return (modff(_X, _Y)); }
inline float __cdecl pow(  float _X,   float _Y)
        {return (powf(_X, _Y)); }
inline float __cdecl pow(  float _X,   int _Y)
        {return (_Pow_int(_X, _Y)); }
inline float __cdecl sin(  float _X)
        {return (sinf(_X)); }
inline float __cdecl sinh(  float _X)
        {return (sinhf(_X)); }
inline float __cdecl sqrt(  float _X)
        {return (sqrtf(_X)); }
inline float __cdecl tan(  float _X)
        {return (tanf(_X)); }
inline float __cdecl tanh(  float _X)
        {return (tanhf(_X)); }
inline long double __cdecl abs(  long double _X)
        {return (fabsl(_X)); }
inline long double __cdecl acos(  long double _X)
        {return (acosl(_X)); }
inline long double __cdecl asin(  long double _X)
        {return (asinl(_X)); }
inline long double __cdecl atan(  long double _X)
        {return (atanl(_X)); }
inline long double __cdecl atan2(  long double _Y,   long double _X)
        {return (atan2l(_Y, _X)); }
inline long double __cdecl ceil(  long double _X)
        {return (ceill(_X)); }
inline long double __cdecl cos(  long double _X)
        {return (cosl(_X)); }
inline long double __cdecl cosh(  long double _X)
        {return (coshl(_X)); }
inline long double __cdecl exp(  long double _X)
        {return (expl(_X)); }
inline long double __cdecl fabs(  long double _X)
        {return (fabsl(_X)); }
inline long double __cdecl floor(  long double _X)
        {return (floorl(_X)); }
inline long double __cdecl fmod(  long double _X,   long double _Y)
        {return (fmodl(_X, _Y)); }
inline long double __cdecl frexp(  long double _X,   int * _Y)
        {return (frexpl(_X, _Y)); }
inline long double __cdecl ldexp(  long double _X,   int _Y)
        {return (ldexpl(_X, _Y)); }
inline long double __cdecl log(  long double _X)
        {return (logl(_X)); }
inline long double __cdecl log10(  long double _X)
        {return (log10l(_X)); }
inline long double __cdecl modf(  long double _X,   long double * _Y)
        {return (modfl(_X, _Y)); }
inline long double __cdecl pow(  long double _X,   long double _Y)
        {return (powl(_X, _Y)); }
inline long double __cdecl pow(  long double _X,   int _Y)
        {return (_Pow_int(_X, _Y)); }
inline long double __cdecl sin(  long double _X)
        {return (sinl(_X)); }
inline long double __cdecl sinh(  long double _X)
        {return (sinhl(_X)); }
inline long double __cdecl sqrt(  long double _X)
        {return (sqrtl(_X)); }
inline long double __cdecl tan(  long double _X)
        {return (tanl(_X)); }
inline long double __cdecl tanh(  long double _X)
        {return (tanhl(_X)); }

}


#pragma pack(pop)














































 

namespace std {
using :: acosf; using :: asinf;
using :: atanf; using :: atan2f; using :: ceilf;
using :: cosf; using :: coshf; using :: expf;
using :: fabsf; using :: floorf; using :: fmodf;
using :: frexpf; using :: ldexpf; using :: logf;
using :: log10f; using :: modff; using :: powf;
using :: sinf; using :: sinhf; using :: sqrtf;
using :: tanf; using :: tanhf;

using :: acosl; using :: asinl;
using :: atanl; using :: atan2l; using :: ceill;
using :: cosl; using :: coshl; using :: expl;
using :: fabsl; using :: floorl; using :: fmodl;
using :: frexpl; using :: ldexpl; using :: logl;
using :: log10l; using :: modfl; using :: powl;
using :: sinl; using :: sinhl; using :: sqrtl;
using :: tanl; using :: tanhl;

using :: abs;

using :: acos; using :: asin;
using :: atan; using :: atan2; using :: ceil;
using :: cos; using :: cosh; using :: exp;
using :: fabs; using :: floor; using :: fmod;
using :: frexp; using :: ldexp; using :: log;
using :: log10; using :: modf; using :: pow;
using :: sin; using :: sinh; using :: sqrt;
using :: tan; using :: tanh;
}
 











 #pragma pack(push,8)
 #pragma warning(push,3)

namespace std {










 

		
typedef enum
	{	
	denorm_indeterminate = -1,
	denorm_absent = 0,
	denorm_present = 1}
		float_denorm_style;

		
typedef enum
	{	
	round_indeterminate = -1,
	round_toward_zero = 0,
	round_to_nearest = 1,
	round_toward_infinity = 2,
	round_toward_neg_infinity = 3}
		float_round_style;

		
struct  _Num_base
	{	
	static const float_denorm_style has_denorm = (float_denorm_style)(denorm_absent);
	static const bool has_denorm_loss = (bool)(false);
	static const bool has_infinity = (bool)(false);
	static const bool has_quiet_NaN = (bool)(false);
	static const bool has_signaling_NaN = (bool)(false);
	static const bool is_bounded = (bool)(false);
	static const bool is_exact = (bool)(false);
	static const bool is_iec559 = (bool)(false);
	static const bool is_integer = (bool)(false);
	static const bool is_modulo = (bool)(false);
	static const bool is_signed = (bool)(false);
	static const bool is_specialized = (bool)(false);
	static const bool tinyness_before = (bool)(false);
	static const bool traps = (bool)(false);
	static const float_round_style round_style = (float_round_style)(round_toward_zero);
	static const int digits = (int)(0);
	static const int digits10 = (int)(0);

 
	static const int max_digits10 = (int)(0);
 

	static const int max_exponent = (int)(0);
	static const int max_exponent10 = (int)(0);
	static const int min_exponent = (int)(0);
	static const int min_exponent10 = (int)(0);
	static const int radix = (int)(0);
	};

		
template<class _Ty>
	class numeric_limits
		: public _Num_base
	{	
public:
	static _Ty (__cdecl min)() throw ()
		{	
		return (_Ty(0));
		}

	static _Ty (__cdecl max)() throw ()
		{	
		return (_Ty(0));
		}

 
	static _Ty __cdecl lowest() throw ()
		{	
		return ((min)());
		}
 

	static _Ty __cdecl epsilon() throw ()
		{	
		return (_Ty(0));
		}

	static _Ty __cdecl round_error() throw ()
		{	
		return (_Ty(0));
		}

	static _Ty __cdecl denorm_min() throw ()
		{	
		return (_Ty(0));
		}

	static _Ty __cdecl infinity() throw ()
		{	
		return (_Ty(0));
		}

	static _Ty __cdecl quiet_NaN() throw ()
		{	
		return (_Ty(0));
		}

	static _Ty __cdecl signaling_NaN() throw ()
		{	
		return (_Ty(0));
		}
	};

template<class _Ty>
	class numeric_limits<const _Ty>
		: public numeric_limits<_Ty>
	{	
	};

template<class _Ty>
	class numeric_limits<volatile _Ty>
		: public numeric_limits<_Ty>
	{	
	};

template<class _Ty>
	class numeric_limits<const volatile _Ty>
		: public numeric_limits<_Ty>
	{	
	};

		
struct  _Num_int_base
	: public _Num_base
	{	
	static const bool is_bounded = (bool)(true);
	static const bool is_exact = (bool)(true);
	static const bool is_integer = (bool)(true);
	static const bool is_modulo = (bool)(true);
	static const bool is_specialized = (bool)(true);
	static const int radix = (int)(2);
	};

		
struct  _Num_float_base
	: public _Num_base
	{	
	static const float_denorm_style has_denorm = (float_denorm_style)(denorm_present);
	static const bool has_denorm_loss = (bool)(true);
	static const bool has_infinity = (bool)(true);
	static const bool has_quiet_NaN = (bool)(true);
	static const bool has_signaling_NaN = (bool)(true);
	static const bool is_bounded = (bool)(true);
	static const bool is_exact = (bool)(false);
	static const bool is_iec559 = (bool)(true);
	static const bool is_integer = (bool)(false);
	static const bool is_modulo = (bool)(false);
	static const bool is_signed = (bool)(true);
	static const bool is_specialized = (bool)(true);
	static const bool tinyness_before = (bool)(true);
	static const bool traps = (bool)(true);
	static const float_round_style round_style = (float_round_style)(round_to_nearest);
	static const int radix = (int)(2);
	};

		
template<> class  numeric_limits<char>
	: public _Num_int_base
	{	
public:
	typedef char _Ty;

	static _Ty (__cdecl min)() throw ()
		{	
		return ((-128));
		}

	static _Ty (__cdecl max)() throw ()
		{	
		return (127);
		}

 
	static _Ty __cdecl lowest() throw ()
		{	
		return ((min)());
		}
 

	static _Ty __cdecl epsilon() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl round_error() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl denorm_min() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl infinity() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl quiet_NaN() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl signaling_NaN() throw ()
		{	
		return (0);
		}

	static const bool is_signed = (bool)((-128) != 0);
	static const int digits = (int)(8 - ((-128) != 0 ? 1 : 0));
	static const int digits10 = (int)((8 - ((-128) != 0 ? 1 : 0)) * 301L / 1000);

 
	static const int max_digits10 = (int)(2 + (8 - ((-128) != 0 ? 1 : 0)) * 301L / 1000);
 
	};

		
template<> class  numeric_limits<wchar_t>
	: public _Num_int_base
	{	
public:
	typedef wchar_t _Ty;

	static _Ty (__cdecl min)() throw ()
		{	
		return ((_Ty)0x0000);
		}

	static _Ty (__cdecl max)() throw ()
		{	
		return ((_Ty)0xffff);
		}

 
	static _Ty __cdecl lowest() throw ()
		{	
		return ((min)());
		}
 

	static _Ty __cdecl epsilon() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl round_error() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl denorm_min() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl infinity() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl quiet_NaN() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl signaling_NaN() throw ()
		{	
		return (0);
		}

	static const bool is_signed = (bool)(0x0000 != 0);
	static const int digits = (int)(8 * sizeof (wchar_t) - (0x0000 != 0 ? 1 : 0));
	static const int digits10 = (int)((8 * sizeof (wchar_t) - (0x0000 != 0 ? 1 : 0)) * 301L / 1000);

 
	static const int max_digits10 = (int)(2 + (8 * sizeof (wchar_t) - (0x0000 != 0 ? 1 : 0)) * 301L / 1000);
 
	};

		
template<> class  numeric_limits<_Bool>
	: public _Num_int_base
	{	
public:
	typedef bool _Ty;

	static _Ty (__cdecl min)() throw ()
		{	
		return (false);
		}

	static _Ty (__cdecl max)() throw ()
		{	
		return (true);
		}

 
	static _Ty __cdecl lowest() throw ()
		{	
		return ((min)());
		}
 

	static _Ty __cdecl epsilon() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl round_error() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl denorm_min() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl infinity() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl quiet_NaN() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl signaling_NaN() throw ()
		{	
		return (0);
		}

	static const bool is_modulo = (bool)(false);
	static const bool is_signed = (bool)(false);
	static const int digits = (int)(1);
	static const int digits10 = (int)(0);

 
	static const int max_digits10 = (int)(0);
 
	};

		
template<> class  numeric_limits<signed char>
	: public _Num_int_base
	{	
public:
	typedef signed char _Ty;

	static _Ty (__cdecl min)() throw ()
		{	
		return ((-128));
		}

	static _Ty (__cdecl max)() throw ()
		{	
		return (127);
		}

 
	static _Ty __cdecl lowest() throw ()
		{	
		return ((min)());
		}
 

	static _Ty __cdecl epsilon() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl round_error() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl denorm_min() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl infinity() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl quiet_NaN() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl signaling_NaN() throw ()
		{	
		return (0);
		}

	static const bool is_signed = (bool)(true);
	static const int digits = (int)(8 - 1);
	static const int digits10 = (int)((8 - 1) * 301L / 1000);

 
	static const int max_digits10 = (int)(2 + (8 - 1) * 301L / 1000);
 
	};

		
template<> class  numeric_limits<unsigned char>
	: public _Num_int_base
	{	
public:
	typedef unsigned char _Ty;

	static _Ty (__cdecl min)() throw ()
		{	
		return (0);
		}

	static _Ty (__cdecl max)() throw ()
		{	
		return (0xff);
		}

 
	static _Ty __cdecl lowest() throw ()
		{	
		return ((min)());
		}
 

	static _Ty __cdecl epsilon() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl round_error() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl denorm_min() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl infinity() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl quiet_NaN() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl signaling_NaN() throw ()
		{	
		return (0);
		}

	static const bool is_signed = (bool)(false);
	static const int digits = (int)(8);
	static const int digits10 = (int)(8 * 301L / 1000);

 
	static const int max_digits10 = (int)(2 + (8) * 301L / 1000);
 
	};

		
template<> class  numeric_limits<short>
	: public _Num_int_base
	{	
public:
	typedef short _Ty;

	static _Ty (__cdecl min)() throw ()
		{	
		return ((-32768));
		}

	static _Ty (__cdecl max)() throw ()
		{	
		return (32767);
		}

 
	static _Ty __cdecl lowest() throw ()
		{	
		return ((min)());
		}
 

	static _Ty __cdecl epsilon() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl round_error() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl denorm_min() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl infinity() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl quiet_NaN() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl signaling_NaN() throw ()
		{	
		return (0);
		}

	static const bool is_signed = (bool)(true);
	static const int digits = (int)(8 * sizeof (short) - 1);
	static const int digits10 = (int)((8 * sizeof (short) - 1) * 301L / 1000);

 
	static const int max_digits10 = (int)(2 + (8 * sizeof (short) - 1) * 301L / 1000);
 
	};

 
		
template<> class  numeric_limits<unsigned short>
	: public _Num_int_base
	{	
public:
	typedef unsigned short _Ty;

	static _Ty (__cdecl min)() throw ()
		{	
		return (0);
		}

	static _Ty (__cdecl max)() throw ()
		{	
		return (0xffff);
		}

 
	static _Ty __cdecl lowest() throw ()
		{	
		return ((min)());
		}
 

	static _Ty __cdecl epsilon() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl round_error() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl denorm_min() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl infinity() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl quiet_NaN() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl signaling_NaN() throw ()
		{	
		return (0);
		}

	static const bool is_signed = (bool)(false);
	static const int digits = (int)(8 * sizeof (unsigned short));
	static const int digits10 = (int)(8 * sizeof (unsigned short) * 301L / 1000);

 
	static const int max_digits10 = (int)(2 + (8 * sizeof (unsigned short)) * 301L / 1000);
 
	};
 

 





























































		
template<> class  numeric_limits<int>
	: public _Num_int_base
	{	
public:
	typedef int _Ty;

	static _Ty (__cdecl min)() throw ()
		{	
		return ((-2147483647 - 1));
		}

	static _Ty (__cdecl max)() throw ()
		{	
		return (2147483647);
		}

 
	static _Ty __cdecl lowest() throw ()
		{	
		return ((min)());
		}
 

	static _Ty __cdecl epsilon() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl round_error() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl denorm_min() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl infinity() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl quiet_NaN() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl signaling_NaN() throw ()
		{	
		return (0);
		}

	static const bool is_signed = (bool)(true);
	static const int digits = (int)(8 * sizeof (int) - 1);
	static const int digits10 = (int)((8 * sizeof (int) - 1) * 301L / 1000);

 
	static const int max_digits10 = (int)(2 + (8 * sizeof (int) - 1) * 301L / 1000);
 
	};

		
template<> class  numeric_limits<unsigned int>
	: public _Num_int_base
	{	
public:
	typedef unsigned int _Ty;

	static _Ty (__cdecl min)() throw ()
		{	
		return (0);
		}

	static _Ty (__cdecl max)() throw ()
		{	
		return (0xffffffff);
		}

 
	static _Ty __cdecl lowest() throw ()
		{	
		return ((min)());
		}
 

	static _Ty __cdecl epsilon() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl round_error() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl denorm_min() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl infinity() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl quiet_NaN() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl signaling_NaN() throw ()
		{	
		return (0);
		}

	static const bool is_signed = (bool)(false);
	static const int digits = (int)(8 * sizeof (unsigned int));
	static const int digits10 = (int)(8 * sizeof (unsigned int) * 301L / 1000);

 
	static const int max_digits10 = (int)(2 + (8 * sizeof (unsigned int)) * 301L / 1000);
 
	};

		
template<> class  numeric_limits<long>
	: public _Num_int_base
	{	
public:
	typedef long _Ty;

	static _Ty (__cdecl min)() throw ()
		{	
		return ((-2147483647L - 1));
		}

	static _Ty (__cdecl max)() throw ()
		{	
		return (2147483647L);
		}

 
	static _Ty __cdecl lowest() throw ()
		{	
		return ((min)());
		}
 

	static _Ty __cdecl epsilon() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl round_error() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl denorm_min() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl infinity() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl quiet_NaN() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl signaling_NaN() throw ()
		{	
		return (0);
		}

	static const bool is_signed = (bool)(true);
	static const int digits = (int)(8 * sizeof (long) - 1);
	static const int digits10 = (int)((8 * sizeof (long) - 1) * 301L / 1000);

 
	static const int max_digits10 = (int)(2 + (8 * sizeof (long) - 1) * 301L / 1000);
 
	};

		
template<> class  numeric_limits<unsigned long>
	: public _Num_int_base
	{	
public:
	typedef unsigned long _Ty;

	static _Ty (__cdecl min)() throw ()
		{	
		return (0);
		}

	static _Ty (__cdecl max)() throw ()
		{	
		return (0xffffffffUL);
		}

 
	static _Ty __cdecl lowest() throw ()
		{	
		return ((min)());
		}
 

	static _Ty __cdecl epsilon() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl round_error() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl denorm_min() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl infinity() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl quiet_NaN() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl signaling_NaN() throw ()
		{	
		return (0);
		}

	static const bool is_signed = (bool)(false);
	static const int digits = (int)(8 * sizeof (unsigned long));
	static const int digits10 = (int)(8 * sizeof (unsigned long) * 301L / 1000);

 
	static const int max_digits10 = (int)(2 + (8 * sizeof (unsigned long)) * 301L / 1000);
 
	};

 





























































 
		
template<> class  numeric_limits<__int64>
	: public _Num_int_base
	{	
public:
	typedef __int64 _Ty;

	static _Ty (__cdecl min)() throw ()
		{	
		return (-0x7fffffffffffffff - 1);
		}

	static _Ty (__cdecl max)() throw ()
		{	
		return (0x7fffffffffffffff);
		}

 
	static _Ty __cdecl lowest() throw ()
		{	
		return ((min)());
		}
 

	static _Ty __cdecl epsilon() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl round_error() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl denorm_min() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl infinity() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl quiet_NaN() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl signaling_NaN() throw ()
		{	
		return (0);
		}

	static const bool is_signed = (bool)(true);
	static const int digits = (int)(8 * sizeof (__int64) - 1);
	static const int digits10 = (int)((8 * sizeof (__int64) - 1) * 301L / 1000);

 
	static const int max_digits10 = (int)(2 + (8 * sizeof (__int64) - 1) * 301L / 1000);
 
	};

		
template<> class  numeric_limits<unsigned __int64>
	: public _Num_int_base
	{	
public:
	typedef unsigned __int64 _Ty;

	static _Ty (__cdecl min)() throw ()
		{	
		return (0);
		}

	static _Ty (__cdecl max)() throw ()
		{	
		return (0xffffffffffffffff);
		}

 
	static _Ty __cdecl lowest() throw ()
		{	
		return ((min)());
		}
 

	static _Ty __cdecl epsilon() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl round_error() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl denorm_min() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl infinity() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl quiet_NaN() throw ()
		{	
		return (0);
		}

	static _Ty __cdecl signaling_NaN() throw ()
		{	
		return (0);
		}

	static const bool is_signed = (bool)(false);
	static const int digits = (int)(8 * sizeof (unsigned __int64));
	static const int digits10 = (int)(8 * sizeof (unsigned __int64) * 301L / 1000);

 
	static const int max_digits10 = (int)(2 + (8 * sizeof (unsigned __int64)) * 301L / 1000);
 
	};
 

		
template<> class  numeric_limits<float>
	: public _Num_float_base
	{	
public:
	typedef float _Ty;

	static _Ty (__cdecl min)() throw ()
		{	
		return (1.175494351e-38F);
		}

	static _Ty (__cdecl max)() throw ()
		{	
		return (3.402823466e+38F);
		}

 
	static _Ty __cdecl lowest() throw ()
		{	
		return (-(max)());
		}
 

	static _Ty __cdecl epsilon() throw ()
		{	
		return (1.192092896e-07F);
		}

	static _Ty __cdecl round_error() throw ()
		{	
		return (0.5);
		}

	static _Ty __cdecl denorm_min() throw ()
		{	
		return (:: _FDenorm._Float);
		}

	static _Ty __cdecl infinity() throw ()
		{	
		return (:: _FInf._Float);
		}

	static _Ty __cdecl quiet_NaN() throw ()
		{	
		return (:: _FNan._Float);
		}

	static _Ty __cdecl signaling_NaN() throw ()
		{	
		return (:: _FSnan._Float);
		}

	static const int digits = (int)(24);
	static const int digits10 = (int)(6);

 
	static const int max_digits10 = (int)(2 + 6);
 

	static const int max_exponent = (int)((int)128);
	static const int max_exponent10 = (int)((int)38);
	static const int min_exponent = (int)((int)(-125));
	static const int min_exponent10 = (int)((int)(-37));
	};

		
template<> class  numeric_limits<double>
	: public _Num_float_base
	{	
public:
	typedef double _Ty;

	static _Ty (__cdecl min)() throw ()
		{	
		return (2.2250738585072014e-308);
		}

	static _Ty (__cdecl max)() throw ()
		{	
		return (1.7976931348623158e+308);
		}

 
	static _Ty __cdecl lowest() throw ()
		{	
		return (-(max)());
		}
 

	static _Ty __cdecl epsilon() throw ()
		{	
		return (2.2204460492503131e-016);
		}

	static _Ty __cdecl round_error() throw ()
		{	
		return (0.5);
		}

	static _Ty __cdecl denorm_min() throw ()
		{	
		return (:: _Denorm._Double);
		}

	static _Ty __cdecl infinity() throw ()
		{	
		return (:: _Inf._Double);
		}

	static _Ty __cdecl quiet_NaN() throw ()
		{	
		return (:: _Nan._Double);
		}

	static _Ty __cdecl signaling_NaN() throw ()
		{	
		return (:: _Snan._Double);
		}

	static const int digits = (int)(53);
	static const int digits10 = (int)(15);

 
	static const int max_digits10 = (int)(2 + 15);
 

	static const int max_exponent = (int)((int)1024);
	static const int max_exponent10 = (int)((int)308);
	static const int min_exponent = (int)((int)(-1021));
	static const int min_exponent10 = (int)((int)(-307));
	};

		
template<> class  numeric_limits<long double>
	: public _Num_float_base
	{	
public:
	typedef long double _Ty;

	static _Ty (__cdecl min)() throw ()
		{	
		return (2.2250738585072014e-308);
		}

	static _Ty (__cdecl max)() throw ()
		{	
		return (1.7976931348623158e+308);
		}

 
	static _Ty __cdecl lowest() throw ()
		{	
		return (-(max)());
		}
 

	static _Ty __cdecl epsilon() throw ()
		{	
		return (2.2204460492503131e-016);
		}

	static _Ty __cdecl round_error() throw ()
		{	
		return (0.5);
		}

	static _Ty __cdecl denorm_min() throw ()
		{	
		return (:: _LDenorm._Long_double);
		}

	static _Ty __cdecl infinity() throw ()
		{	
		return (:: _LInf._Long_double);
		}

	static _Ty __cdecl quiet_NaN() throw ()
		{	
		return (:: _LNan._Long_double);
		}

	static _Ty __cdecl signaling_NaN() throw ()
		{	
		return (:: _LSnan._Long_double);
		}

	static const int digits = (int)(53);
	static const int digits10 = (int)(15);

 
	static const int max_digits10 = (int)(2 + 15);
 

	static const int max_exponent = (int)((int)1024);
	static const int max_exponent10 = (int)((int)308);
	static const int min_exponent = (int)((int)(-1021));
	static const int min_exponent10 = (int)((int)(-307));
	};

  

























































































































































































































































































}
 #pragma warning(pop)
 #pragma pack(pop)












#pragma once





 #pragma pack(push,8)
 #pragma warning(push,3)

 

 



  

	



































































































































namespace std {		
	
template<class _T1,
	class _Ret>
	struct unary_function;

	
template<class _T1,
	class _T2,
	class _Ret>
	struct binary_function;

	namespace tr1 {	
	
struct _Nil
	{	
	};
static _Nil _Nil_obj;

	
template<class _Ty,
	_Ty _Val>
	struct integral_constant
	{	
	static const _Ty value = _Val;

	typedef _Ty value_type;
	typedef integral_constant<_Ty, _Val> type;
	};

typedef integral_constant<bool, true> true_type;
typedef integral_constant<bool, false> false_type;

	
template<bool _First,
	bool _Second>
	struct _Or;
template<>
	struct _Or<false, false>
		: false_type
		{	
		};

template<>
	struct _Or<false, true>
		: true_type
		{	
		};

template<>
	struct _Or<true, false>
		: true_type
		{	
		};

template<>
	struct _Or<true, true>
		: true_type
		{	
		};

	
template<bool>
	struct _Cat_base;
template<>
	struct _Cat_base<false>
	: false_type
	{	
	};

template<>
	struct _Cat_base<true>
	: true_type
	{	
	};

	
template<class _Ty>
	struct _Is_integral
		: false_type
	{	
	};

template<>
	struct _Is_integral<bool>
		: true_type
	{	
	};

template<>
	struct _Is_integral<char>
		: true_type
	{	
	};

template<>
	struct _Is_integral<unsigned char>
		: true_type
	{	
	};

template<>
	struct _Is_integral<signed char>
		: true_type
	{	
	};

 
template<>
	struct _Is_integral<wchar_t>
		: true_type
	{	
	};
 

template<>
	struct _Is_integral<unsigned short>
		: true_type
	{	
	};

template<>
	struct _Is_integral<signed short>
		: true_type
	{	
	};

template<>
	struct _Is_integral<unsigned int>
		: true_type
	{	
	};

template<>
	struct _Is_integral<signed int>
		: true_type
	{	
	};

template<>
	struct _Is_integral<unsigned long>
		: true_type
	{	
	};

template<>
	struct _Is_integral<signed long>
		: true_type
	{	
	};

 
template<>
	struct _Is_integral<__int64>
		: true_type
	{	
	};

template<>
	struct _Is_integral<unsigned __int64>
		: true_type
	{	
	};
 

	
template<class _Ty>
	struct _Is_floating_point
		: false_type
	{	
	};

template<>
	struct _Is_floating_point<float>
		: true_type
	{	
	};

template<>
	struct _Is_floating_point<double>
		: true_type
	{	
	};

template<>
	struct _Is_floating_point<long double>
		: true_type
	{	
	};

	
template<class _Ty>
	struct _Remove_reference
	{	
	typedef _Ty _Type;
	};

template<class _Ty>
	struct _Remove_reference<_Ty&>
	{	
	typedef _Ty _Type;
	};

template<class _Ty>
	struct _Remove_reference<_Ty&&>
	{	
	typedef _Ty _Type;
	};

	
template<class _Ty>
	struct _Remove_rvalue_reference
	{	
	typedef _Ty _Type;
	};

template<class _Ty>
	struct _Remove_rvalue_reference<_Ty&&>
	{	
	typedef _Ty _Type;
	};

	
template<class _Tgt,
	class _Src>
	struct _Copy_cv
	{	
	typedef typename _Remove_reference<_Tgt>::_Type _Tgtx;
	typedef _Tgtx& _Type;
	};

template<class _Tgt,
	class _Src>
	struct _Copy_cv<_Tgt, const _Src>
	{	
	typedef typename _Remove_reference<_Tgt>::_Type _Tgtx;
	typedef const _Tgtx& _Type;
	};

template<class _Tgt,
	class _Src>
	struct _Copy_cv<_Tgt, volatile _Src>
	{	
	typedef typename _Remove_reference<_Tgt>::_Type _Tgtx;
	typedef volatile _Tgtx& _Type;
	};

template<class _Tgt,
	class _Src>
	struct _Copy_cv<_Tgt, const volatile _Src>
	{	
	typedef typename _Remove_reference<_Tgt>::_Type _Tgtx;
	typedef const volatile _Tgtx& _Type;
	};

template<class _Tgt,
	class _Src>
	struct _Copy_cv<_Tgt, _Src&>
	{	
	typedef typename _Copy_cv<_Tgt, _Src>::_Type _Type;
	};

	
 






	
_No _Has_result_type(...);

template<class _Ty>
	_Yes _Has_result_type(_Ty *,
		typename _Remove_reference<typename _Ty::result_type>::_Type * = 0);



	}	
}
 #pragma warning(pop)
 #pragma pack(pop)










 #pragma pack(push,8)
 #pragma warning(push,3)

	


  

  


  
  
  
  


  
  
  
  
  

  

  

  

  


  

  

  

  


namespace std {
	namespace tr1 {	
	
template<class _Ty>
	struct _Ptr_traits
	{	
	};

template<class _Ty>
	struct _Ptr_traits<_Ty *>
	{	
	static const bool _Is_const = false;
	static const bool _Is_volatile = false;
	};

template<class _Ty>
	struct _Ptr_traits<const _Ty *>
	{	
	static const bool _Is_const = true;
	static const bool _Is_volatile = false;
	};

template<class _Ty>
	struct _Ptr_traits<volatile _Ty *>
	{	
	static const bool _Is_const = false;
	static const bool _Is_volatile = true;
	};

template<class _Ty>
	struct _Ptr_traits<const volatile _Ty *>
	{	
	static const bool _Is_const = true;
	static const bool _Is_volatile = true;
	};

template<class _Ty>
	struct _Is_funptr
		: false_type
	{	
	};

template<class _Ty>
	struct _Is_memfunptr
		: false_type
	{	
	};

 
 





 







 
 





 
  
  
  
  
  
  

 



















































































 
  

 






 
  
  
  
  
  
  
  
  
  
  
  
  
  

 






























 
  

 



 
  

 



















































  
  
  
  

























































	



template<class _Ret      >
	struct _Is_funptr<_Ret (*)(    )>
	: true_type
	{	
	};

template<class _Ret      >
	struct _Is_funptr<_Ret (*)(     ...)>
	: true_type
	{	
	};

 








































































































































































 









 








  
  
  
  
  
  

 











































































 






  
 

 















  
  
  
  
  
  
  
  
  
  
  
  
  

 















 
  

 



 
  

 



















































  
  
  
  

























































	



template<class _Ret , class _Arg0    >
	struct _Is_funptr<_Ret (*)(_Arg0    )>
	: true_type
	{	
	};

template<class _Ret , class _Arg0    >
	struct _Is_funptr<_Ret (*)(_Arg0     ...)>
	: true_type
	{	
	};

 
template<class _Ret , class _Arg0    >
	struct _Is_memfunptr<_Ret (_Arg0::*)(  )>
		: true_type
	{	
	};

template<class _Ret , class _Arg0    >
	struct _Is_memfunptr<_Ret (_Arg0::*)(   ...)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0    >
	struct _Is_memfunptr<_Ret (_Arg0::*)(  ) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0    >
	struct _Is_memfunptr<_Ret (_Arg0::*)(   ...) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0    >
	struct _Is_memfunptr<_Ret (_Arg0::*)(  ) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0    >
	struct _Is_memfunptr<_Ret (_Arg0::*)(   ...) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0    >
	struct _Is_memfunptr<_Ret (_Arg0::*)(  ) const volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0    >
	struct _Is_memfunptr<_Ret (_Arg0::*)(   ...) const volatile>
		: true_type
	{	
	};
 

































































































































 
















  
  
  
  
  
  

 



































































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 
  

 



















































  
  
  
  

























































	



template<class _Ret , class _Arg0 ,   class _Arg1>
	struct _Is_funptr<_Ret (*)(_Arg0 ,   _Arg1)>
	: true_type
	{	
	};

template<class _Ret , class _Arg0 ,   class _Arg1>
	struct _Is_funptr<_Ret (*)(_Arg0 ,   _Arg1 ...)>
	: true_type
	{	
	};

 
template<class _Ret , class _Arg0 ,   class _Arg1>
	struct _Is_memfunptr<_Ret (_Arg0::*)(  _Arg1)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 ,   class _Arg1>
	struct _Is_memfunptr<_Ret (_Arg0::*)(  _Arg1 ...)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 ,   class _Arg1>
	struct _Is_memfunptr<_Ret (_Arg0::*)(  _Arg1) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 ,   class _Arg1>
	struct _Is_memfunptr<_Ret (_Arg0::*)(  _Arg1 ...) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 ,   class _Arg1>
	struct _Is_memfunptr<_Ret (_Arg0::*)(  _Arg1) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 ,   class _Arg1>
	struct _Is_memfunptr<_Ret (_Arg0::*)(  _Arg1 ...) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 ,   class _Arg1>
	struct _Is_memfunptr<_Ret (_Arg0::*)(  _Arg1) const volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 ,   class _Arg1>
	struct _Is_memfunptr<_Ret (_Arg0::*)(  _Arg1 ...) const volatile>
		: true_type
	{	
	};
 

































































































































 
























  
  
  
  
  
  

 



























































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  

























































	



template<class _Ret , class _Arg0 , class _Arg1 , class _Arg2>
	struct _Is_funptr<_Ret (*)(_Arg0 , _Arg1 , _Arg2)>
	: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1 , class _Arg2>
	struct _Is_funptr<_Ret (*)(_Arg0 , _Arg1 , _Arg2 ...)>
	: true_type
	{	
	};

 
template<class _Ret , class _Arg0 , class _Arg1 , class _Arg2>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1 , _Arg2)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1 , class _Arg2>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1 , _Arg2 ...)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1 , class _Arg2>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1 , _Arg2) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1 , class _Arg2>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1 , _Arg2 ...) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1 , class _Arg2>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1 , _Arg2) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1 , class _Arg2>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1 , _Arg2 ...) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1 , class _Arg2>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1 , _Arg2) const volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1 , class _Arg2>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1 , _Arg2 ...) const volatile>
		: true_type
	{	
	};
 

































































































































 
































  
  
  
  
  
  

 



















































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  

























































	



template<class _Ret , class _Arg0 , class _Arg1, class _Arg2 , class _Arg3>
	struct _Is_funptr<_Ret (*)(_Arg0 , _Arg1, _Arg2 , _Arg3)>
	: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2 , class _Arg3>
	struct _Is_funptr<_Ret (*)(_Arg0 , _Arg1, _Arg2 , _Arg3 ...)>
	: true_type
	{	
	};

 
template<class _Ret , class _Arg0 , class _Arg1, class _Arg2 , class _Arg3>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2 , _Arg3)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2 , class _Arg3>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2 , _Arg3 ...)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2 , class _Arg3>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2 , _Arg3) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2 , class _Arg3>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2 , _Arg3 ...) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2 , class _Arg3>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2 , _Arg3) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2 , class _Arg3>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2 , _Arg3 ...) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2 , class _Arg3>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2 , _Arg3) const volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2 , class _Arg3>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2 , _Arg3 ...) const volatile>
		: true_type
	{	
	};
 

































































































































 








































  
  
  
  
  
  

 











































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  

























































	



template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3 , class _Arg4>
	struct _Is_funptr<_Ret (*)(_Arg0 , _Arg1, _Arg2, _Arg3 , _Arg4)>
	: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3 , class _Arg4>
	struct _Is_funptr<_Ret (*)(_Arg0 , _Arg1, _Arg2, _Arg3 , _Arg4 ...)>
	: true_type
	{	
	};

 
template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3 , class _Arg4>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3 , _Arg4)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3 , class _Arg4>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3 , _Arg4 ...)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3 , class _Arg4>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3 , _Arg4) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3 , class _Arg4>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3 , _Arg4 ...) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3 , class _Arg4>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3 , _Arg4) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3 , class _Arg4>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3 , _Arg4 ...) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3 , class _Arg4>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3 , _Arg4) const volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3 , class _Arg4>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3 , _Arg4 ...) const volatile>
		: true_type
	{	
	};
 

































































































































 
















































  
  
  
  
  
  

 



































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  

























































	



template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4 , class _Arg5>
	struct _Is_funptr<_Ret (*)(_Arg0 , _Arg1, _Arg2, _Arg3, _Arg4 , _Arg5)>
	: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4 , class _Arg5>
	struct _Is_funptr<_Ret (*)(_Arg0 , _Arg1, _Arg2, _Arg3, _Arg4 , _Arg5 ...)>
	: true_type
	{	
	};

 
template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4 , class _Arg5>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4 , _Arg5)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4 , class _Arg5>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4 , _Arg5 ...)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4 , class _Arg5>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4 , _Arg5) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4 , class _Arg5>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4 , _Arg5 ...) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4 , class _Arg5>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4 , _Arg5) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4 , class _Arg5>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4 , _Arg5 ...) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4 , class _Arg5>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4 , _Arg5) const volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4 , class _Arg5>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4 , _Arg5 ...) const volatile>
		: true_type
	{	
	};
 

































































































































 
























































  
  
  
  
  
  

 



























 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  

























































	



template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5 , class _Arg6>
	struct _Is_funptr<_Ret (*)(_Arg0 , _Arg1, _Arg2, _Arg3, _Arg4, _Arg5 , _Arg6)>
	: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5 , class _Arg6>
	struct _Is_funptr<_Ret (*)(_Arg0 , _Arg1, _Arg2, _Arg3, _Arg4, _Arg5 , _Arg6 ...)>
	: true_type
	{	
	};

 
template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5 , class _Arg6>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5 , _Arg6)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5 , class _Arg6>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5 , _Arg6 ...)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5 , class _Arg6>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5 , _Arg6) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5 , class _Arg6>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5 , _Arg6 ...) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5 , class _Arg6>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5 , _Arg6) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5 , class _Arg6>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5 , _Arg6 ...) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5 , class _Arg6>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5 , _Arg6) const volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5 , class _Arg6>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5 , _Arg6 ...) const volatile>
		: true_type
	{	
	};
 

































































































































 
































































  
  
  
  
  
  

 



















 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  

























































	



template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6 , class _Arg7>
	struct _Is_funptr<_Ret (*)(_Arg0 , _Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6 , _Arg7)>
	: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6 , class _Arg7>
	struct _Is_funptr<_Ret (*)(_Arg0 , _Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6 , _Arg7 ...)>
	: true_type
	{	
	};

 
template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6 , class _Arg7>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6 , _Arg7)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6 , class _Arg7>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6 , _Arg7 ...)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6 , class _Arg7>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6 , _Arg7) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6 , class _Arg7>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6 , _Arg7 ...) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6 , class _Arg7>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6 , _Arg7) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6 , class _Arg7>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6 , _Arg7 ...) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6 , class _Arg7>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6 , _Arg7) const volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6 , class _Arg7>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6 , _Arg7 ...) const volatile>
		: true_type
	{	
	};
 

































































































































 








































































  
  
  
  
  
  

 











 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  

























































	



template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7 , class _Arg8>
	struct _Is_funptr<_Ret (*)(_Arg0 , _Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7 , _Arg8)>
	: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7 , class _Arg8>
	struct _Is_funptr<_Ret (*)(_Arg0 , _Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7 , _Arg8 ...)>
	: true_type
	{	
	};

 
template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7 , class _Arg8>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7 , _Arg8)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7 , class _Arg8>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7 , _Arg8 ...)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7 , class _Arg8>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7 , _Arg8) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7 , class _Arg8>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7 , _Arg8 ...) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7 , class _Arg8>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7 , _Arg8) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7 , class _Arg8>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7 , _Arg8 ...) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7 , class _Arg8>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7 , _Arg8) const volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7 , class _Arg8>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7 , _Arg8 ...) const volatile>
		: true_type
	{	
	};
 

































































































































 
















































































  
  
  
  
  
  

 



 



  

 



 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  

























































	



template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7, class _Arg8 , class _Arg9>
	struct _Is_funptr<_Ret (*)(_Arg0 , _Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7, _Arg8 , _Arg9)>
	: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7, class _Arg8 , class _Arg9>
	struct _Is_funptr<_Ret (*)(_Arg0 , _Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7, _Arg8 , _Arg9 ...)>
	: true_type
	{	
	};

 
template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7, class _Arg8 , class _Arg9>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7, _Arg8 , _Arg9)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7, class _Arg8 , class _Arg9>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7, _Arg8 , _Arg9 ...)>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7, class _Arg8 , class _Arg9>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7, _Arg8 , _Arg9) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7, class _Arg8 , class _Arg9>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7, _Arg8 , _Arg9 ...) const>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7, class _Arg8 , class _Arg9>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7, _Arg8 , _Arg9) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7, class _Arg8 , class _Arg9>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7, _Arg8 , _Arg9 ...) volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7, class _Arg8 , class _Arg9>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7, _Arg8 , _Arg9) const volatile>
		: true_type
	{	
	};

template<class _Ret , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7, class _Arg8 , class _Arg9>
	struct _Is_memfunptr<_Ret (_Arg0::*)(_Arg1, _Arg2, _Arg3, _Arg4, _Arg5, _Arg6, _Arg7, _Arg8 , _Arg9 ...) const volatile>
		: true_type
	{	
	};
 














































































































































	
	
template<class _Ty>
	struct remove_const
	{	
	typedef _Ty type;
	};

template<class _Ty>
	struct remove_const<const _Ty>
	{	
	typedef _Ty type;
	};

template<class _Ty>
	struct remove_const<const _Ty[]>
	{	
	typedef _Ty type[];
	};

template<class _Ty, unsigned int _Nx>
	struct remove_const<const _Ty[_Nx]>
	{	
	typedef _Ty type[_Nx];
	};

	
template<class _Ty>
	struct remove_volatile
	{	
	typedef _Ty type;
	};

template<class _Ty>
	struct remove_volatile<volatile _Ty>
	{	
	typedef _Ty type;
	};

template<class _Ty>
	struct remove_volatile<volatile _Ty[]>
	{	
	typedef _Ty type[];
	};

template<class _Ty, unsigned int _Nx>
	struct remove_volatile<volatile _Ty[_Nx]>
	{	
	typedef _Ty type[_Nx];
	};

	
template<class _Ty>
	struct remove_cv
	{	
	typedef typename remove_const<typename remove_volatile<_Ty>::type>::type
		type;
	};

	
template<class _Ty>
	struct add_const
	{	
	typedef const _Ty type;
	};

template<class _Ty>
	struct add_const<_Ty&>
	{	
	typedef _Ty& type;
	};

	
template<class _Ty>
	struct add_volatile
	{	
	typedef volatile _Ty type;
	};

template<class _Ty>
	struct add_volatile<_Ty&>
	{	
	typedef _Ty& type;
	};

	
template<class _Ty>
	struct add_cv
	{	
	typedef typename add_const<typename add_volatile<_Ty>::type>::type type;
	};

	
template<class _Ty>
	struct remove_reference
	: _Remove_reference<_Ty>
	{	
	typedef typename _Remove_reference<_Ty>::_Type type;
	};

	
template<class _Ty>
	struct add_reference
	{	
	typedef typename _Remove_reference<_Ty>::_Type& type;
	};

template<>
	struct add_reference<void>
	{	
	typedef void type;
	};

template<>
	struct add_reference<const void>
	{	
	typedef const void type;
	};

template<>
	struct add_reference<volatile void>
	{	
	typedef volatile void type;
	};

template<>
	struct add_reference<const volatile void>
	{	
	typedef const volatile void type;
	};

	
template<class _Ty>
	struct add_lvalue_reference
	{	
	typedef typename add_reference<_Ty>::type type;
	};

	
template<class _Ty>
	struct add_rvalue_reference
	{	
	typedef _Ty && type;
	};

template<class _Ty>
	struct add_rvalue_reference<_Ty&>
	{	
	typedef _Ty& type;
	};

template<>
	struct add_rvalue_reference<void>
	{	
	typedef void type;
	};

template<>
	struct add_rvalue_reference<const void>
	{	
	typedef const void type;
	};

template<>
	struct add_rvalue_reference<volatile void>
	{	
	typedef volatile void type;
	};

template<>
	struct add_rvalue_reference<const volatile void>
	{	
	typedef const volatile void type;
	};

	
template<class _Ty>
	struct remove_extent
	{	
	typedef _Ty type;
	};

template<class _Ty, unsigned int _Ix>
	struct remove_extent<_Ty[_Ix]>
	{	
	typedef _Ty type;
	};

template<class _Ty>
	struct remove_extent<_Ty[]>
	{	
	typedef _Ty type;
	};

	
template<class _Ty>
	struct remove_all_extents
	{	
	typedef _Ty type;
	};

template<class _Ty, unsigned int _Ix>
	struct remove_all_extents<_Ty[_Ix]>
	{	
	typedef typename remove_all_extents<_Ty>::type type;
	};

template<class _Ty>
	struct remove_all_extents<_Ty[]>
	{	
	typedef typename remove_all_extents<_Ty>::type type;
	};

	
template<class _Ty>
	struct remove_pointer
	{	
	typedef _Ty type;
	};

template<class _Ty>
	struct remove_pointer<_Ty *>
	{	
	typedef _Ty type;
	};

template<class _Ty>
	struct remove_pointer<_Ty *const>
	{	
	typedef _Ty type;
	};

template<class _Ty>
	struct remove_pointer<_Ty *volatile>
	{	
	typedef _Ty type;
	};

template<class _Ty>
	struct remove_pointer<_Ty *const volatile>
	{	
	typedef _Ty type;
	};

	
template<class _Ty>
	struct add_pointer
	{	
	typedef typename remove_reference<_Ty>::type *type;
	};

	
	
template<class _Ty>
	struct _Is_void
	: false_type
	{	
	};

template<>
	struct _Is_void<void>
	: true_type
	{	
	};

template<class _Ty>
	struct is_void
	: _Is_void<typename remove_cv<_Ty>::type>
	{	
	};

	
template<class _Ty>
	struct is_integral
	: _Is_integral<typename remove_cv<_Ty>::type>
	{	
	};

	
template<class _Ty>
	struct is_floating_point
	: _Is_floating_point<typename remove_cv<_Ty>::type>
	{	
	};

	
template<class _Ty>
	struct is_array
	: false_type
	{	
	};

template<class _Ty, size_t _Nx>
	struct is_array<_Ty[_Nx]>
	: true_type
	{	
	};

template<class _Ty>
	struct is_array<_Ty[]>
	: true_type
	{	
	};

 
	
template<class _Ty>
	struct is_lvalue_reference
	: false_type
	{	
	};

template<class _Ty>
	struct is_lvalue_reference<_Ty&>
	: true_type
	{	
	};

	
template<class _Ty>
	struct is_rvalue_reference
	: false_type
	{	
	};

template<class _Ty>
	struct is_rvalue_reference<_Ty&&>
	: true_type
	{	
	};

	
template<class _Ty>
	struct is_reference
	: _Cat_base<is_lvalue_reference<_Ty>::value
		|| is_rvalue_reference<_Ty>::value>
	{	
	};

 














	
template<class _Ty>
	struct _Is_member_object_pointer
	: false_type
	{	
	};

template<class _Ty1, class _Ty2>
	struct _Is_member_object_pointer<_Ty1 _Ty2::*>
	: _Cat_base<!_Is_memfunptr<_Ty1 _Ty2::*>::value>
	{	
	};

template<class _Ty>
	struct is_member_object_pointer
	: _Is_member_object_pointer<typename remove_cv<_Ty>::type>
	{	
	};

	
template<class _Ty>
	struct is_member_function_pointer
	: _Cat_base<_Is_memfunptr<typename remove_cv<_Ty>::type>::value>
	{	
	};

	
template<class _Ty>
	struct _Is_pointer
	: false_type
	{	
	};

template<class _Ty>
	struct _Is_pointer<_Ty *>
	: _Cat_base<!is_member_object_pointer<_Ty *>::value
		&& !is_member_function_pointer<_Ty *>::value>
	{	
	};

template<class _Ty>
	struct is_pointer
	: _Is_pointer<typename remove_cv<_Ty>::type>
	{	
	};

	
template<class _Ty>
	struct is_union : _Cat_base<__is_union(_Ty)>
	{	
	};

	
template<class _Ty>
	struct is_class : _Cat_base<__is_class(_Ty)>
	{	
	};

	
template<class _Ty>
	struct is_function
	: _Cat_base<_Is_funptr<typename remove_cv<_Ty>::type *>::value>
	{	
	};

template<class _Ty>
	struct is_function<_Ty&>
	: false_type
	{	
	};

	
template<class _Ty>
	struct is_arithmetic
	: _Cat_base<is_integral<_Ty>::value
		|| is_floating_point<_Ty>::value>
	{	
	};

	
template<class _Ty>
	struct is_fundamental
	: _Cat_base<is_arithmetic<_Ty>::value
		|| is_void<_Ty>::value>
	{	
	};

	
template<class _Ty>
	struct is_object
	: _Cat_base<!is_function<_Ty>::value
		&& !is_reference<_Ty>::value
		&& !is_void<_Ty>::value>
	{	
	};

	

template<class _From, class _To>
	struct is_convertible : _Cat_base<is_void<_From>::value && is_void<_To>::value || __is_convertible_to(_From, _To)>
	{	
	};

	

template<class _Ty>
	struct is_enum : _Cat_base<__is_enum(_Ty)>
	{	
	};

	
template<class _Ty>
	struct is_compound
	: _Cat_base<!is_fundamental<_Ty>::value>
	{	
	};

	
template<class _Ty>
	struct is_member_pointer
	: _Cat_base<is_member_object_pointer<_Ty>::value
		|| is_member_function_pointer<_Ty>::value>
	{	
	};

	
template<class _Ty>
	struct is_scalar
	: _Cat_base<is_arithmetic<_Ty>::value
		|| is_enum<_Ty>::value
		|| is_pointer<_Ty>::value
		|| is_member_pointer<_Ty>::value>
	{	
	};

template<class _Ty>
	struct is_scalar<_Ty&>
	: false_type
	{
	};

	
template<class _Ty>
	struct is_const
	: _Cat_base<_Ptr_traits<_Ty *>::_Is_const
		&& !is_function<_Ty>::value>
	{	
	};

template<class _Ty, unsigned int _Nx>
	struct is_const<_Ty[_Nx]>
	: false_type
	{	
	};

template<class _Ty, unsigned int _Nx>
	struct is_const<const _Ty[_Nx]>
	: true_type
	{	
	};

template<class _Ty>
	struct is_const<_Ty&>
	: false_type
	{	
	};

	
template<class _Ty>
	struct is_volatile
	: _Cat_base<_Ptr_traits<_Ty *>::_Is_volatile
		&& !is_function<_Ty>::value>
	{	
	};

template<class _Ty>
	struct is_volatile<_Ty&>
	: false_type
	{	
	};

	
template<class _Ty>
	struct _Is_pod : _Cat_base<is_void<_Ty>::value || is_scalar<_Ty>::value || __has_trivial_constructor(_Ty) && __is_pod(_Ty)>
	{	
	};

template<class _Ty>
	struct is_pod
	: _Is_pod<typename ::std:: tr1::remove_all_extents<_Ty>::type>
	{	
	};

	
template<class _Ty>
	struct is_empty : _Cat_base<__is_empty(_Ty)>
	{	
	};

	
template<class _Ty>
	struct is_polymorphic : _Cat_base<__is_polymorphic(_Ty)>
	{	
	};

	
template<class _Ty>
	struct is_abstract : _Cat_base<__is_abstract(_Ty)>
	{	
	};

 
	
template<class _Ty>
	struct is_standard_layout : is_pod<_Ty>
	{	
	};

	
template<class _Ty>
	struct is_trivial : is_pod<_Ty>
	{	
	};
 

	
template<class _Ty>
	struct has_trivial_constructor : _Cat_base<is_pod<_Ty>::value || __has_trivial_constructor(_Ty)>
	{	
	};

	
template<class _Ty>
	struct has_trivial_copy : _Cat_base<is_pod<_Ty>::value || __has_trivial_copy(_Ty)>
	{	
	};

 
	
template<class _Ty>
	struct has_trivial_default_constructor : _Cat_base<is_pod<_Ty>::value || __has_trivial_constructor(_Ty)>
	{	
	};

	
template<class _Ty>
	struct has_trivial_copy_constructor : _Cat_base<is_pod<_Ty>::value || __has_trivial_copy(_Ty)>
	{	
	};
 

	
template<class _Ty>
	struct has_trivial_assign : _Cat_base<is_pod<_Ty>::value || __has_trivial_assign(_Ty)>
	{	
	};

	
template<class _Ty>
	struct has_trivial_destructor : _Cat_base<!is_void<_Ty>::value && (is_pod<_Ty>::value || __has_trivial_destructor(_Ty))>
	{	
	};

	
template<class _Ty>
	struct has_nothrow_constructor : _Cat_base<is_pod<_Ty>::value || __has_nothrow_constructor(_Ty)>
	{	
	};

	
template<class _Ty>
	struct has_nothrow_copy : _Cat_base<is_pod<_Ty>::value || __has_nothrow_copy(_Ty)>
	{	
	};

 
	
template<class _Ty>
	struct has_nothrow_default_constructor : _Cat_base<is_pod<_Ty>::value || __has_nothrow_constructor(_Ty)>
	{	
	};

	
template<class _Ty>
	struct has_nothrow_copy_constructor : _Cat_base<is_pod<_Ty>::value || __has_nothrow_copy(_Ty)>
	{	
	};
 

	
template<class _Ty>
	struct has_nothrow_assign : _Cat_base<is_pod<_Ty>::value || __has_nothrow_assign(_Ty)>
	{	
	};

	
template<class _Ty>
	struct has_virtual_destructor : _Cat_base<__has_virtual_destructor(_Ty)>
	{	
	};

	
template<class _Ty>
	struct _Has_signed_vals
	: _Cat_base<(typename remove_cv<_Ty>::type)(-1)
		< (typename remove_cv<_Ty>::type)(0)>
	{	
	};

template<class _Ty>
	struct is_signed
	: _Cat_base<is_floating_point<_Ty>::value || is_integral<_Ty>::value
		&& _Has_signed_vals<
			typename _If<is_integral<_Ty>::value, _Ty, int>::_Type>::value>
	{	
	};

	
template<class _Ty>
	struct is_unsigned
	: _Cat_base<is_integral<_Ty>::value
		&& !_Has_signed_vals<
			typename _If<is_integral<_Ty>::value, _Ty, int>::_Type>::value>
	{	
	};

	
template<class _Ty>
	struct make_signed
	{	
	static const size_t _Bytes = sizeof (_Ty);

	typedef typename _If<is_signed<_Ty>::value, _Ty,
		typename _If<_Bytes <= sizeof (char), signed char,
			typename _If<_Bytes <= sizeof (short), short,
				typename _If<_Bytes <= sizeof (int), int,
					typename _If<_Bytes <= sizeof (long), long,
						_Longlong>::_Type>::_Type>::_Type>
							::_Type>::_Type type;
	};

	
template<class _Ty>
	struct make_unsigned
	{	
	static const size_t _Bytes = sizeof (_Ty);

	typedef typename _If<is_unsigned<_Ty>::value, _Ty,
		typename _If<_Bytes <= sizeof (char), unsigned char,
			typename _If<_Bytes <= sizeof (short), unsigned short,
				typename _If<_Bytes <= sizeof (int), unsigned int,
					typename _If<_Bytes <= sizeof (long), unsigned long,
						_ULonglong>::_Type>::_Type>::_Type>
							::_Type>::_Type type;
	};

	
template<class _Ty>
	struct _Get_align
	{	
	_Ty _Elt0;
	char _Elt1;
	_Ty _Elt2;
	};



template<class _Ty>
	struct alignment_of
	: integral_constant<size_t, (sizeof(_Get_align<_Ty>) - 2 * sizeof(_Ty))>
	{	
	};

template<class _Ty>
	struct alignment_of<_Ty&>
	: integral_constant<size_t, (sizeof(_Get_align<_Ty *>) - 2 * sizeof(_Ty *))>
	{	
	};

	




template<class _Ty, size_t _Len> union _Align_type
	{	
	_Ty _Val;
	char _Pad[_Len];
	};

template<size_t _Len, size_t _Align, class _Ty, bool _Ok>
	struct _Aligned;

template<size_t _Len, size_t _Align, class _Ty>
	struct _Aligned<_Len, _Align, _Ty, true>
	{	
	typedef _Align_type<_Ty, _Len> _Type;
	};

template<size_t _Len, size_t _Align>
	struct _Aligned<_Len, _Align, long, false>
	{	
	typedef _Align_type<double, _Len> _Type;
	};

template<size_t _Len, size_t _Align>
	struct _Aligned<_Len, _Align, int, false>
	{	
	typedef typename _Aligned<_Len, _Align, long, _Align == (sizeof(_Get_align<long>) - 2 * sizeof(long))>::_Type _Type;
	};

template<size_t _Len, size_t _Align>
	struct _Aligned<_Len, _Align, short, false>
	{	
	typedef typename _Aligned<_Len, _Align, int, _Align == (sizeof(_Get_align<int>) - 2 * sizeof(int))>::_Type _Type;
	};

template<size_t _Len, size_t _Align>
	struct _Aligned<_Len, _Align, char, false>
	{	
	typedef typename _Aligned<_Len, _Align, short, _Align == (sizeof(_Get_align<short>) - 2 * sizeof(short))>::_Type _Type;
	};

template<size_t _Len, size_t _Align>
	struct aligned_storage
	{	
	typedef typename _Aligned<_Len, _Align, char, _Align == (sizeof(_Get_align<char>) - 2 * sizeof(char))>::_Type type;
	};





	
template<class _Ty>
	struct rank
	: integral_constant<size_t, 0>
	{	
	};

template<class _Ty, unsigned int _Ix>
	struct rank<_Ty[_Ix]>
	: integral_constant<size_t, rank<_Ty>::value + 1>
	{	
	};

template<class _Ty>
	struct rank<_Ty[]>
	: integral_constant<size_t, rank<_Ty>::value + 1>
	{	
	};

	
template<class _Ty, unsigned int _Nx>
	struct _Extent
	: integral_constant<size_t, 0>
	{	
	};

template<class _Ty, unsigned int _Ix>
	struct _Extent<_Ty[_Ix], 0>
	: integral_constant<size_t, _Ix>
	{	
	};

template<class _Ty, unsigned int _Nx, unsigned int _Ix>
	struct _Extent<_Ty[_Ix], _Nx>
	: _Extent<_Ty, _Nx - 1>
	{	
	};

template<class _Ty, unsigned int _Nx>
	struct _Extent<_Ty[], _Nx>
	: _Extent<_Ty, _Nx - 1>
	{	
	};

template<class _Ty, unsigned int _Nx = 0>
	struct extent
	: _Extent<_Ty, _Nx>
	{	
	};

	
template<class _Ty1, class _Ty2>
	struct is_same
	: false_type
	{	
	};

template<class _Ty1>
	struct is_same<_Ty1, _Ty1>
	: true_type
	{	
	};

	
template<class _Base, class _Der>
	struct is_base_of : _Cat_base<__is_base_of(_Base, _Der)>
	{	
	};


	
template<class _Ty>
	struct decay
	{	
	typedef typename remove_reference<_Ty>::type _Ty1;

	typedef typename _If<is_array<_Ty1>::value,
		typename remove_extent<_Ty1>::type *,
		typename _If<is_function<_Ty1>::value,
			typename add_pointer<_Ty1>::type,
			typename remove_cv<_Ty1>::type>::_Type>::_Type type;
	};

	
template<bool _Test,
	class _Type = void>
	struct enable_if
	{	
	};

template<class _Type>
	struct enable_if<true, _Type>
	{	
	typedef _Type type;
	};

	
template<bool _Test,
	class _Ty1,
	class _Ty2>
	struct conditional
	{	
	typedef _Ty2 type;
	};

template<class _Ty1,
	class _Ty2>
	struct conditional<true, _Ty1, _Ty2>
	{	
	typedef _Ty1 type;
	};

	}	

 
using tr1::add_const;
using tr1::add_cv;
using tr1::add_pointer;
using tr1::add_lvalue_reference;
using tr1::add_reference;	
using tr1::add_rvalue_reference;
using tr1::add_volatile;
using tr1::aligned_storage;
using tr1::alignment_of;
using tr1::conditional;
using tr1::decay;
using tr1::enable_if;
using tr1::extent;
using tr1::false_type;
using tr1::has_nothrow_assign;
using tr1::has_nothrow_constructor;	
using tr1::has_nothrow_copy;	
using tr1::has_nothrow_copy_constructor;
using tr1::has_nothrow_default_constructor;
using tr1::has_trivial_assign;
using tr1::has_trivial_constructor;	
using tr1::has_trivial_copy;	
using tr1::has_trivial_copy_constructor;
using tr1::has_trivial_default_constructor;
using tr1::has_trivial_destructor;
using tr1::has_virtual_destructor;
using tr1::integral_constant;
using tr1::is_abstract;
using tr1::is_arithmetic;
using tr1::is_array;
using tr1::is_base_of;
using tr1::is_class;
using tr1::is_compound;
using tr1::is_const;
using tr1::is_convertible;
using tr1::is_empty;
using tr1::is_enum;
using tr1::is_floating_point;
using tr1::is_function;
using tr1::is_fundamental;
using tr1::is_integral;
using tr1::is_lvalue_reference;
using tr1::is_member_function_pointer;
using tr1::is_member_object_pointer;
using tr1::is_member_pointer;
using tr1::is_object;
using tr1::is_pod;
using tr1::is_pointer;
using tr1::is_polymorphic;
using tr1::is_reference;
using tr1::is_rvalue_reference;
using tr1::is_same;
using tr1::is_scalar;
using tr1::is_signed;
using tr1::is_standard_layout;
using tr1::is_trivial;
using tr1::is_union;
using tr1::is_unsigned;
using tr1::is_void;
using tr1::is_volatile;
using tr1::make_signed;
using tr1::make_unsigned;
using tr1::rank;
using tr1::remove_all_extents;
using tr1::remove_const;
using tr1::remove_cv;
using tr1::remove_extent;
using tr1::remove_pointer;
using tr1::remove_reference;
using tr1::_Remove_rvalue_reference;
using tr1::remove_volatile;
using tr1::true_type;
 

 

template<class _Ty>
	struct _Arithmetic_traits;

template<>
	struct _Arithmetic_traits<bool>
	{	
	static const int _Rank = 1;
	};

template<>
	struct _Arithmetic_traits<char>
	{	
	static const int _Rank = _Arithmetic_traits<bool>::_Rank + 1;
	};

template<>
	struct _Arithmetic_traits<signed char>
	{	
	static const int _Rank = _Arithmetic_traits<char>::_Rank;
	};

template<>
	struct _Arithmetic_traits<unsigned char>
	{	
	static const int _Rank = _Arithmetic_traits<char>::_Rank;
	};

template<>
	struct _Arithmetic_traits<short>
	{	
	static const int _Rank = _Arithmetic_traits<char>::_Rank + 1;
	};

template<>
	struct _Arithmetic_traits<unsigned short>
	{	
	static const int _Rank = _Arithmetic_traits<short>::_Rank;
	};

template<>
	struct _Arithmetic_traits<int>
	{	
	static const int _Rank = _Arithmetic_traits<short>::_Rank + 1;
	};

template<>
	struct _Arithmetic_traits<unsigned int>
	{	
	static const int _Rank = _Arithmetic_traits<int>::_Rank;
	};

template<>
	struct _Arithmetic_traits<long>
	{	
	static const int _Rank = _Arithmetic_traits<int>::_Rank + 1;
	};

template<>
	struct _Arithmetic_traits<unsigned long>
	{	
	static const int _Rank = _Arithmetic_traits<long>::_Rank;
	};

template<>
	struct _Arithmetic_traits<long long>
	{	
	static const int _Rank = _Arithmetic_traits<long>::_Rank + 1;
	};

template<>
	struct _Arithmetic_traits<unsigned long long>
	{	
	static const int _Rank = _Arithmetic_traits<long long>::_Rank;
	};

template<>
	struct _Arithmetic_traits<float>
	{
	static const int _Rank = _Arithmetic_traits<long long>::_Rank + 1;
	};

template<>
	struct _Arithmetic_traits<double>
	{
	static const int _Rank = _Arithmetic_traits<float>::_Rank + 1;
	};

template<>
	struct _Arithmetic_traits<long double>
	{
	static const int _Rank = _Arithmetic_traits<double>::_Rank + 1;
	};

template<bool _Unsigned> struct _Pickinteger
	{	
	typedef int _Type;
	};

template<>
	struct _Pickinteger<true>
	{	
	typedef unsigned int _Type;
	};

template<class _Ty,
	bool _Small>
	struct _Promote_to_int;

template<class _Ty>
	struct _Promote_to_int<_Ty, true>
	{	
	typedef int _Type;
	};

template<class _Ty>
	struct _Promote_to_int<_Ty, false>
	{	
	typedef typename _Pickinteger<tr1::is_unsigned<_Ty>::value>::_Type _Type;
	};

template<class _Ty,
	bool _Small>
	struct _Maybepromote;

template<class _Ty>
	struct _Maybepromote<_Ty, false>
	{	
	typedef _Ty _Type;
	};

template<class _Ty>
	struct _Maybepromote<_Ty, true>
	{	
	typedef typename _Promote_to_int<_Ty, sizeof(_Ty) < sizeof(int)>::_Type
		_Type;
	};

template<class _Ty>
	struct _Ipromo
	{	
	static const bool _Lessthan =
		_Arithmetic_traits<_Ty>::_Rank < _Arithmetic_traits<int>::_Rank;
	typedef typename _Maybepromote<_Ty, _Lessthan>::_Type _Type;
	};

template<class _Ty0,
	class _Ty1,
	bool _Second>
	struct _Common_typeX
	{	
	typedef _Ty1 _Type;
	};

template<class _Ty0,
	class _Ty1>
	struct _Common_typeX<_Ty0, _Ty1, false>
	{	
	typedef _Ty0 _Type;
	};

template<class _Ty0,
	class _Ty1,
	bool _Uns0,
	bool _Uns1>
	struct _Common_typeY
	{	
	typedef _Ty0 _Type;
	};

template<class _Ty0,
	class _Ty1>
	struct _Common_typeY<_Ty0, _Ty1, false, true>
	{	
	typedef _Ty1 _Type;
	};

template<class _Ty0,
	class _Ty1,
	int _Rank0,
	int _Rank1>
	struct _Common_type
	{	
	typedef typename _Common_typeX<_Ty0, _Ty1, _Rank0 < _Rank1>::_Type _Type;
	};

template<class _Ty0,
	class _Ty1,
	int _Rank>
	struct _Common_type<_Ty0, _Ty1, _Rank, _Rank>
	{	
	typedef typename _Common_typeY<_Ty0, _Ty1,
		tr1::is_unsigned<_Ty0>::value,
		tr1::is_unsigned<_Ty1>::value>::_Type _Type;
	};

template<class _Ty0,
	class _Ty1>
	struct common_type
	{	
	typedef typename _Ipromo<_Ty0>::_Type _PromoTy0;
	typedef typename _Ipromo<_Ty1>::_Type _PromoTy1;
	typedef typename _Common_type<_PromoTy0, _PromoTy1,
		_Arithmetic_traits<_PromoTy0>::_Rank,
		_Arithmetic_traits<_PromoTy1>::_Rank>::_Type type;
	};

 
}
 #pragma warning(pop)
 #pragma pack(pop)











 #pragma pack(push,8)
 #pragma warning(push,3)

 #pragma warning(disable: 4180 4512)

namespace std {
	namespace tr1 {
	
template<class _Type>
	class reference_wrapper;

 
template<class _Type>
	struct _Unrefwrap
	{	
	typedef typename decay<_Type>::type type;
	};

template<class _Type>
	struct _Unrefwrap<reference_wrapper<_Type> >
	{	
	typedef _Type& type;
	};

template<class _Type>
	struct _Unrefwrap<const reference_wrapper<_Type> >
	{	
	typedef _Type& type;
	};

template<class _Type>
	struct _Unrefwrap<volatile reference_wrapper<_Type> >
	{	
	typedef _Type& type;
	};

template<class _Type>
	struct _Unrefwrap<const volatile reference_wrapper<_Type> >
	{	
	typedef _Type& type;
	};

 






	}	
using tr1::_Unrefwrap;

	
template<class _Ty>
	struct identity
	{	
	typedef _Ty type;

	const _Ty& operator()(const _Ty& _Left) const
		{	
		return (_Left);
		}
	};

	
template<class _Ty> inline
	_Ty&& forward(typename identity<_Ty>::type& _Arg)
	{	
	return ((_Ty&&)_Arg);
	}

	
template<class _Ty> inline
	typename tr1::_Remove_reference<_Ty>::_Type&&
		move(_Ty&& _Arg)
	{	
	return ((typename tr1::_Remove_reference<_Ty>::_Type&&)_Arg);
	}

	
template<class _Ty> inline
	typename tr1::_Remove_reference<_Ty>::_Type&&
		_Move(_Ty&& _Arg)
	{	
	return ((typename tr1::_Remove_reference<_Ty>::_Type&&)_Arg);
	}

		
template<class _Ty> inline
	void swap(_Ty& _Left, _Ty& _Right)
	{	
	_Ty _Tmp = _Move(_Left);
	_Left = _Move(_Right);
	_Right = _Move(_Tmp);
	}

		
template<class _Ty> inline
	void _Swap_adl(_Ty& _Left, _Ty& _Right)
	{	
	swap(_Left, _Right);
	}

		

template<class _Ty1,
	class _Ty2>
	struct _Pair_base
	{	
	typedef _Pair_base<_Ty1, _Ty2> _Myt;
	typedef _Ty1 first_type;
	typedef _Ty2 second_type;

	_Pair_base()
		: first(_Ty1()), second(_Ty2())
		{	
		}

	_Pair_base(const _Pair_base<_Ty1, _Ty2>& _Right)
		: first(_Right.first), second(_Right.second)
		{	
		}

	_Pair_base(const _Ty1& _Val1, const _Ty2& _Val2)
		: first(_Val1), second(_Val2)
		{	
		}

	typedef typename tr1::remove_reference<_Ty1>::type _Ty1x;
	typedef typename tr1::remove_reference<_Ty2>::type _Ty2x;

	_Pair_base(_Ty1x&& _Val1, _Ty2x&& _Val2)
		: first(::std:: move(_Val1)),
			second(::std:: move(_Val2))
		{	
		}

	_Pair_base(const _Ty1x& _Val1, _Ty2x&& _Val2)
		: first(_Val1), second(::std:: move(_Val2))
		{	
		}

	_Pair_base(_Ty1x&& _Val1, const _Ty2x& _Val2)
		: first(::std:: move(_Val1)), second(_Val2)
		{	
		}

	template<class _Other1,
		class _Other2>
		_Pair_base(_Other1&& _Val1, _Other2&& _Val2)
		: first(::std:: forward<_Other1>(_Val1)),
			second(::std:: forward<_Other2>(_Val2))
		{	
		}

	_Ty1 first;	
	_Ty2 second;	
	};

template<class _Ty1,
	class _Ty2>
	struct pair
		: public _Pair_base<_Ty1, _Ty2>
	{	
	typedef _Pair_base<_Ty1, _Ty2> _Mybase;

	typedef pair<_Ty1, _Ty2> _Myt;
	typedef _Ty1 first_type;
	typedef _Ty2 second_type;

	pair()
		: _Mybase()
		{	
		}

	pair(const _Ty1& _Val1, const _Ty2& _Val2)
		: _Mybase(_Val1, _Val2)
		{	
		}

	template<class _Other1,
		class _Other2>
		pair(pair<_Other1, _Other2>& _Right)
		: _Mybase(_Right.first, _Right.second)
		{	
		}

	template<class _Other1,
		class _Other2>
		pair(const pair<_Other1, _Other2>& _Right)
		: _Mybase(_Right.first, _Right.second)
		{	
		}

	void swap(_Myt& _Right)
		{	
		if (this != &_Right)
			{	
			_Swap_adl(this->first, _Right.first);
			_Swap_adl(this->second, _Right.second);
			}
		}

	_Myt& operator=(const _Myt& _Right)
		{	
		this->first = _Right.first;
		this->second = _Right.second;
		return (*this);
		}

	typedef typename tr1::remove_reference<_Ty1>::type _Ty1x;
	typedef typename tr1::remove_reference<_Ty2>::type _Ty2x;

	pair(_Ty1x&& _Val1, _Ty2x&& _Val2)
		: _Mybase(::std:: move(_Val1),
			::std:: move(_Val2))
		{	
		}

	pair(const _Ty1x& _Val1, _Ty2x&& _Val2)
		: _Mybase(_Val1,
			::std:: move(_Val2))
		{	
		}

	pair(_Ty1x&& _Val1, const _Ty2x& _Val2)
		: _Mybase(::std:: move(_Val1),
			_Val2)
		{	
		}

	template<class _Other1,
		class _Other2>
		pair(_Other1&& _Val1, _Other2&& _Val2)
		: _Mybase(::std:: forward<_Other1>(_Val1),
			::std:: forward<_Other2>(_Val2))
		{	
		}

	template<class _Other1,
		class _Other2>
		pair(pair<_Other1, _Other2>&& _Right)
		: _Mybase(::std:: forward<_Other1>(_Right.first),
			::std:: forward<_Other2>(_Right.second))
		{	
		}

	pair& operator=(pair<_Ty1, _Ty2>&& _Right)
		{	
		this->first = ::std:: move(_Right.first);
		this->second = ::std:: move(_Right.second);
		return (*this);
		}

	void swap(_Myt&& _Right)
		{	
		if (this != &_Right)
			{	
			this->first = ::std:: move(_Right.first);
			this->second = ::std:: move(_Right.second);
			}
		}
	};

		

template<class _Ty1,
	class _Ty2> inline
	void swap(pair<_Ty1, _Ty2>& _Left, pair<_Ty1, _Ty2>& _Right)
	{	
	_Left.swap(_Right);
	}

template<class _Ty1,
	class _Ty2> inline
	void swap(pair<_Ty1, _Ty2>& _Left, pair<_Ty1, _Ty2>&& _Right)
	{	
	typedef pair<_Ty1, _Ty2> _Myt;
	_Left.swap(::std:: forward<_Myt>(_Right));
	}

template<class _Ty1,
	class _Ty2> inline
	void swap(pair<_Ty1, _Ty2>&& _Left, pair<_Ty1, _Ty2>& _Right)
	{	
	typedef pair<_Ty1, _Ty2> _Myt;
	_Right.swap(::std:: forward<_Myt>(_Left));
	}

template<class _Ty1,
	class _Ty2> inline
	bool operator==(const pair<_Ty1, _Ty2>& _Left,
		const pair<_Ty1, _Ty2>& _Right)
	{	
	return (_Left.first == _Right.first && _Left.second == _Right.second);
	}

template<class _Ty1,
	class _Ty2> inline
	bool operator!=(const pair<_Ty1, _Ty2>& _Left,
		const pair<_Ty1, _Ty2>& _Right)
	{	
	return (!(_Left == _Right));
	}

template<class _Ty1,
	class _Ty2> inline
	bool operator<(const pair<_Ty1, _Ty2>& _Left,
		const pair<_Ty1, _Ty2>& _Right)
	{	
	return (_Left.first < _Right.first ||
		!(_Right.first < _Left.first) && _Left.second < _Right.second);
	}

template<class _Ty1,
	class _Ty2> inline
	bool operator>(const pair<_Ty1, _Ty2>& _Left,
		const pair<_Ty1, _Ty2>& _Right)
	{	
	return (_Right < _Left);
	}

template<class _Ty1,
	class _Ty2> inline
	bool operator<=(const pair<_Ty1, _Ty2>& _Left,
		const pair<_Ty1, _Ty2>& _Right)
	{	
	return (!(_Right < _Left));
	}

template<class _Ty1,
	class _Ty2> inline
	bool operator>=(const pair<_Ty1, _Ty2>& _Left,
		const pair<_Ty1, _Ty2>& _Right)
	{	
	return (!(_Left < _Right));
	}

	

template<class _Ty1,
	class _Ty2> inline
	pair<typename _Unrefwrap<_Ty1>::type,
		typename _Unrefwrap<_Ty2>::type>
		make_pair(_Ty1&& _Val1, _Ty2&& _Val2)
	{	
	typedef pair<typename _Unrefwrap<_Ty1>::type,
		typename _Unrefwrap<_Ty2>::type> _Mypair;
	return (_Mypair(::std:: forward<_Ty1>(_Val1),
		::std:: forward<_Ty2>(_Val2)));
	}

template<class _Ty1,
	class _Ty2> inline
	pair<typename _Unrefwrap<_Ty1>::type,
		typename _Unrefwrap<_Ty2>::type>
		make_pair(const _Ty1& _Val1, _Ty2&& _Val2)
	{	
	typedef pair<typename _Unrefwrap<_Ty1>::type,
		typename _Unrefwrap<_Ty2>::type> _Mypair;
	return (_Mypair((typename _Unrefwrap<_Ty1>::type)_Val1,
		::std:: forward<_Ty2>(_Val2)));
	}

template<class _Ty1,
	class _Ty2> inline
	pair<typename _Unrefwrap<_Ty1>::type,
		typename _Unrefwrap<_Ty2>::type>
		make_pair(_Ty1&& _Val1, const _Ty2& _Val2)
	{	
	typedef pair<typename _Unrefwrap<_Ty1>::type,
		typename _Unrefwrap<_Ty2>::type> _Mypair;
	return (_Mypair(::std:: forward<_Ty1>(_Val1),
		(typename _Unrefwrap<_Ty2>::type)_Val2));
	}

template<class _Ty1,
	class _Ty2> inline
	pair<typename _Unrefwrap<_Ty1>::type,
		typename _Unrefwrap<_Ty2>::type>
		make_pair(const _Ty1& _Val1, const _Ty2& _Val2)
	{	
	typedef pair<typename _Unrefwrap<_Ty1>::type,
		typename _Unrefwrap<_Ty2>::type> _Mypair;
	return (_Mypair((typename _Unrefwrap<_Ty1>::type)_Val1,
		(typename _Unrefwrap<_Ty2>::type)_Val2));
	}

 
template<class _InIt> inline
	_InIt begin(const pair<_InIt, _InIt>& _Pair)
	{	
	return (_Pair.first);
	}

template<class _InIt> inline
	_InIt end(const pair<_InIt, _InIt>& _Pair)
	{	
	return (_Pair.second);
	}
 

		
	namespace rel_ops
		{	
template<class _Ty> inline
	bool operator!=(const _Ty& _Left, const _Ty& _Right)
	{	
	return (!(_Left == _Right));
	}

template<class _Ty> inline
	bool operator>(const _Ty& _Left, const _Ty& _Right)
	{	
	return (_Right < _Left);
	}

template<class _Ty> inline
	bool operator<=(const _Ty& _Left, const _Ty& _Right)
	{	
	return (!(_Right < _Left));
	}

template<class _Ty> inline
	bool operator>=(const _Ty& _Left, const _Ty& _Right)
	{	
	return (!(_Left < _Right));
	}
		}
}

 
namespace std {
	namespace tr1 {	
	
template<class _Tuple>
	struct tuple_size;
template<size_t _Idx,
	class _Tuple>
	struct tuple_element;
template<class _Ty1,
	class _Ty2>
	struct tuple_size<::std:: pair<_Ty1, _Ty2> >
	{	
	static const int value = 2;
	};

template<int _Idx,
	class _Ty>
	struct _Pair_data;
template<class _Ty1,
	class _Ty2>
	struct _Pair_data<0, ::std:: pair<_Ty1, _Ty2> >
	{	
	typedef _Ty1& _Type;
	typedef const _Ty1& _CType;

	static _Type _Val(::std:: pair<_Ty1, _Ty2>& _Pr)
		{	
		return (_Pr.first);
		}

	static _CType _Val(const ::std:: pair<_Ty1, _Ty2>& _Pr)
		{	
		return (_Pr.first);
		}
	};

template<class _Ty1,
	class _Ty2>
	struct _Pair_data<1, ::std:: pair<_Ty1, _Ty2> >
	{	
	typedef _Ty2& _Type;
	typedef const _Ty2& _CType;

	static _Type _Val(::std:: pair<_Ty1, _Ty2>& _Pr)
		{	
		return (_Pr.second);
		}

	static _CType _Val(const ::std:: pair<_Ty1, _Ty2>& _Pr)
		{	
		return (_Pr.second);
		}
	};

template<class _Ty1,
	class _Ty2>
	struct tuple_element<0, ::std:: pair<_Ty1, _Ty2> >
	{	
	typedef _Ty1 type;
	};

template<class _Ty1,
	class _Ty2>
	struct tuple_element<1, ::std:: pair<_Ty1, _Ty2> >
	{	
	typedef _Ty2 type;
	};

template<int _Idx,
	class _Ty1,
	class _Ty2>
	typename _Pair_data<_Idx, ::std:: pair<_Ty1, _Ty2> >::_Type
		get(::std:: pair<_Ty1, _Ty2>& _Pr)
	{	
	return (_Pair_data<_Idx, ::std:: pair<_Ty1, _Ty2> >::_Val(_Pr));
	}

template<int _Idx,
	class _Ty1,
	class _Ty2>
	typename _Pair_data<_Idx, ::std:: pair<_Ty1, _Ty2> >::_CType
		get(const ::std:: pair<_Ty1, _Ty2>& _Pr)
	{	
	return (_Pair_data<_Idx, ::std:: pair<_Ty1, _Ty2> >::_Val(_Pr));
	}
	}	
}
 

 
namespace std {
using tr1::get;
using tr1::tuple_element;
using tr1::tuple_size;
}
 

 #pragma warning(pop)
 #pragma pack(pop)



























 #pragma pack(push,8)
 #pragma warning(push,3)

namespace std {
		

 

  

  


typedef const wchar_t *_Dbfile_t;
typedef unsigned int _Dbline_t;

 void __cdecl _Debug_message(const wchar_t *,
	const wchar_t *, unsigned int);

 



		
struct  _Container_base0
	{	
	void _Orphan_all()
		{	
		}

	void _Swap_all(_Container_base0&)
		{	
		}
	};

struct _Iterator_base0
	{	
	void _Adopt(const void *)
		{	
		}

	const _Container_base0 *_Getcont() const
		{	
		return (0);
		}
	};

struct _Container_base12;
struct _Iterator_base12;

		
struct _Container_proxy
	{	
	_Container_proxy()
		: _Mycont(0), _Myfirstiter(0)
		{	
		}

	const _Container_base12 *_Mycont;
	_Iterator_base12 *_Myfirstiter;
	};

struct  _Container_base12
	{	
public:
	_Container_base12()
		: _Myproxy(0)
		{	
		}

	_Container_base12(const _Container_base12&)
		: _Myproxy(0)
		{	
		}

	_Container_base12& operator=(const _Container_base12&)
		{	
		return (*this);
		}

	~_Container_base12()
		{	
		_Orphan_all();
		}

	_Iterator_base12 **_Getpfirst() const
		{	
		return (_Myproxy == 0 ? 0 : &_Myproxy->_Myfirstiter);
		}

	void _Orphan_all();	
	void _Swap_all(_Container_base12&);	

	_Container_proxy *_Myproxy;
	};

struct _Iterator_base12
	{	
public:
	_Iterator_base12()
		: _Myproxy(0), _Mynextiter(0)
		{	
		}

	_Iterator_base12(const _Iterator_base12& _Right)
		: _Myproxy(0), _Mynextiter(0)
		{	
		*this = _Right;
		}

	_Iterator_base12& operator=(const _Iterator_base12& _Right)
		{	
		if (_Myproxy != _Right._Myproxy)
			_Adopt(_Right._Myproxy->_Mycont);
		return (*this);
		}

	~_Iterator_base12()
		{	
 
		_Lockit _Lock(3);
		_Orphan_me();
 
		}

	void _Adopt(const _Container_base12 *_Parent)
		{	
		if (_Parent != 0)
			{	
			_Container_proxy *_Parent_proxy = _Parent->_Myproxy;

 
			if (_Myproxy != _Parent_proxy)
				{	
				_Lockit _Lock(3);
				_Orphan_me();
				_Mynextiter = _Parent_proxy->_Myfirstiter;
				_Parent_proxy->_Myfirstiter = this;
				_Myproxy = _Parent_proxy;
				}
 


			}
		}

	void _Clrcont()
		{	
		_Myproxy = 0;
		}

	const _Container_base12 *_Getcont() const
		{	
		return (_Myproxy == 0 ? 0 : _Myproxy->_Mycont);
		}

	_Iterator_base12 **_Getpnext()
		{	
		return (&_Mynextiter);
		}

	void _Orphan_me()
		{	
 
		if (_Myproxy != 0)
			{	
			_Iterator_base12 **_Pnext = &_Myproxy->_Myfirstiter;
			while (*_Pnext != 0 && *_Pnext != this)
				_Pnext = &(*_Pnext)->_Mynextiter;

			if (*_Pnext == 0)
				_Debug_message(L"ITERATOR LIST CORRUPTED!", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 181);
			*_Pnext = _Mynextiter;
			_Myproxy = 0;
			}
 
		}

	_Container_proxy *_Myproxy;
	_Iterator_base12 *_Mynextiter;
	};

		
inline void _Container_base12::_Orphan_all()
	{	
 
	if (_Myproxy != 0)
		{	
		_Lockit _Lock(3);

		for (_Iterator_base12 **_Pnext = &_Myproxy->_Myfirstiter;
			*_Pnext != 0; *_Pnext = (*_Pnext)->_Mynextiter)
			(*_Pnext)->_Myproxy = 0;
		_Myproxy->_Myfirstiter = 0;
		}
 
	}

inline void _Container_base12::_Swap_all(_Container_base12& _Right)
	{	
 
	_Lockit _Lock(3);
 

	_Container_proxy *_Temp = _Myproxy;
	_Myproxy = _Right._Myproxy;
	_Right._Myproxy = _Temp;

	if (_Myproxy != 0)
		_Myproxy->_Mycont = (_Container_base12 *)this;
	if (_Right._Myproxy != 0)
		_Right._Myproxy->_Mycont = (_Container_base12 *)&_Right;
	}

 



typedef _Container_base12 _Container_base;
typedef _Iterator_base12 _Iterator_base;
 

		

 


::std:: tr1::_No _Has_unchecked_type(...);

template<class _Ty>
	::std:: tr1::_Yes _Has_unchecked_type(_Ty *,
		typename _Ty::_Unchecked_type * = 0);

template<class _Iter,
	bool>
	struct _Unchecked_helper
	{	
	typedef _Iter type;
	};

template<class _Iter>
	struct _Unchecked_helper<_Iter, true>
	{	
	typedef typename _Iter::_Unchecked_type type;
	};

template<class _Iter>
	struct _Get_unchecked_type
	{	
	typedef typename _Unchecked_helper<_Iter,
		(sizeof (_Has_unchecked_type((_Iter *)0)) == sizeof (::std:: tr1::_Yes))>::type type;
	};

		
template<class _Iter> inline
	_Iter _Unchecked(_Iter _Src)
	{	
	return (_Src);
	}

		
template<class _Iter,
	class _UIter> inline
	_Iter& _Rechecked(_Iter& _Dest, _UIter _Src)
	{	
	_Dest = _Src;
	return (_Dest);
	}

		
template<class _Iter>
	struct _Is_checked_helper
	: public ::std:: tr1::integral_constant<bool, (sizeof (_Has_unchecked_type((_Iter *)0)) == sizeof (::std:: tr1::_Yes))>
	{	
	};

		
template<class _Iter> inline
	_Is_checked_helper<_Iter> _Is_checked(_Iter)
	{	
	return (_Is_checked_helper<_Iter>());
	}

		
		
struct input_iterator_tag
	{	
	};

struct output_iterator_tag
	{	
	};

struct forward_iterator_tag
	: public input_iterator_tag, output_iterator_tag
	{	
	};

struct bidirectional_iterator_tag
	: public forward_iterator_tag
	{	
	};

struct random_access_iterator_tag
	: public bidirectional_iterator_tag
	{	
	};

struct _Int_iterator_tag
	{	
	};

		
struct _Nonscalar_ptr_iterator_tag
	{	
	};
struct _Scalar_ptr_iterator_tag
	{	
	};

		
template<class _Category,
	class _Ty,
	class _Diff = ptrdiff_t,
	class _Pointer = _Ty *,
	class _Reference = _Ty&>
	struct iterator
	{	
	typedef _Category iterator_category;
	typedef _Ty value_type;
	typedef _Diff difference_type;
	typedef _Diff distance_type;	
	typedef _Pointer pointer;
	typedef _Reference reference;
	};

template<class _Category,
	class _Ty,
	class _Diff,
	class _Pointer,
	class _Reference,
	class _Base>
	struct _Iterator012
		: public _Base
	{
	typedef _Category iterator_category;
	typedef _Ty value_type;
	typedef _Diff difference_type;
	typedef _Diff distance_type;	
	typedef _Pointer pointer;
	typedef _Reference reference;
	};

struct _Outit
	: public iterator<output_iterator_tag, void, void,
		void, void>
	{	
	};

		
template<class _Iter>
	struct iterator_traits
	{	
	typedef typename _Iter::iterator_category iterator_category;
	typedef typename _Iter::value_type value_type;
	typedef typename _Iter::difference_type difference_type;
	typedef difference_type distance_type;	
	typedef typename _Iter::pointer pointer;
	typedef typename _Iter::reference reference;
	};

template<class _Ty>
	struct iterator_traits<_Ty *>
	{	
	typedef random_access_iterator_tag iterator_category;
	typedef _Ty value_type;
	typedef ptrdiff_t difference_type;
	typedef ptrdiff_t distance_type;	
	typedef _Ty *pointer;
	typedef _Ty& reference;
	};

template<class _Ty>
	struct iterator_traits<const _Ty *>
	{	
	typedef random_access_iterator_tag iterator_category;
	typedef _Ty value_type;
	typedef ptrdiff_t difference_type;
	typedef ptrdiff_t distance_type;	
	typedef const _Ty *pointer;
	typedef const _Ty& reference;
	};

template<> struct iterator_traits<_Bool>
	{	
	typedef _Int_iterator_tag iterator_category;
	};

template<> struct iterator_traits<char>
	{	
	typedef _Int_iterator_tag iterator_category;
	};

template<> struct iterator_traits<signed char>
	{	
	typedef _Int_iterator_tag iterator_category;
	};

template<> struct iterator_traits<unsigned char>
	{	
	typedef _Int_iterator_tag iterator_category;
	};

 
template<> struct iterator_traits<wchar_t>
	{	
	typedef _Int_iterator_tag iterator_category;
	};
 

template<> struct iterator_traits<short>
	{	
	typedef _Int_iterator_tag iterator_category;
	};

template<> struct iterator_traits<unsigned short>
	{	
	typedef _Int_iterator_tag iterator_category;
	};

template<> struct iterator_traits<int>
	{	
	typedef _Int_iterator_tag iterator_category;
	};

template<> struct iterator_traits<unsigned int>
	{	
	typedef _Int_iterator_tag iterator_category;
	};

template<> struct iterator_traits<long>
	{	
	typedef _Int_iterator_tag iterator_category;
	};

template<> struct iterator_traits<unsigned long>
	{	
	typedef _Int_iterator_tag iterator_category;
	};

 
template<> struct iterator_traits<__int64>
	{	
	typedef _Int_iterator_tag iterator_category;
	};

template<> struct iterator_traits<unsigned __int64>
	{	
	typedef _Int_iterator_tag iterator_category;
	};
 

		
template<class _Iter> inline
	typename iterator_traits<_Iter>::iterator_category
		_Iter_cat(const _Iter&)
	{	
	typename iterator_traits<_Iter>::iterator_category _Cat;
	return (_Cat);
	}

		
template<class _Iter1,
	class _Iter2> inline
	_Nonscalar_ptr_iterator_tag _Ptr_cat(_Iter1&, _Iter2&)
	{	
	_Nonscalar_ptr_iterator_tag _Cat;
	return (_Cat);
	}

template<class _Elem1,
	class _Elem2>
	struct _Ptr_cat_helper
	{	
	typedef _Nonscalar_ptr_iterator_tag _Type;
	};

template<class _Elem>
	struct _Ptr_cat_helper<_Elem, _Elem>
	{	
	typedef typename ::std:: tr1::conditional<
		::std:: tr1::is_scalar<_Elem>::value,
			_Scalar_ptr_iterator_tag,
			_Nonscalar_ptr_iterator_tag>::type _Type;
	};

template<class _Anything>
	struct _Ptr_cat_helper<_Anything *, const _Anything *>
	{	
	typedef _Scalar_ptr_iterator_tag _Type;
	};

template<class _Elem1,
	class _Elem2> inline
	typename _Ptr_cat_helper<_Elem1, _Elem2>::_Type
		_Ptr_cat(_Elem1 *, _Elem2 *)
	{	
	typename _Ptr_cat_helper<_Elem1, _Elem2>::_Type _Cat;
	return (_Cat);
	}

template<class _Elem1,
	class _Elem2> inline
	typename _Ptr_cat_helper<_Elem1, _Elem2>::_Type
		_Ptr_cat(const _Elem1 *, _Elem2 *)
	{	
	typename _Ptr_cat_helper<_Elem1, _Elem2>::_Type _Cat;
	return (_Cat);
	}

		

 











  

  
   
  

  


  
   
  

  


  
   
  

  

  


  
   
  

  

  


  
   
  

  

  


		
template<class _Ty1, class _Ty2> inline
	bool _Debug_lt(const _Ty1& _Left, const _Ty2& _Right,
		_Dbfile_t _File, _Dbline_t _Line)
	{	
	if (!(_Left < _Right))
		return (false);
	else if (_Right < _Left)
		_Debug_message(L"invalid operator<", _File, _Line);
	return (true);
	}

template<class _Ty1, class _Ty2> inline
	bool _Debug_lt(const _Ty1& _Left, _Ty2& _Right,
		_Dbfile_t _File, _Dbline_t _Line)
	{	
	if (!(_Left < _Right))
		return (false);
	else if (_Right < _Left)
		_Debug_message(L"invalid operator<", _File, _Line);
	return (true);
	}

template<class _Ty1, class _Ty2> inline
	bool _Debug_lt(_Ty1& _Left, const _Ty2& _Right,
		_Dbfile_t _File, _Dbline_t _Line)
	{	
	if (!(_Left < _Right))
		return (false);
	else if (_Right < _Left)
		_Debug_message(L"invalid operator<", _File, _Line);
	return (true);
	}

template<class _Ty1, class _Ty2> inline
	bool _Debug_lt(_Ty1& _Left, _Ty2& _Right,
		_Dbfile_t _File, _Dbline_t _Line)
	{	
	if (!(_Left < _Right))
		return (false);
	else if (_Right < _Left)
		_Debug_message(L"invalid operator<", _File, _Line);
	return (true);
	}

		
template<class _Pr, class _Ty1, class _Ty2> inline
	bool _Debug_lt_pred(_Pr _Pred,
		const _Ty1& _Left, const _Ty2& _Right,
		_Dbfile_t _File, _Dbline_t _Line)
	{	
	if (!_Pred(_Left, _Right))
		return (false);
	else if (_Pred(_Right, _Left))
		_Debug_message(L"invalid operator<", _File, _Line);
	return (true);
	}

template<class _Pr, class _Ty1, class _Ty2> inline
	bool _Debug_lt_pred(_Pr _Pred,
		const _Ty1& _Left, _Ty2& _Right,
		_Dbfile_t _File, _Dbline_t _Line)
	{	
	if (!_Pred(_Left, _Right))
		return (false);
	else if (_Pred(_Right, _Left))
		_Debug_message(L"invalid operator<", _File, _Line);
	return (true);
	}

template<class _Pr, class _Ty1, class _Ty2> inline
	bool _Debug_lt_pred(_Pr _Pred,
		_Ty1& _Left, const _Ty2& _Right,
		_Dbfile_t _File, _Dbline_t _Line)
	{	
	if (!_Pred(_Left, _Right))
		return (false);
	else if (_Pred(_Right, _Left))
		_Debug_message(L"invalid operator<", _File, _Line);
	return (true);
	}

template<class _Pr, class _Ty1, class _Ty2> inline
	bool _Debug_lt_pred(_Pr _Pred,
		_Ty1& _Left, _Ty2& _Right,
		_Dbfile_t _File, _Dbline_t _Line)
	{	
	if (!_Pred(_Left, _Right))
		return (false);
	else if (_Pred(_Right, _Left))
		_Debug_message(L"invalid operator<", _File, _Line);
	return (true);
	}

		
template<class _InIt> inline
	void _Debug_pointer(_InIt&, _Dbfile_t, _Dbline_t)
	{	
	}

template<class _Ty> inline
	void _Debug_pointer(const _Ty *_First, _Dbfile_t _File, _Dbline_t _Line)
	{	
	if (_First == 0)
		_Debug_message(L"invalid null pointer", _File, _Line);
	}

template<class _Ty> inline
	void _Debug_pointer(_Ty *_First, _Dbfile_t _File, _Dbline_t _Line)
	{	
	if (_First == 0)
		_Debug_message(L"invalid null pointer", _File, _Line);
	}

		
template<class _InIt> inline
	void _Debug_range2(_InIt _First, _InIt _Last, _Dbfile_t, _Dbline_t,
		input_iterator_tag)
	{	
	bool _Ans = _First == _Last;	
	_Ans = _Ans;	
	}

template<class _RanIt> inline
	void _Debug_range2(_RanIt _First, _RanIt _Last,
		_Dbfile_t _File, _Dbline_t _Line,
		random_access_iterator_tag)
	{	
	if (_First != _Last)
		{	
		_Debug_pointer(_First, _File, _Line);
		_Debug_pointer(_Last, _File, _Line);
		if (_Last < _First)
			_Debug_message(L"invalid iterator range", _File, _Line);
		}
	}

template<class _InIt> inline
	void _Debug_range(_InIt _First, _InIt _Last,
		_Dbfile_t _File, _Dbline_t _Line)
	{	
	_Debug_range2(_First, _Last, _File, _Line, _Iter_cat(_First));
	}

		
template<class _InIt> inline
	void _Debug_order2(_InIt, _InIt,
		_Dbfile_t, _Dbline_t, input_iterator_tag)
	{	
	}

template<class _FwdIt> inline
	void _Debug_order2(_FwdIt _First, _FwdIt _Last,
		_Dbfile_t _File, _Dbline_t _Line, forward_iterator_tag)
	{	
	for (_FwdIt _Next = _First; _First != _Last && ++_Next != _Last; ++_First)
		if (_Debug_lt(*_Next, *_First, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 743))
			_Debug_message(L"sequence not ordered", _File, _Line);
	}

template<class _InIt> inline
	void _Debug_order(_InIt _First, _InIt _Last,
		_Dbfile_t _File, _Dbline_t _Line)
	{	
	_Debug_range(_First, _Last, _File, _Line);
	_Debug_order2(_First, _Last, _File, _Line, _Iter_cat(_First));
	}

		
template<class _InIt,
	class _Pr> inline
	void _Debug_order2(_InIt, _InIt, _Pr,
		_Dbfile_t, _Dbline_t, input_iterator_tag)
	{	
	}

template<class _FwdIt,
	class _Pr> inline
	void _Debug_order2(_FwdIt _First, _FwdIt _Last, _Pr _Pred,
		_Dbfile_t _File, _Dbline_t _Line, forward_iterator_tag)
	{	
	for (_FwdIt _Next = _First; _First != _Last && ++_Next != _Last; ++_First)
		if (_Debug_lt_pred(_Pred, *_Next, *_First, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 769))
			_Debug_message(L"sequence not ordered", _File, _Line);
	}

template<class _InIt,
	class _Pr> inline
	void _Debug_order(_InIt _First, _InIt _Last, _Pr _Pred,
		_Dbfile_t _File, _Dbline_t _Line)
	{	
	_Debug_range(_First, _Last, _File, _Line);
	_Debug_pointer(_Pred, _File, _Line);
	_Debug_order2(_First, _Last, _Pred, _File, _Line, _Iter_cat(_First));
	}
 

		
		

template<class _Iter> inline
	typename iterator_traits<_Iter>::value_type *_Val_type(_Iter)
	{	
	return (0);
	}

		
template<class _InIt,
	class _Diff> inline
	void advance(_InIt& _Where, _Diff _Off)
	{	
	_Advance(_Where, _Off, _Iter_cat(_Where));
	}

template<class _InIt,
	class _Diff> inline
	void _Advance(_InIt& _Where, _Diff _Off, input_iterator_tag)
	{	
 


 

	for (; 0 < _Off; --_Off)
		++_Where;
	}

template<class _FI,
	class _Diff> inline
	void _Advance(_FI& _Where, _Diff _Off, forward_iterator_tag)
	{	
 


 

	for (; 0 < _Off; --_Off)
		++_Where;
	}

template<class _BI,
	class _Diff> inline
	void _Advance(_BI& _Where, _Diff _Off, bidirectional_iterator_tag)
	{	
	for (; 0 < _Off; --_Off)
		++_Where;
	for (; _Off < 0; ++_Off)
		--_Where;
	}

template<class _RI,
	class _Diff> inline
	void _Advance(_RI& _Where, _Diff _Off, random_access_iterator_tag)
	{	
	_Where += _Off;
	}

		

template<class _Iter> inline
	typename iterator_traits<_Iter>::difference_type
		*_Dist_type(_Iter)
	{	
	return (0);
	}

		
template<class _InIt,
	class _Diff> inline
		void _Distance2(_InIt _First, _InIt _Last, _Diff& _Off,
			input_iterator_tag)
	{	
	for (; _First != _Last; ++_First)
		++_Off;
	}

template<class _FwdIt,
	class _Diff> inline
		void _Distance2(_FwdIt _First, _FwdIt _Last, _Diff& _Off,
			forward_iterator_tag)
	{	
	for (; _First != _Last; ++_First)
		++_Off;
	}

template<class _BidIt,
	class _Diff> inline
		void _Distance2(_BidIt _First, _BidIt _Last, _Diff& _Off,
			bidirectional_iterator_tag)
	{	
	for (; _First != _Last; ++_First)
		++_Off;
	}

template<class _RanIt,
	class _Diff> inline
		void _Distance2(_RanIt _First, _RanIt _Last, _Diff& _Off,
			random_access_iterator_tag)
	{	
 
	if (_First != _Last)
		{	
		_Debug_pointer(_First, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 889);
		_Debug_pointer(_Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 890);
		}
 

	_Off += _Last - _First;
	}

template<class _InIt> inline
	typename iterator_traits<_InIt>::difference_type
		distance(_InIt _First, _InIt _Last)
	{	
	typename iterator_traits<_InIt>::difference_type _Off = 0;
	_Distance2(_First, _Last, _Off, _Iter_cat(_First));
	return (_Off);
	}

template<class _InIt,
	class _Diff> inline
		void _Distance(_InIt _First, _InIt _Last, _Diff& _Off)
	{	
	_Distance2(_First, _Last, _Off, _Iter_cat(_First));
	}

 
		
template<class _InIt,
	class _Diff> inline
		_InIt _Increment(_InIt _First, _Diff _Off,
			input_iterator_tag)
	{	
	for (; 0 < _Off; --_Off)
		++_First;
	return (_First);
	}

template<class _FwdIt,
	class _Diff> inline
		_FwdIt _Increment(_FwdIt _First, _Diff _Off,
			forward_iterator_tag)
	{	
	for (; 0 < _Off; --_Off)
		++_First;
	return (_First);
	}

template<class _BidIt,
	class _Diff> inline
		_BidIt _Increment(_BidIt _First, _Diff _Off,
			bidirectional_iterator_tag)
	{	
	for (; _Off < 0; ++_Off)
		--_First;
	for (; 0 < _Off; --_Off)
		++_First;
	return (_First);
	}

template<class _RanIt,
	class _Diff> inline
		_RanIt _Increment(_RanIt _First, _Diff _Off,
			random_access_iterator_tag)
	{	
	return (_First + _Off);
	}

template<class _InIt> inline
	_InIt next(_InIt _First,
		typename iterator_traits<_InIt>::difference_type _Off = 1)
	{	
	return (_Increment(_First, _Off, _Iter_cat(_First)));
	}

template<class _InIt> inline
	_InIt prev(_InIt _First,
		typename iterator_traits<_InIt>::difference_type _Off = 1)
	{	
	return (_Increment(_First, -_Off, _Iter_cat(_First)));
	}

template<class _Container> inline
	typename _Container::iterator begin(_Container& _Cont)
	{	
	return (_Cont.begin());
	}

template<class _Container> inline
	typename _Container::const_iterator begin(const _Container& _Cont)
	{	
	return (_Cont.begin());
	}

template<class _Container> inline
	typename _Container::iterator end(_Container& _Cont)
	{	
	return (_Cont.end());
	}

template<class _Container> inline
	typename _Container::const_iterator end(const _Container& _Cont)
	{	
	return (_Cont.end());
	}

template<class _Ty,
	size_t _Size> inline
	_Ty *begin(_Ty (&_Array)[_Size])
	{	
	return (&_Array[0]);
	}

template<class _Ty,
	size_t _Size> inline
	_Ty *end(_Ty (&_Array)[_Size])
	{	
	return (&_Array[0] + _Size);
	}
 

		
template<class _RanIt,
	class _Base>
	class _Revranit
		: public _Base
	{	
public:
	typedef _Revranit<_RanIt, _Base> _Myt;
 	typedef typename _Base::difference_type difference_type;
	typedef typename _Base::pointer pointer;
	typedef typename _Base::reference reference;
	typedef _RanIt iterator_type;

	_Revranit()
		{	
		}

	explicit _Revranit(_RanIt _Right)
		: current(_Right)
		{	
		}

	template<class _RanIt2,
		class _Base2>
		_Revranit(const _Revranit<_RanIt2, _Base2>& _Right)
		: current(_Right.base())
		{	
		}

	_RanIt base() const
		{	
		return (current);
		}

	reference operator*() const
		{	
		_RanIt _Tmp = current;
		return (*--_Tmp);
		}

	pointer operator->() const
		{	
		return (&**this);
		}

	_Myt& operator++()
		{	
		--current;
		return (*this);
		}

	_Myt operator++(int)
		{	
		_Myt _Tmp = *this;
		--current;
		return (_Tmp);
		}

	_Myt& operator--()
		{	
		++current;
		return (*this);
		}

	_Myt operator--(int)
		{	
		_Myt _Tmp = *this;
		++current;
		return (_Tmp);
		}

	template<class _RanIt2,
		class _Base2>
		bool _Equal(const _Revranit<_RanIt2, _Base2>& _Right) const
		{	
		return (current == _Right.base());
		}



	_Myt& operator+=(difference_type _Off)
		{	
		current -= _Off;
		return (*this);
		}

	_Myt operator+(difference_type _Off) const
		{	
		return (_Myt(current - _Off));
		}

	_Myt& operator-=(difference_type _Off)
		{	
		current += _Off;
		return (*this);
		}

	_Myt operator-(difference_type _Off) const
		{	
		return (_Myt(current + _Off));
		}

	reference operator[](difference_type _Off) const
		{	
		return (*(*this + _Off));
		}

	template<class _RanIt2,
		class _Base2>
		bool _Less(const _Revranit<_RanIt2, _Base2>& _Right) const
		{	
		return (_Right.base() < current);
		}

	difference_type operator-(const _Myt& _Right) const
		{	
		return (_Right.base() - current);
		}

protected:
	_RanIt current;	
	};

		
template<class _RanIt,
	class _Base,
	class _Diff> inline
	_Revranit<_RanIt, _Base>
		operator+(_Diff _Off,
		const _Revranit<_RanIt, _Base>& _Right)
	{	
	return (_Right + _Off);
	}

template<class _RanIt1,
	class _Base1,
	class _RanIt2,
	class _Base2> inline
	typename _Base1::difference_type operator-(
		const _Revranit<_RanIt1, _Base1>& _Left,
		const _Revranit<_RanIt2, _Base2>& _Right)
	{	
	return (_Right.base() - _Left.base());
	}

template<class _RanIt1,
	class _Base1,
	class _RanIt2,
	class _Base2> inline
	bool operator==(
		const _Revranit<_RanIt1, _Base1>& _Left,
		const _Revranit<_RanIt2, _Base2>& _Right)
	{	
	return (_Left._Equal(_Right));
	}

template<class _RanIt1,
	class _Base1,
	class _RanIt2,
	class _Base2> inline
	bool operator!=(
		const _Revranit<_RanIt1, _Base1>& _Left,
		const _Revranit<_RanIt2, _Base2>& _Right)
	{	
	return (!(_Left == _Right));
	}

template<class _RanIt1,
	class _Base1,
	class _RanIt2,
	class _Base2> inline
	bool operator<(
		const _Revranit<_RanIt1, _Base1>& _Left,
		const _Revranit<_RanIt2, _Base2>& _Right)
	{	
	return (_Left._Less(_Right));
	}

template<class _RanIt1,
	class _Base1,
	class _RanIt2,
	class _Base2> inline
	bool operator>(
		const _Revranit<_RanIt1, _Base1>& _Left,
		const _Revranit<_RanIt2, _Base2>& _Right)
	{	
	return (_Right < _Left);
	}

template<class _RanIt1,
	class _Base1,
	class _RanIt2,
	class _Base2> inline
	bool operator<=(
		const _Revranit<_RanIt1, _Base1>& _Left,
		const _Revranit<_RanIt2, _Base2>& _Right)
	{	
	return (!(_Right < _Left));
	}

template<class _RanIt1,
	class _Base1,
	class _RanIt2,
	class _Base2> inline
	bool operator>=(
		const _Revranit<_RanIt1, _Base1>& _Left,
		const _Revranit<_RanIt2, _Base2>& _Right)
	{	
	return (!(_Left < _Right));
	}

		
template<class _RanIt>
	class reverse_iterator
		: public _Revranit<_RanIt, iterator<
			typename iterator_traits<_RanIt>::iterator_category,
			typename iterator_traits<_RanIt>::value_type,
			typename iterator_traits<_RanIt>::difference_type,
			typename iterator_traits<_RanIt>::pointer,
			typename iterator_traits<_RanIt>::reference> >
	{	
	typedef reverse_iterator<_RanIt> _Myt;
	typedef _Revranit<_RanIt, iterator<
		typename iterator_traits<_RanIt>::iterator_category,
		typename iterator_traits<_RanIt>::value_type,
		typename iterator_traits<_RanIt>::difference_type,
		typename iterator_traits<_RanIt>::pointer,
		typename iterator_traits<_RanIt>::reference> > _Mybase;

public:
 	typedef typename iterator_traits<_RanIt>::difference_type difference_type;
	typedef typename iterator_traits<_RanIt>::pointer pointer;
	typedef typename iterator_traits<_RanIt>::reference reference;
	typedef _RanIt iterator_type;

	reverse_iterator()
		{	
		}

	explicit reverse_iterator(_RanIt _Right)
		: _Mybase(_Right)
		{	
		}

	template<class _Other>
		reverse_iterator(const reverse_iterator<_Other>& _Right)
		: _Mybase(_Right.base())
		{	
		}

	reverse_iterator(_Mybase _Right)
		: _Mybase(_Right)
		{	
		}

	_Myt& operator++()
		{	
		++*((_Mybase *)this);
		return (*this);
		}

	_Myt operator++(int)
		{	
		_Myt _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Myt& operator--()
		{	
		--*((_Mybase *)this);
		return (*this);
		}

	_Myt operator--(int)
		{	
		_Myt _Tmp = *this;
		--*this;
		return (_Tmp);
		}

	_Myt& operator+=(difference_type _Off)
		{	
		*((_Mybase *)this) += _Off;
		return (*this);
		}

	_Myt operator+(difference_type _Off) const
		{	
		_Myt _Tmp = *this;
		return (_Tmp += _Off);
		}

	_Myt& operator-=(difference_type _Off)
		{	
		*((_Mybase *)this) -= _Off;
		return (*this);
		}

	_Myt operator-(difference_type _Off) const
		{	
		_Myt _Tmp = *this;
		return (_Tmp -= _Off);
		}
	};

template<class _RanIt>
	struct _Is_checked_helper<reverse_iterator<_RanIt> >
	: public _Is_checked_helper<_RanIt>
	{	
	};

		
template<class _RanIt,
	class _Diff> inline
	reverse_iterator<_RanIt> operator+(_Diff _Off,
		const reverse_iterator<_RanIt>& _Right)
	{	
	return (_Right + _Off);
	}

template<class _RanIt1,
	class _RanIt2> inline
	typename reverse_iterator<_RanIt1>::difference_type
		operator-(const reverse_iterator<_RanIt1>& _Left,
			const reverse_iterator<_RanIt2>& _Right)
	{	
	return (_Right.base() - _Left.base());
	}

template<class _RanIt1,
	class _RanIt2> inline
	bool operator==(const reverse_iterator<_RanIt1>& _Left,
		const reverse_iterator<_RanIt2>& _Right)
	{	
	return (_Left._Equal(_Right));
	}

template<class _RanIt1,
	class _RanIt2> inline
	bool operator!=(const reverse_iterator<_RanIt1>& _Left,
		const reverse_iterator<_RanIt2>& _Right)
	{	
	return (!(_Left == _Right));
	}

template<class _RanIt1,
	class _RanIt2> inline
	bool operator<(const reverse_iterator<_RanIt1>& _Left,
		const reverse_iterator<_RanIt2>& _Right)
	{	
	return (_Left._Less(_Right));
	}

template<class _RanIt1,
	class _RanIt2> inline
	bool operator>(const reverse_iterator<_RanIt1>& _Left,
		const reverse_iterator<_RanIt2>& _Right)
	{	
	return (_Right < _Left);
	}

template<class _RanIt1,
	class _RanIt2> inline
	bool operator<=(const reverse_iterator<_RanIt1>& _Left,
		const reverse_iterator<_RanIt2>& _Right)
	{	
	return (!(_Right < _Left));
	}

template<class _RanIt1,
	class _RanIt2> inline
	bool operator>=(const reverse_iterator<_RanIt1>& _Left,
		const reverse_iterator<_RanIt2>& _Right)
	{	
	return (!(_Left < _Right));
	}

		
template<class _BidIt,
	class _Ty,
	class _Reference = _Ty&,
	class _Pointer = _Ty *,
	class _Diff = ptrdiff_t>
	class reverse_bidirectional_iterator
		: public iterator<bidirectional_iterator_tag, _Ty, _Diff,
			_Pointer, _Reference>
	{	
public:
	typedef reverse_bidirectional_iterator<_BidIt, _Ty, _Reference,
		_Pointer, _Diff> _Myt;
	typedef _BidIt iterator_type;

	reverse_bidirectional_iterator()
		{	
		}

	explicit reverse_bidirectional_iterator(_BidIt _Right)
		: current(_Right)
		{	
		}

	_BidIt base() const
		{	
		return (current);
		}

	_Reference operator*() const
		{	
		_BidIt _Tmp = current;
		return (*--_Tmp);
		}

	_Pointer operator->() const
		{	
		_Reference _Tmp = **this;
		return (&_Tmp);
		}

	_Myt& operator++()
		{	
		--current;
		return (*this);
		}

	_Myt operator++(int)
		{	
		_Myt _Tmp = *this;
		--current;
		return (_Tmp);
		}

	_Myt& operator--()
		{	
		++current;
		return (*this);
		}

	_Myt operator--(int)
		{	
		_Myt _Tmp = *this;
		++current;
		return (_Tmp);
		}

	bool operator==(const _Myt& _Right) const
		{	
		return (current == _Right.current);
		}

	bool operator!=(const _Myt& _Right) const
		{	
		return (!(*this == _Right));
		}

protected:
	_BidIt current;	
	};

		
template<class _BidIt,
	class _BidIt2 = _BidIt>
	class _Revbidit
		: public iterator<
			typename iterator_traits<_BidIt>::iterator_category,
			typename iterator_traits<_BidIt>::value_type,
			typename iterator_traits<_BidIt>::difference_type,
			typename iterator_traits<_BidIt>::pointer,
			typename iterator_traits<_BidIt>::reference>
	{	
public:
	typedef _Revbidit<_BidIt, _BidIt2> _Myt;
	typedef typename iterator_traits<_BidIt>::difference_type _Diff;
	typedef typename iterator_traits<_BidIt>::pointer _Pointer;
	typedef typename iterator_traits<_BidIt>::reference _Reference;
	typedef _BidIt iterator_type;

	_Revbidit()
		{	
		}

	explicit _Revbidit(_BidIt _Right)
		: current(_Right)
		{	
		}

	_Revbidit(const _Revbidit<_BidIt2>& _Other)
		: current (_Other.base())
		{	
		}

	_BidIt base() const
		{	
		return (current);
		}

	_Reference operator*() const
		{	
		_BidIt _Tmp = current;
		return (*--_Tmp);
		}

	_Pointer operator->() const
		{	
		_Reference _Tmp = **this;
		return (&_Tmp);
		}

	_Myt& operator++()
		{	
		--current;
		return (*this);
		}

	_Myt operator++(int)
		{	
		_Myt _Tmp = *this;
		--current;
		return (_Tmp);
		}

	_Myt& operator--()
		{	
		++current;
		return (*this);
		}

	_Myt operator--(int)
		{	
		_Myt _Tmp = *this;
		++current;
		return (_Tmp);
		}

	bool operator==(const _Myt& _Right) const
		{	
		return (current == _Right.current);
		}

	bool operator!=(const _Myt& _Right) const
		{	
		return (!(*this == _Right));
		}

protected:
	_BidIt current;
	};

		
template<class _Ty,
	size_t _Size>
	class _Array_const_iterator
		: public _Iterator012<random_access_iterator_tag,
			_Ty,
			ptrdiff_t,
			const _Ty *,
			const _Ty&,
			_Iterator_base>
	{	
public:
	typedef _Array_const_iterator<_Ty, _Size> _Myiter;
	typedef random_access_iterator_tag iterator_category;

	typedef _Ty value_type;
	typedef size_t size_type;
	typedef ptrdiff_t difference_type;
	typedef const _Ty *pointer;
	typedef const _Ty& reference;
	enum {_EEN_SIZE = _Size};	
	enum {_EEN_IDL =
		2};	

 





























































































































	_Array_const_iterator()
		{	
		_Ptr = 0;
		_Idx = 0;
		}

	explicit _Array_const_iterator(pointer _Parg, size_t _Off = 0)
		{	
		_Ptr = _Parg;
		_Idx = _Off;
		}

	typedef pointer _Unchecked_type;

	_Myiter& _Rechecked(_Unchecked_type _Right)
		{	
		_Idx = _Right - _Ptr;
		return (*this);
		}

	_Unchecked_type _Unchecked() const
		{	
		return (_Ptr + _Idx);
		}

	reference operator*() const
		{	
 
		if (_Ptr == 0
			|| _Size <= _Idx)
			{	
			_Debug_message(L"array iterator not dereferencable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 1737);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 1738, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 1738, 0); };
			}

 




		;

		return (_Ptr[_Idx]);
		}

	pointer operator->() const
		{	
		return (&**this);
		}

	_Myiter& operator++()
		{	
 
		if (_Ptr == 0
			|| _Size <= _Idx)
			{	
			_Debug_message(L"array iterator not incrementable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 1762);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 1763, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 1763, 0); };
			}

 




		++_Idx;
		return (*this);
		}

	_Myiter operator++(int)
		{	
		_Myiter _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Myiter& operator--()
		{	
 
		if (_Ptr == 0
			|| _Idx <= 0)
			{	
			_Debug_message(L"array iterator not decrementable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 1788);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 1789, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 1789, 0); };
			}

 




		--_Idx;
		return (*this);
		}

	_Myiter operator--(int)
		{	
		_Myiter _Tmp = *this;
		--*this;
		return (_Tmp);
		}

	_Myiter& operator+=(difference_type _Off)
		{	
 
		if (_Size < _Idx + _Off)
			{	
			_Debug_message(L"array iterator + offset out of range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 1813);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 1814, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 1814, 0); };
			}

 



		_Idx += _Off;
		return (*this);
		}

	_Myiter operator+(difference_type _Off) const
		{	
		_Myiter _Tmp = *this;
		return (_Tmp += _Off);
		}

	_Myiter& operator-=(difference_type _Off)
		{	
		return (*this += -_Off);
		}

	_Myiter operator-(difference_type _Off) const
		{	
		_Myiter _Tmp = *this;
		return (_Tmp -= _Off);
		}

	difference_type operator-(const _Myiter& _Right) const
		{	
		_Compat(_Right);
		return (_Idx < _Right._Idx
			? -(difference_type)(_Right._Idx - _Idx)
			: (difference_type)_Idx - _Right._Idx);
		}

	reference operator[](difference_type _Off) const
		{	
		return (*(*this + _Off));
		}

	bool operator==(const _Myiter& _Right) const
		{	
		_Compat(_Right);
		return (_Idx == _Right._Idx);
		}

	bool operator!=(const _Myiter& _Right) const
		{	
		return (!(*this == _Right));
		}

	bool operator<(const _Myiter& _Right) const
		{	
		_Compat(_Right);
		return (_Idx < _Right._Idx);
		}

	bool operator>(const _Myiter& _Right) const
		{	
		return (_Right < *this);
		}

	bool operator<=(const _Myiter& _Right) const
		{	
		return (!(_Right < *this));
		}

	bool operator>=(const _Myiter& _Right) const
		{	
		return (!(*this < _Right));
		}

 
	void _Compat(const _Myiter& _Right) const
		{	
		if (_Ptr != _Right._Ptr)
			{	
			_Debug_message(L"array iterators incompatible", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 1892);
			{ (void) ((!!(("Standard C++ Libraries Invalid Argument" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 1893, 0, L"\"Standard C++ Libraries Invalid Argument\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 1893, 0); };
			}
		}

 






	pointer _Ptr;	
	size_t _Idx;	
 
	};

template<class _Ty,
	size_t _Size> inline
	typename _Array_const_iterator<_Ty, _Size>::_Unchecked_type
		_Unchecked(_Array_const_iterator<_Ty, _Size> _Iter)
	{	
	return (_Iter._Unchecked());
	}

template<class _Ty,
	size_t _Size> inline
	_Array_const_iterator<_Ty, _Size>&
		_Rechecked(_Array_const_iterator<_Ty, _Size>& _Iter,
			typename _Array_const_iterator<_Ty, _Size>
				::_Unchecked_type _Right)
	{	
	return (_Iter._Rechecked(_Right));
	}

template<class _Ty,
	size_t _Size> inline
	_Array_const_iterator<_Ty, _Size> operator+(
		typename _Array_const_iterator<_Ty, _Size>::difference_type _Off,
		_Array_const_iterator<_Ty, _Size> _Next)
	{	
	return (_Next += _Off);
	}

		
template<class _Ty,
	size_t _Size>
	class _Array_iterator
		: public _Array_const_iterator<_Ty, _Size>
	{	
public:
	typedef _Array_iterator<_Ty, _Size> _Myiter;
	typedef _Array_const_iterator<_Ty, _Size> _Mybase;
	typedef random_access_iterator_tag iterator_category;

	typedef _Ty value_type;
	typedef size_t size_type;
	typedef ptrdiff_t difference_type;
	typedef _Ty *pointer;
	typedef _Ty& reference;

	_Array_iterator()
		{	
		}

	explicit _Array_iterator(pointer _Parg, size_t _Off = 0)
		: _Mybase(_Parg, _Off)
		{	
		}
	enum {_EEN_SIZE = _Size};	
	enum {_EEN_IDL =
		2};	

	typedef pointer _Unchecked_type;

	_Myiter& _Rechecked(_Unchecked_type _Right)
		{	
		((_Mybase *)this)->_Rechecked(_Right);
		return (*this);
		}

	_Unchecked_type _Unchecked() const
		{	
		return ((pointer)((_Mybase *)this)->_Unchecked());
		}

	reference operator*() const
		{	
		return ((reference)**(_Mybase *)this);
		}

	pointer operator->() const
		{	
		return (&**this);
		}

	_Myiter& operator++()
		{	
		++*(_Mybase *)this;
		return (*this);
		}

	_Myiter operator++(int)
		{	
		_Myiter _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Myiter& operator--()
		{	
		--*(_Mybase *)this;
		return (*this);
		}

	_Myiter operator--(int)
		{	
		_Myiter _Tmp = *this;
		--*this;
		return (_Tmp);
		}

	_Myiter& operator+=(difference_type _Off)
		{	
		*(_Mybase *)this += _Off;
		return (*this);
		}

	_Myiter operator+(difference_type _Off) const
		{	
		_Myiter _Tmp = *this;
		return (_Tmp += _Off);
		}

	_Myiter& operator-=(difference_type _Off)
		{	
		return (*this += -_Off);
		}

	_Myiter operator-(difference_type _Off) const
		{	
		_Myiter _Tmp = *this;
		return (_Tmp -= _Off);
		}

	difference_type operator-(const _Mybase& _Right) const
		{	
		return (*(_Mybase *)this - _Right);
		}

	reference operator[](difference_type _Off) const
		{	
		return (*(*this + _Off));
		}
	};

template<class _Ty,
	size_t _Size> inline
	typename _Array_iterator<_Ty, _Size>::_Unchecked_type
		_Unchecked(_Array_iterator<_Ty, _Size> _Iter)
	{	
	return (_Iter._Unchecked());
	}

template<class _Ty,
	size_t _Size> inline
	_Array_iterator<_Ty, _Size>&
		_Rechecked(_Array_iterator<_Ty, _Size>& _Iter,
			typename _Array_iterator<_Ty, _Size>
				::_Unchecked_type _Right)
	{	
	return (_Iter._Rechecked(_Right));
	}

template<class _Ty,
	size_t _Size> inline
	_Array_iterator<_Ty, _Size> operator+(
		typename _Array_iterator<_Ty, _Size>::difference_type _Off,
		_Array_iterator<_Ty, _Size> _Next)
	{	
	return (_Next += _Off);
	}

		
		
template<class _Ty> inline
	const _Ty& (max)(const _Ty& _Left, const _Ty& _Right)
	{	
	return (_Debug_lt(_Left, _Right, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2080) ? _Right : _Left);
	}

		
template<class _Ty,
	class _Pr> inline
	const _Ty& (max)(const _Ty& _Left, const _Ty& _Right, _Pr _Pred)
	{	
	return (_Debug_lt_pred(_Pred, _Left, _Right, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2088) ? _Right : _Left);
	}

		
template<class _Ty> inline
	const _Ty& (min)(const _Ty& _Left, const _Ty& _Right)
	{	
	return (_Debug_lt(_Right, _Left, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2095) ? _Right : _Left);
	}

		
template<class _Ty,
	class _Pr> inline
	const _Ty& (min)(const _Ty& _Left, const _Ty& _Right, _Pr _Pred)
	{	
	return (_Debug_lt_pred(_Pred, _Right, _Left, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2103) ? _Right : _Left);
	}

		
  

template<class _Ty> inline
	pair<const _Ty, const _Ty>
		minmax(const _Ty& _Left, const _Ty& _Right)
	{	
	return (_Right < _Left
		? pair<const _Ty, const _Ty>(_Right, _Left)
		: pair<const _Ty, const _Ty>(_Left, _Right));
	}

		
template<class _Ty,
	class _Pr> inline
	pair<const _Ty, const _Ty>
		minmax(const _Ty& _Left, const _Ty& _Right, _Pr _Pred)
	{	
	return (_Pred(_Right, _Left)
		? pair<const _Ty, const _Ty>(_Right, _Left)
		: pair<const _Ty, const _Ty>(_Left, _Right));
	}

		
template<class _FwdIt1,
	class _FwdIt2> inline
	void iter_swap(_FwdIt1 _Left, _FwdIt2 _Right)
	{	
	swap(*_Left, *_Right);
	}

		
template<class _InIt,
	class _OutIt> inline
	_OutIt _Copy_impl(_InIt _First, _InIt _Last,
		_OutIt _Dest, _Nonscalar_ptr_iterator_tag)
	{	
	for (; _First != _Last; ++_Dest, ++_First)
		*_Dest = *_First;
	return (_Dest);
	}

template<class _InIt,
	class _OutIt> inline
	_OutIt _Copy_impl(_InIt _First, _InIt _Last,
		_OutIt _Dest, _Scalar_ptr_iterator_tag)
	{	
	ptrdiff_t _Count = _Last - _First;
	:: memmove(&*_Dest, &*_First,
		_Count * sizeof (*_First));
	return (_Dest + _Count);
	}

template<class _InIt,
	class _OutIt> inline
	_OutIt _Copy_impl(_InIt _First, _InIt _Last,
		_OutIt _Dest)
	{	
	return (_Copy_impl(_First, _Last,
		_Dest, _Ptr_cat(_First, _Dest)));
	}

 











template<class _InIt,
	class _OutIt> inline
	_OutIt _Copy_impl(_InIt _First, _InIt _Last,
		_OutIt _Dest, input_iterator_tag, output_iterator_tag)
	{	
	return (_Copy_impl(_First, _Last,
		_Dest));
	}

template<class _InIt,
	class _OutIt> inline
	_OutIt _Copy_impl(_InIt _First, _InIt _Last,
		_OutIt _Dest, random_access_iterator_tag, random_access_iterator_tag)
	{	
	_OutIt _Ans = _Dest + (_Last - _First);	
	_Copy_impl(_First, _Last,
		_Unchecked(_Dest));
	return (_Ans);
	}

template<class _InIt,
	class _OutIt> inline
	_OutIt _Copy_impl(_InIt _First, _InIt _Last,
		_OutIt _Dest, ::std:: tr1::true_type)
	{	
	return (_Copy_impl(_First, _Last,
		_Dest, _Iter_cat(_First), _Iter_cat(_Dest)));
	}

template<class _InIt,
	class _OutIt> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	_OutIt _Copy_impl(_InIt _First, _InIt _Last,
		_OutIt _Dest, ::std:: tr1::false_type)
	{	
	return (_Copy_impl(_First, _Last,
		_Dest, _Iter_cat(_First), _Iter_cat(_Dest)));
	}

template<class _InIt,
	class _OutIt> inline
	_OutIt copy(_InIt _First, _InIt _Last,
		_OutIt _Dest)
	{	
	_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2224);
	_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2225);
	return (_Copy_impl(_Unchecked(_First), _Unchecked(_Last),
		_Dest, _Is_checked(_Dest)));
	}

template<class _InIt,
	class _OutTy,
	size_t _OutSize> inline
	_OutTy *copy(_InIt _First, _InIt _Last,
		_OutTy (&_Dest)[_OutSize])
	{	
	return (_Unchecked(
		::std:: copy(_First, _Last,
			_Array_iterator<_OutTy, _OutSize>(_Dest))));
	}
 

 
		
template<class _InIt,
	class _Diff,
	class _OutIt> inline
	_OutIt _Copy_n(_InIt _First, _Diff _Count,
		_OutIt _Dest, input_iterator_tag)
	{	
	*_Dest = *_First;	
	while (0 < --_Count)
		*++_Dest = *++_First;
	return (++_Dest);
	}

template<class _InIt,
	class _Diff,
	class _OutIt> inline
	_OutIt _Copy_n(_InIt _First, _Diff _Count,
		_OutIt _Dest, forward_iterator_tag)
	{	
	for (; 0 < _Count; --_Count, ++_Dest, ++_First)
		*_Dest = *_First;
	return (_Dest);
	}

template<class _InIt,
	class _Diff,
	class _OutIt> inline
	_OutIt _Copy_n(_InIt _First, _Diff _Count,
		_OutIt _Dest, _Nonscalar_ptr_iterator_tag)
	{	
	return (_Copy_n(_First, _Count,
		_Dest, _Iter_cat(_First)));
	}

template<class _InIt,
	class _Diff,
	class _OutIt> inline
	_OutIt _Copy_n(_InIt _First, _Diff _Count,
		_OutIt _Dest, _Scalar_ptr_iterator_tag)
	{	
	:: memmove(&*_Dest, &*_First,
		_Count * sizeof (*_First));
	return (_Dest + _Count);
	}

template<class _InIt,
	class _Diff,
	class _OutIt> inline
	_OutIt _Copy_n(_InIt _First, _Diff _Count,
		_OutIt _Dest)
	{	
	return (_Copy_n(_First, _Count,
		_Dest, _Ptr_cat(_First, _Dest)));
	}

 















template<class _InIt,
	class _Diff,
	class _OutIt> inline
	_OutIt _Copy_n2(_InIt _First, _Diff _Count,
		_OutIt _Dest, output_iterator_tag)
	{	
	return (_Copy_n(_First, _Count,
		_Dest));
	}

template<class _InIt,
	class _Diff,
	class _OutIt> inline
	_OutIt _Copy_n2(_InIt _First, _Diff _Count,
		_OutIt _Dest, random_access_iterator_tag)
	{	
	_OutIt _Ans = _Dest + _Count;	
	_Copy_n(_First, _Count,
		_Unchecked(_Dest));
	return (_Ans);
	}

template<class _InIt,
	class _Diff,
	class _OutIt> inline
	_OutIt _Copy_n1(_InIt _First, _Diff _Count,
		_OutIt _Dest, input_iterator_tag)
	{	
	return (_Copy_n2(_First, _Count,
		_Dest, _Iter_cat(_Dest)));
	}

template<class _InIt,
	class _Diff,
	class _OutIt> inline
	_OutIt _Copy_n1(_InIt _First, _Diff _Count,
		_OutIt _Dest, random_access_iterator_tag)
	{	
	_InIt _Last = _First + _Count;	
	_Last = _Last;	
	return (_Copy_n2(_Unchecked(_First), _Count,
		_Dest, _Iter_cat(_Dest)));
	}

template<class _InIt,
	class _Diff,
	class _OutIt> inline
	_OutIt _Copy_n(_InIt _First, _Diff _Count,
		_OutIt _Dest, ::std:: tr1::true_type)
	{	
	return (_Copy_n1(_First, _Count,
		_Dest, _Iter_cat(_First)));
	}

template<class _InIt,
	class _Diff,
	class _OutIt> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	_OutIt _Copy_n(_InIt _First, _Diff _Count,
		_OutIt _Dest, ::std:: tr1::false_type)
	{	
	return (_Copy_n1(_First, _Count,
		_Dest, _Iter_cat(_First)));
	}

template<class _InIt,
	class _Diff,
	class _OutIt> inline
	_OutIt copy_n(_InIt _First, _Diff _Count,
		_OutIt _Dest)
	{	
	_Debug_pointer(_First, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2385);
	_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2386);
	if (_Count <= 0)
		return (_Dest);
	else
		return (_Copy_n(_First, _Count,
			_Dest, _Is_checked(_Dest)));
	}

template<class _InTy,
	size_t _InSize,
	class _Diff,
	class _OutIt> inline
	_OutIt copy_n(_InTy (&_First)[_InSize], _Diff _Count,
		_OutIt _Dest)
	{	
	return (::std:: copy_n(_Array_iterator<_InTy, _InSize>(_First), _Count,
		_Dest));
	}

template<class _InIt,
	class _Diff,
	class _OutTy,
	size_t _OutSize> inline
	_OutTy *copy_n(_InIt _First, _Diff _Count,
		_OutTy (&_Dest)[_OutSize])
	{	
	return (_Unchecked(
		::std:: copy_n(_First, _Count,
			_Array_iterator<_OutTy, _OutSize>(_Dest))));
	}

template<class _InTy,
	size_t _InSize,
	class _Diff,
	class _OutTy,
	size_t _OutSize> inline
	_OutTy *copy_n(_InTy (&_First)[_InSize], _Diff _Count,
		_OutTy (&_Dest)[_OutSize])
	{	
	return (_Unchecked(
		::std:: copy_n(_Array_iterator<_InTy, _InSize>(_First), _Count,
			_Array_iterator<_OutTy, _OutSize>(_Dest))));
	}

 
 

		
template<class _BidIt1,
	class _BidIt2> inline
	_BidIt2 _Copy_backward(_BidIt1 _First, _BidIt1 _Last,
		_BidIt2 _Dest, _Nonscalar_ptr_iterator_tag)
	{	
	while (_First != _Last)
		*--_Dest = *--_Last;
	return (_Dest);
	}

template<class _InIt,
	class _OutIt> inline
	_OutIt _Copy_backward(_InIt _First, _InIt _Last,
		_OutIt _Dest, _Scalar_ptr_iterator_tag)
	{	
	ptrdiff_t _Count = _Last - _First;
	:: memmove(&*_Dest - _Count, &*_First,
		_Count * sizeof (*_First));
	return (_Dest - _Count);
	}

template<class _BidIt1,
	class _BidIt2> inline
	_BidIt2 _Copy_backward(_BidIt1 _First, _BidIt1 _Last,
		_BidIt2 _Dest)
	{	
	return (_Copy_backward(_First, _Last,
		_Dest, _Ptr_cat(_First, _Dest)));
	}

 











template<class _BidIt1,
	class _BidIt2> inline
	_BidIt2 _Copy_backward(_BidIt1 _First, _BidIt1 _Last,
		_BidIt2 _Dest, ::std:: tr1::true_type)
	{	
	return (_Copy_backward(_Unchecked(_First), _Unchecked(_Last),
		_Dest));
	}

template<class _BidIt1,
	class _BidIt2> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	_BidIt2 _Copy_backward(_BidIt1 _First, _BidIt1 _Last,
		_BidIt2 _Dest, ::std:: tr1::false_type)
	{	
	return (_Copy_backward(_Unchecked(_First), _Unchecked(_Last),
		_Dest));
	}

template<class _BidIt1,
	class _BidIt2> inline
	_BidIt2 copy_backward(_BidIt1 _First, _BidIt1 _Last,
		_BidIt2 _Dest)
	{	
	_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2500);
	_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2501);
	return (_Copy_backward(_Unchecked(_First), _Unchecked(_Last),
		_Dest, _Is_checked(_Dest)));
	}
 

		
template<class _InIt,
	class _OutIt> inline
	_OutIt _Move(_InIt _First, _InIt _Last,
		_OutIt _Dest, _Nonscalar_ptr_iterator_tag)
	{	
	for (; _First != _Last; ++_Dest, ++_First)
		*_Dest = ::std:: move(*_First);
	return (_Dest);
	}

template<class _InIt,
	class _OutIt> inline
	_OutIt _Move(_InIt _First, _InIt _Last,
		_OutIt _Dest, _Scalar_ptr_iterator_tag)
	{	
	ptrdiff_t _Count = _Last - _First;
	:: memmove(&*_Dest, &*_First,
		_Count * sizeof (*_First));
	return (_Dest + _Count);
	}

template<class _InIt,
	class _OutIt> inline
	_OutIt _Move(_InIt _First, _InIt _Last,
		_OutIt _Dest)
	{	
	return (_Move(_First, _Last,
		_Dest, _Ptr_cat(_First, _Dest)));
	}

 











template<class _InIt,
	class _OutIt> inline
	_OutIt _Move(_InIt _First, _InIt _Last,
		_OutIt _Dest, input_iterator_tag, output_iterator_tag)
	{	
	return (_Move(_First, _Last,
		_Dest));
	}

template<class _InIt,
	class _OutIt> inline
	_OutIt _Move(_InIt _First, _InIt _Last,
		_OutIt _Dest, random_access_iterator_tag, random_access_iterator_tag)
	{	
	_OutIt _Ans = _Dest + (_Last - _First);	
	_Move(_First, _Last,
		_Unchecked(_Dest));
	return (_Ans);
	}

template<class _InIt,
	class _OutIt> inline
	_OutIt _Move(_InIt _First, _InIt _Last,
		_OutIt _Dest, ::std:: tr1::true_type)
	{	
	return (_Move(_First, _Last,
		_Dest, _Iter_cat(_First), _Iter_cat(_Dest)));
	}

template<class _InIt,
	class _OutIt> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	_OutIt _Move(_InIt _First, _InIt _Last,
		_OutIt _Dest, ::std:: tr1::false_type)
	{	
	return (_Move(_First, _Last,
		_Dest, _Iter_cat(_First), _Iter_cat(_Dest)));
	}

template<class _InIt,
	class _OutIt> inline
	_OutIt move(_InIt _First, _InIt _Last,
		_OutIt _Dest)
	{	
	_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2594);
	_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2595);
	return (_Move(_Unchecked(_First), _Unchecked(_Last),
		_Dest, _Is_checked(_Dest)));
	}

template<class _InIt,
	class _OutTy,
	size_t _OutSize> inline
	_OutTy *move(_InIt _First, _InIt _Last,
		_OutTy (&_Dest)[_OutSize])
	{	
	return (_Unchecked(
		::std:: move(_First, _Last,
			_Array_iterator<_OutTy, _OutSize>(_Dest))));
	}
 

		
template<class _BidIt1,
	class _BidIt2> inline
	_BidIt2 _Move_backward(_BidIt1 _First, _BidIt1 _Last,
		_BidIt2 _Dest, _Nonscalar_ptr_iterator_tag)
	{	
	while (_First != _Last)
		*--_Dest = ::std:: move(*--_Last);
	return (_Dest);
	}

template<class _InIt,
	class _OutIt> inline
	_OutIt _Move_backward(_InIt _First, _InIt _Last,
		_OutIt _Dest, _Scalar_ptr_iterator_tag)
	{	
	ptrdiff_t _Count = _Last - _First;
	:: memmove(&*_Dest - _Count, &*_First,
		_Count * sizeof (*_First));
	return (_Dest - _Count);
	}

template<class _BidIt1,
	class _BidIt2> inline
	_BidIt2 _Move_backward(_BidIt1 _First, _BidIt1 _Last,
		_BidIt2 _Dest)
	{	
	return (_Move_backward(_First, _Last,
		_Dest, _Ptr_cat(_First, _Dest)));
	}

 











template<class _BidIt1,
	class _BidIt2> inline
	_BidIt2 _Move_backward(_BidIt1 _First, _BidIt1 _Last,
		_BidIt2 _Dest, ::std:: tr1::true_type)
	{	
	return (_Move_backward(_Unchecked(_First), _Unchecked(_Last),
		_Dest));
	}

template<class _BidIt1,
	class _BidIt2> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	_BidIt2 _Move_backward(_BidIt1 _First, _BidIt1 _Last,
		_BidIt2 _Dest, ::std:: tr1::false_type)
	{	
	return (_Move_backward(_Unchecked(_First), _Unchecked(_Last),
		_Dest));
	}

template<class _BidIt1,
	class _BidIt2> inline
	_BidIt2 move_backward(_BidIt1 _First, _BidIt1 _Last,
		_BidIt2 _Dest)
	{	
	_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2679);
	_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2680);
	return (_Move_backward(_Unchecked(_First), _Unchecked(_Last),
		_Dest, _Is_checked(_Dest)));
	}
 

		
template<class _FwdIt,
	class _Ty> inline
	void _Fill(_FwdIt _First, _FwdIt _Last, const _Ty& _Val)
	{	
	for (; _First != _Last; ++_First)
		*_First = _Val;
	}

inline void _Fill(char *_First, char *_Last, int _Val)
	{	
	:: memset(_First, _Val, _Last - _First);
	}

inline void _Fill(signed char *_First, signed char *_Last, int _Val)
	{	
	:: memset(_First, _Val, _Last - _First);
	}

inline void _Fill(unsigned char *_First, unsigned char *_Last, int _Val)
	{	
	:: memset(_First, _Val, _Last - _First);
	}

template<class _FwdIt,
	class _Ty> inline
	void fill(_FwdIt _First, _FwdIt _Last, const _Ty& _Val)
	{	
	_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2714);
	_Fill(_Unchecked(_First), _Unchecked(_Last), _Val);
	}

		
template<class _OutIt,
	class _Diff,
	class _Ty> inline
	void _Fill_n(_OutIt _Dest, _Diff _Count, const _Ty& _Val)
	{	
	for (; 0 < _Count; --_Count, ++_Dest)
		*_Dest = _Val;
	}

inline void _Fill_n(char *_Dest, size_t _Count, int _Val)
	{	
	:: memset(_Dest, _Val, _Count);
	}

inline void _Fill_n(signed char *_Dest, size_t _Count, int _Val)
	{	
	:: memset(_Dest, _Val, _Count);
	}

inline void _Fill_n(unsigned char *_Dest, size_t _Count, int _Val)
	{	
	:: memset(_Dest, _Val, _Count);
	}

 









template<class _OutIt,
	class _Diff,
	class _Ty> inline
	void _Fill_n1(_OutIt _Dest, _Diff _Count, const _Ty& _Val,
		output_iterator_tag)
	{	
	_Fill_n(_Dest, _Count, _Val);
	}

template<class _OutIt,
	class _Diff,
	class _Ty> inline
	void _Fill_n1(_OutIt _Dest, _Diff _Count, const _Ty& _Val,
		random_access_iterator_tag)
	{	
	_OutIt _Ans = _Dest + _Count;	
	_Ans = _Ans;	
	_Fill_n(_Unchecked(_Dest), _Count, _Val);
	}

template<class _OutIt,
	class _Diff,
	class _Ty> inline
	void _Fill_n(_OutIt _Dest, _Diff _Count, const _Ty& _Val,
		::std:: tr1::true_type)
	{	
	_Fill_n1(_Dest, _Count, _Val,
		_Iter_cat(_Dest));
	}

template<class _OutIt,
	class _Diff,
	class _Ty> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	void _Fill_n(_OutIt _Dest, _Diff _Count, const _Ty& _Val,
		::std:: tr1::false_type)
	{	
	_Fill_n1(_Dest, _Count, _Val,
		_Iter_cat(_Dest));
	}

template<class _OutIt,
	class _Diff,
	class _Ty> inline
	void fill_n(_OutIt _Dest, _Diff _Count, const _Ty& _Val)
	{	
	_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2799);
	_Fill_n(_Dest, _Count, _Val,
		_Is_checked(_Dest));
	}

template<class _OutTy,
	size_t _OutSize,
	class _Diff,
	class _Ty> inline
	void fill_n(_OutTy (&_Dest)[_OutSize], _Diff _Count, const _Ty& _Val)
	{	
	::std:: fill_n(_Array_iterator<_OutTy, _OutSize>(_Dest), _Count, _Val);
	}
 

		
template<class _InIt1,
	class _InIt2> inline
	pair<_InIt1, _InIt2>
		_Mismatch(_InIt1 _First1, _InIt1 _Last1,
			_InIt2 _First2)
	{	
	for (; _First1 != _Last1 && *_First1 == *_First2; )
		++_First1, ++_First2;
	return (pair<_InIt1, _InIt2>(_First1, _First2));
	}

 















template<class _InIt1,
	class _InIt2> inline
	pair<_InIt1, _InIt2>
		_Mismatch1(_InIt1 _First1, _InIt1 _Last1,
			_InIt2 _First2, ::std:: tr1::true_type)
	{	
	return (::std:: _Mismatch(_First1, _Last1,
		_First2));
	}

template<class _InIt1,
	class _InIt2> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	pair<_InIt1, _InIt2>
		_Mismatch1(_InIt1 _First1, _InIt1 _Last1,
			_InIt2 _First2, ::std:: tr1::false_type)
	{	
	return (::std:: _Mismatch(_First1, _Last1,
		_First2));
	}

template<class _InIt1,
	class _InIt2> inline
	pair<_InIt1, _InIt2>
		mismatch(_InIt1 _First1, _InIt1 _Last1,
			_InIt2 _First2)
	{	
	_Debug_range(_First1, _Last1, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2869);
	_Debug_pointer(_First2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2870);
	::std:: pair<typename _Get_unchecked_type<_InIt1>::type, _InIt2> _Ans(
		::std:: _Mismatch1(_Unchecked(_First1), _Unchecked(_Last1),
			_First2, _Is_checked(_First2)));
	return (::std:: pair<_InIt1, _InIt2>(
		_Rechecked(_First1, _Ans.first),
		_Ans.second));
	}

template<class _InIt1,
	class _InTy,
	size_t _InSize> inline
	pair<_InIt1, _InTy *>
		mismatch(_InIt1 _First1, _InIt1 _Last1,
			_InTy (&_First2)[_InSize])
	{	
	::std:: pair<_InIt1, _Array_iterator<_InTy, _InSize> > _Ans(
		::std:: mismatch(_First1, _Last1,
			_Array_iterator<_InTy, _InSize>(_First2)));
	return (::std:: pair<_InIt1, _InTy *>(
		_Ans.first,
		_Unchecked(_Ans.second)));
	}

 

		
template<class _InIt1,
	class _InIt2,
	class _Pr> inline
	pair<_InIt1, _InIt2>
		_Mismatch(_InIt1 _First1, _InIt1 _Last1,
			_InIt2 _First2, _Pr _Pred)
	{	
	for (; _First1 != _Last1 && _Pred(*_First1, *_First2); )
		++_First1, ++_First2;
	return (pair<_InIt1, _InIt2>(_First1, _First2));
	}

 
















template<class _InIt1,
	class _InIt2,
	class _Pr> inline
	pair<_InIt1, _InIt2>
		_Mismatch2(_InIt1 _First1, _InIt1 _Last1,
			_InIt2 _First2, _Pr _Pred, ::std:: tr1::true_type)
	{	
	return (::std:: _Mismatch(_First1, _Last1,
		_First2, _Pred));
	}

template<class _InIt1,
	class _InIt2,
	class _Pr> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	pair<_InIt1, _InIt2>
		_Mismatch2(_InIt1 _First1, _InIt1 _Last1,
			_InIt2 _First2, _Pr _Pred, ::std:: tr1::false_type)
	{	
	return (::std:: _Mismatch(_First1, _Last1,
		_First2, _Pred));
	}

template<class _InIt1,
	class _InIt2,
	class _Pr> inline
	pair<_InIt1, _InIt2>
		mismatch(_InIt1 _First1, _InIt1 _Last1,
			_InIt2 _First2, _Pr _Pred)
	{	
	_Debug_range(_First1, _Last1, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2956);
	_Debug_pointer(_First2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2957);
	_Debug_pointer(_Pred, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 2958);
	::std:: pair<typename _Get_unchecked_type<_InIt1>::type, _InIt2> _Ans(
		::std:: _Mismatch2(_Unchecked(_First1), _Unchecked(_Last1),
			_First2, _Pred, _Is_checked(_First2)));
	return (::std:: pair<_InIt1, _InIt2>(
		_Rechecked(_First1, _Ans.first),
		_Ans.second));
	}

template<class _InIt1,
	class _InTy,
	size_t _InSize,
	class _Pr> inline
	pair<_InIt1, _InTy *>
		mismatch(_InIt1 _First1, _InIt1 _Last1,
			_InTy (&_First2)[_InSize], _Pr _Pred)
	{	
	::std:: pair<_InIt1, _Array_iterator<_InTy, _InSize> > _Ans(
		::std:: mismatch(_First1, _Last1,
			_Array_iterator<_InTy, _InSize>(_First2), _Pred));
	return (::std:: pair<_InIt1, _InTy *>(
		_Ans.first,
		_Unchecked(_Ans.second)));
	}
 

		
template<class _InIt1,
	class _InIt2> inline
	bool _Equal(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2)
	{	
	for (; _First1 != _Last1; ++_First1, ++_First2)
		if (!(*_First1 == *_First2))
			return (false);
	return (true);
	}

inline bool _Equal(const char *_First1, const char *_Last1,
	const char *_First2)
	{	
	return (:: memcmp(_First1, _First2, _Last1 - _First1) == 0);
	}

inline bool _Equal(const signed char *_First1, const signed char *_Last1,
	const signed char *_First2)
	{	
	return (:: memcmp(_First1, _First2, _Last1 - _First1) == 0);
	}

inline bool _Equal(const unsigned char *_First1, const unsigned char *_Last1,
	const unsigned char *_First2)
	{	
	return (:: memcmp(_First1, _First2, _Last1 - _First1) == 0);
	}

 










template<class _InIt1,
	class _InIt2> inline
	bool _Equal1(_InIt1 _First1, _InIt1 _Last1,
		_InIt2 _First2, ::std:: tr1::true_type)
	{	
	return (_Equal(_First1, _Last1,
		_First2));
	}

template<class _InIt1,
	class _InIt2> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	bool _Equal1(_InIt1 _First1, _InIt1 _Last1,
		_InIt2 _First2, ::std:: tr1::false_type)
	{	
	return (_Equal(_First1, _Last1,
		_First2));
	}

template<class _InIt1,
	class _InIt2> inline
	bool equal(_InIt1 _First1, _InIt1 _Last1,
		_InIt2 _First2)
	{	
	_Debug_range(_First1, _Last1, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 3048);
	_Debug_pointer(_First2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 3049);
	return (_Equal1(_Unchecked(_First1), _Unchecked(_Last1),
		_First2, _Is_checked(_First2)));
	}

template<class _InIt1,
	class _InTy,
	size_t _InSize> inline
	bool equal(_InIt1 _First1, _InIt1 _Last1,
		_InTy (&_First2)[_InSize])
	{	
	return (::std:: equal(_First1, _Last1,
		_Array_iterator<_InTy, _InSize>(_First2)));
	}
 

		
template<class _InIt1,
	class _InIt2,
	class _Pr> inline
	bool _Equal(_InIt1 _First1, _InIt1 _Last1,
		_InIt2 _First2, _Pr _Pred)
	{	
	for (; _First1 != _Last1; ++_First1, ++_First2)
		if (!_Pred(*_First1, *_First2))
			return (false);
	return (true);
	}

 











template<class _InIt1,
	class _InIt2,
	class _Pr> inline
	bool _Equal2(_InIt1 _First1, _InIt1 _Last1,
		_InIt2 _First2, _Pr _Pred, ::std:: tr1::true_type)
	{	
	return (_Equal(_First1, _Last1,
		_First2, _Pred));
	}

template<class _InIt1,
	class _InIt2,
	class _Pr> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	bool _Equal2(_InIt1 _First1, _InIt1 _Last1,
		_InIt2 _First2, _Pr _Pred, ::std:: tr1::false_type)
	{	
	return (_Equal(_First1, _Last1,
		_First2, _Pred));
	}

template<class _InIt1,
	class _InIt2,
	class _Pr> inline
	bool equal(_InIt1 _First1, _InIt1 _Last1,
		_InIt2 _First2, _Pr _Pred)
	{	
	_Debug_range(_First1, _Last1, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 3117);
	_Debug_pointer(_First2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 3118);
	return (_Equal2(_Unchecked(_First1), _Unchecked(_Last1),
		_First2, _Pred, _Is_checked(_First2)));
	}

template<class _InIt1,
	class _InTy,
	size_t _InSize,
	class _Pr> inline
	bool equal(_InIt1 _First1, _InIt1 _Last1,
		_InTy (&_First2)[_InSize], _Pr _Pred)
	{	
	return (::std:: equal(_First1, _Last1,
		_Array_iterator<_InTy, _InSize>(_First2), _Pred));
	}
 

		
template<class _InIt1,
	class _InIt2> inline
	bool _Lexicographical_compare(_InIt1 _First1, _InIt1 _Last1,
		_InIt2 _First2, _InIt2 _Last2)
	{	
	for (; _First1 != _Last1 && _First2 != _Last2; ++_First1, ++_First2)
		if (_Debug_lt(*_First1, *_First2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 3142))
			return (true);
		else if (*_First2 < *_First1)
			return (false);
	return (_First1 == _Last1 && _First2 != _Last2);
	}

inline bool _Lexicographical_compare(
	const unsigned char *_First1, const unsigned char *_Last1,
	const unsigned char *_First2, const unsigned char *_Last2)
	{	
	ptrdiff_t _Num1 = _Last1 - _First1;
	ptrdiff_t _Num2 = _Last2 - _First2;
	int _Ans = :: memcmp(_First1, _First2, _Num1 < _Num2 ? _Num1 : _Num2);
	return (_Ans < 0 || _Ans == 0 && _Num1 < _Num2);
	}

 











template<class _InIt1,
	class _InIt2> inline
	bool lexicographical_compare(_InIt1 _First1, _InIt1 _Last1,
		_InIt2 _First2, _InIt2 _Last2)
	{	
	_Debug_range(_First1, _Last1, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 3176);
	_Debug_range(_First2, _Last2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 3177);
	return (_Lexicographical_compare(_Unchecked(_First1), _Unchecked(_Last1),
		_Unchecked(_First2), _Unchecked(_Last2)));
	}

		
template<class _InIt1,
	class _InIt2,
	class _Pr> inline
	bool _Lexicographical_compare(_InIt1 _First1, _InIt1 _Last1,
		_InIt2 _First2, _InIt2 _Last2, _Pr _Pred)
	{	
	for (; _First1 != _Last1 && _First2 != _Last2; ++_First1, ++_First2)
		if (_Debug_lt_pred(_Pred, *_First1, *_First2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 3190))
			return (true);
		else if (_Pred(*_First2, *_First1))
			return (false);
	return (_First1 == _Last1 && _First2 != _Last2);
	}

template<class _InIt1,
	class _InIt2,
	class _Pr> inline
	bool lexicographical_compare(_InIt1 _First1, _InIt1 _Last1,
		_InIt2 _First2, _InIt2 _Last2, _Pr _Pred)
	{	
	_Debug_range(_First1, _Last1, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 3203);
	_Debug_range(_First2, _Last2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 3204);
	_Debug_pointer(_Pred, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 3205);
	return (_Lexicographical_compare(_Unchecked(_First1), _Unchecked(_Last1),
		_Unchecked(_First2), _Unchecked(_Last2), _Pred));
	}

		
template<class _BidIt> inline
	void _Reverse(_BidIt _First, _BidIt _Last, bidirectional_iterator_tag)
	{	
	for (; _First != _Last && _First != --_Last; ++_First)
		::std:: iter_swap(_First, _Last);
	}

template<class _BidIt> inline
	void reverse(_BidIt _First, _BidIt _Last)
	{	
	_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 3221);
	_Reverse(_Unchecked(_First), _Unchecked(_Last), _Iter_cat(_First));
	}

		
template<class _FwdIt> inline
	void _Rotate(_FwdIt _First, _FwdIt _Mid, _FwdIt _Last,
		forward_iterator_tag)
	{	
	for (_FwdIt _Next = _Mid; ; )
		{	
		::std:: iter_swap(_First, _Next);
		if (++_First == _Mid)
			if (++_Next == _Last)
				break;	
			else
				_Mid = _Next;	
		else if (++_Next == _Last)
			_Next = _Mid;	
		}
	}

template<class _BidIt> inline
	void _Rotate(_BidIt _First, _BidIt _Mid, _BidIt _Last,
		bidirectional_iterator_tag)
	{	
	::std:: reverse(_First, _Mid);
	::std:: reverse(_Mid, _Last);
	::std:: reverse(_First, _Last);
	}

template<class _RanIt,
	class _Diff,
	class _Ty> inline
	void _Rotate(_RanIt _First, _RanIt _Mid, _RanIt _Last, _Diff *, _Ty *)
	{	
	_Diff _Shift = _Mid - _First;
	_Diff _Count = _Last - _First;

	for (_Diff _Factor = _Shift; _Factor != 0; )
		{	
		_Diff _Tmp = _Count % _Factor;
		_Count = _Factor;
		_Factor = _Tmp;
		}

	if (_Count < _Last - _First)
		for (; 0 < _Count; --_Count)
			{	
			_RanIt _Hole = _First + _Count;
			_RanIt _Next = _Hole;
			_RanIt _Next1 = _Next + _Shift == _Last ? _First : _Next + _Shift;
			for (; ; )
				{	
				iter_swap(_Next, _Next1);
				_Next = _Next1;
				_Next1 = _Shift < _Last - _Next1 ? _Next1 + _Shift
					: _First + (_Shift - (_Last - _Next1));
				if (_Next1 == _Hole)
					break;
				}
			}
	}

template<class _RanIt> inline
	void _Rotate(_RanIt _First, _RanIt _Mid, _RanIt _Last,
		random_access_iterator_tag)
	{	
	_Rotate(_First, _Mid, _Last, _Dist_type(_First), _Val_type(_First));
	}

template<class _FwdIt> inline
	_FwdIt rotate(_FwdIt _First, _FwdIt _Mid, _FwdIt _Last)
	{	
	_Debug_range(_First, _Mid, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 3295);
	_Debug_range(_Mid, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 3296);
	if (_First != _Mid && _Mid != _Last)
		{	
		_Rotate(_Unchecked(_First), _Unchecked(_Mid), _Unchecked(_Last),
			_Iter_cat(_First));
		::std:: advance(_First, ::std:: distance(_Mid, _Last));
		}
	return (_First);
	}

		
template<class _Elem>
	class  _Yarn
	{	
public:
	typedef _Yarn<_Elem> _Myt;

	 _Yarn()
		: _Myptr(0), _Nul(0)
		{	
		}

	 _Yarn(const _Myt& _Right)
		: _Myptr(0), _Nul(0)
		{	
		*this = _Right;
		}

	 _Yarn(const _Elem *_Right)
		: _Myptr(0), _Nul(0)
		{	
		*this = _Right;
		}

	_Myt&  operator=(const _Myt& _Right)
		{	
		return (*this = _Right._Myptr);
		}

	_Myt&  operator=(const _Elem *_Right)
		{	
		if (_Myptr != _Right)
			{	
			_Tidy();

			if (_Right != 0)
				{	
				const _Elem *_Ptr = _Right;
				while (*_Ptr != (_Elem)0)
					++_Ptr;
				size_t _Count = ((const char *)++_Ptr - (const char *)_Right)
					* sizeof (_Elem);

 
				_Myptr = (_Elem *)_malloc_dbg(_Count, 2,
					"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xutility", 3351);

 



				if (_Myptr != 0)
					:: memcpy(_Myptr, _Right, _Count);
				}
			}
		return (*this);
		}

	 ~_Yarn()
		{	
		_Tidy();
		}

	bool  empty() const
		{	
		return (_Myptr == 0);
		}

	const _Elem * c_str() const
		{	
		return (_Myptr != 0 ? _Myptr : &_Nul);
		}

	bool  _Empty() const
		{	
		return (_Myptr == 0);
		}

	const _Elem * _C_str() const
		{	
		return (_Myptr != 0 ? _Myptr : &_Nul);
		}

private:
	void  _Tidy()
		{	
		if (_Myptr != 0)

 
			_free_dbg(_Myptr, 2);

 



		_Myptr = 0;
		}

	_Elem *_Myptr;	
	_Elem _Nul;		
	};

 __declspec(noreturn) void __cdecl _Xinvalid_argument(   const char *);
 __declspec(noreturn) void __cdecl _Xlength_error(   const char *);
 __declspec(noreturn) void __cdecl _Xout_of_range(   const char *);
 __declspec(noreturn) void __cdecl _Xoverflow_error(   const char *);
 __declspec(noreturn) void __cdecl _Xruntime_error(   const char *);
}
 #pragma warning(pop)
 #pragma pack(pop)




























 #pragma pack(push,8)
 #pragma warning(push,3)

 

 
 

 #pragma warning(disable: 4100)


 
 
 


namespace std {
		
template<class _Ty> inline
	_Ty  *_Allocate(size_t _Count, _Ty  *)
	{	
	void *_Ptr = 0;

	if (_Count <= 0)
		_Count = 0;
	else if (((size_t)(-1) / sizeof (_Ty) < _Count)
		|| (_Ptr = ::operator new(_Count * sizeof (_Ty))) == 0)
		throw bad_alloc(0);

	return ((_Ty  *)_Ptr);
	}

		
template<class _Ty1,
	class _Ty2> inline
	void _Construct(_Ty1  *_Ptr, _Ty2&& _Val)
	{	
	void  *_Vptr = _Ptr;
	::new (_Vptr) _Ty1(::std:: forward<_Ty2>(_Val));
	}

template<class _Ty1> inline
	void _Construct(_Ty1  *_Ptr)
	{	
	void  *_Vptr = _Ptr;

	::new (_Vptr) _Ty1();
	}

		
template<class _Ty> inline
	void _Destroy(_Ty  *_Ptr)
	{	
	_Ptr->~_Ty();
	}

template<> inline
	void _Destroy(char  *)
	{	
	}

template<> inline
	void _Destroy(wchar_t  *)
	{	
	}

 
template<> inline
	void _Destroy(unsigned short  *)
	{	
	}
 

		
template<class _Alloc> inline
	void _Destroy_range(typename _Alloc::pointer _First,
		typename _Alloc::pointer _Last, _Alloc& _Al)
	{	
	_Destroy_range(_First, _Last, _Al, _Ptr_cat(_First, _Last));
	}

template<class _Alloc> inline
	void _Destroy_range(typename _Alloc::pointer _First,
		typename _Alloc::pointer _Last, _Alloc& _Al,
		_Nonscalar_ptr_iterator_tag)
	{	
	for (; _First != _Last; ++_First)
		_Dest_val(_Al, _First);
	}

template<class _Alloc> inline
	void _Destroy_range(typename _Alloc::pointer _First,
		typename _Alloc::pointer _Last, _Alloc& _Al,
		_Scalar_ptr_iterator_tag)
	{	
	}

		
template<class _Ty> inline
	_Ty * addressof(_Ty& _Val)
	{	
	return ((_Ty *) &(char&)_Val);
	}

		
template<class _Ty>
	struct _Allocator_base
	{	
	typedef _Ty value_type;
	};

		
template<class _Ty>
	struct _Allocator_base<const _Ty>
	{	
	typedef _Ty value_type;
	};

		
template<class _Ty>
	class allocator
		: public _Allocator_base<_Ty>
	{	
public:
	typedef _Allocator_base<_Ty> _Mybase;
	typedef typename _Mybase::value_type value_type;

	typedef value_type  *pointer;
	typedef value_type & reference;
	typedef const value_type  *const_pointer;
	typedef const value_type & const_reference;

	typedef size_t size_type;
	typedef ptrdiff_t difference_type;

	template<class _Other>
		struct rebind
		{	
		typedef allocator<_Other> other;
		};

	pointer address(reference _Val) const
		{	
		return ((pointer) &(char&)_Val);
		}

	const_pointer address(const_reference _Val) const
		{	
		return ((const_pointer) &(char&)_Val);
		}

	allocator() throw ()
		{	
		}

	allocator(const allocator<_Ty>&) throw ()
		{	
		}

	template<class _Other>
		allocator(const allocator<_Other>&) throw ()
		{	
		}

	template<class _Other>
		allocator<_Ty>& operator=(const allocator<_Other>&)
		{	
		return (*this);
		}

	void deallocate(pointer _Ptr, size_type)
		{	
		::operator delete(_Ptr);
		}

	pointer allocate(size_type _Count)
		{	
		return (_Allocate(_Count, (pointer)0));
		}

	pointer allocate(size_type _Count, const void  *)
		{	
		return (allocate(_Count));
		}

	void construct(pointer _Ptr, const _Ty& _Val)
		{	
		_Construct(_Ptr, _Val);
		}

	void construct(pointer _Ptr, _Ty&& _Val)
		{	
		::new ((void  *)_Ptr) _Ty(::std:: forward<_Ty>(_Val));
		}

	template<class _Other>
		void construct(pointer _Ptr, _Other&& _Val)
		{	
		::new ((void  *)_Ptr) _Ty(::std:: forward<_Other>(_Val));
		}

	void destroy(pointer _Ptr)
		{	
		_Destroy(_Ptr);
		}

	size_t max_size() const throw ()
		{	
		size_t _Count = (size_t)(-1) / sizeof (_Ty);
		return (0 < _Count ? _Count : 1);
		}
	};

		
template<> class allocator<void>
	{	
public:
	typedef void _Ty;
	typedef _Ty  *pointer;
	typedef const _Ty  *const_pointer;
	typedef _Ty value_type;

	template<class _Other>
		struct rebind
		{	
		typedef allocator<_Other> other;
		};

	allocator() throw ()
		{	
		}

	allocator(const allocator<_Ty>&) throw ()
		{	
		}

	template<class _Other>
		allocator(const allocator<_Other>&) throw ()
		{	
		}

	template<class _Other>
		allocator<_Ty>& operator=(const allocator<_Other>&)
		{	
		return (*this);
		}
	};

template<class _Ty,
	class _Other> inline
	bool operator==(const allocator<_Ty>&,
		const allocator<_Other>&) throw ()
	{	
	return (true);
	}

template<class _Ty,
	class _Other> inline
	bool operator!=(const allocator<_Ty>& _Left,
		const allocator<_Other>& _Right) throw ()
	{	
	return (!(_Left == _Right));
	}

		
template<class _Alloc,
	class _Ty1,
	class _Ty2>
	void _Cons_val(_Alloc& _Alval, _Ty1 *_Pdest, _Ty2&& _Src)
	{	
	_Alval.construct(_Pdest, ::std:: forward<_Ty2>(_Src));
	}

template<class _Alloc,
	class _Ty1>
	void _Dest_val(_Alloc& _Alval, _Ty1 *_Pdest)
	{	
	_Alval.destroy(_Pdest);
	}
}

 

 #pragma warning(pop)
 #pragma pack(pop)



























 #pragma pack(push,8)
 #pragma warning(push,3)

namespace std {
  #pragma warning(disable: 4251)

template<class _Elem,
	class _Traits = char_traits<_Elem>,
	class _Ax = allocator<_Elem> >
	class basic_string;

  
  
  

		
template<class _Elem,
	class _Traits,
	class _Alloc>
	class _String_const_iterator
		: public _Iterator012<random_access_iterator_tag,
			typename _Alloc::value_type,
			typename _Alloc::difference_type,
			typename _Alloc::const_pointer,
			typename _Alloc::const_reference,
			_Iterator_base>
	{	
public:
	typedef _String_const_iterator<_Elem, _Traits, _Alloc> _Myiter;
	typedef basic_string<_Elem, _Traits, _Alloc> _Mystr;
	typedef random_access_iterator_tag iterator_category;

	typedef typename _Alloc::value_type value_type;
	typedef typename _Alloc::difference_type difference_type;
	typedef typename _Alloc::const_pointer pointer;
	typedef typename _Alloc::const_reference reference;

	_String_const_iterator()
		{	
		this->_Ptr = 0;
		}

	_String_const_iterator(pointer _Parg, const _Container_base *_Pstring)
		{	
		this->_Adopt(_Pstring);
		this->_Ptr = _Parg;
		}

	typedef pointer _Unchecked_type;

	_Myiter& _Rechecked(_Unchecked_type _Right)
		{	
		this->_Ptr = _Right;
		return (*this);
		}

	_Unchecked_type _Unchecked() const
		{	
		return (_Unchecked_type(this->_Ptr));
		}

	reference operator*() const
		{	
 
		if (this->_Getcont() == 0
			|| this->_Ptr == 0
			|| this->_Ptr < ((_Mystr *)this->_Getcont())->_Myptr()
			|| ((_Mystr *)this->_Getcont())->_Myptr()
				+ ((_Mystr *)this->_Getcont())->_Mysize <= this->_Ptr)
			{	
			_Debug_message(L"string iterator not dereferencable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 78);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 79, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 79, 0); };
			}

 







		;

		return (*this->_Ptr);
		}

	pointer operator->() const
		{	
		return (&**this);
		}

	_Myiter& operator++()
		{	
 
		if (this->_Getcont() == 0
			|| this->_Ptr == 0
			|| ((_Mystr *)this->_Getcont())->_Myptr()
				+ ((_Mystr *)this->_Getcont())->_Mysize <= this->_Ptr)
			{	
			_Debug_message(L"string iterator not incrementable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 108);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 109, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 109, 0); };
			}

 






		++this->_Ptr;
		return (*this);
		}

	_Myiter operator++(int)
		{	
		_Myiter _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Myiter& operator--()
		{	
 
		if (this->_Getcont() == 0
			|| this->_Ptr == 0
			|| this->_Ptr <= ((_Mystr *)this->_Getcont())->_Myptr())
			{	
			_Debug_message(L"string iterator not decrementable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 137);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 138, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 138, 0); };
			}

 





		--this->_Ptr;
		return (*this);
		}

	_Myiter operator--(int)
		{	
		_Myiter _Tmp = *this;
		--*this;
		return (_Tmp);
		}

	_Myiter& operator+=(difference_type _Off)
		{	
 
		if (this->_Getcont() == 0
			|| this->_Ptr == 0
			|| this->_Ptr + _Off < ((_Mystr *)this->_Getcont())->_Myptr()
			|| ((_Mystr *)this->_Getcont())->_Myptr()
				+ ((_Mystr *)this->_Getcont())->_Mysize < this->_Ptr + _Off)
			{	
			_Debug_message(L"string iterator + offset out of range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 167);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 168, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 168, 0); };
			}

 







		_Ptr += _Off;
		return (*this);
		}

	_Myiter operator+(difference_type _Off) const
		{	
		_Myiter _Tmp = *this;
		return (_Tmp += _Off);
		}

	_Myiter& operator-=(difference_type _Off)
		{	
		return (*this += -_Off);
		}

	_Myiter operator-(difference_type _Off) const
		{	
		_Myiter _Tmp = *this;
		return (_Tmp -= _Off);
		}

	difference_type operator-(const _Myiter& _Right) const
		{	
		_Compat(_Right);
		return (this->_Ptr - _Right._Ptr);
		}

	reference operator[](difference_type _Off) const
		{	
		return (*(*this + _Off));
		}

	bool operator==(const _Myiter& _Right) const
		{	
		_Compat(_Right);
		return (this->_Ptr == _Right._Ptr);
		}

	bool operator!=(const _Myiter& _Right) const
		{	
		return (!(*this == _Right));
		}

	bool operator<(const _Myiter& _Right) const
		{	
		_Compat(_Right);
		return (this->_Ptr < _Right._Ptr);
		}

	bool operator>(const _Myiter& _Right) const
		{	
		return (_Right < *this);
		}

	bool operator<=(const _Myiter& _Right) const
		{	
		return (!(_Right < *this));
		}

	bool operator>=(const _Myiter& _Right) const
		{	
		return (!(*this < _Right));
		}

 
	void _Compat(const _Myiter& _Right) const
		{	
		if (this->_Getcont() == 0
			|| this->_Getcont() != _Right._Getcont())
			{	
			_Debug_message(L"string iterators incompatible", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 249);
			{ (void) ((!!(("Standard C++ Libraries Invalid Argument" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 250, 0, L"\"Standard C++ Libraries Invalid Argument\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 250, 0); };
			}
		}

 












	pointer _Ptr;	
	};

template<class _Elem,
	class _Traits,
	class _Alloc> inline
	typename _String_const_iterator<_Elem, _Traits, _Alloc>::_Unchecked_type
		_Unchecked(_String_const_iterator<_Elem, _Traits, _Alloc> _Iter)
	{	
	return (_Iter._Unchecked());
	}

template<class _Elem,
	class _Traits,
	class _Alloc> inline
	_String_const_iterator<_Elem, _Traits, _Alloc>
		_Rechecked(_String_const_iterator<_Elem, _Traits, _Alloc>& _Iter,
			typename _String_const_iterator<_Elem, _Traits, _Alloc>
				::_Unchecked_type _Right)
	{	
	return (_Iter._Rechecked(_Right));
	}

template<class _Elem,
	class _Traits,
	class _Alloc> inline
	_String_const_iterator<_Elem, _Traits, _Alloc> operator+(
		typename _String_const_iterator<_Elem, _Traits, _Alloc>
			::difference_type _Off,
		_String_const_iterator<_Elem, _Traits, _Alloc> _Next)
	{	
	return (_Next += _Off);
	}

		
template<class _Elem,
	class _Traits,
	class _Alloc>
	class _String_iterator
		: public _String_const_iterator<_Elem, _Traits, _Alloc>
	{	
public:
	typedef _String_iterator<_Elem, _Traits, _Alloc> _Myiter;
	typedef _String_const_iterator<_Elem, _Traits, _Alloc> _Mybase;
	typedef basic_string<_Elem, _Traits, _Alloc> _Mystr;
	typedef random_access_iterator_tag iterator_category;

	typedef typename _Mystr::value_type value_type;
	typedef typename _Mystr::difference_type difference_type;
	typedef typename _Mystr::pointer pointer;
	typedef typename _Mystr::reference reference;

	_String_iterator()
		{	
		}

	_String_iterator(pointer _Parg, const _Container_base *_Pstring)
		: _Mybase(_Parg, _Pstring)
		{	
		}

	typedef pointer _Unchecked_type;

	_Myiter& _Rechecked(_Unchecked_type _Right)
		{	
		this->_Ptr = _Right;
		return (*this);
		}

	_Unchecked_type _Unchecked() const
		{	
		return (_Unchecked_type(this->_Ptr));
		}

	reference operator*() const
		{	
		return ((reference)**(_Mybase *)this);
		}

	pointer operator->() const
		{	
		return (&**this);
		}

	_Myiter& operator++()
		{	
		++*(_Mybase *)this;
		return (*this);
		}

	_Myiter operator++(int)
		{	
		_Myiter _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Myiter& operator--()
		{	
		--*(_Mybase *)this;
		return (*this);
		}

	_Myiter operator--(int)
		{	
		_Myiter _Tmp = *this;
		--*this;
		return (_Tmp);
		}

	_Myiter& operator+=(difference_type _Off)
		{	
		*(_Mybase *)this += _Off;
		return (*this);
		}

	_Myiter operator+(difference_type _Off) const
		{	
		_Myiter _Tmp = *this;
		return (_Tmp += _Off);
		}

	_Myiter& operator-=(difference_type _Off)
		{	
		return (*this += -_Off);
		}

	_Myiter operator-(difference_type _Off) const
		{	
		_Myiter _Tmp = *this;
		return (_Tmp -= _Off);
		}

	difference_type operator-(const _Mybase& _Right) const
		{	
		return ((_Mybase)*this - _Right);
		}

	reference operator[](difference_type _Off) const
		{	
		return (*(*this + _Off));
		}
	};

template<class _Elem,
	class _Traits,
	class _Alloc> inline
	typename _String_iterator<_Elem, _Traits, _Alloc>::_Unchecked_type
		_Unchecked(_String_iterator<_Elem, _Traits, _Alloc> _Iter)
	{	
	return (_Iter._Unchecked());
	}

template<class _Elem,
	class _Traits,
	class _Alloc> inline
	_String_iterator<_Elem, _Traits, _Alloc>
		_Rechecked(_String_iterator<_Elem, _Traits, _Alloc>& _Iter,
			typename _String_iterator<_Elem, _Traits, _Alloc>
				::_Unchecked_type _Right)
	{	
	return (_Iter._Rechecked(_Right));
	}

template<class _Elem,
	class _Traits,
	class _Alloc> inline
	_String_iterator<_Elem, _Traits, _Alloc> operator+(
		typename _String_iterator<_Elem, _Traits, _Alloc>
			::difference_type _Off,
		_String_iterator<_Elem, _Traits, _Alloc> _Next)
	{	
	return (_Next += _Off);
	}

		
template<class _Elem,
	class _Alloc>
	class _String_val
		: public _Container_base
	{	
public:
 












	typedef typename _Alloc::template rebind<_Elem>::other _Alty;

	_String_val(_Alty _Al = _Alty())
		: _Alval(_Al)
		{	
		typename _Alloc::template rebind<_Container_proxy>::other
			_Alproxy(_Alval);
		this->_Myproxy = _Alproxy.allocate(1);
		_Cons_val(_Alproxy, this->_Myproxy, _Container_proxy());
		this->_Myproxy->_Mycont = this;
		}

	~_String_val()
		{	
		typename _Alloc::template rebind<_Container_proxy>::other
			_Alproxy(_Alval);
		this->_Orphan_all();
		_Dest_val(_Alproxy, this->_Myproxy);
		_Alproxy.deallocate(this->_Myproxy, 1);
		this->_Myproxy = 0;
		}
 

	typedef typename _Alty::size_type size_type;
	typedef typename _Alty::difference_type difference_type;
	typedef typename _Alty::pointer pointer;
	typedef typename _Alty::const_pointer const_pointer;
	typedef typename _Alty::reference reference;
	typedef typename _Alty::const_reference const_reference;
	typedef typename _Alty::value_type value_type;

	enum
		{	
		_BUF_SIZE = 16 / sizeof (_Elem) < 1 ? 1
			: 16 / sizeof (_Elem)};
	enum
		{	
		_ALLOC_MASK = sizeof (_Elem) <= 1 ? 15
			: sizeof (_Elem) <= 2 ? 7
			: sizeof (_Elem) <= 4 ? 3
			: sizeof (_Elem) <= 8 ? 1 : 0};

	union _Bxty
		{	
		_Elem _Buf[_BUF_SIZE];
		_Elem *_Ptr;
		char _Alias[_BUF_SIZE];	
		} _Bx;

	size_type _Mysize;	
	size_type _Myres;	
	_Alty _Alval;	
	};

		
template<class _Elem,
	class _Traits,
	class _Ax>
	class basic_string
		: public _String_val<_Elem, _Ax>
	{	
public:
	typedef basic_string<_Elem, _Traits, _Ax> _Myt;
	typedef _String_val<_Elem, _Ax> _Mybase;
	typedef typename _Mybase::_Alty _Alloc;
	typedef typename _Alloc::size_type size_type;
	typedef typename _Alloc::difference_type difference_type;
	typedef typename _Alloc::pointer pointer;
	typedef typename _Alloc::const_pointer const_pointer;
	typedef typename _Alloc::reference reference;
	typedef typename _Alloc::const_reference const_reference;
	typedef typename _Alloc::value_type value_type;

	typedef _String_iterator<_Elem, _Traits, _Alloc> iterator;
	typedef _String_const_iterator<_Elem, _Traits, _Alloc> const_iterator;

	typedef ::std:: reverse_iterator<iterator> reverse_iterator;
	typedef ::std:: reverse_iterator<const_iterator> const_reverse_iterator;

	basic_string(const _Myt& _Right)
		: _Mybase(_Right._Alval)
		{	
		_Tidy();
		assign(_Right, 0, npos);
		}

	basic_string()
		: _Mybase()
		{	
		_Tidy();
		}

	explicit basic_string(const _Alloc& _Al)
		: _Mybase(_Al)
		{	
		_Tidy();
		}

	basic_string(const _Myt& _Right, size_type _Roff,
		size_type _Count = npos)
		: _Mybase(_Right._Alval)
		{	
		_Tidy();
		assign(_Right, _Roff, _Count);
		}

	basic_string(const _Myt& _Right, size_type _Roff, size_type _Count,
		const _Alloc& _Al)
		: _Mybase(_Al)
		{	
		_Tidy();
		assign(_Right, _Roff, _Count);
		}

	basic_string(const _Elem *_Ptr, size_type _Count)
		: _Mybase()
		{	
		_Tidy();
		assign(_Ptr, _Count);
		}

	basic_string(const _Elem *_Ptr, size_type _Count, const _Alloc& _Al)
		: _Mybase(_Al)
		{	
		_Tidy();
		assign(_Ptr, _Count);
		}

	basic_string(const _Elem *_Ptr)
		: _Mybase()
		{	
		_Tidy();
		assign(_Ptr);
		}

	basic_string(const _Elem *_Ptr, const _Alloc& _Al)
		: _Mybase(_Al)
		{	
		_Tidy();
		assign(_Ptr);
		}

	basic_string(size_type _Count, _Elem _Ch)
		: _Mybase()
		{	
		_Tidy();
		assign(_Count, _Ch);
		}

	basic_string(size_type _Count, _Elem _Ch, const _Alloc& _Al)
		: _Mybase(_Al)
		{	
		_Tidy();
		assign(_Count, _Ch);
		}

	template<class _It>
		basic_string(_It _First, _It _Last)
		: _Mybase()
		{	
		_Tidy();
		_Construct(_First, _Last, _Iter_cat(_First));
		}

	template<class _It>
		basic_string(_It _First, _It _Last, const _Alloc& _Al)
		: _Mybase(_Al)
		{	
		_Tidy();
		_Construct(_First, _Last, _Iter_cat(_First));
		}

	template<class _It>
		void _Construct(_It _Count,
			_It _Ch, _Int_iterator_tag)
		{	
		assign((size_type)_Count, (_Elem)_Ch);
		}

	template<class _It>
		void _Construct(_It _First,
			_It _Last, input_iterator_tag)
		{	
		try {
		for (; _First != _Last; ++_First)
			append((size_type)1, (_Elem)*_First);
		} catch (...) {
		_Tidy(true);
		throw;
		}
		}

	template<class _It>
		void _Construct(_It _First,
			_It _Last, forward_iterator_tag)
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 658);
		size_type _Count = 0;
		_Distance(_First, _Last, _Count);
		reserve(_Count);

		try {
		for (; _First != _Last; ++_First)
			append((size_type)1, (_Elem)*_First);
		} catch (...) {
		_Tidy(true);
		throw;
		}
		}

	basic_string(const_pointer _First, const_pointer _Last)
		: _Mybase()
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 675);
		_Tidy();
		if (_First != _Last)
			assign(&*_First, _Last - _First);
		}

	basic_string(const_pointer _First, const_pointer _Last,
		const _Alloc& _Al)
		: _Mybase(_Al)
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 685);
		_Tidy();
		if (_First != _Last)
			assign(&*_First, _Last - _First);
		}

	basic_string(const_iterator _First, const_iterator _Last)
		: _Mybase()
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 694);
		_Tidy();
		if (_First != _Last)
			assign(&*_First, _Last - _First);
		}

	basic_string(_Myt&& _Right)
		: _Mybase(::std:: forward<_Alloc>(_Right._Alval))
		{	
		_Tidy();
		assign(::std:: forward<_Myt>(_Right));
		}

	_Myt& operator=(_Myt&& _Right)
		{	
		return (assign(::std:: forward<_Myt>(_Right)));
		}

	_Myt& assign(_Myt&& _Right)
		{	
		if (this == &_Right)
			;
		else if (get_allocator() != _Right.get_allocator()
			&& this->_BUF_SIZE <= _Right._Myres)
			*this = _Right;
		else
			{	
			_Tidy(true);
			if (_Right._Myres < this->_BUF_SIZE)
				_Traits::move(this->_Bx._Buf, _Right._Bx._Buf,
					_Right._Mysize + 1);
			else
				{	
				this->_Bx._Ptr = _Right._Bx._Ptr;
				_Right._Bx._Ptr = 0;
				}
			this->_Mysize = _Right._Mysize;
			this->_Myres = _Right._Myres;

			_Right._Tidy();
			}
		return (*this);
		}

	void swap(_Myt&& _Right)
		{	
		if (this != &_Right)
			{	
 
			this->_Orphan_all();
			this->_Swap_all(_Right);
 

			assign(::std:: forward<_Myt>(_Right));
			}
		}

	~basic_string()
		{	
		_Tidy(true);
		}

	typedef _Traits traits_type;
	typedef _Alloc allocator_type;

	 static const size_type npos;	

	_Myt& operator=(const _Myt& _Right)
		{	
		return (assign(_Right));
		}

	_Myt& operator=(const _Elem *_Ptr)
		{	
		return (assign(_Ptr));
		}

	_Myt& operator=(_Elem _Ch)
		{	
		return (assign(1, _Ch));
		}

	_Myt& operator+=(const _Myt& _Right)
		{	
		return (append(_Right));
		}

	_Myt& operator+=(const _Elem *_Ptr)
		{	
		return (append(_Ptr));
		}

	_Myt& operator+=(_Elem _Ch)
		{	
		return (append((size_type)1, _Ch));
		}

	_Myt& append(const _Myt& _Right)
		{	
		return (append(_Right, 0, npos));
		}

	_Myt& append(const _Myt& _Right,
		size_type _Roff, size_type _Count)
		{	
		if (_Right.size() < _Roff)
			_Xran();	
		size_type _Num = _Right.size() - _Roff;
		if (_Num < _Count)
			_Count = _Num;	
		if (npos - this->_Mysize <= _Count)
			_Xlen();	

		if (0 < _Count && _Grow(_Num = this->_Mysize + _Count))
			{	
			_Traits::copy(_Myptr() + this->_Mysize,
				_Right._Myptr() + _Roff, _Count);
			_Eos(_Num);
			}
		return (*this);
		}

	_Myt& append(const _Elem *_Ptr, size_type _Count)
		{	
 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 820);
 

		if (_Inside(_Ptr))
			return (append(*this, _Ptr - _Myptr(), _Count));	
		if (npos - this->_Mysize <= _Count)
			_Xlen();	

		size_type _Num;
		if (0 < _Count && _Grow(_Num = this->_Mysize + _Count))
			{	
			_Traits::copy(_Myptr() + this->_Mysize, _Ptr, _Count);
			_Eos(_Num);
			}
		return (*this);
		}

	_Myt& append(const _Elem *_Ptr)
		{	
		_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 839);
		return (append(_Ptr, _Traits::length(_Ptr)));
		}

	_Myt& append(size_type _Count, _Elem _Ch)
		{	
		if (npos - this->_Mysize <= _Count)
			_Xlen();	

		size_type _Num;
		if (0 < _Count && _Grow(_Num = this->_Mysize + _Count))
			{	
			_Chassign(this->_Mysize, _Count, _Ch);
			_Eos(_Num);
			}
		return (*this);
		}

	template<class _It>
		_Myt& append(_It _First, _It _Last)
		{	
		return (_Append(_First, _Last, _Iter_cat(_First)));
		}

	template<class _It>
		_Myt& _Append(_It _Count, _It _Ch, _Int_iterator_tag)
		{	
		return (append((size_type)_Count, (_Elem)_Ch));
		}

	template<class _It>
		_Myt& _Append(_It _First, _It _Last, input_iterator_tag)
		{	
		return (replace(end(), end(), _First, _Last));
		}

	_Myt& append(const_pointer _First, const_pointer _Last)
		{	
		return (replace(end(), end(), _First, _Last));
		}

	_Myt& append(const_iterator _First, const_iterator _Last)
		{	
		return (replace(end(), end(), _First, _Last));
		}

	_Myt& assign(const _Myt& _Right)
		{	
		return (assign(_Right, 0, npos));
		}

	_Myt& assign(const _Myt& _Right,
		size_type _Roff, size_type _Count)
		{	
		if (_Right.size() < _Roff)
			_Xran();	
		size_type _Num = _Right.size() - _Roff;
		if (_Count < _Num)
			_Num = _Count;	

		if (this == &_Right)
			erase((size_type)(_Roff + _Num)), erase(0, _Roff);	
		else if (_Grow(_Num))
			{	
			_Traits::copy(_Myptr(), _Right._Myptr() + _Roff, _Num);
			_Eos(_Num);
			}
		return (*this);
		}

	_Myt& assign(const _Elem *_Ptr, size_type _Count)
		{	
 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 913);
 

		if (_Inside(_Ptr))
			return (assign(*this, _Ptr - _Myptr(), _Count));	

		if (_Grow(_Count))
			{	
			_Traits::copy(_Myptr(), _Ptr, _Count);
			_Eos(_Count);
			}
		return (*this);
		}

	_Myt& assign(const _Elem *_Ptr)
		{	
		_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 929);
		return (assign(_Ptr, _Traits::length(_Ptr)));
		}

	_Myt& assign(size_type _Count, _Elem _Ch)
		{	
		if (_Count == npos)
			_Xlen();	

		if (_Grow(_Count))
			{	
			_Chassign(0, _Count, _Ch);
			_Eos(_Count);
			}
		return (*this);
		}

	template<class _It>
		_Myt& assign(_It _First, _It _Last)
		{	
		return (_Assign(_First, _Last, _Iter_cat(_First)));
		}

	template<class _It>
		_Myt& _Assign(_It _Count, _It _Ch, _Int_iterator_tag)
		{	
		return (assign((size_type)_Count, (_Elem)_Ch));
		}

	template<class _It>
		_Myt& _Assign(_It _First, _It _Last, input_iterator_tag)
		{	
		return (replace(begin(), end(), _First, _Last));
		}

	_Myt& assign(const_pointer _First, const_pointer _Last)
		{	
		return (replace(begin(), end(), _First, _Last));
		}

	_Myt& assign(const_iterator _First, const_iterator _Last)
		{	
		return (replace(begin(), end(), _First, _Last));
		}

	_Myt& insert(size_type _Off, const _Myt& _Right)
		{	
		return (insert(_Off, _Right, 0, npos));
		}

	_Myt& insert(size_type _Off,
		const _Myt& _Right, size_type _Roff, size_type _Count)
		{	
		if (this->_Mysize < _Off || _Right.size() < _Roff)
			_Xran();	
		size_type _Num = _Right.size() - _Roff;
		if (_Num < _Count)
			_Count = _Num;	
		if (npos - this->_Mysize <= _Count)
			_Xlen();	

		if (0 < _Count && _Grow(_Num = this->_Mysize + _Count))
			{	
			_Traits::move(_Myptr() + _Off + _Count,
				_Myptr() + _Off, this->_Mysize - _Off);	
			if (this == &_Right)
				_Traits::move(_Myptr() + _Off,
					_Myptr() + (_Off < _Roff ? _Roff + _Count : _Roff),
						_Count);	
			else
				_Traits::copy(_Myptr() + _Off,
					_Right._Myptr() + _Roff, _Count);	
			_Eos(_Num);
			}
		return (*this);
		}

	_Myt& insert(size_type _Off,
		const _Elem *_Ptr, size_type _Count)
		{	
 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1011);
 

		if (_Inside(_Ptr))
			return (insert(_Off, *this,
				_Ptr - _Myptr(), _Count));	
		if (this->_Mysize < _Off)
			_Xran();	
		if (npos - this->_Mysize <= _Count)
			_Xlen();	
		size_type _Num;
		if (0 < _Count && _Grow(_Num = this->_Mysize + _Count))
			{	
			_Traits::move(_Myptr() + _Off + _Count,
				_Myptr() + _Off, this->_Mysize - _Off);	
			_Traits::copy(_Myptr() + _Off, _Ptr, _Count);	
			_Eos(_Num);
			}
		return (*this);
		}

	_Myt& insert(size_type _Off, const _Elem *_Ptr)
		{	
		_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1034);
		return (insert(_Off, _Ptr, _Traits::length(_Ptr)));
		}

	_Myt& insert(size_type _Off,
		size_type _Count, _Elem _Ch)
		{	
		if (this->_Mysize < _Off)
			_Xran();	
		if (npos - this->_Mysize <= _Count)
			_Xlen();	
		size_type _Num;
		if (0 < _Count && _Grow(_Num = this->_Mysize + _Count))
			{	
			_Traits::move(_Myptr() + _Off + _Count,
				_Myptr() + _Off, this->_Mysize - _Off);	
			_Chassign(_Off, _Count, _Ch);	
			_Eos(_Num);
			}
		return (*this);
		}

	iterator insert(const_iterator _Where)
		{	
		return (insert(_Where, _Elem()));
		}

	iterator insert(const_iterator _Where, _Elem _Ch)
		{	
		size_type _Off = _Pdif(_Where, begin());
		insert(_Off, 1, _Ch);
		return (begin() + _Off);
		}

	void insert(const_iterator _Where, size_type _Count, _Elem _Ch)
		{	
		size_type _Off = _Pdif(_Where, begin());
		insert(_Off, _Count, _Ch);
		}

	template<class _It>
		void insert(const_iterator _Where, _It _First, _It _Last)
		{	
		_Insert(_Where, _First, _Last, _Iter_cat(_First));
		}

	template<class _It>
		void _Insert(const_iterator _Where, _It _Count, _It _Ch,
			_Int_iterator_tag)
		{	
		insert(_Where, (size_type)_Count, (_Elem)_Ch);
		}

	template<class _It>
		void _Insert(const_iterator _Where, _It _First, _It _Last,
			input_iterator_tag)
		{	
		replace(_Where, _Where, _First, _Last);
		}

	void insert(const_iterator _Where,
		const_pointer _First, const_pointer _Last)
		{	
		replace(_Where, _Where, _First, _Last);
		}

	void insert(const_iterator _Where,
		const_iterator _First, const_iterator _Last)
		{	
		replace(_Where, _Where, _First, _Last);
		}

	_Myt& erase(size_type _Off = 0,
		size_type _Count = npos)
		{	
		if (this->_Mysize < _Off)
			_Xran();	
		if (this->_Mysize - _Off < _Count)
			_Count = this->_Mysize - _Off;	
		if (0 < _Count)
			{	
			_Traits::move(_Myptr() + _Off, _Myptr() + _Off + _Count,
				this->_Mysize - _Off - _Count);
			size_type _Newsize = this->_Mysize - _Count;
			_Eos(_Newsize);
			}
		return (*this);
		}

	iterator erase(const_iterator _Where)
		{	
		size_type _Count = _Pdif(_Where, begin());
		erase(_Count, 1);
		return (iterator(_Myptr() + _Count, this));
		}

	iterator erase(const_iterator _First, const_iterator _Last)
		{	
		size_type _Count = _Pdif(_First, begin());
		erase(_Count, _Pdif(_Last, _First));
		return (iterator(_Myptr() + _Count, this));
		}

	void clear()
		{	
		_Eos(0);
		}

	_Myt& replace(size_type _Off, size_type _N0, const _Myt& _Right)
		{	
		return (replace(_Off, _N0, _Right, 0, npos));
		}

	_Myt& replace(size_type _Off,
		size_type _N0, const _Myt& _Right, size_type _Roff, size_type _Count)
		{	
		if (this->_Mysize < _Off || _Right.size() < _Roff)
			_Xran();	
		if (this->_Mysize - _Off < _N0)
			_N0 = this->_Mysize - _Off;	
		size_type _Num = _Right.size() - _Roff;
		if (_Num < _Count)
			_Count = _Num;	
		if (npos - _Count <= this->_Mysize - _N0)
			_Xlen();	

		size_type _Nm = this->_Mysize - _N0 - _Off;	
		size_type _Newsize = this->_Mysize + _Count - _N0;
		if (this->_Mysize < _Newsize)
			_Grow(_Newsize);

		if (this != &_Right)
			{	
			_Traits::move(_Myptr() + _Off + _Count,
				_Myptr() + _Off + _N0, _Nm);	
			_Traits::copy(_Myptr() + _Off,
				_Right._Myptr() + _Roff, _Count);	
			}
		else if (_Count <= _N0)
			{	
			_Traits::move(_Myptr() + _Off,
				_Myptr() + _Roff, _Count);	
			_Traits::move(_Myptr() + _Off + _Count,
				_Myptr() + _Off + _N0, _Nm);	
			}
		else if (_Roff <= _Off)
			{	
			_Traits::move(_Myptr() + _Off + _Count,
				_Myptr() + _Off + _N0, _Nm);	
			_Traits::move(_Myptr() + _Off,
				_Myptr() + _Roff, _Count);	
			}
		else if (_Off + _N0 <= _Roff)
			{	
			_Traits::move(_Myptr() + _Off + _Count,
				_Myptr() + _Off + _N0, _Nm);	
			_Traits::move(_Myptr() + _Off,
				_Myptr() + (_Roff + _Count - _N0), _Count);	
			}
		else
			{	
			_Traits::move(_Myptr() + _Off,
				_Myptr() + _Roff, _N0);	
			_Traits::move(_Myptr() + _Off + _Count,
				_Myptr() + _Off + _N0, _Nm);	
			_Traits::move(_Myptr() + _Off + _N0, _Myptr() + _Roff + _Count,
				_Count - _N0);	
			}

		_Eos(_Newsize);
		return (*this);
		}

	_Myt& replace(size_type _Off,
		size_type _N0, const _Elem *_Ptr, size_type _Count)
		{	
 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1212);
 

		if (_Inside(_Ptr))
			return (replace(_Off, _N0, *this,
				_Ptr - _Myptr(), _Count));	
		if (this->_Mysize < _Off)
			_Xran();	
		if (this->_Mysize - _Off < _N0)
			_N0 = this->_Mysize - _Off;	
		if (npos - _Count <= this->_Mysize - _N0)
			_Xlen();	
		size_type _Nm = this->_Mysize - _N0 - _Off;

		if (_Count < _N0)
			_Traits::move(_Myptr() + _Off + _Count,
				_Myptr() + _Off + _N0, _Nm);	
		size_type _Num;
		if ((0 < _Count || 0 < _N0)
			&& _Grow(_Num = this->_Mysize + _Count - _N0))
			{	
			if (_N0 < _Count)
				_Traits::move(_Myptr() + _Off + _Count,
					_Myptr() + _Off + _N0, _Nm);	
			_Traits::copy(_Myptr() + _Off, _Ptr, _Count);	
			_Eos(_Num);
			}
		return (*this);
		}

	_Myt& replace(size_type _Off, size_type _N0, const _Elem *_Ptr)
		{	
		_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1244);
		return (replace(_Off, _N0, _Ptr, _Traits::length(_Ptr)));
		}

	_Myt& replace(size_type _Off,
		size_type _N0, size_type _Count, _Elem _Ch)
		{	
		if (this->_Mysize < _Off)
			_Xran();	
		if (this->_Mysize - _Off < _N0)
			_N0 = this->_Mysize - _Off;	
		if (npos - _Count <= this->_Mysize - _N0)
			_Xlen();	
		size_type _Nm = this->_Mysize - _N0 - _Off;

		if (_Count < _N0)
			_Traits::move(_Myptr() + _Off + _Count,
				_Myptr() + _Off + _N0, _Nm);	
		size_type _Num;
		if ((0 < _Count || 0 < _N0)
			&& _Grow(_Num = this->_Mysize + _Count - _N0))
			{	
			if (_N0 < _Count)
				_Traits::move(_Myptr() + _Off + _Count,
					_Myptr() + _Off + _N0, _Nm);	
			_Chassign(_Off, _Count, _Ch);	
			_Eos(_Num);
			}
		return (*this);
		}

	_Myt& replace(const_iterator _First, const_iterator _Last,
		const _Myt& _Right)
		{	
		return (replace(
			_Pdif(_First, begin()), _Pdif(_Last, _First), _Right));
		}

	_Myt& replace(const_iterator _First, const_iterator _Last,
		const _Elem *_Ptr, size_type _Count)
		{	
		return (replace(
			_Pdif(_First, begin()), _Pdif(_Last, _First), _Ptr, _Count));
		}

	_Myt& replace(const_iterator _First, const_iterator _Last,
		const _Elem *_Ptr)
		{	
		return (replace(
			_Pdif(_First, begin()), _Pdif(_Last, _First), _Ptr));
		}

	_Myt& replace(const_iterator _First, const_iterator _Last,
		size_type _Count, _Elem _Ch)
		{	
		return (replace(
			_Pdif(_First, begin()), _Pdif(_Last, _First), _Count, _Ch));
		}

	template<class _It>
		_Myt& replace(const_iterator _First, const_iterator _Last,
			_It _First2, _It _Last2)
		{	
		return (_Replace(_First, _Last,
			_First2, _Last2, _Iter_cat(_First2)));
		}

	template<class _It>
		_Myt& _Replace(const_iterator _First, const_iterator _Last,
			_It _Count, _It _Ch, _Int_iterator_tag)
		{	
		return (replace(_First, _Last, (size_type)_Count, (_Elem)_Ch));
		}

	template<class _It>
		_Myt& _Replace(const_iterator _First, const_iterator _Last,
			_It _First2, _It _Last2, input_iterator_tag)
		{	
		_Myt _Right(_First2, _Last2);
		replace(_First, _Last, _Right);
		return (*this);
		}

	_Myt& replace(const_iterator _First, const_iterator _Last,
		const_pointer _First2, const_pointer _Last2)
		{	
		if (_First2 == _Last2)
			erase(_Pdif(_First, begin()), _Pdif(_Last, _First));
		else
			replace(_Pdif(_First, begin()), _Pdif(_Last, _First),
				&*_First2, _Last2 - _First2);
		return (*this);
		}

	_Myt& replace(const_iterator _First, const_iterator _Last,
		const_iterator _First2, const_iterator _Last2)
		{	
		if (_First2 == _Last2)
			erase(_Pdif(_First, begin()), _Pdif(_Last, _First));
		else
			replace(_Pdif(_First, begin()), _Pdif(_Last, _First),
				&*_First2, _Last2 - _First2);
		return (*this);
		}

	iterator begin()
		{	
		return (iterator(_Myptr(), this));
		}

	const_iterator begin() const
		{	
		return (const_iterator(_Myptr(), this));
		}

	iterator end()
		{	
		return (iterator(_Myptr() + this->_Mysize, this));
		}

	const_iterator end() const
		{	
		return (const_iterator(_Myptr() + this->_Mysize, this));
		}

	reverse_iterator rbegin()
		{	
		return (reverse_iterator(end()));
		}

	const_reverse_iterator rbegin() const
		{	
		return (const_reverse_iterator(end()));
		}

	reverse_iterator rend()
		{	
		return (reverse_iterator(begin()));
		}

	const_reverse_iterator rend() const
		{	
		return (const_reverse_iterator(begin()));
		}

 
	const_iterator cbegin() const
		{	
		return (((const _Myt *)this)->begin());
		}

	const_iterator cend() const
		{	
		return (((const _Myt *)this)->end());
		}

	const_reverse_iterator crbegin() const
		{	
		return (((const _Myt *)this)->rbegin());
		}

	const_reverse_iterator crend() const
		{	
		return (((const _Myt *)this)->rend());
		}

	void shrink_to_fit()
		{	
		if (size() < capacity())
			{	
			_Myt _Tmp(*this);
			swap(_Tmp);
			}
		}
 

	reference at(size_type _Off)
		{	
		if (this->_Mysize <= _Off)
			_Xran();	
		return (_Myptr()[_Off]);
		}

	const_reference at(size_type _Off) const
		{	
		if (this->_Mysize <= _Off)
			_Xran();	
		return (_Myptr()[_Off]);
		}

	reference operator[](size_type _Off)
		{	
 

		if (this->_Mysize <= _Off)

			_Debug_message(L"string subscript out of range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1440);

 



		return (_Myptr()[_Off]);
		}

	const_reference operator[](size_type _Off) const
		{	
 
		if (this->_Mysize < _Off)	
			_Debug_message(L"string subscript out of range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1453);

 



		return (_Myptr()[_Off]);
		}

	void push_back(_Elem _Ch)
		{	
		insert(end(), _Ch);
		}

 
	void pop_back()
		{	
		erase(this->_Mysize - 1);	
		}

	reference front()
		{	
		return (*begin());
		}

	const_reference front() const
		{	
		return (*begin());
		}

	reference back()
		{	
		return (*(end() - 1));
		}

	const_reference back() const
		{	
		return (*(end() - 1));
		}
 

	const _Elem *c_str() const
		{	
		return (_Myptr());
		}

	const _Elem *data() const
		{	
		return (c_str());
		}

	size_type length() const
		{	
		return (this->_Mysize);
		}

	size_type size() const
		{	
		return (this->_Mysize);
		}

	size_type max_size() const
		{	
		size_type _Num = this->_Alval.max_size();
		return (_Num <= 1 ? 1 : _Num - 1);
		}

	void resize(size_type _Newsize)
		{	
		resize(_Newsize, _Elem());
		}

	void resize(size_type _Newsize, _Elem _Ch)
		{	
		if (_Newsize <= this->_Mysize)
			erase(_Newsize);
		else
			append(_Newsize - this->_Mysize, _Ch);
		}

	size_type capacity() const
		{	
		return (this->_Myres);
		}

	void reserve(size_type _Newcap = 0)
		{	
		if (this->_Mysize <= _Newcap && this->_Myres != _Newcap)
			{	
			size_type _Size = this->_Mysize;
			if (_Grow(_Newcap, true))
				_Eos(_Size);
			}
		}

	bool empty() const
		{	
		return (this->_Mysize == 0);
		}

	__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))

	size_type copy(_Elem *_Ptr,
		size_type _Count, size_type _Off = 0) const
		{	
 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1560);
 

		if (this->_Mysize < _Off)
			_Xran();	
		if (this->_Mysize - _Off < _Count)
			_Count = this->_Mysize - _Off;
		_Traits::copy(_Ptr, _Myptr() + _Off, _Count);
		return (_Count);
		}

	size_type _Copy_s(_Elem *_Dest, size_type _Dest_size,
		size_type _Count, size_type _Off = 0) const
		{	
 
		if (_Count != 0)
			_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1576);
 

		if (this->_Mysize < _Off)
			_Xran();	
		if (this->_Mysize - _Off < _Count)
			_Count = this->_Mysize - _Off;
		_Traits::_Copy_s(_Dest, _Dest_size, _Myptr() + _Off, _Count);
		return (_Count);
		}

	void swap(_Myt& _Right)
		{	
		if (this == &_Right)
			;	
		else if (this->_Alval == _Right._Alval)
			{	
 
			this->_Swap_all(_Right);
 

			::std:: swap(this->_Bx, _Right._Bx);
			::std:: swap(this->_Mysize, _Right._Mysize);
			::std:: swap(this->_Myres, _Right._Myres);
			}
		else
			{	
			_Myt _Tmp = *this;

			*this = _Right;
			_Right = _Tmp;
			}
		}

	size_type find(const _Myt& _Right, size_type _Off = 0) const
		{	
		return (find(_Right._Myptr(), _Off, _Right.size()));
		}

	size_type find(const _Elem *_Ptr,
		size_type _Off, size_type _Count) const
		{	
 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1620);
 

		if (_Count == 0 && _Off <= this->_Mysize)
			return (_Off);	

		size_type _Nm;
		if (_Off < this->_Mysize && _Count <= (_Nm = this->_Mysize - _Off))
			{	
			const _Elem *_Uptr, *_Vptr;
			for (_Nm -= _Count - 1, _Vptr = _Myptr() + _Off;
				(_Uptr = _Traits::find(_Vptr, _Nm, *_Ptr)) != 0;
				_Nm -= _Uptr - _Vptr + 1, _Vptr = _Uptr + 1)
				if (_Traits::compare(_Uptr, _Ptr, _Count) == 0)
					return (_Uptr - _Myptr());	
			}

		return (npos);	
		}

	size_type find(const _Elem *_Ptr, size_type _Off = 0) const
		{	
		_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1642);
		return (find(_Ptr, _Off, _Traits::length(_Ptr)));
		}

	size_type find(_Elem _Ch, size_type _Off = 0) const
		{	
		return (find((const _Elem *)&_Ch, _Off, 1));
		}

	size_type rfind(const _Myt& _Right, size_type _Off = npos) const
		{	
		return (rfind(_Right._Myptr(), _Off, _Right.size()));
		}

	size_type rfind(const _Elem *_Ptr,
		size_type _Off, size_type _Count) const
		{	
 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1661);
 

		if (_Count == 0)
			return (_Off < this->_Mysize ? _Off
				: this->_Mysize);	
		if (_Count <= this->_Mysize)
			{	
			const _Elem *_Uptr = _Myptr() +
				(_Off < this->_Mysize - _Count ? _Off
					: this->_Mysize - _Count);
			for (; ; --_Uptr)
				if (_Traits::eq(*_Uptr, *_Ptr)
					&& _Traits::compare(_Uptr, _Ptr, _Count) == 0)
					return (_Uptr - _Myptr());	
				else if (_Uptr == _Myptr())
					break;	
			}

		return (npos);	
		}

	size_type rfind(const _Elem *_Ptr, size_type _Off = npos) const
		{	
		_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1685);
		return (rfind(_Ptr, _Off, _Traits::length(_Ptr)));
		}

	size_type rfind(_Elem _Ch, size_type _Off = npos) const
		{	
		return (rfind((const _Elem *)&_Ch, _Off, 1));
		}

	size_type find_first_of(const _Myt& _Right,
		size_type _Off = 0) const
		{	
		return (find_first_of(_Right._Myptr(), _Off, _Right.size()));
		}

	size_type find_first_of(const _Elem *_Ptr,
		size_type _Off, size_type _Count) const
		{	
 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1705);
 

		if (0 < _Count && _Off < this->_Mysize)
			{	
			const _Elem *const _Vptr = _Myptr() + this->_Mysize;
			for (const _Elem *_Uptr = _Myptr() + _Off; _Uptr < _Vptr; ++_Uptr)
				if (_Traits::find(_Ptr, _Count, *_Uptr) != 0)
					return (_Uptr - _Myptr());	
			}

		return (npos);	
		}

	size_type find_first_of(const _Elem *_Ptr, size_type _Off = 0) const
		{	
		_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1721);
		return (find_first_of(_Ptr, _Off, _Traits::length(_Ptr)));
		}

	size_type find_first_of(_Elem _Ch, size_type _Off = 0) const
		{	
		return (find((const _Elem *)&_Ch, _Off, 1));
		}

	size_type find_last_of(const _Myt& _Right,
		size_type _Off = npos) const
		{	
		return (find_last_of(_Right._Myptr(), _Off, _Right.size()));
		}

	size_type find_last_of(const _Elem *_Ptr,
		size_type _Off, size_type _Count) const
		{	
 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1741);
 

		if (0 < _Count && 0 < this->_Mysize)
			{	
			const _Elem *_Uptr = _Myptr()
				+ (_Off < this->_Mysize ? _Off : this->_Mysize - 1);
			for (; ; --_Uptr)
				if (_Traits::find(_Ptr, _Count, *_Uptr) != 0)
					return (_Uptr - _Myptr());	
				else if (_Uptr == _Myptr())
					break;	
			}

		return (npos);	
		}

	size_type find_last_of(const _Elem *_Ptr,
		size_type _Off = npos) const
		{	
		_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1761);
		return (find_last_of(_Ptr, _Off, _Traits::length(_Ptr)));
		}

	size_type find_last_of(_Elem _Ch, size_type _Off = npos) const
		{	
		return (rfind((const _Elem *)&_Ch, _Off, 1));
		}

	size_type find_first_not_of(const _Myt& _Right,
		size_type _Off = 0) const
		{	
		return (find_first_not_of(_Right._Myptr(), _Off,
			_Right.size()));
		}

	size_type find_first_not_of(const _Elem *_Ptr,
		size_type _Off, size_type _Count) const
		{	
 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1782);
 

		if (_Off < this->_Mysize)
			{	
			const _Elem *const _Vptr = _Myptr() + this->_Mysize;
			for (const _Elem *_Uptr = _Myptr() + _Off; _Uptr < _Vptr; ++_Uptr)
				if (_Traits::find(_Ptr, _Count, *_Uptr) == 0)
					return (_Uptr - _Myptr());
			}
		return (npos);
		}

	size_type find_first_not_of(const _Elem *_Ptr,
		size_type _Off = 0) const
		{	
		_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1798);
		return (find_first_not_of(_Ptr, _Off, _Traits::length(_Ptr)));
		}

	size_type find_first_not_of(_Elem _Ch, size_type _Off = 0) const
		{	
		return (find_first_not_of((const _Elem *)&_Ch, _Off, 1));
		}

	size_type find_last_not_of(const _Myt& _Right,
		size_type _Off = npos) const
		{	
		return (find_last_not_of(_Right._Myptr(), _Off, _Right.size()));
		}

	size_type find_last_not_of(const _Elem *_Ptr,
		size_type _Off, size_type _Count) const
		{	
 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1818);
 

		if (0 < this->_Mysize)
			{	
			const _Elem *_Uptr = _Myptr()
				+ (_Off < this->_Mysize ? _Off : this->_Mysize - 1);
			for (; ; --_Uptr)
				if (_Traits::find(_Ptr, _Count, *_Uptr) == 0)
					return (_Uptr - _Myptr());
				else if (_Uptr == _Myptr())
					break;
			}
		return (npos);
		}

	size_type find_last_not_of(const _Elem *_Ptr,
		size_type _Off = npos) const
		{	
		_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1837);
		return (find_last_not_of(_Ptr, _Off, _Traits::length(_Ptr)));
		}

	size_type find_last_not_of(_Elem _Ch, size_type _Off = npos) const
		{	
		return (find_last_not_of((const _Elem *)&_Ch, _Off, 1));
		}

	_Myt substr(size_type _Off = 0, size_type _Count = npos) const
		{	
		return (_Myt(*this, _Off, _Count, get_allocator()));
		}

	int compare(const _Myt& _Right) const
		{	
		return (compare(0, this->_Mysize, _Right._Myptr(), _Right.size()));
		}

	int compare(size_type _Off, size_type _N0,
		const _Myt& _Right) const
		{	
		return (compare(_Off, _N0, _Right, 0, npos));
		}

	int compare(size_type _Off,
		size_type _N0, const _Myt& _Right,
		size_type _Roff, size_type _Count) const
		{	
		if (_Right.size() < _Roff)
			_Xran();	
		if (_Right._Mysize - _Roff < _Count)
			_Count = _Right._Mysize - _Roff;	
		return (compare(_Off, _N0, _Right._Myptr() + _Roff, _Count));
		}

	int compare(const _Elem *_Ptr) const
		{	
		_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1875);
		return (compare(0, this->_Mysize, _Ptr, _Traits::length(_Ptr)));
		}

	int compare(size_type _Off, size_type _N0, const _Elem *_Ptr) const
		{	
		_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1881);
		return (compare(_Off, _N0, _Ptr, _Traits::length(_Ptr)));
		}

	int compare(size_type _Off,
		size_type _N0, const _Elem *_Ptr, size_type _Count) const
		{	
 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xstring", 1890);
 

		if (this->_Mysize < _Off)
			_Xran();	
		if (this->_Mysize - _Off < _N0)
			_N0 = this->_Mysize - _Off;	

		size_type _Ans = _Traits::compare(_Myptr() + _Off, _Ptr,
			_N0 < _Count ? _N0 : _Count);
		return (_Ans != 0 ? (int)_Ans : _N0 < _Count ? -1
			: _N0 == _Count ? 0 : +1);
		}

	allocator_type get_allocator() const
		{	
		return (this->_Alval);
		}

	void _Chassign(size_type _Off, size_type _Count, _Elem _Ch)
		{	
		if (_Count == 1)
			_Traits::assign(*(_Myptr() + _Off), _Ch);
		else
			_Traits::assign(_Myptr() + _Off, _Count, _Ch);
		}

	void _Copy(size_type _Newsize, size_type _Oldlen)
		{	
		size_type _Newres = _Newsize | this->_ALLOC_MASK;
		if (max_size() < _Newres)
			_Newres = _Newsize;	
		else if (this->_Myres / 2 <= _Newres / 3)
			;
		else if (this->_Myres <= max_size() - this->_Myres / 2)
			_Newres = this->_Myres
				+ this->_Myres / 2;	
		else
			_Newres = max_size();	

		_Elem *_Ptr;
		try {
			_Ptr = this->_Alval.allocate(_Newres + 1);
		} catch (...) {
			_Newres = _Newsize;	
			try {
				_Ptr = this->_Alval.allocate(_Newres + 1);
			} catch (...) {
			_Tidy(true);	
			throw;
			}
		}

		if (0 < _Oldlen)
			_Traits::copy(_Ptr, _Myptr(), _Oldlen);	
		_Tidy(true);
		this->_Bx._Ptr = _Ptr;
		this->_Myres = _Newres;
		_Eos(_Oldlen);
		}

	void _Eos(size_type _Newsize)
		{	
		_Traits::assign(_Myptr()[this->_Mysize = _Newsize], _Elem());
		}

	bool _Grow(size_type _Newsize,
		bool _Trim = false)
		{	
		if (max_size() < _Newsize)
			_Xlen();	
		if (this->_Myres < _Newsize)
			_Copy(_Newsize, this->_Mysize);	
		else if (_Trim && _Newsize < this->_BUF_SIZE)
			_Tidy(true,	
				_Newsize < this->_Mysize ? _Newsize : this->_Mysize);
		else if (_Newsize == 0)
			_Eos(0);	
		return (0 < _Newsize);	
		}

	bool _Inside(const _Elem *_Ptr)
		{	
		if (_Ptr == 0 || _Ptr < _Myptr() || _Myptr() + this->_Mysize <= _Ptr)
			return (false);	
		else
			return (true);
		}

	static size_type _Pdif(const_iterator _P2,
		const_iterator _P1)
		{	
		return ((_P2)._Ptr == 0 ? 0 : _P2 - _P1);
		}

	void _Tidy(bool _Built = false,
		size_type _Newsize = 0)
		{	
		if (!_Built)
			;
		else if (this->_BUF_SIZE <= this->_Myres)
			{	
			_Elem *_Ptr = this->_Bx._Ptr;
			if (0 < _Newsize)
				_Traits::copy(this->_Bx._Buf, _Ptr, _Newsize);
			this->_Alval.deallocate(_Ptr, this->_Myres + 1);
			}
		this->_Myres = this->_BUF_SIZE - 1;
		_Eos(_Newsize);
		}

	_Elem *_Myptr()
		{	
		return (this->_BUF_SIZE <= this->_Myres ? this->_Bx._Ptr
			: this->_Bx._Buf);
		}

	const _Elem *_Myptr() const
		{	
		return (this->_BUF_SIZE <= this->_Myres ? this->_Bx._Ptr
			: this->_Bx._Buf);
		}

	__declspec(noreturn) void _Xlen() const
		{	
		_Xlength_error("string too long");
		}

	__declspec(noreturn) void _Xran() const
		{	
		_Xout_of_range("invalid string position");
		}
	};

		
template<class _Elem,
	class _Traits,
	class _Alloc>
	 const typename basic_string<_Elem, _Traits, _Alloc>::size_type
		basic_string<_Elem, _Traits, _Alloc>::npos =
			(typename basic_string<_Elem, _Traits, _Alloc>::size_type)(-1);

		

template<class _Elem,
	class _Traits,
	class _Alloc> inline
	void swap(basic_string<_Elem, _Traits, _Alloc>& _Left,
		basic_string<_Elem, _Traits, _Alloc>& _Right)
	{	
	_Left.swap(_Right);
	}

template<class _Elem,
	class _Traits,
	class _Alloc> inline
	void swap(basic_string<_Elem, _Traits, _Alloc>& _Left,
		basic_string<_Elem, _Traits, _Alloc>&& _Right)
	{	
	_Left.swap(_Right);
	}

template<class _Elem,
	class _Traits,
	class _Alloc> inline
	void swap(basic_string<_Elem, _Traits, _Alloc>&& _Left,
		basic_string<_Elem, _Traits, _Alloc>& _Right)
	{	
	_Right.swap(_Left);
	}

typedef basic_string<char, char_traits<char>, allocator<char> >
	string;
typedef basic_string<wchar_t, char_traits<wchar_t>, allocator<wchar_t> >
	wstring;

 
typedef basic_string<char16_t, char_traits<char16_t>, allocator<char16_t> >
	u16string;
typedef basic_string<char32_t, char_traits<char32_t>, allocator<char32_t> >
	u32string;
 
}

 #pragma warning(pop)
 #pragma pack(pop)











 #pragma pack(push,8)
 #pragma warning(push,3)

 #pragma warning(disable: 4100 4180 4244)

 
  
 

namespace std {
		
template<class _Ty>
	struct plus
		: public binary_function<_Ty, _Ty, _Ty>
	{	
	_Ty operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left + _Right);
		}
	};

		
template<class _Ty>
	struct minus
		: public binary_function<_Ty, _Ty, _Ty>
	{	
	_Ty operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left - _Right);
		}
	};

		
template<class _Ty>
	struct multiplies
		: public binary_function<_Ty, _Ty, _Ty>
	{	
	_Ty operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left * _Right);
		}
	};

		
template<class _Ty>
	struct divides
		: public binary_function<_Ty, _Ty, _Ty>
	{	
	_Ty operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left / _Right);
		}
	};

		
template<class _Ty>
	struct modulus
		: public binary_function<_Ty, _Ty, _Ty>
	{	
	_Ty operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left % _Right);
		}
	};

		
template<class _Ty>
	struct negate
		: public unary_function<_Ty, _Ty>
	{	
	_Ty operator()(const _Ty& _Left) const
		{	
		return (-_Left);
		}
	};

		
template<class _Ty>
	struct equal_to
		: public binary_function<_Ty, _Ty, bool>
	{	
	bool operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left == _Right);
		}
	};

		
template<class _Ty>
	struct not_equal_to
		: public binary_function<_Ty, _Ty, bool>
	{	
	bool operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left != _Right);
		}
	};

		
template<class _Ty>
	struct greater
		: public binary_function<_Ty, _Ty, bool>
	{	
	bool operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left > _Right);
		}
	};

		
template<class _Ty>
	struct less
		: public binary_function<_Ty, _Ty, bool>
	{	
	bool operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left < _Right);
		}
	};

		
template<class _Ty>
	struct greater_equal
		: public binary_function<_Ty, _Ty, bool>
	{	
	bool operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left >= _Right);
		}
	};

		
template<class _Ty>
	struct less_equal
		: public binary_function<_Ty, _Ty, bool>
	{	
	bool operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left <= _Right);
		}
	};

		
template<class _Ty>
	struct logical_and
		: public binary_function<_Ty, _Ty, bool>
	{	
	bool operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left && _Right);
		}
	};

		
template<class _Ty>
	struct logical_or
		: public binary_function<_Ty, _Ty, bool>
	{	
	bool operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left || _Right);
		}
	};

		
template<class _Ty>
	struct logical_not
		: public unary_function<_Ty, bool>
	{	
	bool operator()(const _Ty& _Left) const
		{	
		return (!_Left);
		}
	};

 
		
template<class _Ty>
	struct bit_and
		: public binary_function<_Ty, _Ty, _Ty>
	{	
	_Ty operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left & _Right);
		}
	};

		
template<class _Ty>
	struct bit_or
		: public binary_function<_Ty, _Ty, _Ty>
	{	
	_Ty operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left | _Right);
		}
	};

		
template<class _Ty>
	struct bit_xor
		: public binary_function<_Ty, _Ty, _Ty>
	{	
	_Ty operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left ^ _Right);
		}
	};
 

		
template<class _Fn1>
	class unary_negate
	: public unary_function<typename _Fn1::argument_type, bool>
	{	
public:
	explicit unary_negate(const _Fn1& _Func)
		: _Functor(_Func)
		{	
		}

	bool operator()(const typename _Fn1::argument_type& _Left) const
		{	
		return (!_Functor(_Left));
		}

protected:
	_Fn1 _Functor;	
	};

		
template<class _Fn1> inline
	unary_negate<_Fn1> not1(const _Fn1& _Func)
	{	
	return (::std:: unary_negate<_Fn1>(_Func));
	}

		
template<class _Fn2>
	class binary_negate
		: public binary_function<typename _Fn2::first_argument_type,
			typename _Fn2::second_argument_type, bool>
	{	
public:
	explicit binary_negate(const _Fn2& _Func)
		: _Functor(_Func)
		{	
		}

	bool operator()(const typename _Fn2::first_argument_type& _Left,
		const typename _Fn2::second_argument_type& _Right) const
		{	
		return (!_Functor(_Left, _Right));
		}

protected:
	_Fn2 _Functor;	
	};

		
template<class _Fn2> inline
	binary_negate<_Fn2> not2(const _Fn2& _Func)
	{	
	return (::std:: binary_negate<_Fn2>(_Func));
	}

		
template<class _Fn2>
	class binder1st
		: public unary_function<typename _Fn2::second_argument_type,
			typename _Fn2::result_type>
	{	
public:
	typedef unary_function<typename _Fn2::second_argument_type,
		typename _Fn2::result_type> _Base;
	typedef typename _Base::argument_type argument_type;
	typedef typename _Base::result_type result_type;

	binder1st(const _Fn2& _Func,
		const typename _Fn2::first_argument_type& _Left)
		: op(_Func), value(_Left)
		{	
		}

	result_type operator()(const argument_type& _Right) const
		{	
		return (op(value, _Right));
		}

	result_type operator()(argument_type& _Right) const
		{	
		return (op(value, _Right));
		}

protected:
	_Fn2 op;	
	typename _Fn2::first_argument_type value;	
	};

		
template<class _Fn2,
	class _Ty> inline
	binder1st<_Fn2> bind1st(const _Fn2& _Func, const _Ty& _Left)
		{	
		typename _Fn2::first_argument_type _Val(_Left);
		return (::std:: binder1st<_Fn2>(_Func, _Val));
		}

		
template<class _Fn2>
	class binder2nd
		: public unary_function<typename _Fn2::first_argument_type,
			typename _Fn2::result_type>
	{	
public:
	typedef unary_function<typename _Fn2::first_argument_type,
		typename _Fn2::result_type> _Base;
	typedef typename _Base::argument_type argument_type;
	typedef typename _Base::result_type result_type;

	binder2nd(const _Fn2& _Func,
		const typename _Fn2::second_argument_type& _Right)
		: op(_Func), value(_Right)
		{	
		}

	result_type operator()(const argument_type& _Left) const
		{	
		return (op(_Left, value));
		}

	result_type operator()(argument_type& _Left) const
		{	
		return (op(_Left, value));
		}

protected:
	_Fn2 op;	
	typename _Fn2::second_argument_type value;	
	};

		
template<class _Fn2,
	class _Ty> inline
	binder2nd<_Fn2> bind2nd(const _Fn2& _Func, const _Ty& _Right)
	{	
	typename _Fn2::second_argument_type _Val(_Right);
	return (::std:: binder2nd<_Fn2>(_Func, _Val));
	}

		
template<class _Arg,
	class _Result,
	class _Fn = _Result (*)(_Arg)>
	class pointer_to_unary_function
		: public unary_function<_Arg, _Result>
	{	
public:
	explicit pointer_to_unary_function(_Fn _Left)
		: _Pfun(_Left)
		{	
		}

	_Result operator()(_Arg _Left) const
		{	
		return (_Pfun(_Left));
		}

protected:
	_Fn _Pfun;	
	};

		
template<class _Arg1,
	class _Arg2,
	class _Result,
	class _Fn = _Result (*)(_Arg1, _Arg2)>
	class pointer_to_binary_function
		: public binary_function<_Arg1, _Arg2, _Result>
	{	
public:
	explicit pointer_to_binary_function(_Fn _Left)
		: _Pfun(_Left)
		{	
		}

	_Result operator()(_Arg1 _Left, _Arg2 _Right) const
		{	
		return (_Pfun(_Left, _Right));
		}

protected:
	_Fn _Pfun;	
	};

		
template<class _Arg,
	class _Result> inline
	pointer_to_unary_function<_Arg, _Result,
		_Result (__cdecl *)(_Arg)>
		ptr_fun(_Result (__cdecl *_Left)(_Arg))
	{	
	return (pointer_to_unary_function<_Arg, _Result,
		_Result (__cdecl *)(_Arg)>(_Left));
	}

 
template<class _Arg,
	class _Result> inline
	pointer_to_unary_function<_Arg, _Result,
		_Result (__stdcall *)(_Arg)>
			ptr_fun(_Result (__stdcall *_Left)(_Arg))
	{	
	return (pointer_to_unary_function<_Arg, _Result,
		_Result (__stdcall *)(_Arg)>(_Left));
	}

  
template<class _Arg,
	class _Result> inline
	pointer_to_unary_function<_Arg, _Result,
		_Result (__fastcall *)(_Arg)>
			ptr_fun(_Result (__fastcall *_Left)(_Arg))
	{	
	return (pointer_to_unary_function<_Arg, _Result,
		_Result (__fastcall *)(_Arg)>(_Left));
	}
  

 

 











template<class _Arg1,
	class _Arg2,
	class _Result> inline
	pointer_to_binary_function<_Arg1, _Arg2, _Result,
		_Result (__cdecl *)(_Arg1, _Arg2)>
		ptr_fun(_Result (__cdecl *_Left)(_Arg1, _Arg2))
	{	
	return (pointer_to_binary_function<_Arg1, _Arg2, _Result,
		_Result (__cdecl *)(_Arg1, _Arg2)>(_Left));
	}

 
template<class _Arg1,
	class _Arg2,
	class _Result> inline
	pointer_to_binary_function<_Arg1, _Arg2, _Result,
		_Result(__stdcall *)(_Arg1, _Arg2)>
			ptr_fun(_Result (__stdcall *_Left)(_Arg1, _Arg2))
	{	
	return (pointer_to_binary_function<_Arg1, _Arg2, _Result,
		_Result (__stdcall *)(_Arg1, _Arg2)>(_Left));
	}

  
template<class _Arg1,
	class _Arg2,
	class _Result> inline
	pointer_to_binary_function<_Arg1, _Arg2, _Result,
		_Result(__fastcall *)(_Arg1, _Arg2)>
			ptr_fun(_Result (__fastcall *_Left)(_Arg1, _Arg2))
	{	
	return (pointer_to_binary_function<_Arg1, _Arg2, _Result,
		_Result (__fastcall *)(_Arg1, _Arg2)>(_Left));
	}
  

 

 












		
template<class _Result,
	class _Ty>
	class mem_fun_t
		: public unary_function<_Ty *, _Result>
	{	
public:
	explicit mem_fun_t(_Result (_Ty::*_Pm)())
		: _Pmemfun(_Pm)
		{	
		}

	_Result operator()(_Ty *_Pleft) const
		{	
		return ((_Pleft->*_Pmemfun)());
		}

private:
	_Result (_Ty::*_Pmemfun)();	
	};

		
template<class _Result,
	class _Ty,
	class _Arg>
	class mem_fun1_t
		: public binary_function<_Ty *, _Arg, _Result>
	{	
public:
	explicit mem_fun1_t(_Result (_Ty::*_Pm)(_Arg))
		: _Pmemfun(_Pm)
		{	
		}

	_Result operator()(_Ty *_Pleft, _Arg _Right) const
		{	
		return ((_Pleft->*_Pmemfun)(_Right));
		}

private:
	_Result (_Ty::*_Pmemfun)(_Arg);	
	};

		
template<class _Result,
	class _Ty>
	class const_mem_fun_t
		: public unary_function<const _Ty *, _Result>
	{	
public:
	explicit const_mem_fun_t(_Result (_Ty::*_Pm)() const)
		: _Pmemfun(_Pm)
		{	
		}

	_Result operator()(const _Ty *_Pleft) const
		{	
		return ((_Pleft->*_Pmemfun)());
		}

private:
	_Result (_Ty::*_Pmemfun)() const;	
	};

		
template<class _Result,
	class _Ty,
	class _Arg>
	class const_mem_fun1_t
		: public binary_function<const _Ty *, _Arg, _Result>
	{	
public:
	explicit const_mem_fun1_t(_Result (_Ty::*_Pm)(_Arg) const)
		: _Pmemfun(_Pm)
		{	
		}

	_Result operator()(const _Ty *_Pleft, _Arg _Right) const
		{	
		return ((_Pleft->*_Pmemfun)(_Right));
		}

private:
	_Result (_Ty::*_Pmemfun)(_Arg) const;	
	};

		
template<class _Result,
	class _Ty> inline
	mem_fun_t<_Result, _Ty> mem_fun(_Result (_Ty::*_Pm)())
	{	
	return (mem_fun_t<_Result, _Ty>(_Pm));
	}

template<class _Result,
	class _Ty,
	class _Arg> inline
	mem_fun1_t<_Result, _Ty, _Arg> mem_fun(_Result (_Ty::*_Pm)(_Arg))
	{	
	return (mem_fun1_t<_Result, _Ty, _Arg>(_Pm));
	}

template<class _Result,
	class _Ty> inline
	const_mem_fun_t<_Result, _Ty>
		mem_fun(_Result (_Ty::*_Pm)() const)
	{	
	return (const_mem_fun_t<_Result, _Ty>(_Pm));
	}

template<class _Result,
	class _Ty,
	class _Arg> inline
	const_mem_fun1_t<_Result, _Ty, _Arg>
		mem_fun(_Result (_Ty::*_Pm)(_Arg) const)
	{	
	return (const_mem_fun1_t<_Result, _Ty, _Arg>(_Pm));
	}

		
template<class _Result,
	class _Ty,
	class _Arg> inline
	mem_fun1_t<_Result, _Ty, _Arg> mem_fun1(_Result (_Ty::*_Pm)(_Arg))
	{	
	return (mem_fun1_t<_Result, _Ty, _Arg>(_Pm));
	}

		
template<class _Result,
	class _Ty>
	class mem_fun_ref_t
		: public unary_function<_Ty, _Result>
	{	
public:
	explicit mem_fun_ref_t(_Result (_Ty::*_Pm)())
		: _Pmemfun(_Pm)
		{	
		}

	_Result operator()(_Ty& _Left) const
		{	
		return ((_Left.*_Pmemfun)());
		}

private:
	_Result (_Ty::*_Pmemfun)();	
	};

		
template<class _Result,
	class _Ty,
	class _Arg>
	class mem_fun1_ref_t
		: public binary_function<_Ty, _Arg, _Result>
	{	
public:
	explicit mem_fun1_ref_t(_Result (_Ty::*_Pm)(_Arg))
		: _Pmemfun(_Pm)
		{	
		}

	_Result operator()(_Ty& _Left, _Arg _Right) const
		{	
		return ((_Left.*_Pmemfun)(_Right));
		}

private:
	_Result (_Ty::*_Pmemfun)(_Arg);	
	};

		
template<class _Result,
	class _Ty>
	class const_mem_fun_ref_t
		: public unary_function<_Ty, _Result>
	{	
public:
	explicit const_mem_fun_ref_t(_Result (_Ty::*_Pm)() const)
		: _Pmemfun(_Pm)
		{	
		}

	_Result operator()(const _Ty& _Left) const
		{	
		return ((_Left.*_Pmemfun)());
		}

private:
	_Result (_Ty::*_Pmemfun)() const;	
	};

		
template<class _Result,
	class _Ty,
	class _Arg>
	class const_mem_fun1_ref_t
		: public binary_function<_Ty, _Arg, _Result>
	{	
public:
	explicit const_mem_fun1_ref_t(_Result (_Ty::*_Pm)(_Arg) const)
		: _Pmemfun(_Pm)
		{	
		}

	_Result operator()(const _Ty& _Left, _Arg _Right) const
		{	
		return ((_Left.*_Pmemfun)(_Right));
		}

private:
	_Result (_Ty::*_Pmemfun)(_Arg) const;	
	};

		
template<class _Result,
	class _Ty> inline
	mem_fun_ref_t<_Result, _Ty> mem_fun_ref(_Result (_Ty::*_Pm)())
	{	
	return (mem_fun_ref_t<_Result, _Ty>(_Pm));
	}

template<class _Result,
	class _Ty,
	class _Arg> inline
	mem_fun1_ref_t<_Result, _Ty, _Arg>
		mem_fun_ref(_Result (_Ty::*_Pm)(_Arg))
	{	
	return (mem_fun1_ref_t<_Result, _Ty, _Arg>(_Pm));
	}

template<class _Result,
	class _Ty> inline
	const_mem_fun_ref_t<_Result, _Ty>
		mem_fun_ref(_Result (_Ty::*_Pm)() const)
	{	
	return (const_mem_fun_ref_t<_Result, _Ty>(_Pm));
	}

template<class _Result,
	class _Ty,
	class _Arg> inline
	const_mem_fun1_ref_t<_Result, _Ty, _Arg>
		mem_fun_ref(_Result (_Ty::*_Pm)(_Arg) const)
	{	
	return (const_mem_fun1_ref_t<_Result, _Ty, _Arg>(_Pm));
	}

		
template<class _Result,
	class _Ty,
	class _Arg> inline
	mem_fun1_ref_t<_Result, _Ty, _Arg> mem_fun1_ref(_Result (_Ty::*_Pm)(_Arg))
	{	
	return (mem_fun1_ref_t<_Result, _Ty, _Arg>(_Pm));
	}

	
template<class _Kty>
	class hash
		: public unary_function<_Kty, size_t>
	{	
public:
	size_t operator()(const _Kty& _Keyval) const
		{	
		ldiv_t _Qrem = :: ldiv((long)(size_t)_Keyval, 127773);

		_Qrem.rem = 16807 * _Qrem.rem - 2836 * _Qrem.quot;
		if (_Qrem.rem < 0)
			_Qrem.rem += 2147483647;
		return ((size_t)_Qrem.rem);
		}
	};

template<>
	class hash<_ULonglong>
		: public unary_function<_ULonglong, size_t>
	{	
public:
	typedef _ULonglong _Kty;
	typedef _Uint32t _Inttype;	

	size_t operator()(const _Kty& _Keyval) const
		{	
		return (hash<_Inttype>()((_Inttype)(_Keyval & 0xffffffffUL))
			^ hash<_Inttype>()((_Inttype)(_Keyval >> 32)));
		}
	};

template<>
	class hash<_Longlong>
		: public unary_function<_Longlong, size_t>
	{	
public:
	typedef _Longlong _Kty;
	typedef _Uint32t _Inttype;	

	size_t operator()(const _Kty& _Keyval) const
		{	
		return (hash<_ULonglong>()((_ULonglong)_Keyval));
		}
	};

template<class _Ty>
	class hash<_Ty *>
		: public unary_function<_Ty *, size_t>
	{	
public:
	typedef _Ty *_Kty;
	typedef _Uint32t _Inttype;	

	size_t operator()(_Kty _Keyval) const
		{	
		typedef typename ::std:: _If<sizeof (_Ty *) <= sizeof (_Inttype),
			_Inttype, _ULonglong>::_Type _Integer;
		return (hash<_Integer>()((_Integer)_Keyval));
		}
	};

template<>
	class hash<float>
		: public unary_function<float, size_t>
	{	
public:
	typedef float _Kty;
	typedef _Uint32t _Inttype;	

	size_t operator()(const _Kty& _Keyval) const
		{	
		_Inttype _Bits = *(_Inttype *)&_Keyval;
		return (hash<_Inttype>()(_Bits == 0x80000000 ? 0 : _Bits));
		}
	};

template<>
	class hash<double>
		: public unary_function<double, size_t>
	{	
public:
	typedef double _Kty;
	typedef _ULonglong _Inttype;	

	size_t operator()(const _Kty& _Keyval) const
		{	
		_Inttype _Bits = *(_Inttype *)&_Keyval;
		return (hash<_Inttype>()(
			(_Bits & (0xffffffffffffffff >> 1)) == 0 ? 0 : _Bits));
		}
	};

template<>
	class hash<long double>
		: public unary_function<long double, size_t>
	{	
public:
	typedef long double _Kty;
	typedef _ULonglong _Inttype;	

	size_t operator()(const _Kty& _Keyval) const
		{	
		_Inttype _Bits = *(_Inttype *)&_Keyval;
		return (hash<_Inttype>()(
			(_Bits & (0xffffffffffffffff >> 1)) == 0 ? 0 : _Bits));
		}
	};

template<>
	class hash<::std:: string>
		: public unary_function<::std:: string, size_t>
	{	
public:
	typedef ::std:: string _Kty;

	size_t operator()(const _Kty& _Keyval) const
		{	
		size_t _Val = 2166136261U;
		size_t _First = 0;
		size_t _Last = _Keyval.size();
		size_t _Stride = 1 + _Last / 10;

		for(; _First < _Last; _First += _Stride)
			_Val = 16777619U * _Val ^ (size_t)_Keyval[_First];
		return (_Val);
		}
	};

template<>
	class hash<::std:: wstring>
		: public unary_function<::std:: wstring, size_t>
	{	
public:
	typedef ::std:: wstring _Kty;

	size_t operator()(const _Kty& _Keyval) const
		{	
		size_t _Val = 2166136261U;
		size_t _First = 0;
		size_t _Last = _Keyval.size();
		size_t _Stride = 1 + _Last / 10;

		for(; _First < _Last; _First += _Stride)
			_Val = 16777619U * _Val ^ (size_t)_Keyval[_First];
		return (_Val);
		}
	};

	namespace tr1 {
using ::std:: hash;
	}	
}

 #pragma warning(pop)
 #pragma pack(pop)




























#pragma once





 #pragma pack(push,8)
 #pragma warning(push,3)

 
 

 #pragma warning(disable: 4700)

namespace std {
		
template<class _Ty> inline
	pair<_Ty  *, ptrdiff_t>

		get_temporary_buffer(ptrdiff_t _Count)

	{	
	_Ty  *_Pbuf;

	if (_Count < 0)
		_Count = 0;
	else if (((size_t)(-1) / sizeof (_Ty) < _Count))
		throw bad_alloc(0);
	for (_Pbuf = 0; 0 < _Count; _Count /= 2)
		if ((_Pbuf = (_Ty  *)operator new(
			(size_t)_Count * sizeof (_Ty), nothrow)) != 0)
			break;

	return (pair<_Ty  *, ptrdiff_t>(_Pbuf, _Count));
	}

		
template<class _Ty> inline
	void return_temporary_buffer(_Ty *_Pbuf)
	{	
	operator delete(_Pbuf);
	}

		
template<class _InIt,
	class _Diff,
	class _FwdIt> inline
	_FwdIt _Uninitialized_copy_n(_InIt _First, _Diff _Count,
		_FwdIt _Dest, input_iterator_tag)
	{	
	_FwdIt _Next = _Dest;

	try {
	_Construct(&*_Dest, *_First);	
	while (0 < --_Count)
		_Construct(&*++_Dest, *++_First);
	} catch (...) {
	for (; _Next != _Dest; ++_Next)
		_Destroy(&*_Next);
	throw;
	}
	return (++_Dest);
	}

template<class _InIt,
	class _Diff,
	class _FwdIt> inline
	_FwdIt _Uninitialized_copy_n(_InIt _First, _Diff _Count,
		_FwdIt _Dest, forward_iterator_tag)
	{	
	_FwdIt _Next = _Dest;

	try {
	for (; 0 < _Count; --_Count, ++_Dest, ++_First)
		_Construct(&*_Dest, *_First);
	} catch (...) {
	for (; _Next != _Dest; ++_Next)
		_Destroy(&*_Next);
	throw;
	}
	return (_Dest);
	}

template<class _InIt,
	class _Diff,
	class _FwdIt> inline
	_FwdIt _Uninitialized_copy_n(_InIt _First, _Diff _Count,
		_FwdIt _Dest, _Nonscalar_ptr_iterator_tag)
	{	
	return (_Uninitialized_copy_n(_First, _Count,
		_Dest, _Iter_cat(_First)));
	}

template<class _InIt,
	class _Diff,
	class _FwdIt> inline
	_FwdIt _Uninitialized_copy_n(_InIt _First, _Diff _Count,
		_FwdIt _Dest, _Scalar_ptr_iterator_tag)
	{	
	:: memmove(&*_Dest, &*_First,
		_Count * sizeof (*_First));
	return (_Dest + _Count);
	}

template<class _InIt,
	class _Diff,
	class _FwdIt> inline
	_FwdIt _Uninitialized_copy_n(_InIt _First, _Diff _Count,
		_FwdIt _Dest)
	{	
	return (_Uninitialized_copy_n(_First, _Count,
		_Dest, _Ptr_cat(_First, _Dest)));
	}

 















template<class _InIt,
	class _Diff,
	class _FwdIt> inline
	_FwdIt _Uninitialized_copy_n2(_InIt _First, _Diff _Count,
		_FwdIt _Dest, output_iterator_tag)
	{	
	return (_Uninitialized_copy_n(_First, _Count,
		_Dest));
	}

template<class _InIt,
	class _Diff,
	class _FwdIt> inline
	_FwdIt _Uninitialized_copy_n2(_InIt _First, _Diff _Count,
		_FwdIt _Dest, random_access_iterator_tag)
	{	
	_FwdIt _Ans = _Dest + _Count;	
	_Uninitialized_copy_n(_First, _Count,
		_Unchecked(_Dest));
	return (_Ans);
	}

template<class _InIt,
	class _Diff,
	class _FwdIt> inline
	_FwdIt _Uninitialized_copy_n1(_InIt _First, _Diff _Count,
		_FwdIt _Dest, input_iterator_tag)
	{	
	return (_Uninitialized_copy_n2(_First, _Count,
		_Dest, _Iter_cat(_Dest)));
	}

template<class _InIt,
	class _Diff,
	class _FwdIt> inline
	_FwdIt _Uninitialized_copy_n1(_InIt _First, _Diff _Count,
		_FwdIt _Dest, random_access_iterator_tag)
	{	
	_InIt _Last = _First + _Count;	
	_Last = _Last;	
	return (_Uninitialized_copy_n2(_Unchecked(_First), _Count,
		_Dest, _Iter_cat(_Dest)));
	}

template<class _InIt,
	class _Diff,
	class _FwdIt> inline
	_FwdIt _Uninitialized_copy_n(_InIt _First, _Diff _Count,
		_FwdIt _Dest, ::std:: tr1::true_type)
	{	
	return (_Uninitialized_copy_n1(_First, _Count,
		_Dest, _Iter_cat(_First)));
	}

template<class _InIt,
	class _Diff,
	class _FwdIt> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	_FwdIt _Uninitialized_copy_n(_InIt _First, _Diff _Count,
		_FwdIt _Dest, ::std:: tr1::false_type)
	{	
	return (_Uninitialized_copy_n1(_First, _Count,
		_Dest, _Iter_cat(_First)));
	}

template<class _InIt,
	class _Diff,
	class _FwdIt> inline
	_FwdIt uninitialized_copy_n(_InIt _First, _Diff _Count,
		_FwdIt _Dest)
	{	
	_Debug_pointer(_First, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\memory", 203);
	_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\memory", 204);
	if (_Count <= 0)
		return (_Dest);
	else
		return (_Uninitialized_copy_n(_First,
			_Count, _Dest, _Is_checked(_Dest)));
	}

template<class _InTy,
	size_t _InSize,
	class _Diff,
	class _FwdIt> inline
	_FwdIt uninitialized_copy_n(_InTy (&_First)[_InSize], _Diff _Count,
		_FwdIt _Dest)
	{	
	return (::std:: uninitialized_copy_n(_Array_iterator<_InTy, _InSize>(_First),
		_Count, _Dest));
	}

template<class _InIt,
	class _Diff,
	class _OutTy,
	size_t _OutSize> inline
	_OutTy *uninitialized_copy_n(_InIt _First, _Diff _Count,
		_OutTy (&_Dest)[_OutSize])
	{	
	return (_Unchecked(
		::std:: uninitialized_copy_n(_First,
			_Count, _Array_iterator<_OutTy, _OutSize>(_Dest))));
	}

template<class _InTy,
	size_t _InSize,
	class _Diff,
	class _OutTy,
	size_t _OutSize> inline
	_OutTy *uninitialized_copy_n(_InTy (&_First)[_InSize], _Diff _Count,
		_OutTy (&_Dest)[_OutSize])
	{	
	return (_Unchecked(
		::std:: uninitialized_copy_n(_Array_iterator<_InTy, _InSize>(_First),
			_Count, _Array_iterator<_OutTy, _OutSize>(_Dest))));
	}

 

		
template<class _InIt,
	class _FwdIt> inline
	_FwdIt _Uninitialized_copy0(_InIt _First, _InIt _Last,
		_FwdIt _Dest, _Nonscalar_ptr_iterator_tag)
	{	
	_FwdIt _Next = _Dest;

	try {
	for (; _First != _Last; ++_Dest, ++_First)
		_Construct(&*_Dest, *_First);
	} catch (...) {
	for (; _Next != _Dest; ++_Next)
		_Destroy(&*_Next);
	throw;
	}
	return (_Dest);
	}

template<class _InIt,
	class _FwdIt> inline
	_FwdIt _Uninitialized_copy0(_InIt _First, _InIt _Last,
		_FwdIt _Dest, _Scalar_ptr_iterator_tag)
	{	
	ptrdiff_t _Count = _Last - _First;
	:: memmove(&*_Dest, &*_First,
		_Count * sizeof (*_First));
	return (_Dest + _Count);
	}

template<class _InIt,
	class _FwdIt> inline
	_FwdIt _Uninitialized_copy0(_InIt _First, _InIt _Last,
		_FwdIt _Dest)
	{	
	return (_Uninitialized_copy0(_First, _Last,
		_Dest, _Ptr_cat(_First, _Dest)));
	}

 











template<class _InIt,
	class _FwdIt> inline
	_FwdIt _Uninitialized_copy0(_InIt _First, _InIt _Last,
		_FwdIt _Dest, input_iterator_tag, forward_iterator_tag)
	{	
	return (_Uninitialized_copy0(_First, _Last,
		_Dest));
	}

template<class _InIt,
	class _FwdIt> inline
	_FwdIt _Uninitialized_copy0(_InIt _First, _InIt _Last,
		_FwdIt _Dest, random_access_iterator_tag, random_access_iterator_tag)
	{	
	_FwdIt _Ans = _Dest + (_Last - _First);	
	_Uninitialized_copy0(_First, _Last,
		_Unchecked(_Dest));
	return (_Ans);
	}

template<class _InIt,
	class _FwdIt> inline
	_FwdIt _Uninitialized_copy0(_InIt _First, _InIt _Last,
		_FwdIt _Dest, ::std:: tr1::true_type)
	{	
	return (_Uninitialized_copy0(_First, _Last,
		_Dest, _Iter_cat(_First), _Iter_cat(_Dest)));
	}

template<class _InIt,
	class _FwdIt> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	_FwdIt _Uninitialized_copy0(_InIt _First, _InIt _Last,
		_FwdIt _Dest, ::std:: tr1::false_type)
	{	
	return (_Uninitialized_copy0(_First, _Last,
		_Dest, _Iter_cat(_First), _Iter_cat(_Dest)));
	}

template<class _InIt,
	class _FwdIt> inline
	_FwdIt uninitialized_copy(_InIt _First, _InIt _Last,
		_FwdIt _Dest)
	{	
	_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\memory", 345);
	_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\memory", 346);
	return (_Uninitialized_copy0(_Unchecked(_First), _Unchecked(_Last),
		_Dest, _Is_checked(_Dest)));
	}

template<class _InIt,
	class _OutTy,
	size_t _OutSize> inline
	_OutTy *uninitialized_copy(_InIt _First, _InIt _Last,
		_OutTy (&_Dest)[_OutSize])
	{	
	return (_Unchecked(
		::std:: uninitialized_copy(_First, _Last,
			_Array_iterator<_OutTy, _OutSize>(_Dest))));
	}
 

		
template<class _InIt,
	class _FwdIt,
	class _Alloc> inline
	_FwdIt _Uninit_copy(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al, _Nonscalar_ptr_iterator_tag)
	{	
	_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\memory", 370);
	_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\memory", 371);
	_FwdIt _Next = _Dest;

	try {
	for (; _First != _Last; ++_Dest, ++_First)
		_Cons_val(_Al, _Dest, *_First);
	} catch (...) {
	for (; _Next != _Dest; ++_Next)
		_Dest_val(_Al, _Next);
	throw;
	}
	return (_Dest);
	}

template<class _InIt,
	class _FwdIt,
	class _Alloc> inline
	_FwdIt _Uninit_copy(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al, _Scalar_ptr_iterator_tag)
	{	
	return (_Uninit_copy(_First, _Last, _Dest,
		_Al, _Nonscalar_ptr_iterator_tag()));
	}

template<class _Ty1,
	class _Ty2> inline
	_Ty2 *_Uninit_copy(_Ty1 *_First, _Ty1 *_Last, _Ty2 *_Dest,
		allocator<_Ty2>&, _Scalar_ptr_iterator_tag)
	{	
	_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\memory", 400);
	_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\memory", 401);
	size_t _Count = (size_t)(_Last - _First);
	return ((_Ty2 *):: memmove(&*_Dest, &*_First,
		_Count * sizeof (*_First)) + _Count);	
	}

template<class _InIt,
	class _FwdIt,
	class _Alloc> inline
	_FwdIt _Uninitialized_copy(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al)
	{	
	return (_Uninit_copy(_First, _Last, _Dest, _Al,
		_Ptr_cat(_First, _Dest)));
	}

		
template<class _InIt,
	class _FwdIt,
	class _Alloc,
	class _Valty> inline
	_FwdIt _Uninit_move(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al, _Valty *, _Nonscalar_ptr_iterator_tag)
	{	
	_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\memory", 425);
	_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\memory", 426);
	_FwdIt _Next = _Dest;

	try {
	for (; _First != _Last; ++_Dest, ++_First)
		_Cons_val(_Al, _Dest, (_Valty &&)*_First);
	} catch (...) {
	for (; _Next != _Dest; ++_Next)
		_Dest_val(_Al, _Next);
	throw;
	}
	return (_Dest);
	}

template<class _InIt,
	class _FwdIt,
	class _Alloc,
	class _Valty> inline
	_FwdIt _Uninit_move(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al, _Valty *, _Scalar_ptr_iterator_tag)
	{	
	return (_Uninit_move(_First, _Last, _Dest,
		_Al, (_Valty *)0, _Nonscalar_ptr_iterator_tag()));
	}

template<class _Ty1,
	class _Ty2,
	class _Valty> inline
	_Ty2 *_Uninit_move(_Ty1 *_First, _Ty1 *_Last, _Ty2 *_Dest,
		allocator<_Ty2>&, _Valty *, _Scalar_ptr_iterator_tag)
	{	
	_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\memory", 457);
	_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\memory", 458);
	size_t _Count = (size_t)(_Last - _First);
	return ((_Ty2 *):: memmove(&*_Dest, &*_First,
		_Count * sizeof (*_First)) + _Count);	
	}

template<class _InIt,
	class _FwdIt,
	class _Alloc> inline
	_FwdIt _Uninitialized_move(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al)
	{	
	return (_Uninit_move(_First, _Last, _Dest, _Al,
		_Val_type(_First), _Ptr_cat(_First, _Dest)));
	}

		
template<class _FwdIt,
	class _Tval> inline
	void _Uninit_fill(_FwdIt _First, _FwdIt _Last, const _Tval& _Val,
		_Nonscalar_ptr_iterator_tag)
	{	
	_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\memory", 480);
	_FwdIt _Next = _First;

	try {
	for (; _First != _Last; ++_First)
		_Construct(&*_First, _Val);
	} catch (...) {
	for (; _Next != _First; ++_Next)
		_Destroy(&*_Next);
	throw;
	}
	}

template<class _Ty,
	class _Tval> inline
	void _Uninit_fill(_Ty *_First, _Ty *_Last, const _Tval& _Val,
		_Scalar_ptr_iterator_tag)
	{	
	::std:: fill(_First, _Last, _Val);
	}

template<class _FwdIt,
	class _Tval> inline
	void uninitialized_fill(_FwdIt _First, _FwdIt _Last, const _Tval& _Val)
	{	
	_Uninit_fill(_First, _Last, _Val, _Ptr_cat(_First, _First));
	}

		
template<class _FwdIt,
	class _Diff,
	class _Tval> inline
	void _Uninit_fill_n(_FwdIt _First, _Diff _Count, const _Tval& _Val,
		_Nonscalar_ptr_iterator_tag)
	{	
 


 

	_FwdIt _Next = _First;

	try {
	for (; 0 < _Count; --_Count, ++_First)
		_Construct(&*_First, _Val);
	} catch (...) {
	for (; _Next != _First; ++_Next)
		_Destroy(&*_Next);
	throw;
	}
	}

template<class _Ty,
	class _Diff,
	class _Tval> inline
	void _Uninit_fill_n(_Ty *_First, _Diff _Count, const _Tval& _Val,
		_Scalar_ptr_iterator_tag)
	{	
	::std:: _Fill_n(_First, _Count, _Val);
	}

template<class _FwdIt,
	class _Diff,
	class _Tval> inline
	void uninitialized_fill_n(_FwdIt _First, _Diff _Count, const _Tval& _Val)
	{	
	_Uninit_fill_n(_First, _Count, _Val, _Ptr_cat(_First, _First));
	}

		
template<class _FwdIt,
	class _Diff,
	class _Tval,
	class _Alloc,
	class _Valty> inline
	void _Uninit_fill_n(_FwdIt _First, _Diff _Count,
		const _Tval *_Pval, _Alloc& _Al,
			_Valty *, _Nonscalar_ptr_iterator_tag)
	{	
 


 

	_FwdIt _Next = _First;

	try {
	for (; 0 < _Count; --_Count, ++_First)
		_Cons_val(_Al, _First, *_Pval);
	} catch (...) {
	for (; _Next != _First; ++_Next)
		_Dest_val(_Al, _Next);
	throw;
	}
	}

template<class _FwdIt,
	class _Diff,
	class _Tval,
	class _Alloc,
	class _Valty> inline
	void _Uninit_fill_n(_FwdIt _First, _Diff _Count,
		const _Tval *_Pval, _Alloc& _Al,
			_Valty *, _Scalar_ptr_iterator_tag)
	{	
	_Uninit_fill_n(_First, _Count,
		_Pval, _Al, (_Valty *)0, _Nonscalar_ptr_iterator_tag());
	}

template<class _Ty,
	class _Diff,
	class _Tval,
	class _Valty> inline
	void _Uninit_fill_n(_Ty *_First, _Diff _Count,
		const _Tval *_Pval, allocator<_Ty>&,
			_Valty *, _Scalar_ptr_iterator_tag)
	{	
	_Fill_n(_First, _Count, *_Pval);
	}

template<class _FwdIt,
	class _Diff,
	class _Tval,
	class _Alloc> inline
	void _Uninitialized_fill_n(_FwdIt _First, _Diff _Count,
		const _Tval *_Pval, _Alloc& _Al)
	{	
	_Uninit_fill_n(_First, _Count, _Pval, _Al,
		_Val_type(_First), _Ptr_cat(_First, _First));
	}

		
template<class _FwdIt,
	class _Diff,
	class _Tval,
	class _Alloc,
	class _Valty> inline
	void _Uninit_def_fill_n(_FwdIt _First, _Diff _Count,
		const _Tval *, _Alloc& _Al,
			_Valty *, _Nonscalar_ptr_iterator_tag)
	{	
 


 

	_FwdIt _Next = _First;

	try {
	for (; 0 < _Count; --_Count, ++_First)

		_Cons_val(_Al, _First, _Valty());

	} catch (...) {
	for (; _Next != _First; ++_Next)
		_Dest_val(_Al, _Next);
	throw;
	}
	}

template<class _FwdIt,
	class _Diff,
	class _Tval,
	class _Alloc,
	class _Valty> inline
	void _Uninit_def_fill_n(_FwdIt _First, _Diff _Count,
		const _Tval *_Pval, _Alloc& _Al,
			_Valty *, _Scalar_ptr_iterator_tag)
	{	
	_Uninit_def_fill_n(_First, _Count,
		_Pval, _Al, (_Valty *)0, _Nonscalar_ptr_iterator_tag());
	}

template<class _Ty,
	class _Diff,
	class _Tval,
	class _Valty> inline
	void _Uninit_def_fill_n(_Ty *_First, _Diff _Count,
		const _Tval *, allocator<_Ty>&,
			_Valty *, _Scalar_ptr_iterator_tag)
	{	
	_Fill_n(_First, _Count, (_Valty)0);
	}

template<class _FwdIt,
	class _Diff,
	class _Tval,
	class _Alloc> inline
	void _Uninitialized_default_fill_n(_FwdIt _First, _Diff _Count,
		const _Tval *_Pval, _Alloc& _Al)
	{	
	_Uninit_def_fill_n(_First, _Count, _Pval, _Al,
		_Val_type(_First), _Ptr_cat(_First, _First));
	}

		
template<class _FwdIt,
	class _Ty>
	class raw_storage_iterator
		: public _Outit
	{	
public:
	typedef _FwdIt iterator_type;	
	typedef _FwdIt iter_type;	
	typedef _Ty element_type;	

	explicit raw_storage_iterator(_FwdIt _First)
		: _Next(_First)
		{	
		}

	raw_storage_iterator<_FwdIt, _Ty>& operator*()
		{	
		return (*this);
		}

	raw_storage_iterator<_FwdIt, _Ty>& operator=(const _Ty& _Val)
		{	
		_Construct(&*_Next, _Val);
		return (*this);
		}

	raw_storage_iterator<_FwdIt, _Ty>& operator++()
		{	
		++_Next;
		return (*this);
		}

	raw_storage_iterator<_FwdIt, _Ty> operator++(int)
		{	
		raw_storage_iterator<_FwdIt, _Ty> _Ans = *this;
		++_Next;
		return (_Ans);
		}

private:
	_FwdIt _Next;	
	};

		
template<class _Ty>
	class _Temp_iterator
		: public _Outit
	{	
public:
	typedef _Ty  *_Pty;

	_Temp_iterator(ptrdiff_t _Count = 0)
		{	
		_Buf._Begin = 0;
		_Buf._Current = 0;
		_Buf._Hiwater = 0;
		_Buf._Size = _Count;	
		_Pbuf = &_Buf;
		}

	_Temp_iterator(const _Temp_iterator<_Ty>& _Right)
		{	
		_Buf._Begin = 0;	
		_Buf._Current = 0;
		_Buf._Hiwater = 0;
		_Buf._Size = 0;
		*this = _Right;
		}

	~_Temp_iterator()
		{	
		if (_Buf._Begin != 0)
			{	
			for (_Pty _Next = _Buf._Begin;
				_Next != _Buf._Hiwater; ++_Next)
				_Destroy(&*_Next);
			::std:: return_temporary_buffer(_Buf._Begin);
			}
		}

	_Temp_iterator<_Ty>& operator=(const _Temp_iterator<_Ty>& _Right)
		{	
		_Pbuf = _Right._Pbuf;
		return (*this);
		}

	_Temp_iterator<_Ty>& operator=(const _Ty& _Val)
		{	
		if (_Pbuf->_Current < _Pbuf->_Hiwater)
			*_Pbuf->_Current++ = _Val;	
		else
			{	
			_Pty _Ptr = &*_Pbuf->_Current;
			_Construct(_Ptr, _Val);
			_Pbuf->_Hiwater = ++_Pbuf->_Current;
			}
		return (*this);
		}

	_Temp_iterator<_Ty>& operator=(_Ty&& _Val)
		{	
		if (_Pbuf->_Current < _Pbuf->_Hiwater)
			*_Pbuf->_Current++ =
				::std:: forward<_Ty>(_Val);	
		else
			{	
			_Pty _Ptr = &*_Pbuf->_Current;
			_Construct(_Ptr, ::std:: forward<_Ty>(_Val));
			_Pbuf->_Hiwater = ++_Pbuf->_Current;
			}
		return (*this);
		}

	_Temp_iterator<_Ty>& operator*()
		{	
		return (*this);
		}

	_Temp_iterator<_Ty>& operator++()
		{	
		return (*this);
		}

	_Temp_iterator<_Ty>& operator++(int)
		{	
		return (*this);
		}

	_Temp_iterator<_Ty>& _Init()
		{	
		_Pbuf->_Current = _Pbuf->_Begin;
		return (*this);
		}

	_Pty _First() const
		{	
		return (_Pbuf->_Begin);
		}

	_Pty _Last() const
		{	
		return (_Pbuf->_Current);
		}

	ptrdiff_t _Maxlen()
		{	
		if (_Pbuf->_Begin == 0 && 0 < _Pbuf->_Size)
			{	
			pair<_Pty, ptrdiff_t> _Pair =

				::std:: get_temporary_buffer<_Ty>(_Pbuf->_Size);

			_Pbuf->_Begin = _Pair.first;
			_Pbuf->_Current = _Pair.first;
			_Pbuf->_Hiwater = _Pair.first;
			_Pbuf->_Size = _Pair.second;
			}
		return (_Pbuf->_Size);
		}

private:
	struct _Bufpar
		{	
		_Pty _Begin;	
		_Pty _Current;	
		_Pty _Hiwater;	
		ptrdiff_t _Size;	
		};
	_Bufpar _Buf;	
	_Bufpar *_Pbuf;	
	};

		
template<class _Ty>
	class auto_ptr;

template<class _Ty>
	struct auto_ptr_ref
		{	
	explicit auto_ptr_ref(_Ty *_Right)
		: _Ref(_Right)
		{	
		}

	_Ty *_Ref;	
	};

template<class _Ty>
	class auto_ptr
		{	
public:
	typedef auto_ptr<_Ty> _Myt;
	typedef _Ty element_type;

	explicit auto_ptr(_Ty *_Ptr = 0) throw ()
		: _Myptr(_Ptr)
		{	
		}

	auto_ptr(_Myt& _Right) throw ()
		: _Myptr(_Right.release())
		{	
		}

	auto_ptr(auto_ptr_ref<_Ty> _Right) throw ()
		{	
		_Ty *_Ptr = _Right._Ref;
		_Right._Ref = 0;	
		_Myptr = _Ptr;	
		}

	template<class _Other>
		operator auto_ptr<_Other>() throw ()
		{	
		return (auto_ptr<_Other>(*this));
		}

	template<class _Other>
		operator auto_ptr_ref<_Other>() throw ()
		{	
		_Other *_Cvtptr = _Myptr;	
		auto_ptr_ref<_Other> _Ans(_Cvtptr);
		_Myptr = 0;	
		return (_Ans);
		}

	template<class _Other>
		_Myt& operator=(auto_ptr<_Other>& _Right) throw ()
		{	
		reset(_Right.release());
		return (*this);
		}

	template<class _Other>
		auto_ptr(auto_ptr<_Other>& _Right) throw ()
		: _Myptr(_Right.release())
		{	
		}

	_Myt& operator=(_Myt& _Right) throw ()
		{	
		reset(_Right.release());
		return (*this);
		}

	_Myt& operator=(auto_ptr_ref<_Ty> _Right) throw ()
		{	
		_Ty *_Ptr = _Right._Ref;
		_Right._Ref = 0;	
		reset(_Ptr);	
		return (*this);
		}

	~auto_ptr()
		{	
		delete _Myptr;
		}

	_Ty& operator*() const throw ()
		{	
 
		if (_Myptr == 0)
			_Debug_message(L"auto_ptr not dereferencable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\memory", 938);
 

		return (*get());
		}

	_Ty *operator->() const throw ()
		{	
 
		if (_Myptr == 0)
			_Debug_message(L"auto_ptr not dereferencable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\memory", 948);
 

		return (get());
		}

	_Ty *get() const throw ()
		{	
		return (_Myptr);
		}

	_Ty *release() throw ()
		{	
		_Ty *_Tmp = _Myptr;
		_Myptr = 0;
		return (_Tmp);
		}

	void reset(_Ty *_Ptr = 0)
		{	
		if (_Ptr != _Myptr)
			delete _Myptr;
		_Myptr = _Ptr;
		}

private:
	_Ty *_Myptr;	
	};
}

 
 



 
 














#pragma once






 
 
 

#pragma pack(push,8)

 



 



struct __type_info_node {
    void *_MemPtr;
    __type_info_node* _Next;
};

extern __type_info_node __type_info_root_node;

class type_info {
public:
 
	size_t hash_code() const throw ()
		{	
		const char *_Keyval = name();
		size_t _Val = 2166136261U;
		size_t _First = 0;
		size_t _Last = :: strlen(_Keyval);
		size_t _Stride = 1 + _Last / 10;

		for(; _First < _Last; _First += _Stride)
			_Val = 16777619U * _Val ^ (size_t)_Keyval[_First];
		return (_Val);
		}
 

    


    virtual ~type_info();
     bool  operator==(const type_info& _Rhs) const;
     bool  operator!=(const type_info& _Rhs) const;
     int  before(const type_info& _Rhs) const;
     const char*  name(__type_info_node* __ptype_info_node = &__type_info_root_node) const;
     const char*  raw_name() const;
private:
    void *_M_data;
    char _M_d_name[1];
     type_info(const type_info& _Rhs);
    type_info&  operator=(const type_info& _Rhs);
     static const char *__cdecl _Name_base(const type_info *,__type_info_node* __ptype_info_node);
     static void __cdecl _Type_info_dtor(type_info *);
};

 

 namespace std {

using ::type_info;

 }





 namespace std {

class  bad_cast : public exception {
public:










     bad_cast(const char * _Message = "bad cast");
     bad_cast(const bad_cast &);
    virtual  ~bad_cast();

};

class  bad_typeid : public exception {
public:










     bad_typeid(const char * _Message = "bad typeid");
     bad_typeid(const bad_typeid &);
    virtual  ~bad_typeid();


};

class  __non_rtti_object : public bad_typeid {
public:










     __non_rtti_object(const char * _Message);
     __non_rtti_object(const __non_rtti_object &);
    virtual  ~__non_rtti_object();

};

 }
 

 



























































#pragma pack(pop)










 

 












#pragma once



















 

























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#pragma once



















 
























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#pragma pack(push,8)


extern "C" {






















typedef struct __JUMP_BUFFER {
    unsigned long Ebp;
    unsigned long Ebx;
    unsigned long Edi;
    unsigned long Esi;
    unsigned long Esp;
    unsigned long Eip;
    unsigned long Registration;
    unsigned long TryLevel;
    unsigned long Cookie;
    unsigned long UnwindFunc;
    unsigned long UnwindData[6];
} _JUMP_BUFFER;
































































































































































typedef int jmp_buf[16];






int __cdecl _setjmp(  jmp_buf _Buf);


}



extern "C"
{
 __declspec(noreturn) void __cdecl longjmp(  jmp_buf _Buf,   int _Value) throw(...);
}




#pragma pack(pop)



















#pragma once

























#pragma once


























#pragma once


























#pragma once



















#pragma once



























#pragma once
































#pragma once







































#pragma once














































 















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































extern "C" { 




typedef union __declspec(intrin_type) __declspec(align(8)) __m64
{
    unsigned __int64    m64_u64;
    float               m64_f32[2];
    __int8              m64_i8[8];
    __int16             m64_i16[4];
    __int32             m64_i32[2];    
    __int64             m64_i64;
    unsigned __int8     m64_u8[8];
    unsigned __int16    m64_u16[4];
    unsigned __int32    m64_u32[2];
} __m64;


void  _m_empty(void);
__m64 _m_from_int(int _I);
int   _m_to_int(__m64 _M);
__m64 _m_packsswb(__m64 _MM1, __m64 _MM2);
__m64 _m_packssdw(__m64 _MM1, __m64 _MM2);
__m64 _m_packuswb(__m64 _MM1, __m64 _MM2);
__m64 _m_punpckhbw(__m64 _MM1, __m64 _MM2);
__m64 _m_punpckhwd(__m64 _MM1, __m64 _MM2);
__m64 _m_punpckhdq(__m64 _MM1, __m64 _MM2);
__m64 _m_punpcklbw(__m64 _MM1, __m64 _MM2);
__m64 _m_punpcklwd(__m64 _MM1, __m64 _MM2);
__m64 _m_punpckldq(__m64 _MM1, __m64 _MM2);


__m64 _m_paddb(__m64 _MM1, __m64 _MM2);
__m64 _m_paddw(__m64 _MM1, __m64 _MM2);
__m64 _m_paddd(__m64 _MM1, __m64 _MM2);
__m64 _m_paddsb(__m64 _MM1, __m64 _MM2);
__m64 _m_paddsw(__m64 _MM1, __m64 _MM2);
__m64 _m_paddusb(__m64 _MM1, __m64 _MM2);
__m64 _m_paddusw(__m64 _MM1, __m64 _MM2);
__m64 _m_psubb(__m64 _MM1, __m64 _MM2);
__m64 _m_psubw(__m64 _MM1, __m64 _MM2);
__m64 _m_psubd(__m64 _MM1, __m64 _MM2);
__m64 _m_psubsb(__m64 _MM1, __m64 _MM2);
__m64 _m_psubsw(__m64 _MM1, __m64 _MM2);
__m64 _m_psubusb(__m64 _MM1, __m64 _MM2);
__m64 _m_psubusw(__m64 _MM1, __m64 _MM2);
__m64 _m_pmaddwd(__m64 _MM1, __m64 _MM2);
__m64 _m_pmulhw(__m64 _MM1, __m64 _MM2);
__m64 _m_pmullw(__m64 _MM1, __m64 _MM2);


__m64 _m_psllw(__m64 _M, __m64 _Count);
__m64 _m_psllwi(__m64 _M, int _Count);
__m64 _m_pslld(__m64 _M, __m64 _Count);
__m64 _m_pslldi(__m64 _M, int _Count);
__m64 _m_psllq(__m64 _M, __m64 _Count);
__m64 _m_psllqi(__m64 _M, int _Count);
__m64 _m_psraw(__m64 _M, __m64 _Count);
__m64 _m_psrawi(__m64 _M, int _Count);
__m64 _m_psrad(__m64 _M, __m64 _Count);
__m64 _m_psradi(__m64 _M, int _Count);
__m64 _m_psrlw(__m64 _M, __m64 _Count);
__m64 _m_psrlwi(__m64 _M, int _Count);
__m64 _m_psrld(__m64 _M, __m64 _Count);
__m64 _m_psrldi(__m64 _M, int _Count);
__m64 _m_psrlq(__m64 _M, __m64 _Count);
__m64 _m_psrlqi(__m64 _M, int _Count);


__m64 _m_pand(__m64 _MM1, __m64 _MM2);
__m64 _m_pandn(__m64 _MM1, __m64 _MM2);
__m64 _m_por(__m64 _MM1, __m64 _MM2);
__m64 _m_pxor(__m64 _MM1, __m64 _MM2);


__m64 _m_pcmpeqb(__m64 _MM1, __m64 _MM2);
__m64 _m_pcmpeqw(__m64 _MM1, __m64 _MM2);
__m64 _m_pcmpeqd(__m64 _MM1, __m64 _MM2);
__m64 _m_pcmpgtb(__m64 _MM1, __m64 _MM2);
__m64 _m_pcmpgtw(__m64 _MM1, __m64 _MM2);
__m64 _m_pcmpgtd(__m64 _MM1, __m64 _MM2);


__m64 _mm_setzero_si64(void);
__m64 _mm_set_pi32(int _I1, int _I0);
__m64 _mm_set_pi16(short _S3, short _S2, short _S1, short _S0);
__m64 _mm_set_pi8(char _B7, char _B6, char _B5, char _B4,
                  char _B3, char _B2, char _B1, char _B0);
__m64 _mm_set1_pi32(int _I);
__m64 _mm_set1_pi16(short _S);
__m64 _mm_set1_pi8(char _B);
__m64 _mm_setr_pi32(int _I1, int _I0);
__m64 _mm_setr_pi16(short _S3, short _S2, short _S1, short _S0);
__m64 _mm_setr_pi8(char _B7, char _B6, char _B5, char _B4,
                   char _B3, char _B2, char _B1, char _B0);




























































}; 

























typedef union __declspec(intrin_type) __declspec(align(16)) __m128 {
     float               m128_f32[4];
     unsigned __int64    m128_u64[2];
     __int8              m128_i8[16];
     __int16             m128_i16[8];
     __int32             m128_i32[4];
     __int64             m128_i64[2];
     unsigned __int8     m128_u8[16];
     unsigned __int16    m128_u16[8];
     unsigned __int32    m128_u32[4];
 } __m128;







 
 
 
 
 
 
 
 
 
 




 
 
 
 
 
 
 
 
 
 







































































 
 
 


extern "C" { 
  






extern __m128 _mm_add_ss(__m128 _A, __m128 _B);
extern __m128 _mm_add_ps(__m128 _A, __m128 _B);
extern __m128 _mm_sub_ss(__m128 _A, __m128 _B);
extern __m128 _mm_sub_ps(__m128 _A, __m128 _B);
extern __m128 _mm_mul_ss(__m128 _A, __m128 _B);
extern __m128 _mm_mul_ps(__m128 _A, __m128 _B);
extern __m128 _mm_div_ss(__m128 _A, __m128 _B);
extern __m128 _mm_div_ps(__m128 _A, __m128 _B);
extern __m128 _mm_sqrt_ss(__m128 _A);
extern __m128 _mm_sqrt_ps(__m128 _A);
extern __m128 _mm_rcp_ss(__m128 _A);
extern __m128 _mm_rcp_ps(__m128 _A);
extern __m128 _mm_rsqrt_ss(__m128 _A);
extern __m128 _mm_rsqrt_ps(__m128 _A);
extern __m128 _mm_min_ss(__m128 _A, __m128 _B);
extern __m128 _mm_min_ps(__m128 _A, __m128 _B);
extern __m128 _mm_max_ss(__m128 _A, __m128 _B);
extern __m128 _mm_max_ps(__m128 _A, __m128 _B);





extern __m128 _mm_and_ps(__m128 _A, __m128 _B);
extern __m128 _mm_andnot_ps(__m128 _A, __m128 _B);
extern __m128 _mm_or_ps(__m128 _A, __m128 _B);
extern __m128 _mm_xor_ps(__m128 _A, __m128 _B);





extern __m128 _mm_cmpeq_ss(__m128 _A, __m128 _B);
extern __m128 _mm_cmpeq_ps(__m128 _A, __m128 _B);
extern __m128 _mm_cmplt_ss(__m128 _A, __m128 _B);
extern __m128 _mm_cmplt_ps(__m128 _A, __m128 _B);
extern __m128 _mm_cmple_ss(__m128 _A, __m128 _B);
extern __m128 _mm_cmple_ps(__m128 _A, __m128 _B);
extern __m128 _mm_cmpgt_ss(__m128 _A, __m128 _B);
extern __m128 _mm_cmpgt_ps(__m128 _A, __m128 _B);
extern __m128 _mm_cmpge_ss(__m128 _A, __m128 _B);
extern __m128 _mm_cmpge_ps(__m128 _A, __m128 _B);
extern __m128 _mm_cmpneq_ss(__m128 _A, __m128 _B);
extern __m128 _mm_cmpneq_ps(__m128 _A, __m128 _B);
extern __m128 _mm_cmpnlt_ss(__m128 _A, __m128 _B);
extern __m128 _mm_cmpnlt_ps(__m128 _A, __m128 _B);
extern __m128 _mm_cmpnle_ss(__m128 _A, __m128 _B);
extern __m128 _mm_cmpnle_ps(__m128 _A, __m128 _B);
extern __m128 _mm_cmpngt_ss(__m128 _A, __m128 _B);
extern __m128 _mm_cmpngt_ps(__m128 _A, __m128 _B);
extern __m128 _mm_cmpnge_ss(__m128 _A, __m128 _B);
extern __m128 _mm_cmpnge_ps(__m128 _A, __m128 _B);
extern __m128 _mm_cmpord_ss(__m128 _A, __m128 _B);
extern __m128 _mm_cmpord_ps(__m128 _A, __m128 _B);
extern __m128 _mm_cmpunord_ss(__m128 _A, __m128 _B);
extern __m128 _mm_cmpunord_ps(__m128 _A, __m128 _B);
extern int _mm_comieq_ss(__m128 _A, __m128 _B);
extern int _mm_comilt_ss(__m128 _A, __m128 _B);
extern int _mm_comile_ss(__m128 _A, __m128 _B);
extern int _mm_comigt_ss(__m128 _A, __m128 _B);
extern int _mm_comige_ss(__m128 _A, __m128 _B);
extern int _mm_comineq_ss(__m128 _A, __m128 _B);
extern int _mm_ucomieq_ss(__m128 _A, __m128 _B);
extern int _mm_ucomilt_ss(__m128 _A, __m128 _B);
extern int _mm_ucomile_ss(__m128 _A, __m128 _B);
extern int _mm_ucomigt_ss(__m128 _A, __m128 _B);
extern int _mm_ucomige_ss(__m128 _A, __m128 _B);
extern int _mm_ucomineq_ss(__m128 _A, __m128 _B);





extern int _mm_cvt_ss2si(__m128 _A);
extern __m64 _mm_cvt_ps2pi(__m128 _A);
extern int _mm_cvtt_ss2si(__m128 _A);
extern __m64 _mm_cvtt_ps2pi(__m128 _A);
extern __m128 _mm_cvt_si2ss(__m128, int);
extern __m128 _mm_cvt_pi2ps(__m128, __m64);
extern float _mm_cvtss_f32(__m128 _A);














extern __m128 _mm_shuffle_ps(__m128 _A, __m128 _B, unsigned int _Imm8);
extern __m128 _mm_unpackhi_ps(__m128 _A, __m128 _B);
extern __m128 _mm_unpacklo_ps(__m128 _A, __m128 _B);
extern __m128 _mm_loadh_pi(__m128, __m64 const*);
extern __m128 _mm_movehl_ps(__m128, __m128);
extern __m128 _mm_movelh_ps(__m128, __m128);
extern void _mm_storeh_pi(__m64 *, __m128);
extern __m128 _mm_loadl_pi(__m128, __m64 const*);
extern void _mm_storel_pi(__m64 *, __m128);
extern int _mm_movemask_ps(__m128 _A);





extern int _m_pextrw(__m64, int);
extern __m64 _m_pinsrw(__m64, int, int);
extern __m64 _m_pmaxsw(__m64, __m64);
extern __m64 _m_pmaxub(__m64, __m64);
extern __m64 _m_pminsw(__m64, __m64);
extern __m64 _m_pminub(__m64, __m64);
extern int _m_pmovmskb(__m64);
extern __m64 _m_pmulhuw(__m64, __m64);
extern __m64 _m_pshufw(__m64, int);
extern void _m_maskmovq(__m64, __m64, char *);
extern __m64 _m_pavgb(__m64, __m64);
extern __m64 _m_pavgw(__m64, __m64);
extern __m64 _m_psadbw(__m64, __m64);





extern __m128 _mm_set_ss(float _A);
extern __m128 _mm_set_ps1(float _A);
extern __m128 _mm_set_ps(float _A, float _B, float _C, float _D);
extern __m128 _mm_setr_ps(float _A, float _B, float _C, float _D);
extern __m128 _mm_setzero_ps(void);
extern __m128 _mm_load_ss(float const*_A);
extern __m128 _mm_load_ps1(float const*_A);
extern __m128 _mm_load_ps(float const*_A);
extern __m128 _mm_loadr_ps(float const*_A);
extern __m128 _mm_loadu_ps(float const*_A);
extern void _mm_store_ss(float *_V, __m128 _A);
extern void _mm_store_ps1(float *_V, __m128 _A);
extern void _mm_store_ps(float *_V, __m128 _A);
extern void _mm_storer_ps(float *_V, __m128 _A);
extern void _mm_storeu_ps(float *_V, __m128 _A);
extern void _mm_prefetch(char const*_A, int _Sel);
extern void _mm_stream_pi(__m64 *, __m64);
extern void _mm_stream_ps(float *, __m128);
extern __m128 _mm_move_ss(__m128 _A, __m128 _B);

extern void _mm_sfence(void);
extern unsigned int _mm_getcsr(void);
extern void _mm_setcsr(unsigned int);






























 
 
 

 
 
 
 
 
 
 
 
__inline __m128 _mm_cvtpi16_ps(__m64 a)
{
  __m128 tmp;
  __m64  ext_val = _m_pcmpgtw(_mm_setzero_si64(), a);

  tmp = _mm_cvt_pi2ps(_mm_setzero_ps(), _m_punpckhwd(a, ext_val));
  return(_mm_cvt_pi2ps(_mm_movelh_ps(tmp, tmp), 
                        _m_punpcklwd(a, ext_val)));
}


 
 
 
 
 
 
 
 
__inline __m128 _mm_cvtpu16_ps(__m64 a)
{
  __m128 tmp;
  __m64  ext_val = _mm_setzero_si64();

  tmp = _mm_cvt_pi2ps(_mm_setzero_ps(), _m_punpckhwd(a, ext_val));
  return(_mm_cvt_pi2ps(_mm_movelh_ps(tmp, tmp), 
                        _m_punpcklwd(a, ext_val)));
}


 
 
 
 
 
 
 
 
__inline __m64 _mm_cvtps_pi16(__m128 a)
{
  return _m_packssdw(_mm_cvt_ps2pi(a), 
                        _mm_cvt_ps2pi(_mm_movehl_ps(a, a)));
}


 
 
 
 
 
 
 
 
__inline __m128 _mm_cvtpi8_ps(__m64 a)
{
  __m64  ext_val = _m_pcmpgtb(_mm_setzero_si64(), a);

  return _mm_cvtpi16_ps(_m_punpcklbw(a, ext_val));
}


 
 
 
 
 
 
 
 
 
__inline __m128 _mm_cvtpu8_ps(__m64 a)
{
  return _mm_cvtpu16_ps(_m_punpcklbw(a, _mm_setzero_si64()));
}


 
 
 
 
 
 
 
 
__inline __m64 _mm_cvtps_pi8(__m128 a)
{
  return _m_packsswb(_mm_cvtps_pi16(a), _mm_setzero_si64());
}


 
 
 
 
 
 
 
 
 
__inline __m128 _mm_cvtpi32x2_ps(__m64 a, __m64 b)
{
  return _mm_movelh_ps(_mm_cvt_pi2ps(_mm_setzero_ps(), a), 
                       _mm_cvt_pi2ps(_mm_setzero_ps(), b)); 
}



}; 








typedef union __declspec(intrin_type) __declspec(align(16)) __m128i {
    __int8              m128i_i8[16];
    __int16             m128i_i16[8];
    __int32             m128i_i32[4];    
    __int64             m128i_i64[2];
    unsigned __int8     m128i_u8[16];
    unsigned __int16    m128i_u16[8];
    unsigned __int32    m128i_u32[4];
    unsigned __int64    m128i_u64[2];
} __m128i;

typedef struct __declspec(intrin_type) __declspec(align(16)) __m128d {
    double              m128d_f64[2];
} __m128d;






 
 
 


extern "C" { 
  






extern __m128d _mm_add_sd(__m128d _A, __m128d _B);
extern __m128d _mm_add_pd(__m128d _A, __m128d _B);
extern __m128d _mm_sub_sd(__m128d _A, __m128d _B);
extern __m128d _mm_sub_pd(__m128d _A, __m128d _B);
extern __m128d _mm_mul_sd(__m128d _A, __m128d _B);
extern __m128d _mm_mul_pd(__m128d _A, __m128d _B);
extern __m128d _mm_sqrt_sd(__m128d _A, __m128d _B);
extern __m128d _mm_sqrt_pd(__m128d _A);
extern __m128d _mm_div_sd(__m128d _A, __m128d _B);
extern __m128d _mm_div_pd(__m128d _A, __m128d _B);
extern __m128d _mm_min_sd(__m128d _A, __m128d _B);
extern __m128d _mm_min_pd(__m128d _A, __m128d _B);
extern __m128d _mm_max_sd(__m128d _A, __m128d _B);
extern __m128d _mm_max_pd(__m128d _A, __m128d _B);





extern __m128d _mm_and_pd(__m128d _A, __m128d _B);
extern __m128d _mm_andnot_pd(__m128d _A, __m128d _B);
extern __m128d _mm_or_pd(__m128d _A, __m128d _B);
extern __m128d _mm_xor_pd(__m128d _A, __m128d _B);





extern __m128d _mm_cmpeq_sd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpeq_pd(__m128d _A, __m128d _B);
extern __m128d _mm_cmplt_sd(__m128d _A, __m128d _B);
extern __m128d _mm_cmplt_pd(__m128d _A, __m128d _B);
extern __m128d _mm_cmple_sd(__m128d _A, __m128d _B);
extern __m128d _mm_cmple_pd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpgt_sd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpgt_pd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpge_sd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpge_pd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpneq_sd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpneq_pd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpnlt_sd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpnlt_pd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpnle_sd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpnle_pd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpngt_sd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpngt_pd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpnge_sd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpnge_pd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpord_pd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpord_sd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpunord_pd(__m128d _A, __m128d _B);
extern __m128d _mm_cmpunord_sd(__m128d _A, __m128d _B);
extern int _mm_comieq_sd(__m128d _A, __m128d _B);
extern int _mm_comilt_sd(__m128d _A, __m128d _B);
extern int _mm_comile_sd(__m128d _A, __m128d _B);
extern int _mm_comigt_sd(__m128d _A, __m128d _B);
extern int _mm_comige_sd(__m128d _A, __m128d _B);
extern int _mm_comineq_sd(__m128d _A, __m128d _B);
extern int _mm_ucomieq_sd(__m128d _A, __m128d _B);
extern int _mm_ucomilt_sd(__m128d _A, __m128d _B);
extern int _mm_ucomile_sd(__m128d _A, __m128d _B);
extern int _mm_ucomigt_sd(__m128d _A, __m128d _B);
extern int _mm_ucomige_sd(__m128d _A, __m128d _B);
extern int _mm_ucomineq_sd(__m128d _A, __m128d _B);





extern __m128d _mm_cvtepi32_pd(__m128i _A);
extern __m128i _mm_cvtpd_epi32(__m128d _A);
extern __m128i _mm_cvttpd_epi32(__m128d _A);
extern __m128 _mm_cvtepi32_ps(__m128i _A);
extern __m128i _mm_cvtps_epi32(__m128 _A);
extern __m128i _mm_cvttps_epi32(__m128 _A);
extern __m128 _mm_cvtpd_ps(__m128d _A);
extern __m128d _mm_cvtps_pd(__m128 _A);
extern __m128 _mm_cvtsd_ss(__m128 _A, __m128d _B);
extern __m128d _mm_cvtss_sd(__m128d _A, __m128 _B);

extern int _mm_cvtsd_si32(__m128d _A);
extern int _mm_cvttsd_si32(__m128d _A);
extern __m128d _mm_cvtsi32_sd(__m128d _A, int _B);

extern __m64 _mm_cvtpd_pi32(__m128d _A);
extern __m64 _mm_cvttpd_pi32(__m128d _A);
extern __m128d _mm_cvtpi32_pd(__m64 _A);





extern __m128d _mm_unpackhi_pd(__m128d _A, __m128d _B);
extern __m128d _mm_unpacklo_pd(__m128d _A, __m128d _B);
extern int _mm_movemask_pd(__m128d _A);
extern __m128d _mm_shuffle_pd(__m128d _A, __m128d _B, int _I);





extern __m128d _mm_load_pd(double const*_Dp);
extern __m128d _mm_load1_pd(double const*_Dp);
extern __m128d _mm_loadr_pd(double const*_Dp);
extern __m128d _mm_loadu_pd(double const*_Dp);
extern __m128d _mm_load_sd(double const*_Dp);
extern __m128d _mm_loadh_pd(__m128d _A, double const*_Dp);
extern __m128d _mm_loadl_pd(__m128d _A, double const*_Dp);





extern __m128d _mm_set_sd(double _W);
extern __m128d _mm_set1_pd(double _A);
extern __m128d _mm_set_pd(double _Z, double _Y);
extern __m128d _mm_setr_pd(double _Y, double _Z);
extern __m128d _mm_setzero_pd(void);
extern __m128d _mm_move_sd(__m128d _A, __m128d _B);





extern void _mm_store_sd(double *_Dp, __m128d _A);
extern void _mm_store1_pd(double *_Dp, __m128d _A);
extern void _mm_store_pd(double *_Dp, __m128d _A);
extern void _mm_storeu_pd(double *_Dp, __m128d _A);
extern void _mm_storer_pd(double *_Dp, __m128d _A);
extern void _mm_storeh_pd(double *_Dp, __m128d _A);
extern void _mm_storel_pd(double *_Dp, __m128d _A);





extern __m128i _mm_add_epi8(__m128i _A, __m128i _B);
extern __m128i _mm_add_epi16(__m128i _A, __m128i _B);
extern __m128i _mm_add_epi32(__m128i _A, __m128i _B);
extern __m64 _mm_add_si64(__m64 _A, __m64 _B);
extern __m128i _mm_add_epi64(__m128i _A, __m128i _B);
extern __m128i _mm_adds_epi8(__m128i _A, __m128i _B);
extern __m128i _mm_adds_epi16(__m128i _A, __m128i _B);
extern __m128i _mm_adds_epu8(__m128i _A, __m128i _B);
extern __m128i _mm_adds_epu16(__m128i _A, __m128i _B);
extern __m128i _mm_avg_epu8(__m128i _A, __m128i _B);
extern __m128i _mm_avg_epu16(__m128i _A, __m128i _B);
extern __m128i _mm_madd_epi16(__m128i _A, __m128i _B);
extern __m128i _mm_max_epi16(__m128i _A, __m128i _B);
extern __m128i _mm_max_epu8(__m128i _A, __m128i _B);
extern __m128i _mm_min_epi16(__m128i _A, __m128i _B);
extern __m128i _mm_min_epu8(__m128i _A, __m128i _B);
extern __m128i _mm_mulhi_epi16(__m128i _A, __m128i _B);
extern __m128i _mm_mulhi_epu16(__m128i _A, __m128i _B);
extern __m128i _mm_mullo_epi16(__m128i _A, __m128i _B);
extern __m64 _mm_mul_su32(__m64 _A, __m64 _B);
extern __m128i _mm_mul_epu32(__m128i _A, __m128i _B);
extern __m128i _mm_sad_epu8(__m128i _A, __m128i _B);
extern __m128i _mm_sub_epi8(__m128i _A, __m128i _B);
extern __m128i _mm_sub_epi16(__m128i _A, __m128i _B);
extern __m128i _mm_sub_epi32(__m128i _A, __m128i _B);
extern __m64 _mm_sub_si64(__m64 _A, __m64 _B);
extern __m128i _mm_sub_epi64(__m128i _A, __m128i _B);
extern __m128i _mm_subs_epi8(__m128i _A, __m128i _B);
extern __m128i _mm_subs_epi16(__m128i _A, __m128i _B);
extern __m128i _mm_subs_epu8(__m128i _A, __m128i _B);
extern __m128i _mm_subs_epu16(__m128i _A, __m128i _B);





extern __m128i _mm_and_si128(__m128i _A, __m128i _B);
extern __m128i _mm_andnot_si128(__m128i _A, __m128i _B);
extern __m128i _mm_or_si128(__m128i _A, __m128i _B);
extern __m128i _mm_xor_si128(__m128i _A, __m128i _B);





extern __m128i _mm_slli_si128(__m128i _A, int _Imm);
extern __m128i _mm_slli_epi16(__m128i _A, int _Count);
extern __m128i _mm_sll_epi16(__m128i _A, __m128i _Count);
extern __m128i _mm_slli_epi32(__m128i _A, int _Count);
extern __m128i _mm_sll_epi32(__m128i _A, __m128i _Count);
extern __m128i _mm_slli_epi64(__m128i _A, int _Count);
extern __m128i _mm_sll_epi64(__m128i _A, __m128i _Count);
extern __m128i _mm_srai_epi16(__m128i _A, int _Count);
extern __m128i _mm_sra_epi16(__m128i _A, __m128i _Count);
extern __m128i _mm_srai_epi32(__m128i _A, int _Count);
extern __m128i _mm_sra_epi32(__m128i _A, __m128i _Count);
extern __m128i _mm_srli_si128(__m128i _A, int _Imm);
extern __m128i _mm_srli_epi16(__m128i _A, int _Count);
extern __m128i _mm_srl_epi16(__m128i _A, __m128i _Count);
extern __m128i _mm_srli_epi32(__m128i _A, int _Count);
extern __m128i _mm_srl_epi32(__m128i _A, __m128i _Count);
extern __m128i _mm_srli_epi64(__m128i _A, int _Count);
extern __m128i _mm_srl_epi64(__m128i _A, __m128i _Count);





extern __m128i _mm_cmpeq_epi8(__m128i _A, __m128i _B);
extern __m128i _mm_cmpeq_epi16(__m128i _A, __m128i _B);
extern __m128i _mm_cmpeq_epi32(__m128i _A, __m128i _B);
extern __m128i _mm_cmpgt_epi8(__m128i _A, __m128i _B);
extern __m128i _mm_cmpgt_epi16(__m128i _A, __m128i _B);
extern __m128i _mm_cmpgt_epi32(__m128i _A, __m128i _B);
extern __m128i _mm_cmplt_epi8(__m128i _A, __m128i _B);
extern __m128i _mm_cmplt_epi16(__m128i _A, __m128i _B);
extern __m128i _mm_cmplt_epi32(__m128i _A, __m128i _B);





extern __m128i _mm_cvtsi32_si128(int _A);
extern int _mm_cvtsi128_si32(__m128i _A);





extern __m128i _mm_packs_epi16(__m128i _A, __m128i _B);
extern __m128i _mm_packs_epi32(__m128i _A, __m128i _B);
extern __m128i _mm_packus_epi16(__m128i _A, __m128i _B);
extern int _mm_extract_epi16(__m128i _A, int _Imm);
extern __m128i _mm_insert_epi16(__m128i _A, int _B, int _Imm);
extern int _mm_movemask_epi8(__m128i _A);
extern __m128i _mm_shuffle_epi32(__m128i _A, int _Imm);
extern __m128i _mm_shufflehi_epi16(__m128i _A, int _Imm);
extern __m128i _mm_shufflelo_epi16(__m128i _A, int _Imm);
extern __m128i _mm_unpackhi_epi8(__m128i _A, __m128i _B);
extern __m128i _mm_unpackhi_epi16(__m128i _A, __m128i _B);
extern __m128i _mm_unpackhi_epi32(__m128i _A, __m128i _B);
extern __m128i _mm_unpackhi_epi64(__m128i _A, __m128i _B);
extern __m128i _mm_unpacklo_epi8(__m128i _A, __m128i _B);
extern __m128i _mm_unpacklo_epi16(__m128i _A, __m128i _B);
extern __m128i _mm_unpacklo_epi32(__m128i _A, __m128i _B);
extern __m128i _mm_unpacklo_epi64(__m128i _A, __m128i _B);





extern __m128i _mm_load_si128(__m128i const*_P);
extern __m128i _mm_loadu_si128(__m128i const*_P);
extern __m128i _mm_loadl_epi64(__m128i const*_P);





extern __m128i _mm_set_epi64(__m64 _Q1, __m64 _Q0);
extern __m128i _mm_set_epi32(int _I3, int _I2, int _I1, int _I0);
extern __m128i _mm_set_epi16(short _W7, short _W6, short _W5, short _W4,
                             short _W3, short _W2, short _W1, short _W0);
extern __m128i _mm_set_epi8(char _B15, char _B14, char _B13, char _B12, 
                            char _B11, char _B10, char _B9, char _B8, 
                            char _B7, char _B6, char _B5, char _B4, 
                            char _B3, char _B2, char _B1, char _B0);
extern __m128i _mm_set1_epi64(__m64 _Q);
extern __m128i _mm_set1_epi32(int _I);
extern __m128i _mm_set1_epi16(short _W);
extern __m128i _mm_set1_epi8(char _B);
extern __m128i _mm_setl_epi64(__m128i _Q);
extern __m128i _mm_setr_epi64(__m64 _Q0, __m64 _Q1);
extern __m128i _mm_setr_epi32(int _I0, int _I1, int _I2, int _I3);
extern __m128i _mm_setr_epi16(short _W0, short _W1, short _W2, short _W3, 
                              short _W4, short _W5, short _W6, short _W7);
extern __m128i _mm_setr_epi8(char _B15, char _B14, char _B13, char _B12, 
                             char _B11, char _B10, char _B9, char _B8, 
                             char _B7, char _B6, char _B5, char _B4, 
                             char _B3, char _B2, char _B1, char _B0);
extern __m128i _mm_setzero_si128(void);





extern void _mm_store_si128(__m128i *_P, __m128i _B);
extern void _mm_storeu_si128(__m128i *_P, __m128i _B);
extern void _mm_storel_epi64(__m128i *_P, __m128i _Q);
extern void _mm_maskmoveu_si128(__m128i _D, __m128i _N, char *_P);





extern __m128i _mm_move_epi64(__m128i _Q);
extern __m128i _mm_movpi64_epi64(__m64 _Q);
extern __m64 _mm_movepi64_pi64(__m128i _Q);





extern void _mm_stream_pd(double *_Dp, __m128d _A);
extern void _mm_stream_si128(__m128i *_P, __m128i _A);
extern void _mm_clflush(void const*_P);
extern void _mm_lfence(void);
extern void _mm_mfence(void);
extern void _mm_stream_si32(int *_P, int _I);
extern void _mm_pause(void);





extern double _mm_cvtsd_f64(__m128d _A);







extern __m128  _mm_castpd_ps(__m128d);
extern __m128i _mm_castpd_si128(__m128d);
extern __m128d _mm_castps_pd(__m128);
extern __m128i _mm_castps_si128(__m128);
extern __m128  _mm_castsi128_ps(__m128i);
extern __m128d _mm_castsi128_pd(__m128i);
















}; 








 
 
 














 
 
 


extern "C" { 
  






extern __m128 _mm_addsub_ps(__m128 a, __m128 b);
extern __m128 _mm_hadd_ps(__m128 a, __m128 b);
extern __m128 _mm_hsub_ps(__m128 a, __m128 b);
extern __m128 _mm_movehdup_ps(__m128 a);
extern __m128 _mm_moveldup_ps(__m128 a);





extern __m128d _mm_addsub_pd(__m128d a, __m128d b);
extern __m128d _mm_hadd_pd(__m128d a, __m128d b);
extern __m128d _mm_hsub_pd(__m128d a, __m128d b);
extern __m128d _mm_loaddup_pd(double const * dp);
extern __m128d _mm_movedup_pd(__m128d a);




extern __m128i _mm_lddqu_si128(__m128i const *p);







extern void _mm_monitor(void const *p, unsigned extensions, unsigned hints);




extern void _mm_mwait(unsigned extensions, unsigned hints);


}; 
















extern "C" {


    
    

    extern __m128i _mm_hadd_epi16 (__m128i a, __m128i b);
    extern __m128i _mm_hadd_epi32 (__m128i a, __m128i b);
    extern __m128i _mm_hadds_epi16 (__m128i a, __m128i b);

    extern __m64 _mm_hadd_pi16 (__m64 a, __m64 b);
    extern __m64 _mm_hadd_pi32 (__m64 a, __m64 b);
    extern __m64 _mm_hadds_pi16 (__m64 a, __m64 b);

    
    

    extern __m128i _mm_hsub_epi16 (__m128i a, __m128i b);
    extern __m128i _mm_hsub_epi32 (__m128i a, __m128i b);
    extern __m128i _mm_hsubs_epi16 (__m128i a, __m128i b);

    extern __m64 _mm_hsub_pi16 (__m64 a, __m64 b);
    extern __m64 _mm_hsub_pi32 (__m64 a, __m64 b);
    extern __m64 _mm_hsubs_pi16 (__m64 a, __m64 b);

    
    

    extern __m128i _mm_maddubs_epi16 (__m128i a, __m128i b);

    extern __m64 _mm_maddubs_pi16 (__m64 a, __m64 b);

    
    

    extern __m128i _mm_mulhrs_epi16 (__m128i a, __m128i b);

    extern __m64 _mm_mulhrs_pi16 (__m64 a, __m64 b);

    
    

    extern __m128i _mm_shuffle_epi8 (__m128i a, __m128i b);

    extern __m64 _mm_shuffle_pi8 (__m64 a, __m64 b);

    
    

    extern __m128i _mm_sign_epi8 (__m128i a, __m128i b);
    extern __m128i _mm_sign_epi16 (__m128i a, __m128i b);
    extern __m128i _mm_sign_epi32 (__m128i a, __m128i b);

    extern __m64 _mm_sign_pi8 (__m64 a, __m64 b);
    extern __m64 _mm_sign_pi16 (__m64 a, __m64 b);
    extern __m64 _mm_sign_pi32 (__m64 a, __m64 b);

    
    

    extern __m128i _mm_alignr_epi8 (__m128i a, __m128i b, int n);

    extern __m64 _mm_alignr_pi8 (__m64 a, __m64 b, int n);

    
    

    extern __m128i _mm_abs_epi8 (__m128i a);
    extern __m128i _mm_abs_epi16 (__m128i a);
    extern __m128i _mm_abs_epi32 (__m128i a);

    extern __m64 _mm_abs_pi8 (__m64 a);
    extern __m64 _mm_abs_pi16 (__m64 a);
    extern __m64 _mm_abs_pi32 (__m64 a);


};


























































extern "C" {


        
        

        extern __m128i _mm_blend_epi16 (__m128i v1, __m128i v2,
                                        const int mask);
        extern __m128i _mm_blendv_epi8 (__m128i v1, __m128i v2, __m128i mask);

        
        

        extern __m128  _mm_blend_ps (__m128  v1, __m128  v2, const int mask);
        extern __m128  _mm_blendv_ps(__m128  v1, __m128  v2, __m128 v3);

        
        

        extern __m128d _mm_blend_pd (__m128d v1, __m128d v2, const int mask);
        extern __m128d _mm_blendv_pd(__m128d v1, __m128d v2, __m128d v3);

        
        

        extern __m128  _mm_dp_ps(__m128  val1, __m128  val2, const int mask);
        extern __m128d _mm_dp_pd(__m128d val1, __m128d val2, const int mask);

        
        

        extern __m128i _mm_cmpeq_epi64(__m128i val1, __m128i val2);

        

        extern __m128i _mm_min_epi8 (__m128i val1, __m128i val2);
        extern __m128i _mm_max_epi8 (__m128i val1, __m128i val2);

        extern __m128i _mm_min_epu16(__m128i val1, __m128i val2);
        extern __m128i _mm_max_epu16(__m128i val1, __m128i val2);

        extern __m128i _mm_min_epi32(__m128i val1, __m128i val2);
        extern __m128i _mm_max_epi32(__m128i val1, __m128i val2);
        extern __m128i _mm_min_epu32(__m128i val1, __m128i val2);
        extern __m128i _mm_max_epu32(__m128i val1, __m128i val2);

        
        

        extern __m128i _mm_mullo_epi32(__m128i a, __m128i b);

        
        

        extern __m128i _mm_mul_epi32(__m128i a, __m128i b);

        
        

        extern int _mm_testz_si128(__m128i mask, __m128i val);

        
        

        extern int _mm_testc_si128(__m128i mask, __m128i val);

        
        
        

        extern int _mm_testnzc_si128(__m128i mask, __m128i s2);

        
        
        
        
        

        extern __m128 _mm_insert_ps(__m128 dst, __m128 src, const int ndx);

        




        
        

        extern int _mm_extract_ps(__m128 src, const int ndx);

        
        




        
        





        
        

        extern __m128i _mm_insert_epi8 (__m128i dst, int s, const int ndx);
        extern __m128i _mm_insert_epi32(__m128i dst, int s, const int ndx);




        
        

        extern int   _mm_extract_epi8 (__m128i src, const int ndx);
        extern int   _mm_extract_epi32(__m128i src, const int ndx);





        
        

        extern __m128i _mm_minpos_epu16(__m128i shortValues);

        

        extern __m128d _mm_round_pd(__m128d val, int iRoundMode);
        extern __m128d _mm_round_sd(__m128d dst, __m128d val, int iRoundMode);

        

        extern __m128  _mm_round_ps(__m128  val, int iRoundMode);
        extern __m128  _mm_round_ss(__m128 dst, __m128  val, int iRoundMode);

        

        extern __m128i _mm_cvtepi8_epi32 (__m128i byteValues);
        extern __m128i _mm_cvtepi16_epi32(__m128i shortValues);
        extern __m128i _mm_cvtepi8_epi64 (__m128i byteValues); 
        extern __m128i _mm_cvtepi32_epi64(__m128i intValues);
        extern __m128i _mm_cvtepi16_epi64(__m128i shortValues);
        extern __m128i _mm_cvtepi8_epi16 (__m128i byteValues);

        

        extern __m128i _mm_cvtepu8_epi32 (__m128i byteValues);
        extern __m128i _mm_cvtepu16_epi32(__m128i shortValues);
        extern __m128i _mm_cvtepu8_epi64 (__m128i shortValues);
        extern __m128i _mm_cvtepu32_epi64(__m128i intValues);
        extern __m128i _mm_cvtepu16_epi64(__m128i shortValues);
        extern __m128i _mm_cvtepu8_epi16 (__m128i byteValues);


        
        

        extern __m128i _mm_packus_epi32(__m128i val1, __m128i val2);

        
        
        

        extern __m128i _mm_mpsadbw_epu8(__m128i s1, __m128i s2, const int msk);

        



        extern __m128i _mm_stream_load_si128(__m128i* v1);


}; 










extern "C" {













































 
    extern __m128i _mm_cmpistrm (__m128i a, __m128i b, const int mode);
    extern int     _mm_cmpistri (__m128i a, __m128i b, const int mode);

    extern __m128i _mm_cmpestrm (__m128i a, int la, __m128i b, int lb, const int mode);
    extern int     _mm_cmpestri (__m128i a, int la, __m128i b, int lb, const int mode);





    extern int     _mm_cmpistrz (__m128i a, __m128i b, const int mode);
    extern int     _mm_cmpistrc (__m128i a, __m128i b, const int mode);
    extern int     _mm_cmpistrs (__m128i a, __m128i b, const int mode);
    extern int     _mm_cmpistro (__m128i a, __m128i b, const int mode);
    extern int     _mm_cmpistra (__m128i a, __m128i b, const int mode);

    extern int     _mm_cmpestrz (__m128i a, int la, __m128i b, int lb, const int mode);
    extern int     _mm_cmpestrc (__m128i a, int la, __m128i b, int lb, const int mode);
    extern int     _mm_cmpestrs (__m128i a, int la, __m128i b, int lb, const int mode);
    extern int     _mm_cmpestro (__m128i a, int la, __m128i b, int lb, const int mode);
    extern int     _mm_cmpestra (__m128i a, int la, __m128i b, int lb, const int mode);






    extern __m128i _mm_cmpgt_epi64(__m128i val1, __m128i val2);





    extern int _mm_popcnt_u32(unsigned int v);









    extern unsigned int _mm_crc32_u8 (unsigned int crc, unsigned char v);
    extern unsigned int _mm_crc32_u16(unsigned int crc, unsigned short v);
    extern unsigned int _mm_crc32_u32(unsigned int crc, unsigned int v);






}; 










extern "C" {






extern __m128i _mm_aesdec_si128(__m128i v, __m128i rkey);





extern __m128i _mm_aesdeclast_si128(__m128i v, __m128i rkey);





extern __m128i _mm_aesenc_si128(__m128i v, __m128i rkey);





extern __m128i _mm_aesenclast_si128(__m128i v, __m128i rkey);





extern __m128i _mm_aesimc_si128(__m128i v);






extern __m128i _mm_aeskeygenassist_si128(__m128i ckey, const int rcon);







extern __m128i _mm_clmulepi64_si128(__m128i v1, __m128i v2, 
					    const int imm8);





}; 









extern "C" {






typedef union __declspec(intrin_type) __declspec(align(32)) __m256 { 
    float m256_f32[8];
} __m256;
    
typedef struct __declspec(intrin_type) __declspec(align(32)) {
    double m256d_f64[4]; 
} __m256d;

typedef union  __declspec(intrin_type) __declspec(align(32)) __m256i {
    __int8              m256i_i8[32];
    __int16             m256i_i16[16];
    __int32             m256i_i32[8];
    __int64             m256i_i64[4];
    unsigned __int8     m256i_u8[32];
    unsigned __int16    m256i_u16[16];
    unsigned __int32    m256i_u32[8];
    unsigned __int64    m256i_u64[4];
} __m256i;













































extern __m256d __cdecl _mm256_add_pd(__m256d m1, __m256d m2);









extern __m256 __cdecl _mm256_add_ps(__m256 m1, __m256 m2);












extern __m256d __cdecl _mm256_addsub_pd(__m256d m1, __m256d m2);












extern __m256 __cdecl _mm256_addsub_ps(__m256 m1, __m256 m2);








extern __m256d __cdecl _mm256_and_pd(__m256d m1, __m256d m2);








extern __m256 __cdecl _mm256_and_ps(__m256 m1, __m256 m2);








extern __m256d __cdecl _mm256_andnot_pd(__m256d m1, __m256d m2);








extern __m256 __cdecl _mm256_andnot_ps(__m256 m1, __m256 m2);













extern __m256d __cdecl _mm256_blend_pd(__m256d m1, __m256d m2, const int mask);













extern __m256 __cdecl _mm256_blend_ps(__m256 m1, __m256 m2, const int mask);









extern __m256d __cdecl _mm256_blendv_pd(__m256d m1, __m256d m2, __m256d m3);









extern __m256 __cdecl _mm256_blendv_ps(__m256 m1, __m256 m2, __m256 mask);








extern __m256d __cdecl _mm256_div_pd(__m256d m1, __m256d m2);








extern __m256 __cdecl _mm256_div_ps(__m256 m1, __m256 m2);














extern __m256 __cdecl _mm256_dp_ps(__m256 m1, __m256 m2, const int mask);








extern __m256d __cdecl _mm256_hadd_pd(__m256d m1, __m256d m2);








extern __m256 __cdecl _mm256_hadd_ps(__m256 m1, __m256 m2);








extern __m256d __cdecl _mm256_hsub_pd(__m256d m1, __m256d m2);








extern __m256 __cdecl _mm256_hsub_ps(__m256 m1, __m256 m2);








extern __m256d __cdecl _mm256_max_pd(__m256d m1, __m256d m2);








extern __m256 __cdecl _mm256_max_ps(__m256 m1, __m256 m2);








extern __m256d __cdecl _mm256_min_pd(__m256d m1, __m256d m2);








extern __m256 __cdecl _mm256_min_ps(__m256 m1, __m256 m2);









extern __m256d __cdecl _mm256_mul_pd(__m256d m1, __m256d m2);









extern __m256 __cdecl _mm256_mul_ps(__m256 m1, __m256 m2);








extern __m256d __cdecl _mm256_or_pd(__m256d m1, __m256d m2);








extern __m256 __cdecl _mm256_or_ps(__m256 m1, __m256 m2);











extern __m256d __cdecl _mm256_shuffle_pd(__m256d m1, __m256d m2, const int select);












extern __m256 __cdecl _mm256_shuffle_ps(__m256 m1, __m256 m2, const int select);








extern __m256d __cdecl _mm256_sub_pd(__m256d m1, __m256d m2);









extern __m256 __cdecl _mm256_sub_ps(__m256 m1, __m256 m2);








extern __m256d __cdecl _mm256_xor_pd(__m256d m1, __m256d m2);








extern __m256 __cdecl _mm256_xor_ps(__m256 m1, __m256 m2);














extern __m128d __cdecl _mm_cmp_pd(__m128d m1, __m128d m2, const int predicate);
extern __m256d __cdecl _mm256_cmp_pd(__m256d m1, __m256d m2, const int predicate);














extern __m128 __cdecl _mm_cmp_ps(__m128 m1, __m128 m2, const int predicate);
extern __m256 __cdecl _mm256_cmp_ps(__m256 m1, __m256 m2, const int predicate);












extern __m128d __cdecl _mm_cmp_sd(__m128d m1, __m128d m2, const int predicate);












extern __m128 __cdecl _mm_cmp_ss(__m128 m1, __m128 m2, const int predicate);








extern __m256d __cdecl _mm256_cvtepi32_pd(__m128i m1);








extern __m256  __cdecl _mm256_cvtepi32_ps(__m256i m1);









extern __m128  __cdecl _mm256_cvtpd_ps(__m256d m1);








extern __m256i __cdecl _mm256_cvtps_epi32(__m256 m1);









extern __m256d __cdecl _mm256_cvtps_pd(__m128 m1);












extern __m128i __cdecl _mm256_cvttpd_epi32(__m256d m1);








extern __m128i __cdecl _mm256_cvtpd_epi32(__m256d m1);












extern __m256i __cdecl _mm256_cvttps_epi32(__m256 m1);







extern __m128  __cdecl _mm256_extractf128_ps(__m256 m1, const int offset);
extern __m128d __cdecl _mm256_extractf128_pd(__m256d m1, const int offset);
extern __m128i __cdecl _mm256_extractf128_si256(__m256i m1, const int offset);






extern void __cdecl _mm256_zeroall(void);







extern void __cdecl _mm256_zeroupper(void);









extern __m256  __cdecl _mm256_permutevar_ps(__m256 m1, __m256i control);
extern __m128  __cdecl _mm_permutevar_ps(__m128 a, __m128i control);









extern __m256  __cdecl _mm256_permute_ps(__m256 m1, int control);
extern __m128  __cdecl _mm_permute_ps(__m128 a, int control);









extern __m256d __cdecl _mm256_permutevar_pd(__m256d m1, __m256i control);
extern __m128d __cdecl _mm_permutevar_pd(__m128d a, __m128i control);









extern __m256d __cdecl _mm256_permute_pd(__m256d m1, int control);
extern __m128d __cdecl _mm_permute_pd(__m128d a, int control);








extern __m256  __cdecl _mm256_permute2f128_ps(__m256 m1, __m256 m2, int control);
extern __m256d __cdecl _mm256_permute2f128_pd(__m256d m1, __m256d m2, int control);
extern __m256i __cdecl _mm256_permute2f128_si256(__m256i m1, __m256i m2, int control);








extern __m256  __cdecl _mm256_broadcast_ss(float const *a);
extern __m128  __cdecl _mm_broadcast_ss(float const *a);







extern __m256d __cdecl _mm256_broadcast_sd(double const *a);







extern __m256  __cdecl _mm256_broadcast_ps(__m128 const *a);
extern __m256d __cdecl _mm256_broadcast_pd(__m128d const *a);









extern __m256  __cdecl _mm256_insertf128_ps(__m256, __m128 a, int offset);
extern __m256d __cdecl _mm256_insertf128_pd(__m256d, __m128d a, int offset);
extern __m256i __cdecl _mm256_insertf128_si256(__m256i, __m128i a, int offset);








extern __m256d __cdecl _mm256_load_pd(double const *a);
extern void    __cdecl _mm256_store_pd(double *a, __m256d b);








extern __m256  __cdecl _mm256_load_ps(float const *a);
extern void    __cdecl _mm256_store_ps(float *a, __m256 b);








extern __m256d __cdecl _mm256_loadu_pd(double const *a);
extern void    __cdecl _mm256_storeu_pd(double *a, __m256d b);








extern __m256  __cdecl _mm256_loadu_ps(float const *a);
extern void    __cdecl _mm256_storeu_ps(float *a, __m256 b);








extern __m256i __cdecl _mm256_load_si256(__m256i const *a);
extern void    __cdecl _mm256_store_si256(__m256i *a, __m256i b);








extern __m256i __cdecl _mm256_loadu_si256(__m256i const *a);
extern void    __cdecl _mm256_storeu_si256(__m256i *a, __m256i b); 



















extern __m256d __cdecl _mm256_maskload_pd(double const *a, __m256i mask);
extern void    __cdecl _mm256_maskstore_pd(double *a, __m256i mask, __m256d b);
extern __m128d __cdecl _mm_maskload_pd(double const *a, __m128i mask);
extern void    __cdecl _mm_maskstore_pd(double *a, __m128i mask, __m128d b); 



















extern __m256  __cdecl _mm256_maskload_ps(float const *a, __m256i mask);
extern void    __cdecl _mm256_maskstore_ps(float *a, __m256i mask, __m256 b); 
extern __m128  __cdecl _mm_maskload_ps(float const *a, __m128i mask);
extern void    __cdecl _mm_maskstore_ps(float *a, __m128i mask, __m128 b); 







extern __m256  __cdecl _mm256_movehdup_ps(__m256 a);







extern __m256  __cdecl _mm256_moveldup_ps(__m256 a);







extern __m256d __cdecl _mm256_movedup_pd(__m256d a);









extern __m256i __cdecl _mm256_lddqu_si256(__m256i const *a);







extern void    __cdecl _mm256_stream_si256(__m256i *p, __m256i a);








extern void    __cdecl _mm256_stream_pd(double *p, __m256d a);








extern void    __cdecl _mm256_stream_ps(float *p, __m256 a);








extern __m256  __cdecl _mm256_rcp_ps(__m256 a);










extern __m256  __cdecl _mm256_rsqrt_ps(__m256 a);








extern __m256d __cdecl _mm256_sqrt_pd(__m256d a);








extern __m256  __cdecl _mm256_sqrt_ps(__m256 a);












extern __m256d __cdecl _mm256_round_pd(__m256d a, int iRoundMode);














extern __m256  __cdecl _mm256_round_ps(__m256 a, int iRoundMode);









extern __m256d __cdecl _mm256_unpackhi_pd(__m256d m1, __m256d m2);







extern __m256  __cdecl _mm256_unpackhi_ps(__m256 m1, __m256 m2); 







extern __m256d __cdecl _mm256_unpacklo_pd(__m256d m1, __m256d m2);







extern __m256  __cdecl _mm256_unpacklo_ps(__m256 m1, __m256 m2);









extern int     __cdecl _mm256_testz_si256(__m256i s1, __m256i s2);
extern int     __cdecl _mm256_testc_si256(__m256i s1, __m256i s2);
extern int     __cdecl _mm256_testnzc_si256(__m256i s1, __m256i s2);












extern int     __cdecl _mm256_testz_pd(__m256d s1, __m256d s2);
extern int     __cdecl _mm256_testc_pd(__m256d s1, __m256d s2);
extern int     __cdecl _mm256_testnzc_pd(__m256d s1, __m256d s2);
extern int     __cdecl _mm_testz_pd(__m128d s1, __m128d s2);
extern int     __cdecl _mm_testc_pd(__m128d s1, __m128d s2);
extern int     __cdecl _mm_testnzc_pd(__m128d s1, __m128d s2);












extern int     __cdecl _mm256_testz_ps(__m256 s1, __m256 s2);
extern int     __cdecl _mm256_testc_ps(__m256 s1, __m256 s2);
extern int     __cdecl _mm256_testnzc_ps(__m256 s1, __m256 s2);
extern int     __cdecl _mm_testz_ps(__m128 s1, __m128 s2);
extern int     __cdecl _mm_testc_ps(__m128 s1, __m128 s2);
extern int     __cdecl _mm_testnzc_ps(__m128 s1, __m128 s2);








extern int     __cdecl _mm256_movemask_pd(__m256d a);








extern int     __cdecl _mm256_movemask_ps(__m256 a);




extern __m256d __cdecl _mm256_setzero_pd(void);
extern __m256  __cdecl _mm256_setzero_ps(void);
extern __m256i __cdecl _mm256_setzero_si256(void);




extern __m256d __cdecl _mm256_set_pd(double, double, double, double);
extern __m256  __cdecl _mm256_set_ps(float, float, float, float, float, float, float, float);
extern __m256i __cdecl _mm256_set_epi8(char, char, char, char, char, char, char, char,
                                       char, char, char, char, char, char, char, char,
                                       char, char, char, char, char, char, char, char,
                                       char, char, char, char, char, char, char, char);
extern __m256i __cdecl _mm256_set_epi16(short, short, short, short, short, short, short, short,
                                        short, short, short, short, short, short, short, short);
extern __m256i __cdecl _mm256_set_epi32(int, int, int, int, int, int, int, int);
extern __m256i __cdecl _mm256_set_epi64x(long long, long long, long long, long long);

extern __m256d __cdecl _mm256_setr_pd(double, double, double, double);
extern __m256  __cdecl _mm256_setr_ps(float, float, float, float, float, float, float, float);
extern __m256i __cdecl _mm256_setr_epi8(char, char, char, char, char, char, char, char,
                                        char, char, char, char, char, char, char, char,
                                        char, char, char, char, char, char, char, char,
                                        char, char, char, char, char, char, char, char);
extern __m256i __cdecl _mm256_setr_epi16(short, short, short, short, short, short, short, short,
                                         short, short, short, short, short, short, short, short);
extern __m256i __cdecl _mm256_setr_epi32(int, int, int, int, int, int, int, int);
extern __m256i __cdecl _mm256_setr_epi64x(long long, long long, long long, long long);




extern __m256d __cdecl _mm256_set1_pd(double);
extern __m256  __cdecl _mm256_set1_ps(float);
extern __m256i __cdecl _mm256_set1_epi8(char);
extern __m256i __cdecl _mm256_set1_epi16(short);
extern __m256i __cdecl _mm256_set1_epi32(int);
extern __m256i __cdecl _mm256_set1_epi64x(long long);







extern __m256  __cdecl _mm256_castpd_ps(__m256d a);
extern __m256d __cdecl _mm256_castps_pd(__m256 a);
extern __m256i __cdecl _mm256_castps_si256(__m256 a);
extern __m256i __cdecl _mm256_castpd_si256(__m256d a);
extern __m256  __cdecl _mm256_castsi256_ps(__m256i a);
extern __m256d __cdecl _mm256_castsi256_pd(__m256i a);
extern __m128  __cdecl _mm256_castps256_ps128(__m256 a);
extern __m128d __cdecl _mm256_castpd256_pd128(__m256d a);
extern __m128i __cdecl _mm256_castsi256_si128(__m256i a);
extern __m256  __cdecl _mm256_castps128_ps256(__m128 a);
extern __m256d __cdecl _mm256_castpd128_pd256(__m128d a);
extern __m256i __cdecl _mm256_castsi128_si256(__m128i a);







 

extern unsigned __int64 __cdecl _xgetbv(unsigned int ext_ctrl_reg);
 

extern void __cdecl _xsetbv(unsigned int ext_ctrl_reg, unsigned __int64 val);
 
 




extern void __cdecl _xsave(void *mem, unsigned __int64 save_mask);









extern void __cdecl _xsaveopt(void *mem, unsigned __int64 save_mask);



 





extern void __cdecl _xrstor(void *mem, unsigned __int64 restore_mask);



 




extern void __cdecl _fxsave(void *mem);



 




extern void __cdecl _fxrstor(void *mem);











}; 





















#pragma once









extern "C" { 






























































































__m128 _mm_macc_ps(__m128, __m128, __m128);
__m128d _mm_macc_pd(__m128d, __m128d, __m128d);
__m128 _mm_macc_ss(__m128, __m128, __m128);
__m128d _mm_macc_sd(__m128d, __m128d, __m128d);
__m128 _mm_maddsub_ps(__m128, __m128, __m128);
__m128d _mm_maddsub_pd(__m128d, __m128d, __m128d);
__m128 _mm_msubadd_ps(__m128, __m128, __m128);
__m128d _mm_msubadd_pd(__m128d, __m128d, __m128d);
__m128 _mm_msub_ps(__m128, __m128, __m128);
__m128d _mm_msub_pd(__m128d, __m128d, __m128d);
__m128 _mm_msub_ss(__m128, __m128, __m128);
__m128d _mm_msub_sd(__m128d, __m128d, __m128d);
__m128 _mm_nmacc_ps(__m128, __m128, __m128);
__m128d _mm_nmacc_pd(__m128d, __m128d, __m128d);
__m128 _mm_nmacc_ss(__m128, __m128, __m128);
__m128d _mm_nmacc_sd(__m128d, __m128d, __m128d);
__m128 _mm_nmsub_ps(__m128, __m128, __m128);
__m128d _mm_nmsub_pd(__m128d, __m128d, __m128d);
__m128 _mm_nmsub_ss(__m128, __m128, __m128);
__m128d _mm_nmsub_sd(__m128d, __m128d, __m128d);


__m128i _mm_maccs_epi16(__m128i, __m128i, __m128i);
__m128i _mm_macc_epi16(__m128i, __m128i, __m128i);
__m128i _mm_maccsd_epi16(__m128i, __m128i, __m128i);
__m128i _mm_maccd_epi16(__m128i, __m128i, __m128i);
__m128i _mm_maccs_epi32(__m128i, __m128i, __m128i);
__m128i _mm_macc_epi32(__m128i, __m128i, __m128i);
__m128i _mm_maccslo_epi32(__m128i, __m128i, __m128i);
__m128i _mm_macclo_epi32(__m128i, __m128i, __m128i);
__m128i _mm_maccshi_epi32(__m128i, __m128i, __m128i);
__m128i _mm_macchi_epi32(__m128i, __m128i, __m128i);
__m128i _mm_maddsd_epi16(__m128i, __m128i, __m128i);
__m128i _mm_maddd_epi16(__m128i, __m128i, __m128i);


__m128i _mm_haddw_epi8(__m128i);
__m128i _mm_haddd_epi8(__m128i);
__m128i _mm_haddq_epi8(__m128i);
__m128i _mm_haddd_epi16(__m128i);
__m128i _mm_haddq_epi16(__m128i);
__m128i _mm_haddq_epi32(__m128i);
__m128i _mm_haddw_epu8(__m128i);
__m128i _mm_haddd_epu8(__m128i);
__m128i _mm_haddq_epu8(__m128i);
__m128i _mm_haddd_epu16(__m128i);
__m128i _mm_haddq_epu16(__m128i);
__m128i _mm_haddq_epu32(__m128i);
__m128i _mm_hsubw_epi8(__m128i);
__m128i _mm_hsubd_epi16(__m128i);
__m128i _mm_hsubq_epi32(__m128i);


__m128i _mm_cmov_si128(__m128i, __m128i, __m128i);
__m128i _mm_perm_epi8(__m128i, __m128i, __m128i);


__m128i _mm_rot_epi8(__m128i, __m128i);
__m128i _mm_rot_epi16(__m128i, __m128i);
__m128i _mm_rot_epi32(__m128i, __m128i);
__m128i _mm_rot_epi64(__m128i, __m128i);
__m128i _mm_roti_epi8(__m128i, int);
__m128i _mm_roti_epi16(__m128i, int);
__m128i _mm_roti_epi32(__m128i, int);
__m128i _mm_roti_epi64(__m128i, int);
__m128i _mm_shl_epi8(__m128i, __m128i);
__m128i _mm_shl_epi16(__m128i, __m128i);
__m128i _mm_shl_epi32(__m128i, __m128i);
__m128i _mm_shl_epi64(__m128i, __m128i);
__m128i _mm_sha_epi8(__m128i, __m128i);
__m128i _mm_sha_epi16(__m128i, __m128i);
__m128i _mm_sha_epi32(__m128i, __m128i);
__m128i _mm_sha_epi64(__m128i, __m128i);



__m128i _mm_com_epu8(__m128i, __m128i, int);
__m128i _mm_com_epu16(__m128i, __m128i, int);
__m128i _mm_com_epu32(__m128i, __m128i, int);
__m128i _mm_com_epu64(__m128i, __m128i, int);
__m128i _mm_com_epi8(__m128i, __m128i, int);
__m128i _mm_com_epi16(__m128i, __m128i, int);
__m128i _mm_com_epi32(__m128i, __m128i, int);
__m128i _mm_com_epi64(__m128i, __m128i, int);



__m128 _mm_frcz_ps(__m128);
__m128d _mm_frcz_pd(__m128d);
__m128 _mm_frcz_ss(__m128, __m128);
__m128d _mm_frcz_sd(__m128d, __m128d);








__m128 _mm_permute2_ps(__m128, __m128, __m128i, int);
__m128d _mm_permute2_pd(__m128d, __m128d, __m128i, int);



__m256 _mm256_macc_ps(__m256, __m256, __m256);
__m256d _mm256_macc_pd(__m256d, __m256d, __m256d);
__m256 _mm256_maddsub_ps(__m256, __m256, __m256);
__m256d _mm256_maddsub_pd(__m256d, __m256d, __m256d);
__m256 _mm256_msubadd_ps(__m256, __m256, __m256);
__m256d _mm256_msubadd_pd(__m256d, __m256d, __m256d);
__m256 _mm256_msub_ps(__m256, __m256, __m256);
__m256d _mm256_msub_pd(__m256d, __m256d, __m256d);
__m256 _mm256_nmacc_ps(__m256, __m256, __m256);
__m256d _mm256_nmacc_pd(__m256d, __m256d, __m256d);
__m256 _mm256_nmsub_ps(__m256, __m256, __m256);
__m256d _mm256_nmsub_pd(__m256d, __m256d, __m256d);
__m256i _mm256_cmov_si256(__m256i, __m256i, __m256i);
__m256 _mm256_frcz_ps(__m256);
__m256d _mm256_frcz_pd(__m256d);
__m256 _mm256_permute2_ps(__m256, __m256, __m256i, int);
__m256d _mm256_permute2_pd(__m256d, __m256d, __m256i, int);


void __llwpcb(void *);
void *__slwpcb();
void __lwpval32(unsigned int, unsigned int, unsigned int);
void __lwpval64(unsigned __int64, unsigned int, unsigned int);
unsigned char __lwpins32(unsigned int, unsigned int, unsigned int);
unsigned char __lwpins64(unsigned __int64, unsigned int, unsigned int);


}; 



























#pragma once



















 










































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































extern "C" { 




void _m_femms(void);
__m64 _m_pavgusb(__m64, __m64);
__m64 _m_pf2id(__m64);
__m64 _m_pfacc(__m64, __m64);
__m64 _m_pfadd(__m64, __m64);
__m64 _m_pfcmpeq(__m64, __m64);
__m64 _m_pfcmpge(__m64, __m64);
__m64 _m_pfcmpgt(__m64, __m64);
__m64 _m_pfmax(__m64, __m64);
__m64 _m_pfmin(__m64, __m64);
__m64 _m_pfmul(__m64, __m64);
__m64 _m_pfrcp(__m64);
__m64 _m_pfrcpit1(__m64, __m64);
__m64 _m_pfrcpit2(__m64, __m64);
__m64 _m_pfrsqrt(__m64);
__m64 _m_pfrsqit1(__m64, __m64);
__m64 _m_pfsub(__m64, __m64);
__m64 _m_pfsubr(__m64, __m64);
__m64 _m_pi2fd(__m64);
__m64 _m_pmulhrw(__m64, __m64);
void _m_prefetch(void*);
void _m_prefetchw(volatile const void*_Source);

__m64 _m_from_float(float);
float _m_to_float(__m64);



__m64 _m_pf2iw(__m64);
__m64 _m_pfnacc(__m64, __m64);
__m64 _m_pfpnacc(__m64, __m64);
__m64 _m_pi2fw(__m64);
__m64 _m_pswapd(__m64);


}; 










extern "C" {

































































































    



 void * __cdecl _alloca(size_t _Size);
int __cdecl abs(  int);


 unsigned short __cdecl _byteswap_ushort(  unsigned short value);
 unsigned long __cdecl _byteswap_ulong(  unsigned long value);
 unsigned __int64 __cdecl _byteswap_uint64(  unsigned __int64 value);

















void __cdecl __debugbreak(void);
void __cdecl _disable(void);


__int64 __emul(int,int);
unsigned __int64 __emulu(unsigned int,unsigned int);
void __cdecl _enable(void);


















long __cdecl _InterlockedDecrement(long volatile *);







long _InterlockedExchange(long volatile *, long);









short _InterlockedExchange16(short volatile *, short);
char _InterlockedExchange8(char volatile *, char);
long _InterlockedExchangeAdd(long volatile *, long);







short _InterlockedExchangeAdd16(short volatile *, short);
char _InterlockedExchangeAdd8(char volatile *, char);
long _InterlockedCompareExchange (long volatile *, long, long);












__int64 _InterlockedCompareExchange64(__int64 volatile *, __int64, __int64);

long __cdecl _InterlockedIncrement(long volatile *);







long _InterlockedOr(long volatile *, long);
char _InterlockedOr8(char volatile *, char);
short _InterlockedOr16(short volatile *, short);









long _InterlockedXor(long volatile *, long);
char _InterlockedXor8(char volatile *, char);
short _InterlockedXor16(short volatile *, short);









long _InterlockedAnd(long volatile *, long);
char _InterlockedAnd8(char volatile *, char);
short _InterlockedAnd16(short volatile *, short);









long _InterlockedAddLargeStatistic(__int64 volatile *, long);
int __cdecl _inp(unsigned short);
int __cdecl inp(unsigned short);
unsigned long __cdecl _inpd(unsigned short);
unsigned long __cdecl inpd(unsigned short);
unsigned short __cdecl _inpw(unsigned short);
unsigned short __cdecl inpw(unsigned short);







long __cdecl labs(  long);







 unsigned long __cdecl _lrotl(  unsigned long,  int);
 unsigned long __cdecl _lrotr(  unsigned long,  int);
unsigned __int64 __ll_lshift(unsigned __int64,int);
__int64 __ll_rshift(__int64,int);







































 int __cdecl memcmp(   const void *,   const void *,  size_t _Size);
void * __cdecl memcpy(    void *,   const void *,  size_t _Size);
void * __cdecl memset(    void *,  int,  size_t _Size);




int __cdecl _outp(unsigned short,int);
int __cdecl outp(unsigned short,int);
unsigned long __cdecl _outpd(unsigned short,unsigned long);
unsigned long __cdecl outpd(unsigned short,unsigned long);
unsigned short __cdecl _outpw(unsigned short,unsigned short);
unsigned short __cdecl outpw(unsigned short,unsigned short);











void * _ReturnAddress(void);



 unsigned int __cdecl _rotl(  unsigned int,  int);

 unsigned int __cdecl _rotr(  unsigned int,  int);



int __cdecl _setjmp(jmp_buf);











 int __cdecl strcmp(   const char *,   const char *);
 size_t __cdecl strlen(   const char *);

char * __cdecl strset(    char *,  int);







unsigned __int64 __ull_rshift(unsigned __int64,int);






void * _AddressOfReturnAddress(void);



void _m_empty(void);
__m64 _m_from_int(int);
int _m_to_int(__m64);
__m64 _m_packsswb(__m64,__m64);
__m64 _m_packssdw(__m64,__m64);
__m64 _m_packuswb(__m64,__m64);
__m64 _m_punpckhbw(__m64,__m64);
__m64 _m_punpckhwd(__m64,__m64);
__m64 _m_punpckhdq(__m64,__m64);
__m64 _m_punpcklbw(__m64,__m64);
__m64 _m_punpcklwd(__m64,__m64);
__m64 _m_punpckldq(__m64,__m64);
__m64 _m_paddb(__m64,__m64);
__m64 _m_paddw(__m64,__m64);
__m64 _m_paddd(__m64,__m64);
__m64 _m_paddsb(__m64,__m64);
__m64 _m_paddsw(__m64,__m64);
__m64 _m_paddusb(__m64,__m64);
__m64 _m_paddusw(__m64,__m64);
__m64 _m_psubb(__m64,__m64);
__m64 _m_psubw(__m64,__m64);
__m64 _m_psubd(__m64,__m64);
__m64 _m_psubsb(__m64,__m64);
__m64 _m_psubsw(__m64,__m64);
__m64 _m_psubusb(__m64,__m64);
__m64 _m_psubusw(__m64,__m64);
__m64 _m_pmaddwd(__m64,__m64);
__m64 _m_pmulhw(__m64,__m64);
__m64 _m_pmullw(__m64,__m64);
__m64 _m_psllw(__m64,__m64);
__m64 _m_psllwi(__m64,int);
__m64 _m_pslld(__m64,__m64);
__m64 _m_pslldi(__m64,int);
__m64 _m_psllq(__m64,__m64);
__m64 _m_psllqi(__m64,int);
__m64 _m_psraw(__m64,__m64);
__m64 _m_psrawi(__m64,int);
__m64 _m_psrad(__m64,__m64);
__m64 _m_psradi(__m64,int);
__m64 _m_psrlw(__m64,__m64);
__m64 _m_psrlwi(__m64,int);
__m64 _m_psrld(__m64,__m64);
__m64 _m_psrldi(__m64,int);
__m64 _m_psrlq(__m64,__m64);
__m64 _m_psrlqi(__m64,int);
__m64 _m_pand(__m64,__m64);
__m64 _m_pandn(__m64,__m64);
__m64 _m_por(__m64,__m64);
__m64 _m_pxor(__m64,__m64);
__m64 _m_pcmpeqb(__m64,__m64);
__m64 _m_pcmpeqw(__m64,__m64);
__m64 _m_pcmpeqd(__m64,__m64);
__m64 _m_pcmpgtb(__m64,__m64);
__m64 _m_pcmpgtw(__m64,__m64);
__m64 _m_pcmpgtd(__m64,__m64);
__m64 _mm_setzero_si64(void);
__m64 _mm_set_pi32(int,int);
__m64 _mm_set_pi16(short,short,short,short);
__m64 _mm_set_pi8(char,char,char,char,char,char,char,char);
__m64 _mm_set1_pi32(int);
__m64 _mm_set1_pi16(short);
__m64 _mm_set1_pi8(char);
__m64 _mm_setr_pi32(int,int);
__m64 _mm_setr_pi16(short,short,short,short);
__m64 _mm_setr_pi8(char,char,char,char,char,char,char,char);
int _m_pextrw(__m64,int);
__m64 _m_pinsrw(__m64,int,int);
__m64 _m_pmaxsw(__m64,__m64);
__m64 _m_pmaxub(__m64,__m64);
__m64 _m_pminsw(__m64,__m64);
__m64 _m_pminub(__m64,__m64);
int _m_pmovmskb(__m64);
__m64 _m_pmulhuw(__m64,__m64);
__m64 _m_pshufw(__m64,int);
void _m_maskmovq(__m64,__m64,char*);
__m64 _m_pavgb(__m64,__m64);
__m64 _m_pavgw(__m64,__m64);
__m64 _m_psadbw(__m64,__m64);
__m64 _m_from_float(float);
float _m_to_float(__m64);
__m128 _mm_add_ss(__m128,__m128);
__m128 _mm_add_ps(__m128,__m128);
__m128 _mm_sub_ss(__m128,__m128);
__m128 _mm_sub_ps(__m128,__m128);
__m128 _mm_mul_ss(__m128,__m128);
__m128 _mm_mul_ps(__m128,__m128);
__m128 _mm_div_ss(__m128,__m128);
__m128 _mm_div_ps(__m128,__m128);
__m128 _mm_sqrt_ss(__m128);
__m128 _mm_sqrt_ps(__m128);
__m128 _mm_rcp_ss(__m128);
__m128 _mm_rcp_ps(__m128);
__m128 _mm_rsqrt_ss(__m128);
__m128 _mm_rsqrt_ps(__m128);
__m128 _mm_min_ss(__m128,__m128);
__m128 _mm_min_ps(__m128,__m128);
__m128 _mm_max_ss(__m128,__m128);
__m128 _mm_max_ps(__m128,__m128);
__m128 _mm_and_ps(__m128,__m128);
__m128 _mm_andnot_ps(__m128,__m128);
__m128 _mm_or_ps(__m128,__m128);
__m128 _mm_xor_ps(__m128,__m128);
__m128 _mm_cmpeq_ss(__m128,__m128);
__m128 _mm_cmpeq_ps(__m128,__m128);
__m128 _mm_cmplt_ss(__m128,__m128);
__m128 _mm_cmplt_ps(__m128,__m128);
__m128 _mm_cmple_ss(__m128,__m128);
__m128 _mm_cmple_ps(__m128,__m128);
__m128 _mm_cmpgt_ss(__m128,__m128);
__m128 _mm_cmpgt_ps(__m128,__m128);
__m128 _mm_cmpge_ss(__m128,__m128);
__m128 _mm_cmpge_ps(__m128,__m128);
__m128 _mm_cmpneq_ss(__m128,__m128);
__m128 _mm_cmpneq_ps(__m128,__m128);
__m128 _mm_cmpnlt_ss(__m128,__m128);
__m128 _mm_cmpnlt_ps(__m128,__m128);
__m128 _mm_cmpnle_ss(__m128,__m128);
__m128 _mm_cmpnle_ps(__m128,__m128);
__m128 _mm_cmpngt_ss(__m128,__m128);
__m128 _mm_cmpngt_ps(__m128,__m128);
__m128 _mm_cmpnge_ss(__m128,__m128);
__m128 _mm_cmpnge_ps(__m128,__m128);
__m128 _mm_cmpord_ss(__m128,__m128);
__m128 _mm_cmpord_ps(__m128,__m128);
__m128 _mm_cmpunord_ss(__m128,__m128);
__m128 _mm_cmpunord_ps(__m128,__m128);
int _mm_comieq_ss(__m128,__m128);
int _mm_comilt_ss(__m128,__m128);
int _mm_comile_ss(__m128,__m128);
int _mm_comigt_ss(__m128,__m128);
int _mm_comige_ss(__m128,__m128);
int _mm_comineq_ss(__m128,__m128);
int _mm_ucomieq_ss(__m128,__m128);
int _mm_ucomilt_ss(__m128,__m128);
int _mm_ucomile_ss(__m128,__m128);
int _mm_ucomigt_ss(__m128,__m128);
int _mm_ucomige_ss(__m128,__m128);
int _mm_ucomineq_ss(__m128,__m128);
int _mm_cvt_ss2si(__m128);
__m64 _mm_cvt_ps2pi(__m128);
int _mm_cvtt_ss2si(__m128);
__m64 _mm_cvtt_ps2pi(__m128);
__m128 _mm_cvt_si2ss(__m128,int);
__m128 _mm_cvt_pi2ps(__m128,__m64);
__m128 _mm_shuffle_ps(__m128,__m128,unsigned int);
__m128 _mm_unpackhi_ps(__m128,__m128);
__m128 _mm_unpacklo_ps(__m128,__m128);
__m128 _mm_loadh_pi(__m128,__m64 const*);
void _mm_storeh_pi(__m64*,__m128);
__m128 _mm_loadl_pi(__m128,__m64 const*);
void _mm_storel_pi(__m64*,__m128);
int _mm_movemask_ps(__m128);
__m128 _mm_set_ss(float);
__m128 _mm_set_ps1(float);
__m128 _mm_set_ps(float,float,float,float);
__m128 _mm_setr_ps(float,float,float,float);
__m128 _mm_setzero_ps(void);
__m128 _mm_load_ss(float const*);
__m128 _mm_load_ps1(float const*);
__m128 _mm_load_ps(float const*);
__m128 _mm_loadr_ps(float const*);
__m128 _mm_loadu_ps(float const*);
__m128 _mm_move_ss(__m128,__m128);
void _mm_store_ss(float*,__m128);
void _mm_store_ps1(float*,__m128);
void _mm_store_ps(float*,__m128);
void _mm_storer_ps(float*,__m128);
void _mm_storeu_ps(float*,__m128);
void _mm_prefetch(char const*,int);
void _mm_stream_pi(__m64*,__m64);
void _mm_stream_ps(float*,__m128);
void _mm_sfence(void);
unsigned int _mm_getcsr(void);
void _mm_setcsr(unsigned int);
__m128 _mm_movelh_ps(__m128,__m128);
__m128 _mm_movehl_ps(__m128,__m128);
void _m_prefetch(void*);
void _m_prefetchw(volatile const void*_Source);
void _m_femms(void);
__m64 _m_pavgusb(__m64,__m64);
__m64 _m_pf2id(__m64);
__m64 _m_pfacc(__m64,__m64);
__m64 _m_pfadd(__m64,__m64);
__m64 _m_pfcmpeq(__m64,__m64);
__m64 _m_pfcmpge(__m64,__m64);
__m64 _m_pfcmpgt(__m64,__m64);
__m64 _m_pfmax(__m64,__m64);
__m64 _m_pfmin(__m64,__m64);
__m64 _m_pfmul(__m64,__m64);
__m64 _m_pfrcp(__m64);
__m64 _m_pfrcpit1(__m64,__m64);
__m64 _m_pfrcpit2(__m64,__m64);
__m64 _m_pfrsqrt(__m64);
__m64 _m_pfrsqit1(__m64,__m64);
__m64 _m_pfsub(__m64,__m64);
__m64 _m_pfsubr(__m64,__m64);
__m64 _m_pi2fd(__m64);
__m64 _m_pmulhrw(__m64,__m64);
__m64 _m_pf2iw(__m64);
__m64 _m_pfnacc(__m64,__m64);
__m64 _m_pfpnacc(__m64,__m64);
__m64 _m_pi2fw(__m64);
__m64 _m_pswapd(__m64);
__m128d _mm_add_sd(__m128d,__m128d);
__m128d _mm_add_pd(__m128d,__m128d);
__m128d _mm_div_sd(__m128d,__m128d);
__m128d _mm_div_pd(__m128d,__m128d);
__m128d _mm_max_sd(__m128d,__m128d);
__m128d _mm_max_pd(__m128d,__m128d);
__m128d _mm_min_sd(__m128d,__m128d);
__m128d _mm_min_pd(__m128d,__m128d);
__m128d _mm_mul_sd(__m128d,__m128d);
__m128d _mm_mul_pd(__m128d,__m128d);
__m128d _mm_sqrt_sd(__m128d, __m128d);
__m128d _mm_sqrt_pd(__m128d);
__m128d _mm_sub_sd(__m128d,__m128d);
__m128d _mm_sub_pd(__m128d,__m128d);
__m128d _mm_and_pd(__m128d,__m128d);
__m128d _mm_andnot_pd(__m128d,__m128d);
__m128d _mm_or_pd(__m128d,__m128d);
__m128d _mm_xor_pd(__m128d,__m128d);
__m128d _mm_cmpeq_sd(__m128d,__m128d);
__m128d _mm_cmpeq_pd(__m128d,__m128d);
__m128d _mm_cmplt_sd(__m128d,__m128d);
__m128d _mm_cmplt_pd(__m128d,__m128d);
__m128d _mm_cmple_sd(__m128d,__m128d);
__m128d _mm_cmple_pd(__m128d,__m128d);
__m128d _mm_cmpgt_sd(__m128d,__m128d);
__m128d _mm_cmpgt_pd(__m128d,__m128d);
__m128d _mm_cmpge_sd(__m128d,__m128d);
__m128d _mm_cmpge_pd(__m128d,__m128d);
__m128d _mm_cmpneq_sd(__m128d,__m128d);
__m128d _mm_cmpneq_pd(__m128d,__m128d);
__m128d _mm_cmpnlt_sd(__m128d,__m128d);
__m128d _mm_cmpnlt_pd(__m128d,__m128d);
__m128d _mm_cmpnle_sd(__m128d,__m128d);
__m128d _mm_cmpnle_pd(__m128d,__m128d);
__m128d _mm_cmpngt_sd(__m128d,__m128d);
__m128d _mm_cmpngt_pd(__m128d,__m128d);
__m128d _mm_cmpnge_sd(__m128d,__m128d);
__m128d _mm_cmpnge_pd(__m128d,__m128d);
__m128d _mm_cmpord_sd(__m128d,__m128d);
__m128d _mm_cmpord_pd(__m128d,__m128d);
__m128d _mm_cmpunord_sd(__m128d,__m128d);
__m128d _mm_cmpunord_pd(__m128d,__m128d);
int _mm_comieq_sd(__m128d,__m128d);
int _mm_comilt_sd(__m128d,__m128d);
int _mm_comile_sd(__m128d,__m128d);
int _mm_comigt_sd(__m128d,__m128d);
int _mm_comige_sd(__m128d,__m128d);
int _mm_comineq_sd(__m128d,__m128d);
int _mm_ucomieq_sd(__m128d,__m128d);
int _mm_ucomilt_sd(__m128d,__m128d);
int _mm_ucomile_sd(__m128d,__m128d);
int _mm_ucomigt_sd(__m128d,__m128d);
int _mm_ucomige_sd(__m128d,__m128d);
int _mm_ucomineq_sd(__m128d,__m128d);
__m128 _mm_cvtpd_ps(__m128d);
__m128d _mm_cvtps_pd(__m128);
__m128d _mm_cvtepi32_pd(__m128i);
__m128i _mm_cvtpd_epi32(__m128d);
int _mm_cvtsd_si32(__m128d);
__m128 _mm_cvtsd_ss(__m128,__m128d);
__m128d _mm_cvtsi32_sd(__m128d,int);
__m128d _mm_cvtss_sd(__m128d,__m128);
__m128i _mm_cvttpd_epi32(__m128d);
int _mm_cvttsd_si32(__m128d);
__m128 _mm_cvtepi32_ps(__m128i);
__m128i _mm_cvtps_epi32(__m128);
__m128i _mm_cvttps_epi32(__m128);
__m64 _mm_cvtpd_pi32(__m128d);
__m64 _mm_cvttpd_pi32(__m128d);
__m128d _mm_cvtpi32_pd(__m64);
__m128d _mm_unpackhi_pd(__m128d,__m128d);
__m128d _mm_unpacklo_pd(__m128d,__m128d);
int _mm_movemask_pd(__m128d);
__m128d _mm_shuffle_pd(__m128d,__m128d,int);
__m128d _mm_load_pd(double const*);
__m128d _mm_load1_pd(double const*);
__m128d _mm_loadr_pd(double const*);
__m128d _mm_loadu_pd(double const*);
__m128d _mm_load_sd(double const*);
__m128d _mm_loadh_pd(__m128d,double const*);
__m128d _mm_loadl_pd(__m128d,double const*);
__m128d _mm_set_sd(double);
__m128d _mm_set1_pd(double);
__m128d _mm_set_pd(double,double);
__m128d _mm_setr_pd(double,double);
__m128d _mm_setzero_pd(void);
__m128d _mm_move_sd(__m128d,__m128d);
void _mm_store_sd(double*,__m128d);
void _mm_store1_pd(double*,__m128d);
void _mm_store_pd(double*,__m128d);
void _mm_storeu_pd(double*,__m128d);
void _mm_storer_pd(double*,__m128d);
void _mm_storeh_pd(double*,__m128d);
void _mm_storel_pd(double*,__m128d);
__m128i _mm_add_epi8(__m128i,__m128i);
__m128i _mm_add_epi16(__m128i,__m128i);
__m128i _mm_add_epi32(__m128i,__m128i);
__m64 _mm_add_si64(__m64,__m64);
__m128i _mm_add_epi64(__m128i,__m128i);
__m128i _mm_adds_epi8(__m128i,__m128i);
__m128i _mm_adds_epi16(__m128i,__m128i);
__m128i _mm_adds_epu8(__m128i,__m128i);
__m128i _mm_adds_epu16(__m128i,__m128i);
__m128i _mm_avg_epu8(__m128i,__m128i);
__m128i _mm_avg_epu16(__m128i,__m128i);
__m128i _mm_madd_epi16(__m128i,__m128i);
__m128i _mm_max_epi16(__m128i,__m128i);
__m128i _mm_max_epu8(__m128i,__m128i);
__m128i _mm_min_epi16(__m128i,__m128i);
__m128i _mm_min_epu8(__m128i,__m128i);
__m128i _mm_mulhi_epi16(__m128i,__m128i);
__m128i _mm_mulhi_epu16(__m128i,__m128i);
__m128i _mm_mullo_epi16(__m128i,__m128i);
__m64 _mm_mul_su32(__m64,__m64);
__m128i _mm_mul_epu32(__m128i,__m128i);
__m128i _mm_sad_epu8(__m128i,__m128i);
__m128i _mm_sub_epi8(__m128i,__m128i);
__m128i _mm_sub_epi16(__m128i,__m128i);
__m128i _mm_sub_epi32(__m128i,__m128i);
__m64 _mm_sub_si64(__m64,__m64);
__m128i _mm_sub_epi64(__m128i,__m128i);
__m128i _mm_subs_epi8(__m128i,__m128i);
__m128i _mm_subs_epi16(__m128i,__m128i);
__m128i _mm_subs_epu8(__m128i,__m128i);
__m128i _mm_subs_epu16(__m128i,__m128i);
__m128i _mm_andnot_si128(__m128i,__m128i);
__m128i _mm_and_si128(__m128i,__m128i);
__m128i _mm_or_si128(__m128i,__m128i);
__m128i _mm_xor_si128(__m128i,__m128i);
__m128i _mm_slli_si128(__m128i,int);
__m128i _mm_slli_epi16(__m128i,int);
__m128i _mm_sll_epi16(__m128i,__m128i);
__m128i _mm_slli_epi32(__m128i,int);
__m128i _mm_sll_epi32(__m128i,__m128i);
__m128i _mm_slli_epi64(__m128i,int);
__m128i _mm_sll_epi64(__m128i,__m128i);
__m128i _mm_srai_epi16(__m128i,int);
__m128i _mm_sra_epi16(__m128i,__m128i);
__m128i _mm_srai_epi32(__m128i,int);
__m128i _mm_sra_epi32(__m128i,__m128i);
__m128i _mm_srli_si128(__m128i,int);
__m128i _mm_srli_epi16(__m128i,int);
__m128i _mm_srl_epi16(__m128i,__m128i);
__m128i _mm_srli_epi32(__m128i,int);
__m128i _mm_srl_epi32(__m128i,__m128i);
__m128i _mm_srli_epi64(__m128i,int);
__m128i _mm_srl_epi64(__m128i,__m128i);
__m128i _mm_cmpeq_epi8(__m128i,__m128i);
__m128i _mm_cmpeq_epi16(__m128i,__m128i);
__m128i _mm_cmpeq_epi32(__m128i,__m128i);
__m128i _mm_cmpgt_epi8(__m128i,__m128i);
__m128i _mm_cmpgt_epi16(__m128i,__m128i);
__m128i _mm_cmpgt_epi32(__m128i,__m128i);
__m128i _mm_cmplt_epi8(__m128i,__m128i);
__m128i _mm_cmplt_epi16(__m128i,__m128i);
__m128i _mm_cmplt_epi32(__m128i,__m128i);
__m128i _mm_cvtsi32_si128(int);
int _mm_cvtsi128_si32(__m128i);
__m128i _mm_packs_epi16(__m128i,__m128i);
__m128i _mm_packs_epi32(__m128i,__m128i);
__m128i _mm_packus_epi16(__m128i,__m128i);
int _mm_extract_epi16(__m128i,int);
__m128i _mm_insert_epi16(__m128i,int,int);
int _mm_movemask_epi8(__m128i);
__m128i _mm_shuffle_epi32(__m128i,int);
__m128i _mm_shufflehi_epi16(__m128i,int);
__m128i _mm_shufflelo_epi16(__m128i,int);
__m128i _mm_unpackhi_epi8(__m128i,__m128i);
__m128i _mm_unpackhi_epi16(__m128i,__m128i);
__m128i _mm_unpackhi_epi32(__m128i,__m128i);
__m128i _mm_unpackhi_epi64(__m128i,__m128i);
__m128i _mm_unpacklo_epi8(__m128i,__m128i);
__m128i _mm_unpacklo_epi16(__m128i,__m128i);
__m128i _mm_unpacklo_epi32(__m128i,__m128i);
__m128i _mm_unpacklo_epi64(__m128i,__m128i);
__m128i _mm_load_si128(__m128i const*);
__m128i _mm_loadu_si128(__m128i const*);
__m128i _mm_loadl_epi64(__m128i const*);
__m128i _mm_set_epi64(__m64,__m64);
__m128i _mm_set_epi32(int,int,int,int);
__m128i _mm_set_epi16(short,short,short,short,short,short,short,short);
__m128i _mm_set_epi8(char,char,char,char,char,char,char,char,char,char,char,char,char,char,char,char);
__m128i _mm_set1_epi64(__m64);
__m128i _mm_set1_epi32(int);
__m128i _mm_set1_epi16(short);
__m128i _mm_set1_epi8(char);
__m128i _mm_setl_epi64(__m128i);
__m128i _mm_setr_epi64(__m64,__m64);
__m128i _mm_setr_epi32(int,int,int,int);
__m128i _mm_setr_epi16(short,short,short,short,short,short,short,short);
__m128i _mm_setr_epi8(char,char,char,char,char,char,char,char,char,char,char,char,char,char,char,char);
__m128i _mm_setzero_si128(void);
void _mm_store_si128(__m128i*,__m128i);
void _mm_storeu_si128(__m128i*,__m128i);
void _mm_storel_epi64(__m128i*,__m128i);
void _mm_maskmoveu_si128(__m128i,__m128i,char*);
__m128i _mm_move_epi64(__m128i);
__m128i _mm_movpi64_epi64(__m64);
__m64 _mm_movepi64_pi64(__m128i);
void _mm_stream_pd(double*,__m128d);
void _mm_stream_si128(__m128i*,__m128i);
void _mm_clflush(void const *);
void _mm_lfence(void);
void _mm_mfence(void);
void _mm_stream_si32(int*,int);
void _mm_pause(void);
__m128 _mm_addsub_ps(__m128,__m128);
__m128d _mm_addsub_pd(__m128d,__m128d);
__m128 _mm_hadd_ps(__m128,__m128);
__m128d _mm_hadd_pd(__m128d,__m128d);
__m128 _mm_hsub_ps(__m128,__m128);
__m128d _mm_hsub_pd(__m128d,__m128d);
__m128i _mm_lddqu_si128(__m128i const*);
void _mm_monitor(void const*,unsigned int,unsigned int);
__m128d _mm_movedup_pd(__m128d);
__m128d _mm_loaddup_pd(double const*);
__m128 _mm_movehdup_ps(__m128);
__m128 _mm_moveldup_ps(__m128);
void _mm_mwait(unsigned int,unsigned int);
__m128i _mm_hadd_epi16 (__m128i a, __m128i b);
__m128i _mm_hadd_epi32 (__m128i a, __m128i b);
__m128i _mm_hadds_epi16 (__m128i a, __m128i b);
__m64 _mm_hadd_pi16 (__m64 a, __m64 b);
__m64 _mm_hadd_pi32 (__m64 a, __m64 b);
__m64 _mm_hadds_pi16 (__m64 a, __m64 b);
__m128i _mm_hsub_epi16 (__m128i a, __m128i b);
__m128i _mm_hsub_epi32 (__m128i a, __m128i b);
__m128i _mm_hsubs_epi16 (__m128i a, __m128i b);
__m64 _mm_hsub_pi16 (__m64 a, __m64 b);
__m64 _mm_hsub_pi32 (__m64 a, __m64 b);
__m64 _mm_hsubs_pi16 (__m64 a, __m64 b);
__m128i _mm_maddubs_epi16 (__m128i a, __m128i b);
__m64 _mm_maddubs_pi16 (__m64 a, __m64 b);
__m128i _mm_mulhrs_epi16 (__m128i a, __m128i b);
__m64 _mm_mulhrs_pi16 (__m64 a, __m64 b);
__m128i _mm_shuffle_epi8 (__m128i a, __m128i b);
__m64 _mm_shuffle_pi8 (__m64 a, __m64 b);
__m128i _mm_sign_epi8 (__m128i a, __m128i b);
__m128i _mm_sign_epi16 (__m128i a, __m128i b);
__m128i _mm_sign_epi32 (__m128i a, __m128i b);
__m64 _mm_sign_pi8 (__m64 a, __m64 b);
__m64 _mm_sign_pi16 (__m64 a, __m64 b);
__m64 _mm_sign_pi32 (__m64 a, __m64 b);
__m128i _mm_alignr_epi8 (__m128i a, __m128i b, int n);
__m64 _mm_alignr_pi8 (__m64 a, __m64 b, int n);
__m128i _mm_abs_epi8 (__m128i a);
__m128i _mm_abs_epi16 (__m128i a);
__m128i _mm_abs_epi32 (__m128i a);
__m64 _mm_abs_pi8 (__m64 a);
__m64 _mm_abs_pi16 (__m64 a);
__m64 _mm_abs_pi32 (__m64 a);








__m128i _mm_blend_epi16 (__m128i v1, __m128i v2, const int mask);
__m128i _mm_blendv_epi8 (__m128i v1, __m128i v2, __m128i mask);
__m128 _mm_blend_ps (__m128 v1, __m128 v2, const int mask);
__m128 _mm_blendv_ps(__m128 v1, __m128 v2, __m128 v3);
__m128d _mm_blend_pd (__m128d v1, __m128d v2, const int mask);
__m128d _mm_blendv_pd(__m128d v1, __m128d v2, __m128d v3);
__m128 _mm_dp_ps(__m128 val1, __m128 val2, const int mask);
__m128d _mm_dp_pd(__m128d val1, __m128d val2, const int mask);
__m128i _mm_cmpeq_epi64(__m128i val1, __m128i val2);
__m128i _mm_min_epi8 (__m128i val1, __m128i val2);
__m128i _mm_max_epi8 (__m128i val1, __m128i val2);
__m128i _mm_min_epu16(__m128i val1, __m128i val2);
__m128i _mm_max_epu16(__m128i val1, __m128i val2);
__m128i _mm_min_epi32(__m128i val1, __m128i val2);
__m128i _mm_max_epi32(__m128i val1, __m128i val2);
__m128i _mm_min_epu32(__m128i val1, __m128i val2);
__m128i _mm_max_epu32(__m128i val1, __m128i val2);
__m128i _mm_mullo_epi32(__m128i a, __m128i b);
__m128i _mm_mul_epi32(__m128i a, __m128i b);
int _mm_testz_si128(__m128i mask, __m128i val);
int _mm_testc_si128(__m128i mask, __m128i val);
int _mm_testnzc_si128(__m128i mask, __m128i s2);
__m128 _mm_insert_ps(__m128 dst, __m128 src, const int ndx);
int _mm_extract_ps(__m128 src, const int ndx);
__m128i _mm_insert_epi8 (__m128i dst, int s, const int ndx);
__m128i _mm_insert_epi32(__m128i dst, int s, const int ndx);
int _mm_extract_epi8 (__m128i src, const int ndx);
int _mm_extract_epi32(__m128i src, const int ndx);
__m128i _mm_minpos_epu16(__m128i shortValues);
__m128d _mm_round_pd(__m128d val, int iRoundMode);
__m128d _mm_round_sd(__m128d dst, __m128d val, int iRoundMode);
__m128 _mm_round_ps(__m128 val, int iRoundMode);
__m128 _mm_round_ss(__m128 dst, __m128 val, int iRoundMode);
__m128i _mm_cvtepi8_epi32 (__m128i byteValues);
__m128i _mm_cvtepi16_epi32(__m128i shortValues);
__m128i _mm_cvtepi8_epi64 (__m128i byteValues);
__m128i _mm_cvtepi32_epi64(__m128i intValues);
__m128i _mm_cvtepi16_epi64(__m128i shortValues);
__m128i _mm_cvtepi8_epi16 (__m128i byteValues);
__m128i _mm_cvtepu8_epi32 (__m128i byteValues);
__m128i _mm_cvtepu16_epi32(__m128i shortValues);
__m128i _mm_cvtepu8_epi64 (__m128i shortValues);
__m128i _mm_cvtepu32_epi64(__m128i intValues);
__m128i _mm_cvtepu16_epi64(__m128i shortValues);
__m128i _mm_cvtepu8_epi16 (__m128i byteValues);
__m128i _mm_packus_epi32(__m128i val1, __m128i val2);
__m128i _mm_mpsadbw_epu8(__m128i s1, __m128i s2, const int msk);
__m128i _mm_stream_load_si128(__m128i* v1);


__m128i _mm_cmpistrm (__m128i a, __m128i b, const int mode);
int _mm_cmpistri (__m128i a, __m128i b, const int mode);
__m128i _mm_cmpestrm (__m128i a, int la, __m128i b, int lb, const int mode);
int _mm_cmpestri (__m128i a, int la, __m128i b, int lb, const int mode);
int _mm_cmpistrz (__m128i a, __m128i b, const int mode);
int _mm_cmpistrc (__m128i a, __m128i b, const int mode);
int _mm_cmpistrs (__m128i a, __m128i b, const int mode);
int _mm_cmpistro (__m128i a, __m128i b, const int mode);
int _mm_cmpistra (__m128i a, __m128i b, const int mode);
int _mm_cmpestrz (__m128i a, int la, __m128i b, int lb, const int mode);
int _mm_cmpestrc (__m128i a, int la, __m128i b, int lb, const int mode);
int _mm_cmpestrs (__m128i a, int la, __m128i b, int lb, const int mode);
int _mm_cmpestro (__m128i a, int la, __m128i b, int lb, const int mode);
int _mm_cmpestra (__m128i a, int la, __m128i b, int lb, const int mode);
__m128i _mm_cmpgt_epi64(__m128i val1, __m128i val2);
int _mm_popcnt_u32(unsigned int v);

unsigned int _mm_crc32_u8 (unsigned int crc, unsigned char v);
unsigned int _mm_crc32_u16(unsigned int crc, unsigned short v);
unsigned int _mm_crc32_u32(unsigned int crc, unsigned int v);

void _WriteBarrier(void);
void _ReadWriteBarrier(void);










unsigned long __readcr0(void);
unsigned long __readcr2(void);
unsigned long __readcr3(void);
unsigned long __readcr4(void);
unsigned long __readcr8(void);




void __writecr0(unsigned);
void __writecr3(unsigned);
void __writecr4(unsigned);
void __writecr8(unsigned);

unsigned __readdr(unsigned int);

void __writedr(unsigned int, unsigned);

unsigned __readeflags(void);

void __writeeflags(unsigned);
void __wbinvd(void);
void __invlpg(void*);
unsigned __int64 __readmsr(unsigned long);
void __writemsr(unsigned long, unsigned __int64);
unsigned __int64 __rdtsc(void);
void __movsb(unsigned char *, unsigned char const *, size_t);
void __movsw(unsigned short *, unsigned short const *, size_t);
void __movsd(unsigned long *, unsigned long const *, size_t);









void __addfsbyte(unsigned long Offset, unsigned char Data);
void __addfsword(unsigned long Offset, unsigned short Data);
void __addfsdword(unsigned long Offset, unsigned long Data);
void __incfsbyte(unsigned long Offset);
void __incfsword(unsigned long Offset);
void __incfsdword(unsigned long Offset);








unsigned char __inbyte(unsigned short Port);
unsigned short __inword(unsigned short Port);
unsigned long __indword(unsigned short Port);
void __outbyte(unsigned short Port, unsigned char Data);
void __outword(unsigned short Port, unsigned short Data);
void __outdword(unsigned short Port, unsigned long Data);
void __inbytestring(unsigned short Port, unsigned char *Buffer, unsigned long Count);
void __inwordstring(unsigned short Port, unsigned short *Buffer, unsigned long Count);
void __indwordstring(unsigned short Port, unsigned long *Buffer, unsigned long Count);
void __outbytestring(unsigned short Port, unsigned char *Buffer, unsigned long Count);
void __outwordstring(unsigned short Port, unsigned short *Buffer, unsigned long Count);
void __outdwordstring(unsigned short Port, unsigned long *Buffer, unsigned long Count);
unsigned int __getcallerseflags();



void __vmx_vmptrst(unsigned __int64 *);



void __vmx_off(void);

void __svm_clgi(void);
void __svm_invlpga(void*, int);
void __svm_skinit(int);
void __svm_stgi(void);
void __svm_vmload(size_t);
void __svm_vmrun(size_t);
void __svm_vmsave(size_t);
void __halt(void);
void __sidt(void*);
void __lidt(void*);
void __ud2(void);
void __nop(void);











void __stosb(unsigned char *, unsigned char, size_t);
void __stosw(unsigned short *, unsigned short, size_t);
void __stosd(unsigned long *, unsigned long, size_t);

unsigned char _bittest(long const *a, long b);
unsigned char _bittestandset(long *a, long b);
unsigned char _bittestandreset(long *a, long b);
unsigned char _bittestandcomplement(long *a, long b);
unsigned char _interlockedbittestandset(long volatile *a, long b);
unsigned char _interlockedbittestandreset(long volatile *a, long b);






void __cpuid(int a[4], int b);
void __cpuidex(int a[4], int b, int c);
unsigned __int64 __readpmc(unsigned long a);
unsigned long __segmentlimit(unsigned long a);

unsigned char __readfsbyte(unsigned long Offset);
unsigned short __readfsword(unsigned long Offset);
unsigned long __readfsdword(unsigned long Offset);
unsigned __int64 __readfsqword(unsigned long Offset);
void __writefsbyte(unsigned long Offset, unsigned char Data);
void __writefsword(unsigned long Offset, unsigned short Data);
void __writefsdword(unsigned long Offset, unsigned long Data);
void __writefsqword(unsigned long Offset, unsigned __int64 Data);


 unsigned __int64 __cdecl _rotl64(  unsigned __int64,  int);
 unsigned __int64 __cdecl _rotr64(  unsigned __int64,  int);
__int64 __cdecl _abs64(__int64);

unsigned char _BitScanForward(unsigned long* Index, unsigned long Mask);
unsigned char _BitScanReverse(unsigned long* Index, unsigned long Mask);


 wchar_t * __cdecl wcscat(      wchar_t *,    const wchar_t * _Source);
  int __cdecl wcscmp(   const wchar_t *,   const wchar_t *);
 wchar_t * __cdecl wcscpy(   wchar_t *,    const wchar_t * _Source);
  size_t __cdecl wcslen(   const wchar_t *);
#pragma warning(suppress: 4985)
 wchar_t * __cdecl _wcsset(    wchar_t *, wchar_t);




void __int2c(void);
void _ReadBarrier(void);
unsigned char _rotr8(unsigned char value, unsigned char shift);
unsigned short _rotr16(unsigned short value, unsigned char shift);
unsigned char _rotl8(unsigned char value, unsigned char shift);
unsigned short _rotl16(unsigned short value, unsigned char shift);
short _InterlockedIncrement16(short volatile *Addend);
short _InterlockedDecrement16(short volatile *Addend);
short _InterlockedCompareExchange16(short volatile *Destination, short Exchange, short Comparand);
char _InterlockedCompareExchange8(char volatile *Destination, char Exchange, char Comparand);
























































































































































void __nvreg_save_fence(void);
void __nvreg_restore_fence(void);




















unsigned short __lzcnt16(unsigned short);
unsigned int __lzcnt(unsigned int);

unsigned short __popcnt16(unsigned short);
unsigned int __popcnt(unsigned int);

__m128i _mm_extract_si64(__m128i,__m128i);
__m128i _mm_extracti_si64(__m128i, int, int);
__m128i _mm_insert_si64(__m128i,__m128i);
__m128i _mm_inserti_si64(__m128i, __m128i, int, int);
void _mm_stream_sd(double*,__m128d);
void _mm_stream_ss(float*,__m128);
unsigned __int64 __rdtscp(unsigned int*);
















































































































































































































































































































































































































}






  
  
  

namespace std {
 
template<class _Ty>
	struct default_delete;

template<class _Ty,
	class _Dx = default_delete<_Ty> >
	class unique_ptr;
 

	namespace tr1 {	
	
class bad_weak_ptr
	: public exception
	{	
public:
	explicit bad_weak_ptr(const char * = 0)
		{	
		}

	virtual const char * what() const throw()
		{	
		return ("tr1::bad_weak_ptr");
		}
	};

	
class _Ref_count_base
	{	
private:
	virtual void _Destroy() = 0;
	virtual void _Delete_this() = 0;

	long _Uses;
	long _Weaks;

protected:
	_Ref_count_base()
		: _Uses(1), _Weaks(1)
		{	
		}

public:
	virtual ~_Ref_count_base()
		{	
		}

	bool _Incref_nz()
		{	
		for (; ; )
			{	
			long _Count = (volatile long&)_Uses;
			if (_Count == 0)
				return (false);
			if (_InterlockedCompareExchange(&_Uses, _Count + 1, _Count) == _Count)
				return (true);
			}
		}

	void _Incref()
		{	
		_InterlockedIncrement(&_Uses);
		}

	void _Incwref()
		{	
		_InterlockedIncrement(&_Weaks);
		}

	void _Decref()
		{	
		if (_InterlockedDecrement(&_Uses) == 0)
			{	
			_Destroy();
			_Decwref();
			}
		}

	void _Decwref()
		{	
		if (_InterlockedDecrement(&_Weaks) == 0)
			_Delete_this();
		}

	long _Use_count() const
		{	
		return (_Uses);
		}

	bool _Expired() const
		{	
		return (_Uses == 0);
		}

	virtual void *_Get_deleter(const  type_info&) const
		{	
		return (0);
		}
	};

	
template<class _Ty>
	class _Ref_count
	: public _Ref_count_base
	{	
public:
	_Ref_count(_Ty *_Px)
		: _Ref_count_base(), _Ptr(_Px)
		{	
		}

private:
	virtual void _Destroy()
		{	
		delete _Ptr;
		}

	virtual void _Delete_this()
		{	
		delete this;
		}

	_Ty * _Ptr;
	};

template<class _Ty,
	class _Dx>
	class _Ref_count_del
	: public _Ref_count_base
	{	
public:
	_Ref_count_del(_Ty *_Px, _Dx _Dt)
		: _Ref_count_base(), _Ptr(_Px), _Dtor(_Dt)
		{	
		}

	virtual void *_Get_deleter(const  type_info& _Type) const
		{	
		return ((void *)(_Type == typeid(_Dx) ? &_Dtor : 0));
		}

private:
	virtual void _Destroy()
		{	
		_Dtor(_Ptr);
		}

	virtual void _Delete_this()
		{	
		delete this;
		}

	_Ty * _Ptr;
	_Dx _Dtor;	
	};

template<class _Ty,
	class _Dx,
	class _Alloc>
	class _Ref_count_del_alloc
	: public _Ref_count_base
	{	
public:
	typedef _Ref_count_del_alloc<_Ty, _Dx, _Alloc> _Myty;
	typedef typename _Alloc::template rebind<_Myty>::other _Myalty;

	_Ref_count_del_alloc(_Ty *_Px, _Dx _Dt, _Myalty _Al)
		: _Ref_count_base(), _Ptr(_Px), _Dtor(_Dt), _Myal(_Al)
		{	
		}

	virtual void *_Get_deleter(const  type_info& _Type) const
		{	
		return ((void *)(_Type == typeid(_Dx) ? &_Dtor : 0));
		}

private:
	virtual void _Destroy()
		{	
		_Dtor(_Ptr);
		}

	virtual void _Delete_this()
		{	
		_Myalty _Al = _Myal;
		_Dest_val(_Al, this);
		_Al.deallocate(this, 1);
		}

	_Ty * _Ptr;
	_Dx _Dtor;	
	_Myalty _Myal;	
	};

	
template<class _Ty>
	class weak_ptr;
template<class _Ty>
	class shared_ptr;
template<class _Ty>
	class enable_shared_from_this;
struct _Static_tag {};
struct _Const_tag {};
struct _Dynamic_tag {};
template<class _Ty1,
	class _Ty2>
	void _Do_enable(_Ty1 *, enable_shared_from_this<_Ty2> *,
		_Ref_count_base *);

template<class _Ty>
	inline void _Enable_shared(_Ty *_Ptr, _Ref_count_base *_Refptr,
		typename _Ty::_EStype * = 0)
	{	
	if (_Ptr)
		_Do_enable(_Ptr,
			(enable_shared_from_this<typename _Ty::_EStype>*)_Ptr, _Refptr);
	}

inline void _Enable_shared(const volatile void *, const volatile void *)
	{	
	}

	
template<class _Ty>
	class _Ptr_base
	{	
public:
	typedef _Ptr_base<_Ty> _Myt;
	typedef _Ty _Elem;
	typedef _Elem element_type;

	_Ptr_base()
		: _Ptr(0), _Rep(0)
		{	
		}

	_Ptr_base(_Myt&& _Right)
		: _Ptr(0), _Rep(0)
		{	
		_Assign_rv(::std:: forward<_Myt>(_Right));
		}

	template<class _Ty2>
		_Ptr_base(_Ptr_base<_Ty2>&& _Right)
		: _Ptr(_Right._Ptr), _Rep(_Right._Rep)
		{	
		_Right._Ptr = 0;
		_Right._Rep = 0;
		}

	_Myt& operator=(_Myt&& _Right)
		{	
		_Assign_rv(::std:: forward<_Myt>(_Right));
		return (*this);
		}

	void _Assign_rv(_Myt&& _Right)
		{	
		if (this != &_Right)
			_Swap(_Right);
		}

	long use_count() const
		{	
		return (_Rep ? _Rep->_Use_count() : 0);
		}

	void _Swap(_Ptr_base& _Right)
		{	
		::std:: swap(_Rep, _Right._Rep);
		::std:: swap(_Ptr, _Right._Ptr);
		}

	template<class _Ty2>
		bool owner_before(const _Ptr_base<_Ty2>& _Right) const
		{	
		return (_Rep < _Right._Rep);
		}

	void *_Get_deleter(const  type_info& _Type) const
		{	
		return (_Rep ? _Rep->_Get_deleter(_Type) : 0);
		}

	_Ty *_Get() const
		{	
		return (_Ptr);
		}

	bool _Expired() const
		{	
		return (!_Rep || _Rep->_Expired());
		}

	void _Decref()
		{	
		if (_Rep != 0)
			_Rep->_Decref();
		}

	void _Reset()
		{	
		_Reset(0, 0);
		}

	template<class _Ty2>
		void _Reset(const _Ptr_base<_Ty2>& _Other)
		{	
		_Reset(_Other._Ptr, _Other._Rep, false);
		}

	template<class _Ty2>
		void _Reset(const _Ptr_base<_Ty2>& _Other, bool _Throw)
		{	
		_Reset(_Other._Ptr, _Other._Rep, _Throw);
		}

	template<class _Ty2>
		void _Reset(const _Ptr_base<_Ty2>& _Other, const _Static_tag&)
		{	
		_Reset(static_cast<_Elem *>(_Other._Ptr), _Other._Rep);
		}

	template<class _Ty2>
		void _Reset(const _Ptr_base<_Ty2>& _Other, const _Const_tag&)
		{	
		_Reset(const_cast<_Elem *>(_Other._Ptr), _Other._Rep);
		}

	template<class _Ty2>
		void _Reset(const _Ptr_base<_Ty2>& _Other, const _Dynamic_tag&)
		{	
		_Elem *_Ptr = dynamic_cast<_Elem *>(_Other._Ptr);
		if (_Ptr)
			_Reset(_Ptr, _Other._Rep);
		else
			_Reset();
		}

	template<class _Ty2>
		void _Reset(auto_ptr<_Ty2>& _Other)
		{	
		_Ty2 *_Px = _Other.get();
		_Reset0(_Px, new _Ref_count<_Elem>(_Px));
		_Other.release();
		_Enable_shared(_Px, _Rep);
		}

 
	template<class _Ty2>
		void _Reset(_Ty *_Ptr, const _Ptr_base<_Ty2>& _Other)
		{	
		_Reset(_Ptr, _Other._Rep);
		}
 

	void _Reset(_Ty *_Other_ptr, _Ref_count_base *_Other_rep)
		{	
		if (_Other_rep)
			_Other_rep->_Incref();
		_Reset0(_Other_ptr, _Other_rep);
		}

	void _Reset(_Ty *_Other_ptr, _Ref_count_base *_Other_rep, bool _Throw)
		{	
			
			
		if (_Other_rep && _Other_rep->_Incref_nz())
			_Reset0(_Other_ptr, _Other_rep);
		else if (_Throw)
			throw bad_weak_ptr(0);
		}

	void _Reset0(_Ty *_Other_ptr, _Ref_count_base *_Other_rep)
		{	
		if (_Rep != 0)
			_Rep->_Decref();
		_Rep = _Other_rep;
		_Ptr = _Other_ptr;
		}

	void _Decwref()
		{	
		if (_Rep != 0)
			_Rep->_Decwref();
		}

	void _Resetw()
		{	
		_Resetw((_Elem *)0, 0);
		}

	template<class _Ty2>
		void _Resetw(const _Ptr_base<_Ty2>& _Other)
		{	
		_Resetw(_Other._Ptr, _Other._Rep);
		}

	template<class _Ty2>
		void _Resetw(const _Ty2 *_Other_ptr, _Ref_count_base *_Other_rep)
		{	
		_Resetw(const_cast<_Ty2*>(_Other_ptr), _Other_rep);
		}

	template<class _Ty2>
		void _Resetw(_Ty2 *_Other_ptr, _Ref_count_base *_Other_rep)
		{	
		if (_Other_rep)
			_Other_rep->_Incwref();
		if (_Rep != 0)
			_Rep->_Decwref();
		_Rep = _Other_rep;
		_Ptr = _Other_ptr;
		}

private:
	_Ty *_Ptr;
	_Ref_count_base *_Rep;
	template<class _Ty0>
		friend class _Ptr_base;
	};

	
template<class _Ty>
	class shared_ptr
		: public _Ptr_base<_Ty>
	{	
public:
	typedef shared_ptr<_Ty> _Myt;
	typedef _Ptr_base<_Ty> _Mybase;

	shared_ptr()
		{	
		}

	template<class _Ux>
		explicit shared_ptr(_Ux *_Px)
		{	
		_Resetp(_Px);
		}

	template<class _Ux,
		class _Dx>
		shared_ptr(_Ux *_Px, _Dx _Dt)
		{	
		_Resetp(_Px, _Dt);
		}



 

	shared_ptr(::std:: nullptr_t)
		{	
		_Resetp((_Ty *)0);
		}

	template<class _Dx>
		shared_ptr(::std:: nullptr_t, _Dx _Dt)
		{	
		_Resetp((_Ty *)0, _Dt);
		}

	template<class _Dx,
		class _Alloc>
		shared_ptr(::std:: nullptr_t, _Dx _Dt, _Alloc _Ax)
		{	
		_Resetp((_Ty *)0, _Dt, _Ax);
		}
 

	template<class _Ux,
		class _Dx,
		class _Alloc>
		shared_ptr(_Ux *_Px, _Dx _Dt, _Alloc _Ax)
		{	
		_Resetp(_Px, _Dt, _Ax);
		}


 
	template<class _Ty2>
		shared_ptr(const shared_ptr<_Ty2>& _Right, _Ty *_Px)
		{	
		this->_Reset(_Px, _Right);
		}
 

	shared_ptr(const _Myt& _Other)
		{	
		this->_Reset(_Other);
		}

	template<class _Ty2>
		shared_ptr(const shared_ptr<_Ty2>& _Other,
			typename enable_if<is_convertible<_Ty2 *, _Ty *>::value,
				void *>::type * = 0)
		{	
		this->_Reset(_Other);
		}

	template<class _Ty2>
		explicit shared_ptr(const weak_ptr<_Ty2>& _Other,
			bool _Throw = true)
		{	
		this->_Reset(_Other, _Throw);
		}

	template<class _Ty2>
		shared_ptr(auto_ptr<_Ty2>& _Other)
		{	
		this->_Reset(_Other);
		}

	template<class _Ty2>
		shared_ptr(const shared_ptr<_Ty2>& _Other, const _Static_tag& _Tag)
		{	
		this->_Reset(_Other, _Tag);
		}

	template<class _Ty2>
		shared_ptr(const shared_ptr<_Ty2>& _Other, const _Const_tag& _Tag)
		{	
		this->_Reset(_Other, _Tag);
		}

	template<class _Ty2>
		shared_ptr(const shared_ptr<_Ty2>& _Other, const _Dynamic_tag& _Tag)
		{	
		this->_Reset(_Other, _Tag);
		}

	shared_ptr(_Myt&& _Right)
		: _Mybase(::std:: forward<_Myt>(_Right))
		{	
		}

	template<class _Ty2>
		shared_ptr(shared_ptr<_Ty2>&& _Right,
			typename enable_if<is_convertible<_Ty2 *, _Ty *>::value,
				void *>::type * = 0)
		: _Mybase(::std:: forward<shared_ptr<_Ty2> >(_Right))
		{	
		}

 
	template<class _Ux,
		class _Dx>
		shared_ptr(::std:: unique_ptr<_Ux, _Dx>&& _Right)
		{	
		_Resetp(_Right.release(), _Right.get_deleter());
		}

	template<class _Ux,
		class _Dx>
		_Myt& operator=(unique_ptr<_Ux, _Dx>&& _Right)
		{	
		shared_ptr(::std:: move(_Right)).swap(*this);
		return (*this);
		}
 

	_Myt& operator=(_Myt&& _Right)
		{	
		shared_ptr(::std:: move(_Right)).swap(*this);
		return (*this);
		}

	template<class _Ty2>
		_Myt& operator=(shared_ptr<_Ty2>&& _Right)
		{	
		shared_ptr(::std:: move(_Right)).swap(*this);
		return (*this);
		}

	void swap(_Myt&& _Right)
		{	
		_Mybase::swap(::std:: move(_Right));
		}

	~shared_ptr()
		{	
		this->_Decref();
		}

	_Myt& operator=(const _Myt& _Right)
		{	
		shared_ptr(_Right).swap(*this);
		return (*this);
		}

	template<class _Ty2>
		_Myt& operator=(const shared_ptr<_Ty2>& _Right)
		{	
		shared_ptr(_Right).swap(*this);
		return (*this);
		}

	template<class _Ty2>
		_Myt& operator=(auto_ptr<_Ty2>& _Right)
		{	
		shared_ptr(_Right).swap(*this);
		return (*this);
		}

	void reset()
		{	
		shared_ptr().swap(*this);
		}

	template<class _Ux>
		void reset(_Ux *_Px)
		{	
		shared_ptr(_Px).swap(*this);
		}

	template<class _Ux,
		class _Dx>
		void reset(_Ux *_Px, _Dx _Dt)
		{	
		shared_ptr(_Px, _Dt).swap(*this);
		}


	template<class _Ux,
		class _Dx,
		class _Alloc>
		void reset(_Ux *_Px, _Dx _Dt, _Alloc _Ax)
		{	
		shared_ptr(_Px, _Dt, _Ax).swap(*this);
		}


	void swap(_Myt& _Other)
		{	
		this->_Swap(_Other);
		}

	_Ty *get() const
		{	
		return (this->_Get());
		}

	typename tr1::add_reference<_Ty>::type operator*() const
		{	
		return (*this->_Get());
		}

	_Ty *operator->() const
		{	
		return (this->_Get());
		}

	bool unique() const
		{	
		return (this->use_count() == 1);
		}

	operator ::std:: _Bool_type() const
		{	
		return (this->_Get() != 0 ? (&::std:: _Bool_struct::_Member) : 0);
		}

private:
	template<class _Ux>
		void _Resetp(_Ux *_Px)
		{	
		try {	
		_Resetp0(_Px, new _Ref_count<_Ux>(_Px));
		} catch (...) {	
		delete _Px;
		throw;
		}
		}

	template<class _Ux,
		class _Dx>
		void _Resetp(_Ux *_Px, _Dx _Dt)
		{	
		try {	
		_Resetp0(_Px, new _Ref_count_del<_Ux, _Dx>(_Px, _Dt));
		} catch (...) {	
		_Dt(_Px);
		throw;
		}
		}


	template<class _Ux,
		class _Dx,
		class _Alloc>
		void _Resetp(_Ux *_Px, _Dx _Dt, _Alloc _Ax)
		{	
		typedef _Ref_count_del_alloc<_Ux, _Dx, _Alloc> _Refd;
		typename _Alloc::template rebind<_Refd>::other _Al = _Ax;

		try {	
		_Refd *_Ptr = _Al.allocate(1);
		new (_Ptr) _Refd(_Px, _Dt, _Al);
		_Resetp0(_Px, _Ptr);
		} catch (...) {	
		_Dt(_Px);
		throw;
		}
		}


public:
	template<class _Ux>
		void _Resetp0(_Ux *_Px, _Ref_count_base *_Rx)
		{	
		this->_Reset0(_Px, _Rx);
		_Enable_shared(_Px, _Rx);
		}
	};

template<class _Ty1,
	class _Ty2>
	bool operator==(const shared_ptr<_Ty1>& _S1,
		const shared_ptr<_Ty2>& _S2)
	{	
	return (_S1.get() == _S2.get());
	}

template<class _Ty1,
	class _Ty2>
	bool operator!=(const shared_ptr<_Ty1>& _S1,
		const shared_ptr<_Ty2>& _S2)
	{	
	return (!(_S1 == _S2));
	}

template<class _Ty1,
	class _Ty2>
	bool operator<(const shared_ptr<_Ty1>& _S1,
		const shared_ptr<_Ty2>& _S2)
	{	
	return (_S1.get() < _S2.get());
	}

template<class _Ty1,
	class _Ty2>
	bool operator>=(const shared_ptr<_Ty1>& _S1,
		const shared_ptr<_Ty2>& _S2)
	{	
	return (!(_S1 < _S2));
	}

template<class _Ty1,
	class _Ty2>
	bool operator>(const shared_ptr<_Ty1>& _S1,
		const shared_ptr<_Ty2>& _S2)
	{	
	return (_S2 < _S1);
	}

template<class _Ty1,
	class _Ty2>
	bool operator<=(const shared_ptr<_Ty1>& _S1,
		const shared_ptr<_Ty2>& _S2)
	{	
	return (!(_S2 < _S1));
	}

template<class _Elem,
	class _Traits,
	class _Ty>
	basic_ostream<_Elem, _Traits>&
	operator<<(basic_ostream<_Elem, _Traits>& _Out,
		const shared_ptr<_Ty>& _Px)
	{	
	return (_Out << _Px.get());
	}

template<class _Ty>
	void swap(shared_ptr<_Ty>& _Left,
		shared_ptr<_Ty>& _Right)
	{	
	_Left.swap(_Right);
	}

template<class _Ty>
	void swap(shared_ptr<_Ty>& _Left,
		shared_ptr<_Ty>&& _Right)
	{	
	_Left.swap(_Right);
	}

template<class _Ty>
	void swap(shared_ptr<_Ty>&& _Left,
		shared_ptr<_Ty>& _Right)
	{	
	_Right.swap(_Left);
	}

template<class _Ty1,
	class _Ty2>
	shared_ptr<_Ty1> static_pointer_cast(const shared_ptr<_Ty2>& _Other)
	{	
	return (shared_ptr<_Ty1>(_Other, _Static_tag()));
	}

template<class _Ty1,
	class _Ty2>
	shared_ptr<_Ty1> const_pointer_cast(const shared_ptr<_Ty2>& _Other)
	{	
	return (shared_ptr<_Ty1>(_Other, _Const_tag()));
	}

template<class _Ty1,
	class _Ty2>
	shared_ptr<_Ty1> dynamic_pointer_cast(const shared_ptr<_Ty2>& _Other)
	{	
	return (shared_ptr<_Ty1>(_Other, _Dynamic_tag()));
	}

template<class _Dx,
	class _Ty>
	_Dx *get_deleter(const shared_ptr<_Ty>& _Sx)
	{	
	return ((_Dx *)_Sx._Get_deleter(typeid(_Dx)));
	}

 

	
template<class _Ty>
	class _Ref_count_obj
	: public _Ref_count_base
	{	
public:
 
 
 





 







 
 





 
  
  
  
  
  
  

 



















































































 
  

 






 
  
  
  
  
  
  
  
  
  
  
  
  
  

 






























 
  

 



 
  

 



















































  
  
  
  



















































	



 

 



	_Ref_count_obj(    )
		: _Ref_count_base()
		{	
		new ((void *) &_Storage) _Ty(    );
		}
 

 












 
































































































































































 









 








  
  
  
  
  
  

 











































































 






  
 

 















  
  
  
  
  
  
  
  
  
  
  
  
  

 















 
  

 



 
  

 



















































  
  
  
  



















































	



 

 
	template<class _Arg0    >
 

	_Ref_count_obj(_Arg0 && _Ax0    )
		: _Ref_count_base()
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0)    );
		}
 

 












 









































































































































































 
















  
  
  
  
  
  

 



































































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 
  

 



















































  
  
  
  



















































	



 

 
	template<class _Arg0 ,   class _Arg1>
 

	_Ref_count_obj(_Arg0 && _Ax0 ,   _Arg1 && _Ax1)
		: _Ref_count_base()
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0) ,   ::std:: forward<_Arg1>(_Ax1));
		}
 

 












 









































































































































































 
























  
  
  
  
  
  

 



























































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 

 
	template<class _Arg0 , class _Arg1 , class _Arg2>
 

	_Ref_count_obj(_Arg0 && _Ax0 , _Arg1 && _Ax1 , _Arg2 && _Ax2)
		: _Ref_count_base()
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1) , ::std:: forward<_Arg2>(_Ax2));
		}
 

 












 









































































































































































 
































  
  
  
  
  
  

 



















































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 

 
	template<class _Arg0 , class _Arg1, class _Arg2 , class _Arg3>
 

	_Ref_count_obj(_Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2 , _Arg3 && _Ax3)
		: _Ref_count_base()
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2) , ::std:: forward<_Arg3>(_Ax3));
		}
 

 












 









































































































































































 








































  
  
  
  
  
  

 











































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 

 
	template<class _Arg0 , class _Arg1, class _Arg2, class _Arg3 , class _Arg4>
 

	_Ref_count_obj(_Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3 , _Arg4 && _Ax4)
		: _Ref_count_base()
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3) , ::std:: forward<_Arg4>(_Ax4));
		}
 

 












 









































































































































































 
















































  
  
  
  
  
  

 



































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 

 
	template<class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4 , class _Arg5>
 

	_Ref_count_obj(_Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4 , _Arg5 && _Ax5)
		: _Ref_count_base()
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4) , ::std:: forward<_Arg5>(_Ax5));
		}
 

 












 









































































































































































 
























































  
  
  
  
  
  

 



























 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 

 
	template<class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5 , class _Arg6>
 

	_Ref_count_obj(_Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4, _Arg5 && _Ax5 , _Arg6 && _Ax6)
		: _Ref_count_base()
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4), ::std:: forward<_Arg5>(_Ax5) , ::std:: forward<_Arg6>(_Ax6));
		}
 

 












 









































































































































































 
































































  
  
  
  
  
  

 



















 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 

 
	template<class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6 , class _Arg7>
 

	_Ref_count_obj(_Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4, _Arg5 && _Ax5, _Arg6 && _Ax6 , _Arg7 && _Ax7)
		: _Ref_count_base()
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4), ::std:: forward<_Arg5>(_Ax5), ::std:: forward<_Arg6>(_Ax6) , ::std:: forward<_Arg7>(_Ax7));
		}
 

 












 









































































































































































 








































































  
  
  
  
  
  

 











 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 

 
	template<class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7 , class _Arg8>
 

	_Ref_count_obj(_Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4, _Arg5 && _Ax5, _Arg6 && _Ax6, _Arg7 && _Ax7 , _Arg8 && _Ax8)
		: _Ref_count_base()
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4), ::std:: forward<_Arg5>(_Ax5), ::std:: forward<_Arg6>(_Ax6), ::std:: forward<_Arg7>(_Ax7) , ::std:: forward<_Arg8>(_Ax8));
		}
 

 












 









































































































































































 
















































































  
  
  
  
  
  

 



 



  

 



 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 

 
	template<class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7, class _Arg8 , class _Arg9>
 

	_Ref_count_obj(_Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4, _Arg5 && _Ax5, _Arg6 && _Ax6, _Arg7 && _Ax7, _Arg8 && _Ax8 , _Arg9 && _Ax9)
		: _Ref_count_base()
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4), ::std:: forward<_Arg5>(_Ax5), ::std:: forward<_Arg6>(_Ax6), ::std:: forward<_Arg7>(_Ax7), ::std:: forward<_Arg8>(_Ax8) , ::std:: forward<_Arg9>(_Ax9));
		}
 

 












 





















































































































































































 

	_Ty *_Getptr() const
		{	
		return ((_Ty *)&_Storage);
		}

private:
	virtual void _Destroy()
		{	
		_Getptr()->~_Ty();
		}

	virtual void _Delete_this()
		{	
		delete this;
		}

	typename aligned_storage<sizeof(_Ty),
		alignment_of<_Ty>::value>::type _Storage;
	};

	
template<class _Ty,
	class _Alloc>
	class _Ref_count_obj_alloc
	: public _Ref_count_base
	{	
public:
	typedef _Ref_count_obj_alloc<_Ty, _Alloc> _Myty;
	typedef typename _Alloc::template rebind<_Myty>::other _Myalty;

 
 
 





 







 
 





 
  
  
  
  
  
  

 



















































































 
  

 






 
  
  
  
  
  
  
  
  
  
  
  
  
  

 






























 
  

 



 
  

 



















































  
  
  
  



















































	



 












 

 



	_Ref_count_obj_alloc(_Myalty _Al      )
		: _Ref_count_base(), _Myal(_Al)
		{	
		new ((void *) &_Storage) _Ty(    );
		}
 

 
































































































































































 









 








  
  
  
  
  
  

 











































































 






  
 

 















  
  
  
  
  
  
  
  
  
  
  
  
  

 















 
  

 



 
  

 



















































  
  
  
  



















































	



 












 

 
	template<class _Arg0    >
 

	_Ref_count_obj_alloc(_Myalty _Al , _Arg0 && _Ax0    )
		: _Ref_count_base(), _Myal(_Al)
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0)    );
		}
 

 









































































































































































 
















  
  
  
  
  
  

 



































































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 
  

 



















































  
  
  
  



















































	



 












 

 
	template<class _Arg0 ,   class _Arg1>
 

	_Ref_count_obj_alloc(_Myalty _Al , _Arg0 && _Ax0 ,   _Arg1 && _Ax1)
		: _Ref_count_base(), _Myal(_Al)
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0) ,   ::std:: forward<_Arg1>(_Ax1));
		}
 

 









































































































































































 
























  
  
  
  
  
  

 



























































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 












 

 
	template<class _Arg0 , class _Arg1 , class _Arg2>
 

	_Ref_count_obj_alloc(_Myalty _Al , _Arg0 && _Ax0 , _Arg1 && _Ax1 , _Arg2 && _Ax2)
		: _Ref_count_base(), _Myal(_Al)
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1) , ::std:: forward<_Arg2>(_Ax2));
		}
 

 









































































































































































 
































  
  
  
  
  
  

 



















































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 












 

 
	template<class _Arg0 , class _Arg1, class _Arg2 , class _Arg3>
 

	_Ref_count_obj_alloc(_Myalty _Al , _Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2 , _Arg3 && _Ax3)
		: _Ref_count_base(), _Myal(_Al)
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2) , ::std:: forward<_Arg3>(_Ax3));
		}
 

 









































































































































































 








































  
  
  
  
  
  

 











































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 












 

 
	template<class _Arg0 , class _Arg1, class _Arg2, class _Arg3 , class _Arg4>
 

	_Ref_count_obj_alloc(_Myalty _Al , _Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3 , _Arg4 && _Ax4)
		: _Ref_count_base(), _Myal(_Al)
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3) , ::std:: forward<_Arg4>(_Ax4));
		}
 

 









































































































































































 
















































  
  
  
  
  
  

 



































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 












 

 
	template<class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4 , class _Arg5>
 

	_Ref_count_obj_alloc(_Myalty _Al , _Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4 , _Arg5 && _Ax5)
		: _Ref_count_base(), _Myal(_Al)
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4) , ::std:: forward<_Arg5>(_Ax5));
		}
 

 









































































































































































 
























































  
  
  
  
  
  

 



























 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 












 

 
	template<class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5 , class _Arg6>
 

	_Ref_count_obj_alloc(_Myalty _Al , _Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4, _Arg5 && _Ax5 , _Arg6 && _Ax6)
		: _Ref_count_base(), _Myal(_Al)
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4), ::std:: forward<_Arg5>(_Ax5) , ::std:: forward<_Arg6>(_Ax6));
		}
 

 









































































































































































 
































































  
  
  
  
  
  

 



















 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 












 

 
	template<class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6 , class _Arg7>
 

	_Ref_count_obj_alloc(_Myalty _Al , _Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4, _Arg5 && _Ax5, _Arg6 && _Ax6 , _Arg7 && _Ax7)
		: _Ref_count_base(), _Myal(_Al)
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4), ::std:: forward<_Arg5>(_Ax5), ::std:: forward<_Arg6>(_Ax6) , ::std:: forward<_Arg7>(_Ax7));
		}
 

 









































































































































































 








































































  
  
  
  
  
  

 











 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 












 

 
	template<class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7 , class _Arg8>
 

	_Ref_count_obj_alloc(_Myalty _Al , _Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4, _Arg5 && _Ax5, _Arg6 && _Ax6, _Arg7 && _Ax7 , _Arg8 && _Ax8)
		: _Ref_count_base(), _Myal(_Al)
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4), ::std:: forward<_Arg5>(_Ax5), ::std:: forward<_Arg6>(_Ax6), ::std:: forward<_Arg7>(_Ax7) , ::std:: forward<_Arg8>(_Ax8));
		}
 

 









































































































































































 
















































































  
  
  
  
  
  

 



 



  

 



 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 












 

 
	template<class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7, class _Arg8 , class _Arg9>
 

	_Ref_count_obj_alloc(_Myalty _Al , _Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4, _Arg5 && _Ax5, _Arg6 && _Ax6, _Arg7 && _Ax7, _Arg8 && _Ax8 , _Arg9 && _Ax9)
		: _Ref_count_base(), _Myal(_Al)
		{	
		new ((void *) &_Storage) _Ty(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4), ::std:: forward<_Arg5>(_Ax5), ::std:: forward<_Arg6>(_Ax6), ::std:: forward<_Arg7>(_Ax7), ::std:: forward<_Arg8>(_Ax8) , ::std:: forward<_Arg9>(_Ax9));
		}
 

 





















































































































































































 

	_Ty *_Getptr() const
		{	
		return ((_Ty *)&_Storage);
		}

private:
	virtual void _Destroy()
		{	
		_Getptr()->~_Ty();
		}

	virtual void _Delete_this()
		{	
		_Myalty _Al = _Myal;
		_Dest_val(_Al, this);
		_Al.deallocate(this, 1);
		}

	typename aligned_storage<sizeof (_Ty),
		alignment_of<_Ty>::value>::type _Storage;
	_Myalty _Myal;	
	};

 
 
 





 







 
 





 
  
  
  
  
  
  

 



















































































 
  

 






 
  
  
  
  
  
  
  
  
  
  
  
  
  

 






























 
  

 



 
  

 



















































  
  
  
  



















































	



 












 












 
	
template<class _Ty      > inline
	shared_ptr<_Ty> make_shared(    )
	{	
	_Ref_count_obj<_Ty> * _Rx = new _Ref_count_obj<_Ty>(    );

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}

	
template<class _Ty,
	class _Alloc      > inline
		shared_ptr<_Ty> allocate_shared(
			const _Alloc& _Al_arg      )
	{	
	typedef _Ref_count_obj_alloc<_Ty, _Alloc> _Refoa;
	typename _Alloc::template rebind<_Refoa>::other _Alref = _Al_arg;

	_Refoa * _Rx = _Alref.allocate(1);

	try {
		new (_Rx) _Refoa(_Al_arg      );
	} catch (...) {
		_Alref.deallocate(_Rx, 1);
	throw;
	}

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}
 






























































































































 









 








  
  
  
  
  
  

 











































































 






  
 

 















  
  
  
  
  
  
  
  
  
  
  
  
  

 















 
  

 



 
  

 



















































  
  
  
  



















































	



 












 












 
	
template<class _Ty , class _Arg0    > inline
	shared_ptr<_Ty> make_shared(_Arg0 && _Ax0    )
	{	
	_Ref_count_obj<_Ty> * _Rx = new _Ref_count_obj<_Ty>(::std:: forward<_Arg0>(_Ax0)    );

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}

	
template<class _Ty,
	class _Alloc , class _Arg0    > inline
		shared_ptr<_Ty> allocate_shared(
			const _Alloc& _Al_arg , _Arg0 && _Ax0    )
	{	
	typedef _Ref_count_obj_alloc<_Ty, _Alloc> _Refoa;
	typename _Alloc::template rebind<_Refoa>::other _Alref = _Al_arg;

	_Refoa * _Rx = _Alref.allocate(1);

	try {
		new (_Rx) _Refoa(_Al_arg , ::std:: forward<_Arg0>(_Ax0)    );
	} catch (...) {
		_Alref.deallocate(_Rx, 1);
	throw;
	}

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}
 







































































































































 
















  
  
  
  
  
  

 



































































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 
  

 



















































  
  
  
  



















































	



 












 












 
	
template<class _Ty , class _Arg0 ,   class _Arg1> inline
	shared_ptr<_Ty> make_shared(_Arg0 && _Ax0 ,   _Arg1 && _Ax1)
	{	
	_Ref_count_obj<_Ty> * _Rx = new _Ref_count_obj<_Ty>(::std:: forward<_Arg0>(_Ax0) ,   ::std:: forward<_Arg1>(_Ax1));

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}

	
template<class _Ty,
	class _Alloc , class _Arg0 ,   class _Arg1> inline
		shared_ptr<_Ty> allocate_shared(
			const _Alloc& _Al_arg , _Arg0 && _Ax0 ,   _Arg1 && _Ax1)
	{	
	typedef _Ref_count_obj_alloc<_Ty, _Alloc> _Refoa;
	typename _Alloc::template rebind<_Refoa>::other _Alref = _Al_arg;

	_Refoa * _Rx = _Alref.allocate(1);

	try {
		new (_Rx) _Refoa(_Al_arg , ::std:: forward<_Arg0>(_Ax0) ,   ::std:: forward<_Arg1>(_Ax1));
	} catch (...) {
		_Alref.deallocate(_Rx, 1);
	throw;
	}

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}
 







































































































































 
























  
  
  
  
  
  

 



























































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 












 












 
	
template<class _Ty , class _Arg0 , class _Arg1 , class _Arg2> inline
	shared_ptr<_Ty> make_shared(_Arg0 && _Ax0 , _Arg1 && _Ax1 , _Arg2 && _Ax2)
	{	
	_Ref_count_obj<_Ty> * _Rx = new _Ref_count_obj<_Ty>(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1) , ::std:: forward<_Arg2>(_Ax2));

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}

	
template<class _Ty,
	class _Alloc , class _Arg0 , class _Arg1 , class _Arg2> inline
		shared_ptr<_Ty> allocate_shared(
			const _Alloc& _Al_arg , _Arg0 && _Ax0 , _Arg1 && _Ax1 , _Arg2 && _Ax2)
	{	
	typedef _Ref_count_obj_alloc<_Ty, _Alloc> _Refoa;
	typename _Alloc::template rebind<_Refoa>::other _Alref = _Al_arg;

	_Refoa * _Rx = _Alref.allocate(1);

	try {
		new (_Rx) _Refoa(_Al_arg , ::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1) , ::std:: forward<_Arg2>(_Ax2));
	} catch (...) {
		_Alref.deallocate(_Rx, 1);
	throw;
	}

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}
 







































































































































 
































  
  
  
  
  
  

 



















































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 












 












 
	
template<class _Ty , class _Arg0 , class _Arg1, class _Arg2 , class _Arg3> inline
	shared_ptr<_Ty> make_shared(_Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2 , _Arg3 && _Ax3)
	{	
	_Ref_count_obj<_Ty> * _Rx = new _Ref_count_obj<_Ty>(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2) , ::std:: forward<_Arg3>(_Ax3));

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}

	
template<class _Ty,
	class _Alloc , class _Arg0 , class _Arg1, class _Arg2 , class _Arg3> inline
		shared_ptr<_Ty> allocate_shared(
			const _Alloc& _Al_arg , _Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2 , _Arg3 && _Ax3)
	{	
	typedef _Ref_count_obj_alloc<_Ty, _Alloc> _Refoa;
	typename _Alloc::template rebind<_Refoa>::other _Alref = _Al_arg;

	_Refoa * _Rx = _Alref.allocate(1);

	try {
		new (_Rx) _Refoa(_Al_arg , ::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2) , ::std:: forward<_Arg3>(_Ax3));
	} catch (...) {
		_Alref.deallocate(_Rx, 1);
	throw;
	}

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}
 







































































































































 








































  
  
  
  
  
  

 











































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 












 












 
	
template<class _Ty , class _Arg0 , class _Arg1, class _Arg2, class _Arg3 , class _Arg4> inline
	shared_ptr<_Ty> make_shared(_Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3 , _Arg4 && _Ax4)
	{	
	_Ref_count_obj<_Ty> * _Rx = new _Ref_count_obj<_Ty>(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3) , ::std:: forward<_Arg4>(_Ax4));

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}

	
template<class _Ty,
	class _Alloc , class _Arg0 , class _Arg1, class _Arg2, class _Arg3 , class _Arg4> inline
		shared_ptr<_Ty> allocate_shared(
			const _Alloc& _Al_arg , _Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3 , _Arg4 && _Ax4)
	{	
	typedef _Ref_count_obj_alloc<_Ty, _Alloc> _Refoa;
	typename _Alloc::template rebind<_Refoa>::other _Alref = _Al_arg;

	_Refoa * _Rx = _Alref.allocate(1);

	try {
		new (_Rx) _Refoa(_Al_arg , ::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3) , ::std:: forward<_Arg4>(_Ax4));
	} catch (...) {
		_Alref.deallocate(_Rx, 1);
	throw;
	}

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}
 







































































































































 
















































  
  
  
  
  
  

 



































 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 












 












 
	
template<class _Ty , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4 , class _Arg5> inline
	shared_ptr<_Ty> make_shared(_Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4 , _Arg5 && _Ax5)
	{	
	_Ref_count_obj<_Ty> * _Rx = new _Ref_count_obj<_Ty>(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4) , ::std:: forward<_Arg5>(_Ax5));

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}

	
template<class _Ty,
	class _Alloc , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4 , class _Arg5> inline
		shared_ptr<_Ty> allocate_shared(
			const _Alloc& _Al_arg , _Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4 , _Arg5 && _Ax5)
	{	
	typedef _Ref_count_obj_alloc<_Ty, _Alloc> _Refoa;
	typename _Alloc::template rebind<_Refoa>::other _Alref = _Al_arg;

	_Refoa * _Rx = _Alref.allocate(1);

	try {
		new (_Rx) _Refoa(_Al_arg , ::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4) , ::std:: forward<_Arg5>(_Ax5));
	} catch (...) {
		_Alref.deallocate(_Rx, 1);
	throw;
	}

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}
 







































































































































 
























































  
  
  
  
  
  

 



























 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 












 












 
	
template<class _Ty , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5 , class _Arg6> inline
	shared_ptr<_Ty> make_shared(_Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4, _Arg5 && _Ax5 , _Arg6 && _Ax6)
	{	
	_Ref_count_obj<_Ty> * _Rx = new _Ref_count_obj<_Ty>(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4), ::std:: forward<_Arg5>(_Ax5) , ::std:: forward<_Arg6>(_Ax6));

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}

	
template<class _Ty,
	class _Alloc , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5 , class _Arg6> inline
		shared_ptr<_Ty> allocate_shared(
			const _Alloc& _Al_arg , _Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4, _Arg5 && _Ax5 , _Arg6 && _Ax6)
	{	
	typedef _Ref_count_obj_alloc<_Ty, _Alloc> _Refoa;
	typename _Alloc::template rebind<_Refoa>::other _Alref = _Al_arg;

	_Refoa * _Rx = _Alref.allocate(1);

	try {
		new (_Rx) _Refoa(_Al_arg , ::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4), ::std:: forward<_Arg5>(_Ax5) , ::std:: forward<_Arg6>(_Ax6));
	} catch (...) {
		_Alref.deallocate(_Rx, 1);
	throw;
	}

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}
 







































































































































 
































































  
  
  
  
  
  

 



















 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 












 












 
	
template<class _Ty , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6 , class _Arg7> inline
	shared_ptr<_Ty> make_shared(_Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4, _Arg5 && _Ax5, _Arg6 && _Ax6 , _Arg7 && _Ax7)
	{	
	_Ref_count_obj<_Ty> * _Rx = new _Ref_count_obj<_Ty>(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4), ::std:: forward<_Arg5>(_Ax5), ::std:: forward<_Arg6>(_Ax6) , ::std:: forward<_Arg7>(_Ax7));

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}

	
template<class _Ty,
	class _Alloc , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6 , class _Arg7> inline
		shared_ptr<_Ty> allocate_shared(
			const _Alloc& _Al_arg , _Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4, _Arg5 && _Ax5, _Arg6 && _Ax6 , _Arg7 && _Ax7)
	{	
	typedef _Ref_count_obj_alloc<_Ty, _Alloc> _Refoa;
	typename _Alloc::template rebind<_Refoa>::other _Alref = _Al_arg;

	_Refoa * _Rx = _Alref.allocate(1);

	try {
		new (_Rx) _Refoa(_Al_arg , ::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4), ::std:: forward<_Arg5>(_Ax5), ::std:: forward<_Arg6>(_Ax6) , ::std:: forward<_Arg7>(_Ax7));
	} catch (...) {
		_Alref.deallocate(_Rx, 1);
	throw;
	}

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}
 







































































































































 








































































  
  
  
  
  
  

 











 






  
 

 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 












 












 
	
template<class _Ty , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7 , class _Arg8> inline
	shared_ptr<_Ty> make_shared(_Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4, _Arg5 && _Ax5, _Arg6 && _Ax6, _Arg7 && _Ax7 , _Arg8 && _Ax8)
	{	
	_Ref_count_obj<_Ty> * _Rx = new _Ref_count_obj<_Ty>(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4), ::std:: forward<_Arg5>(_Ax5), ::std:: forward<_Arg6>(_Ax6), ::std:: forward<_Arg7>(_Ax7) , ::std:: forward<_Arg8>(_Ax8));

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}

	
template<class _Ty,
	class _Alloc , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7 , class _Arg8> inline
		shared_ptr<_Ty> allocate_shared(
			const _Alloc& _Al_arg , _Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4, _Arg5 && _Ax5, _Arg6 && _Ax6, _Arg7 && _Ax7 , _Arg8 && _Ax8)
	{	
	typedef _Ref_count_obj_alloc<_Ty, _Alloc> _Refoa;
	typename _Alloc::template rebind<_Refoa>::other _Alref = _Al_arg;

	_Refoa * _Rx = _Alref.allocate(1);

	try {
		new (_Rx) _Refoa(_Al_arg , ::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4), ::std:: forward<_Arg5>(_Ax5), ::std:: forward<_Arg6>(_Ax6), ::std:: forward<_Arg7>(_Ax7) , ::std:: forward<_Arg8>(_Ax8));
	} catch (...) {
		_Alref.deallocate(_Rx, 1);
	throw;
	}

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}
 







































































































































 
















































































  
  
  
  
  
  

 



 



  

 



 






























  
  
  
  
  
  
  
  
  
  
  
  
  
 

 



  
 

 



  
 

















































  
  
  
  



















































	



 












 












 
	
template<class _Ty , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7, class _Arg8 , class _Arg9> inline
	shared_ptr<_Ty> make_shared(_Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4, _Arg5 && _Ax5, _Arg6 && _Ax6, _Arg7 && _Ax7, _Arg8 && _Ax8 , _Arg9 && _Ax9)
	{	
	_Ref_count_obj<_Ty> * _Rx = new _Ref_count_obj<_Ty>(::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4), ::std:: forward<_Arg5>(_Ax5), ::std:: forward<_Arg6>(_Ax6), ::std:: forward<_Arg7>(_Ax7), ::std:: forward<_Arg8>(_Ax8) , ::std:: forward<_Arg9>(_Ax9));

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}

	
template<class _Ty,
	class _Alloc , class _Arg0 , class _Arg1, class _Arg2, class _Arg3, class _Arg4, class _Arg5, class _Arg6, class _Arg7, class _Arg8 , class _Arg9> inline
		shared_ptr<_Ty> allocate_shared(
			const _Alloc& _Al_arg , _Arg0 && _Ax0 , _Arg1 && _Ax1, _Arg2 && _Ax2, _Arg3 && _Ax3, _Arg4 && _Ax4, _Arg5 && _Ax5, _Arg6 && _Ax6, _Arg7 && _Ax7, _Arg8 && _Ax8 , _Arg9 && _Ax9)
	{	
	typedef _Ref_count_obj_alloc<_Ty, _Alloc> _Refoa;
	typename _Alloc::template rebind<_Refoa>::other _Alref = _Al_arg;

	_Refoa * _Rx = _Alref.allocate(1);

	try {
		new (_Rx) _Refoa(_Al_arg , ::std:: forward<_Arg0>(_Ax0) , ::std:: forward<_Arg1>(_Ax1), ::std:: forward<_Arg2>(_Ax2), ::std:: forward<_Arg3>(_Ax3), ::std:: forward<_Arg4>(_Ax4), ::std:: forward<_Arg5>(_Ax5), ::std:: forward<_Arg6>(_Ax6), ::std:: forward<_Arg7>(_Ax7), ::std:: forward<_Arg8>(_Ax8) , ::std:: forward<_Arg9>(_Ax9));
	} catch (...) {
		_Alref.deallocate(_Rx, 1);
	throw;
	}

	shared_ptr<_Ty> _Ret;
	_Ret._Resetp0(_Rx->_Getptr(), _Rx);
	return (_Ret);
	}
 



















































































































































 

 

	
template<class _Ty>
	class weak_ptr
		: public _Ptr_base<_Ty>
	{	
	typedef typename _Ptr_base<_Ty>::_Elem _Elem;

public:
	weak_ptr()
		{	
		}

	template<class _Ty2>
		weak_ptr(const shared_ptr<_Ty2>& _Other,
			typename enable_if<is_convertible<_Ty2 *, _Ty *>::value,
				void *>::type * = 0)
		{	
		this->_Resetw(_Other);
		}

	weak_ptr(const weak_ptr& _Other)
		{	
		this->_Resetw(_Other);
		}

	template<class _Ty2>
		weak_ptr(const weak_ptr<_Ty2>& _Other,
			typename enable_if<is_convertible<_Ty2 *, _Ty *>::value,
				void *>::type * = 0)
		{	
		this->_Resetw(_Other);
		}

	~weak_ptr()
		{	
		this->_Decwref();
		}

	weak_ptr& operator=(const weak_ptr& _Right)
		{	
		this->_Resetw(_Right);
		return (*this);
		}

	template<class _Ty2>
		weak_ptr& operator=(const weak_ptr<_Ty2>& _Right)
		{	
		this->_Resetw(_Right);
		return (*this);
		}

	template<class _Ty2>
		weak_ptr& operator=(shared_ptr<_Ty2>& _Right)
		{	
		this->_Resetw(_Right);
		return (*this);
		}

	void reset()
		{	
		this->_Resetw();
		}

	void swap(weak_ptr& _Other)
		{	
		this->_Swap(_Other);
		}

	bool expired() const
		{	
		return (this->_Expired());
		}

	shared_ptr<_Ty> lock() const
		{	
		return (shared_ptr<_Elem>(*this, false));
		}
	};









template<class _Ty>
	void swap(weak_ptr<_Ty>& _W1, weak_ptr<_Ty>& _W2)
	{	
	_W1.swap(_W2);
	}

	
template<class _Ty> class enable_shared_from_this
	{	
public:
	typedef _Ty _EStype;

	shared_ptr<_Ty> shared_from_this()
		{	
		return (shared_ptr<_Ty>(_Wptr));
		}

	shared_ptr<const _Ty> shared_from_this() const
		{	
		return (shared_ptr<const _Ty>(_Wptr));
		}

protected:
	enable_shared_from_this()
		{	
		}

	enable_shared_from_this(const enable_shared_from_this&)
		{	
		}

	enable_shared_from_this& operator=(const enable_shared_from_this&)
		{	
		return (*this);
		}

	~enable_shared_from_this()
		{	
		}

private:
	template<class _Ty1,
		class _Ty2>
		friend void _Do_enable(
			_Ty1 *,
			enable_shared_from_this<_Ty2>*,
			_Ref_count_base *);

	mutable weak_ptr<_Ty> _Wptr;
	};

template<class _Ty1,
	class _Ty2>
	inline void _Do_enable(
		_Ty1 *_Ptr,
		enable_shared_from_this<_Ty2> *_Es,
		_Ref_count_base *_Refptr)
	{	
	_Es->_Wptr._Resetw(_Ptr, _Refptr);
	}
	}	
}
 

 
namespace std {
	

	
template<class _Ty>
	struct default_delete
	{	
	typedef default_delete<_Ty> _Myt;

	default_delete()
		{	
		}

	template<class _Ty2>
		default_delete(const default_delete<_Ty2>&)
		{	
		}

	void operator()(_Ty *_Ptr) const
		{	
		if (0 < sizeof (_Ty))	
			delete _Ptr;
		}
	};

template<class _Ty>
	struct default_delete<_Ty[]>
	{	
	typedef default_delete<_Ty> _Myt;

	default_delete()
		{	
		}

	void operator()(_Ty *_Ptr) const
		{	
		if (0 < sizeof (_Ty))	
			delete[] _Ptr;
		}

	template<class _Other>
		void operator()(_Other *) const;	
	};

	
::std:: tr1::_No _Has_pointer_type(...);

template<class _Ty>
	::std:: tr1::_Yes _Has_pointer_type(_Ty *,
		typename _Ty::pointer * = 0);

template<class _Ty,
	class _Dx,
	bool>
	struct _Hold_pointer_type
	{	
	typedef _Ty *pointer;
	};

template<class _Ty,
	class _Dx>
	struct _Hold_pointer_type<_Ty, _Dx, true>
	{	
	typedef typename _Dx::pointer pointer;
	};

 



	
template<class _Ty,
	class _Dx,
	bool _Empty_deleter>
	class _Unique_ptr_base
	{	
public:
	typedef typename tr1::remove_reference<_Dx>::type _Dx_noref;
	typedef typename _Hold_pointer_type<_Ty, _Dx_noref, (sizeof (_Has_pointer_type((_Dx_noref *)0)) == sizeof (::std:: tr1::_Yes))>::pointer pointer;

	_Unique_ptr_base(pointer _Ptr, _Dx _Dt)
		: _Myptr(_Ptr), _Mydel(_Dt)
		{	
		}

	template<class _Ptr2,
		class _Dx2>
		_Unique_ptr_base(_Ptr2 _Ptr, _Dx2 _Dt)
		: _Myptr(_Ptr), _Mydel(_Dt)
		{	
		}

	_Dx_noref& get_deleter()
		{	
		return (_Mydel);
		}

	const _Dx_noref& get_deleter() const
		{	
		return (_Mydel);
		}

	pointer _Myptr;	
	_Dx _Mydel;		
	};

template<class _Ty,
	class _Dx>
	class _Unique_ptr_base<_Ty, _Dx, true>
		: public _Dx
	{	
public:
	typedef _Dx _Mybase;
	typedef typename tr1::remove_reference<_Dx>::type _Dx_noref;
	typedef typename _Hold_pointer_type<_Ty, _Dx_noref, (sizeof (_Has_pointer_type((_Dx_noref *)0)) == sizeof (::std:: tr1::_Yes))>::pointer pointer;

	_Unique_ptr_base(pointer _Ptr, _Dx _Dt)
		: _Myptr(_Ptr), _Mybase(_Dt)
		{	
		}

	template<class _Ptr2,
		class _Dx2>
		_Unique_ptr_base(_Ptr2 _Ptr, _Dx2 _Dt)
		: _Myptr(_Ptr), _Mybase(_Dt)
		{	
		}

	_Dx_noref& get_deleter()
		{	
		return (*this);
		}

	const _Dx_noref& get_deleter() const
		{	
		return (*this);
		}

	pointer _Myptr;	
	};

	
template<class _Ty,
	class _Dx>	
	class unique_ptr
		: public _Unique_ptr_base<_Ty, _Dx,
			tr1::is_empty<_Dx>::value
				|| tr1::is_same<default_delete<_Ty>, _Dx>::value>
	{	
public:
	typedef unique_ptr<_Ty, _Dx> _Myt;
	typedef _Unique_ptr_base<_Ty, _Dx,
		tr1::is_empty<_Dx>::value
			|| tr1::is_same<default_delete<_Ty>, _Dx>::value> _Mybase;
	typedef typename _Mybase::pointer pointer;
	typedef _Ty element_type;
	typedef _Dx deleter_type;

	unique_ptr()
		: _Mybase(pointer(), _Dx())
		{	
		static_assert(!is_pointer<_Dx>::value,
			"unique_ptr constructed with null deleter pointer");
		}

 
	unique_ptr(::std:: nullptr_t)
		: _Mybase(pointer(), _Dx())
		{	
		static_assert(!is_pointer<_Dx>::value,
			"unique_ptr constructed with null deleter pointer");
		}

	_Myt& operator=(::std:: nullptr_t)
		{	
		reset();
		return (*this);
		}
 

	explicit unique_ptr(pointer _Ptr)
		: _Mybase(_Ptr, _Dx())
		{	
		static_assert(!is_pointer<_Dx>::value,
			"unique_ptr constructed with null deleter pointer");
		}

	unique_ptr(pointer _Ptr,
		typename _If<tr1::is_reference<_Dx>::value, _Dx,
			const typename tr1::remove_reference<_Dx>::type&>::_Type _Dt)
		: _Mybase(_Ptr, _Dt)
		{	
		}

	unique_ptr(pointer _Ptr, typename tr1::remove_reference<_Dx>::type&& _Dt)
		: _Mybase(_Ptr, ::std:: move(_Dt))
		{	


		}

	unique_ptr(unique_ptr&& _Right)
		: _Mybase(_Right.release(),
			::std:: forward<_Dx>(_Right.get_deleter()))
		{	
		}

	template<class _Ty2,
		class _Dx2>
		unique_ptr(unique_ptr<_Ty2, _Dx2>&& _Right)
			: _Mybase(_Right.release(),
				::std:: forward<_Dx2>(_Right.get_deleter()))
		{	
		}

	template<class _Ty2,
		class _Dx2>
		_Myt& operator=(unique_ptr<_Ty2, _Dx2>&& _Right)
		{	
		reset(_Right.release());
		this->get_deleter() = ::std:: move(_Right.get_deleter());
		return (*this);
		}

	_Myt& operator=(_Myt&& _Right)
		{	
		if (this != &_Right)
			{	
			reset(_Right.release());
			this->get_deleter() = ::std:: move(_Right.get_deleter());
			}
		return (*this);
		}

	void swap(_Myt&& _Right)
		{	
		if (this != &_Right)
			{	
			_Swap_adl(this->_Myptr, _Right._Myptr);
			_Swap_adl(this->get_deleter(),
				_Right.get_deleter());
			}
		}

	void swap(_Myt& _Right)
		{	
		_Swap_adl(this->_Myptr, _Right._Myptr);
		_Swap_adl(this->get_deleter(),
			_Right.get_deleter());
		}

	~unique_ptr()
		{	
		_Delete();
		}

	typename tr1::add_reference<_Ty>::type operator*() const
		{	
		return (*this->_Myptr);
		}

	pointer operator->() const
		{	
		return (&**this);
		}

	pointer get() const
		{	
		return (this->_Myptr);
		}

	operator ::std:: _Bool_type() const
		{	
		return (this->_Myptr != pointer() ? (&::std:: _Bool_struct::_Member) : 0);
		}

	pointer release()
		{	
		pointer _Ans = this->_Myptr;
		this->_Myptr = pointer();
		return (_Ans);
		}

	void reset(pointer _Ptr = pointer())
		{	
		if (_Ptr != this->_Myptr)
			{	
			_Delete();
			this->_Myptr = _Ptr;
			}
		}

private:
	void _Delete()
		{	
		if (this->_Myptr != pointer())
			this->get_deleter()(this->_Myptr);
		}

	unique_ptr(const _Myt&);	
	template<class _Ty2,
		class _Dx2>
		unique_ptr(const unique_ptr<_Ty2, _Dx2>&);	

	_Myt& operator=(const _Myt&);	
	template<class _Ty2,
		class _Dx2>
		_Myt& operator=(const unique_ptr<_Ty2, _Dx2>&);	
	};

	
template<class _Ty,
	class _Dx>
	class unique_ptr<_Ty[], _Dx>
		: public _Unique_ptr_base<_Ty, _Dx,
			tr1::is_empty<_Dx>::value
				|| tr1::is_same<default_delete<_Ty[]>, _Dx>::value>
	{	
public:
	typedef unique_ptr<_Ty[], _Dx> _Myt;
	typedef _Unique_ptr_base<_Ty, _Dx,
		tr1::is_empty<_Dx>::value
			|| tr1::is_same<default_delete<_Ty[]>, _Dx>::value> _Mybase;
	typedef typename _Mybase::pointer pointer;
	typedef _Ty element_type;
	typedef _Dx deleter_type;

	unique_ptr()
		: _Mybase(pointer(), _Dx())
		{	
		static_assert(!is_pointer<_Dx>::value,
			"unique_ptr constructed with null deleter pointer");
		}

	explicit unique_ptr(pointer _Ptr)
		: _Mybase(_Ptr, _Dx())
		{	
		static_assert(!is_pointer<_Dx>::value,
			"unique_ptr constructed with null deleter pointer");
		}

	unique_ptr(pointer _Ptr,
		typename _If<tr1::is_reference<_Dx>::value, _Dx,
			const typename tr1::remove_reference<_Dx>::type&>::_Type _Dt)
		: _Mybase(_Ptr, _Dt)
		{	
		}

public:
	unique_ptr(pointer _Ptr, typename tr1::remove_reference<_Dx>::type&& _Dt)
		: _Mybase(_Ptr, ::std:: move(_Dt))
		{	


		}

	unique_ptr(unique_ptr&& _Right)
		: _Mybase(_Right.release(),
			::std:: forward<_Dx>(_Right.get_deleter()))
		{	
		}

private:
	template<class _Ty2,
		class _Dx2>
		unique_ptr(unique_ptr<_Ty2, _Dx2>&& _Right);	

	template<class _Ty2,
		class _Dx2>
		_Myt& operator=(unique_ptr<_Ty2, _Dx2>&& _Right);	

public:
	_Myt& operator=(_Myt&& _Right)
		{	
		if (this != &_Right)
			{	
			reset(_Right.release());
			this->get_deleter() = ::std:: move(_Right.get_deleter());
			}
		return (*this);
		}

	void swap(_Myt&& _Right)
		{	
		if (this != &_Right)
			{	
			_Swap_adl(this->_Myptr, _Right._Myptr);
			_Swap_adl(this->get_deleter(),
				_Right.get_deleter());
			}
		}

 
	unique_ptr(::std:: nullptr_t)
		: _Mybase(pointer(), _Dx())
		{	
		static_assert(!is_pointer<_Dx>::value,
			"unique_ptr constructed with null deleter pointer");
		}

	_Myt& operator=(::std:: nullptr_t)
		{	
		reset();
		return (*this);
		}

	void reset(::std:: nullptr_t)
		{	
		if (this->_Myptr != 0)
			{	
			_Delete();
			this->_Myptr = 0;
			}
		}
 

	void swap(_Myt& _Right)
		{	
		_Swap_adl(this->_Myptr, _Right._Myptr);
		_Swap_adl(this->get_deleter(), _Right.get_deleter());
		}

	~unique_ptr()
		{	
		_Delete();
		}

	typename tr1::add_reference<_Ty>::type operator[](size_t _Idx) const
		{	
		return (this->_Myptr[_Idx]);
		}

	pointer get() const
		{	
		return (this->_Myptr);
		}

	operator ::std:: _Bool_type() const
		{	
		return (this->_Myptr != 0 ? (&::std:: _Bool_struct::_Member) : 0);
		}

	pointer release()
		{	
		pointer _Ans = this->_Myptr;
		this->_Myptr = pointer();
		return (_Ans);
		}

	void reset(pointer _Ptr = pointer())
		{	
		if (_Ptr != this->_Myptr)
			{	
			_Delete();
			this->_Myptr = _Ptr;
			}
		}

private:
	template<class _Ptr2>
		explicit unique_ptr(_Ptr2);	

	template<class _Ptr2,
		class _Dx2>
		unique_ptr(_Ptr2, _Dx2);	

	unique_ptr(const _Myt&);	
	template<class _Ty2,
		class _Dx2>
		unique_ptr(const unique_ptr<_Ty2, _Dx2>&);	

	_Myt& operator=(const _Myt&);	
	template<class _Ty2,
		class _Dx2>
		_Myt& operator=(const unique_ptr<_Ty2, _Dx2>&);	

	template<class _Ptr2>
		void reset(_Ptr2);	

	void _Delete()
		{	
		this->get_deleter()(this->_Myptr);
		}
	};

template<class _Ty,
	class _Dx>
	void swap(unique_ptr<_Ty, _Dx>& _Left,
		unique_ptr<_Ty, _Dx>& _Right)
	{	
	_Left.swap(_Right);
	}

template<class _Ty,
	class _Dx>
	void swap(unique_ptr<_Ty, _Dx>& _Left,
		unique_ptr<_Ty, _Dx>&& _Right)
	{	
	_Left.swap(_Right);
	}

template<class _Ty,
	class _Dx>
	void swap(unique_ptr<_Ty, _Dx>&& _Left,
		unique_ptr<_Ty, _Dx>& _Right)
	{	
	_Right.swap(_Left);
	}

template<class _Ty1,
	class _Dx1,
	class _Ty2,
	class _Dx2>
	bool operator==(const unique_ptr<_Ty1, _Dx1>& _Left,
		const unique_ptr<_Ty2, _Dx2>& _Right)
	{	
	return (_Left.get() == _Right.get());
	}

template<class _Ty1,
	class _Dx1,
	class _Ty2,
	class _Dx2>
	bool operator!=(const unique_ptr<_Ty1, _Dx1>& _Left,
		const unique_ptr<_Ty2, _Dx2>& _Right)
	{	
	return (!(_Left == _Right));
	}

template<class _Ty1,
	class _Dx1,
	class _Ty2,
	class _Dx2>
	bool operator<(const unique_ptr<_Ty1, _Dx1>& _Left,
		const unique_ptr<_Ty2, _Dx2>& _Right)
	{	
	return (_Left.get() < _Right.get());
	}

template<class _Ty1,
	class _Dx1,
	class _Ty2,
	class _Dx2>
	bool operator>=(const unique_ptr<_Ty1, _Dx1>& _Left,
		const unique_ptr<_Ty2, _Dx2>& _Right)
	{	
	return (!(_Left < _Right));
	}

template<class _Ty1,
	class _Dx1,
	class _Ty2,
	class _Dx2>
	bool operator>(const unique_ptr<_Ty1, _Dx1>& _Left,
		const unique_ptr<_Ty2, _Dx2>& _Right)
	{	
	return (_Right < _Left);
	}

template<class _Ty1,
	class _Dx1,
	class _Ty2,
	class _Dx2>
	bool operator<=(const unique_ptr<_Ty1, _Dx1>& _Left,
		const unique_ptr<_Ty2, _Dx2>& _Right)
	{	
	return (!(_Right < _Left));
	}

		
	namespace pointer_safety {
enum pointer_safety {	
	relaxed,
	preferred,
	strict
	};
	}	

typedef pointer_safety::pointer_safety _Pointer_safety;

inline void declare_reachable(void *)
	{	
	}

template<class _Ty> inline
	_Ty *undeclare_reachable(_Ty *_Ptr)
	{	
	return (_Ptr);
	}

inline void declare_no_pointers(char *, size_t)
	{	
	}

inline void undeclare_no_pointers(char *, size_t)
	{	
	}

inline _Pointer_safety get_pointer_safety()
	{	
	return (pointer_safety::relaxed);
	}

 
using tr1::allocate_shared;
using tr1::bad_weak_ptr;
using tr1::const_pointer_cast;
using tr1::dynamic_pointer_cast;
using tr1::enable_shared_from_this;
using tr1::get_deleter;
using tr1::make_shared;
using tr1::shared_ptr;
using tr1::static_pointer_cast;
using tr1::swap;
using tr1::weak_ptr;
 

		
template<class _Ty>
	struct owner_less;	

template<class _Ty>
	struct owner_less<shared_ptr<_Ty> >
		: public binary_function<shared_ptr<_Ty>, shared_ptr<_Ty>, bool>
	{	
	bool operator()(const shared_ptr<_Ty>& _Left,
		const shared_ptr<_Ty>& _Right) const
		{	
		return (_Left.owner_before(_Right));
		}

	bool operator()(const shared_ptr<_Ty>& _Left,
		const weak_ptr<_Ty>& _Right) const
		{	
		return (_Left.owner_before(_Right));
		}

	bool operator()(const weak_ptr<_Ty>& _Left,
		const shared_ptr<_Ty>& _Right) const
		{	
		return (_Left.owner_before(_Right));
		}
	};

template<class _Ty>
	struct owner_less<weak_ptr<_Ty> >
		: public binary_function<weak_ptr<_Ty>, weak_ptr<_Ty>, bool>
	{	
	bool operator()(const weak_ptr<_Ty>& _Left,
		const weak_ptr<_Ty>& _Right) const
		{	
		return (_Left.owner_before(_Right));
		}

	bool operator()(const weak_ptr<_Ty>& _Left,
		const shared_ptr<_Ty>& _Right) const
		{	
		return (_Left.owner_before(_Right));
		}

	bool operator()(const shared_ptr<_Ty>& _Left,
		const weak_ptr<_Ty>& _Right) const
		{	
		return (_Left.owner_before(_Right));
		}
	};
}
 

 

 #pragma warning(pop)
 #pragma pack(pop)





























#pragma once






 #pragma pack(push,8)
 #pragma warning(push,3)
namespace std {




		
class logic_error
	: public exception
	{	
public:
	typedef exception _Mybase;

	explicit logic_error(const string& _Message)
		: _Mybase(_Message.c_str())
		{	
		}

	explicit logic_error(const char *_Message)
		: _Mybase(_Message)
		{	
		}

 

 






	};

		
class domain_error
	: public logic_error
	{	
public:
	typedef logic_error _Mybase;

	explicit domain_error(const string& _Message)
		: _Mybase(_Message.c_str())
		{	
		}

	explicit domain_error(const char *_Message)
		: _Mybase(_Message)
		{	
		}

 

 






	};

		
class invalid_argument
	: public logic_error
	{	
public:
	typedef logic_error _Mybase;

	explicit invalid_argument(const string& _Message)
		: _Mybase(_Message.c_str())
		{	
		}

	explicit invalid_argument(const char *_Message)
		: _Mybase(_Message)
		{	
		}

 

 






	};

		
class length_error
	: public logic_error
	{	
public:
	typedef logic_error _Mybase;

	explicit length_error(const string& _Message)
		: _Mybase(_Message.c_str())
		{	
		}

	explicit length_error(const char *_Message)
		: _Mybase(_Message)
		{	
		}

 

 






	};

		
class out_of_range
	: public logic_error
	{	
public:
	typedef logic_error _Mybase;

	explicit out_of_range(const string& _Message)
		: _Mybase(_Message.c_str())
		{	
		}

	explicit out_of_range(const char *_Message)
		: _Mybase(_Message)
		{	
		}

 

 






	};

		
class runtime_error
	: public exception
	{	
public:
	typedef exception _Mybase;

	explicit runtime_error(const string& _Message)
		: _Mybase(_Message.c_str())
		{	
		}

	explicit runtime_error(const char *_Message)
		: _Mybase(_Message)
		{	
		}

 

 






	};

		
class overflow_error
	: public runtime_error
	{	
public:
	typedef runtime_error _Mybase;

	explicit overflow_error(const string& _Message)
		: _Mybase(_Message.c_str())
		{	
		}

	explicit overflow_error(const char *_Message)
		: _Mybase(_Message)
		{	
		}

 

 






	};

		
class underflow_error
	: public runtime_error
	{	
public:
	typedef runtime_error _Mybase;

	explicit underflow_error(const string& _Message)
		: _Mybase(_Message.c_str())
		{	
		}

	explicit underflow_error(const char *_Message)
		: _Mybase(_Message)
		{	
		}

 

 






	};

		
class range_error
	: public runtime_error
	{	
public:
	typedef runtime_error _Mybase;

	explicit range_error(const string& _Message)
		: _Mybase(_Message.c_str())
		{	
		}

	explicit range_error(const char *_Message)
		: _Mybase(_Message)
		{	
		}

 

 






	};
}
 #pragma warning(pop)
 #pragma pack(pop)










 #pragma pack(push,8)
 #pragma warning(push,3)

 #pragma warning(disable: 4127)
namespace std {
		
template<class _Mytree,
	class _Base = _Iterator_base0>
	class _Tree_unchecked_const_iterator
		: public _Iterator012<bidirectional_iterator_tag,
			typename _Mytree::value_type,
			typename _Mytree::difference_type,
			typename _Mytree::const_pointer,
			typename _Mytree::const_reference,
			_Base>
	{	
public:
	typedef _Tree_unchecked_const_iterator<_Mytree, _Base> _Myiter;
	typedef bidirectional_iterator_tag iterator_category;

	typedef typename _Mytree::_Nodeptr _Nodeptr;
	typedef typename _Mytree::value_type value_type;
	typedef typename _Mytree::difference_type difference_type;
	typedef typename _Mytree::const_pointer pointer;
	typedef typename _Mytree::const_reference reference;

	_Tree_unchecked_const_iterator()
		: _Ptr(0)
		{	
		}

	_Tree_unchecked_const_iterator(_Nodeptr _Pnode, const _Mytree *_Plist)
		: _Ptr(_Pnode)
		{	
		this->_Adopt(_Plist);
		}

	reference operator*() const
		{	
		return (_Mytree::_Myval(_Ptr));
		}

	pointer operator->() const
		{	
		return (&**this);
		}

	_Myiter& operator++()
		{	
		if (_Mytree::_Isnil(_Ptr))
			;	
		else if (!_Mytree::_Isnil(_Mytree::_Right(_Ptr)))
			_Ptr = _Mytree::_Min(
				_Mytree::_Right(_Ptr));	
		else
			{	
			_Nodeptr _Pnode;
			while (!_Mytree::_Isnil(_Pnode = _Mytree::_Parent(_Ptr))
				&& _Ptr == _Mytree::_Right(_Pnode))
				_Ptr = _Pnode;	
			_Ptr = _Pnode;	
			}
		return (*this);
		}

	_Myiter operator++(int)
		{	
		_Myiter _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Myiter& operator--()
		{	
		if (_Mytree::_Isnil(_Ptr))
			_Ptr = _Mytree::_Right(_Ptr);	
		else if (!_Mytree::_Isnil(_Mytree::_Left(_Ptr)))
			_Ptr = _Mytree::_Max(
				_Mytree::_Left(_Ptr));	
		else
			{	
			_Nodeptr _Pnode;
			while (!_Mytree::_Isnil(_Pnode = _Mytree::_Parent(_Ptr))
				&& _Ptr == _Mytree::_Left(_Pnode))
				_Ptr = _Pnode;	
			if (_Mytree::_Isnil(_Ptr))
				;	
			else
				_Ptr = _Pnode;	
			}
		return (*this);
		}

	_Myiter operator--(int)
		{	
		_Myiter _Tmp = *this;
		--*this;
		return (_Tmp);
		}

	bool operator==(const _Myiter& _Right) const
		{	
		return (_Ptr == _Right._Ptr);
		}

	bool operator!=(const _Myiter& _Right) const
		{	
		return (!(*this == _Right));
		}

	_Nodeptr _Mynode() const
		{	
		return (_Ptr);
		}

	_Nodeptr _Ptr;	
	};

	
template<class _Mytree>
	class _Tree_unchecked_iterator
		: public _Tree_unchecked_const_iterator<_Mytree>
	{	
public:
	typedef _Tree_unchecked_iterator<_Mytree> _Myiter;
	typedef _Tree_unchecked_const_iterator<_Mytree> _Mybase;
	typedef bidirectional_iterator_tag iterator_category;

	typedef typename _Mytree::_Nodeptr _Nodeptr;
	typedef typename _Mytree::value_type value_type;
	typedef typename _Mytree::difference_type difference_type;
	typedef typename _Mytree::pointer pointer;
	typedef typename _Mytree::reference reference;

	_Tree_unchecked_iterator()
		{	
		}

	_Tree_unchecked_iterator(_Nodeptr _Pnode, const _Mytree *_Plist)
		: _Mybase(_Pnode, _Plist)
		{	
		}

	reference operator*() const
		{	
		return ((reference)**(_Mybase *)this);
		}

	pointer operator->() const
		{	
		return (&**this);
		}

	_Myiter& operator++()
		{	
		++(*(_Mybase *)this);
		return (*this);
		}

	_Myiter operator++(int)
		{	
		_Myiter _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Myiter& operator--()
		{	
		--(*(_Mybase *)this);
		return (*this);
		}

	_Myiter operator--(int)
		{	
		_Myiter _Tmp = *this;
		--*this;
		return (_Tmp);
		}
	};

	
template<class _Mytree>
	class _Tree_const_iterator
		: public _Tree_unchecked_const_iterator<_Mytree, _Iterator_base>
	{	
public:
	typedef _Tree_const_iterator<_Mytree> _Myiter;
	typedef _Tree_unchecked_const_iterator<_Mytree, _Iterator_base> _Mybase;
	typedef bidirectional_iterator_tag iterator_category;

	typedef typename _Mytree::_Nodeptr _Nodeptr;
	typedef typename _Mytree::value_type value_type;
	typedef typename _Mytree::difference_type difference_type;
	typedef typename _Mytree::const_pointer pointer;
	typedef typename _Mytree::const_reference reference;

	_Tree_const_iterator()
		: _Mybase()
		{	
		}

	_Tree_const_iterator(_Nodeptr _Pnode, const _Mytree *_Plist)
		: _Mybase(_Pnode, _Plist)
		{	
		}

	typedef _Tree_unchecked_const_iterator<_Mytree> _Unchecked_type;

	_Myiter& _Rechecked(_Unchecked_type _Right)
		{	
		this->_Ptr = _Right._Ptr;
		return (*this);
		}

	_Unchecked_type _Unchecked() const
		{	
		return (_Unchecked_type(this->_Ptr, (_Mytree *)this->_Getcont()));
		}

	reference operator*() const
		{	
 
		if (this->_Getcont() == 0
			|| this->_Ptr == 0
			|| this->_Ptr == ((_Mytree *)this->_Getcont())->_Myhead)
			{	
			_Debug_message(L"map/set iterator not dereferencable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 236);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 237, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 237, 0); };
			}

 





		return (_Mytree::_Myval(this->_Ptr));
		}

	_Myiter& operator++()
		{	
 
		if (this->_Getcont() == 0
			|| this->_Ptr == 0
			|| _Mytree::_Isnil(this->_Ptr))
			{	
			_Debug_message(L"map/set iterator not incrementable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 256);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 257, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 257, 0); };
			}

 




		++(*(_Mybase *)this);
		return (*this);
		}

	_Myiter operator++(int)
		{	
		_Myiter _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Myiter& operator--()
		{	
 
		if (this->_Getcont() == 0
			|| this->_Ptr == 0)
			{	
			_Debug_message(L"map/set iterator not decrementable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 282);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 283, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 283, 0); };
			}

		_Nodeptr _Ptrsav = this->_Ptr;
		--(*(_Mybase *)this);
		if (_Ptrsav == this->_Ptr)
			{	
			_Debug_message(L"map/set iterator not decrementable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 290);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 291, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 291, 0); };
			}

 










		return (*this);
		}

	_Myiter operator--(int)
		{	
		_Myiter _Tmp = *this;
		--*this;
		return (_Tmp);
		}

	bool operator==(const _Myiter& _Right) const
		{	
 
		if (this->_Getcont() == 0
			|| this->_Getcont() != _Right._Getcont())
			{	
			_Debug_message(L"map/set iterators incompatible", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 321);
			{ (void) ((!!(("Standard C++ Libraries Invalid Argument" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 322, 0, L"\"Standard C++ Libraries Invalid Argument\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 322, 0); };
			}

 




		return (this->_Ptr == _Right._Ptr);
		}

	bool operator!=(const _Myiter& _Right) const
		{	
		return (!(*this == _Right));
		}
	};

template<class _Mytree> inline
	typename _Tree_const_iterator<_Mytree>::_Unchecked_type
		_Unchecked(_Tree_const_iterator<_Mytree> _Iter)
	{	
	return (_Iter._Unchecked());
	}

template<class _Mytree> inline
	_Tree_const_iterator<_Mytree>&
		_Rechecked(_Tree_const_iterator<_Mytree>& _Iter,
			typename _Tree_const_iterator<_Mytree>
				::_Unchecked_type _Right)
	{	
	return (_Iter._Rechecked(_Right));
	}

	
template<class _Mytree>
	class _Tree_iterator
		: public _Tree_const_iterator<_Mytree>
	{	
public:
	typedef _Tree_iterator<_Mytree> _Myiter;
	typedef _Tree_const_iterator<_Mytree> _Mybase;
	typedef bidirectional_iterator_tag iterator_category;

	typedef typename _Mytree::_Nodeptr _Nodeptr;
	typedef typename _Mytree::value_type value_type;
	typedef typename _Mytree::difference_type difference_type;

	typedef typename _Mytree::pointer pointer;
	typedef typename _Mytree::reference reference;

	_Tree_iterator()
		{	
		}

	_Tree_iterator(_Nodeptr _Pnode, const _Mytree *_Plist)
		: _Mybase(_Pnode, _Plist)
		{	
		}

	typedef _Tree_unchecked_iterator<_Mytree> _Unchecked_type;

	_Myiter& _Rechecked(_Unchecked_type _Right)
		{	
		this->_Ptr = _Right._Ptr;
		return (*this);
		}

	_Unchecked_type _Unchecked() const
		{	
		return (_Unchecked_type(this->_Ptr, (_Mytree *)this->_Getcont()));
		}

	reference operator*() const
		{	
		return ((reference)**(_Mybase *)this);
		}

	pointer operator->() const
		{	
		return (&**this);
		}

	_Myiter& operator++()
		{	
		++(*(_Mybase *)this);
		return (*this);
		}

	_Myiter operator++(int)
		{	
		_Myiter _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Myiter& operator--()
		{	
		--(*(_Mybase *)this);
		return (*this);
		}

	_Myiter operator--(int)
		{	
		_Myiter _Tmp = *this;
		--*this;
		return (_Tmp);
		}
	};

template<class _Mytree> inline
	typename _Tree_iterator<_Mytree>::_Unchecked_type
		_Unchecked(_Tree_iterator<_Mytree> _Iter)
	{	
	return (_Iter._Unchecked());
	}

template<class _Mytree> inline
	_Tree_iterator<_Mytree>&
		_Rechecked(_Tree_iterator<_Mytree>& _Iter,
			typename _Tree_iterator<_Mytree>
				::_Unchecked_type _Right)
	{	
	return (_Iter._Rechecked(_Right));
	}

		
template<class _Traits>
	class _Tree_nod
		: public _Traits	
	{	
public:
	typedef typename _Traits::allocator_type allocator_type;
	typedef typename _Traits::key_compare key_compare;
	typedef typename _Traits::value_type value_type;

	typedef typename allocator_type::template rebind<value_type>::other
		_Alty;
	typedef typename _Alty::size_type size_type;

	struct _Node;
	typedef _Node *_Nodeptr;	
	typedef _Nodeptr& _Nodepref;

	struct _Node
		{	
		_Nodeptr _Left;	
		_Nodeptr _Parent;	
		_Nodeptr _Right;	
		value_type _Myval;	
		char _Color;	
		char _Isnil;	

	private:
		_Node& operator=(const _Node&);
		};

 







	_Tree_nod(const key_compare& _Parg,
		allocator_type _Al)
		: _Traits(_Parg), _Alnod(_Al), _Alval(_Al)
		{	
		typename allocator_type::template rebind<_Container_proxy>::other
			_Alproxy(_Alnod);
		this->_Myproxy = _Alproxy.allocate(1);
		_Cons_val(_Alproxy, this->_Myproxy, _Container_proxy());
		this->_Myproxy->_Mycont = this;
		}

	~_Tree_nod()
		{	
		typename allocator_type::template rebind<_Container_proxy>::other
			_Alproxy(_Alnod);
		this->_Orphan_all();
		_Dest_val(_Alproxy, this->_Myproxy);
		_Alproxy.deallocate(this->_Myproxy, 1);
		this->_Myproxy = 0;
		}
 

	_Nodeptr _Myhead;	
	size_type _Mysize;	

	typename allocator_type::template rebind<_Node>::other
		_Alnod;	
	_Alty _Alval;	
	};

		
template<class _Traits>
	class _Tree_val
		: public _Tree_nod<_Traits>
	{	
public:
	typedef _Tree_nod<_Traits> _Mybase;
	typedef typename _Traits::allocator_type allocator_type;
	typedef typename _Traits::key_compare key_compare;
	typedef typename _Traits::key_type key_type;

	typedef typename _Mybase::_Nodeptr _Nodeptr;
	typedef typename _Mybase::_Nodepref _Nodepref;
	typedef typename _Mybase::_Alty _Alty;

	typedef typename _Alty::size_type size_type;
	typedef typename _Alty::difference_type difference_type;
	typedef typename _Alty::pointer pointer;
	typedef typename _Alty::const_pointer const_pointer;
	typedef typename _Alty::reference reference;
	typedef typename _Alty::const_reference const_reference;
	typedef typename _Alty::value_type value_type;

	_Tree_val(const key_compare& _Parg,
		allocator_type _Al)
		: _Mybase(_Parg, _Al)
		{	
		this->_Mysize = 0;
		this->_Myhead = this->_Alnod.allocate(1);

		this->_Left(this->_Myhead) = this->_Myhead;
		this->_Parent(this->_Myhead) = this->_Myhead;
		this->_Right(this->_Myhead) = this->_Myhead;
		this->_Color(this->_Myhead) = this->_Black;
		this->_Isnil(this->_Myhead) = true;
		}

	~_Tree_val()
		{	
		this->_Alnod.deallocate(this->_Myhead, 1);
		}

	_Nodeptr _Buynode()
		{	
		_Nodeptr _Wherenode = this->_Alnod.allocate(1);

		this->_Left(_Wherenode) = this->_Myhead;
		this->_Parent(_Wherenode) = this->_Myhead;
		this->_Right(_Wherenode) = this->_Myhead;
		this->_Color(_Wherenode) = this->_Red;
		this->_Isnil(_Wherenode) = false;
		return (_Wherenode);
		}

	_Nodeptr _Buynode(const value_type& _Val)
		{	
		_Nodeptr _Wherenode = _Buynode();

		try {
		_Cons_val(this->_Alval, ::std:: addressof(this->_Myval(_Wherenode)),
			_Val);
		} catch (...) {
		this->_Alnod.deallocate(_Wherenode, 1);
		throw;
		}

		return (_Wherenode);
		}

	template<class _Valty>
		_Nodeptr _Buynode(_Valty&& _Val)
		{	
		_Nodeptr _Wherenode = _Buynode();

		try {
		_Cons_val(this->_Alval, ::std:: addressof(this->_Myval(_Wherenode)),
			::std:: forward<_Valty>(_Val));
		} catch (...) {
		this->_Alnod.deallocate(_Wherenode, 1);
		throw;
		}

		return (_Wherenode);
		}

	enum _Redbl
		{	
		_Red, _Black};

	static char& _Color(_Nodeptr _Pnode)
		{	
		return ((char&)(*_Pnode)._Color);
		}

	static char& _Isnil(_Nodeptr _Pnode)
		{	
		return ((char&)(*_Pnode)._Isnil);
		}

	static key_type& _Key(_Nodeptr _Pnode)
		{	
		return ((key_type&)_Traits::_Kfn(_Myval(_Pnode)));
		}

	static _Nodepref _Left(_Nodeptr _Pnode)
		{	
		return ((_Nodepref)(*_Pnode)._Left);
		}

	static _Nodepref _Parent(_Nodeptr _Pnode)
		{	
		return ((_Nodepref)(*_Pnode)._Parent);
		}

	static _Nodepref _Right(_Nodeptr _Pnode)
		{	
		return ((_Nodepref)(*_Pnode)._Right);
		}

	static reference _Myval(_Nodeptr _Pnode)
		{	
		return ((reference)(*_Pnode)._Myval);
		}

	static _Nodeptr _Max(_Nodeptr _Pnode)
		{	
		while (!_Isnil(_Right(_Pnode)))
			_Pnode = _Right(_Pnode);
		return (_Pnode);
		}

	static _Nodeptr _Min(_Nodeptr _Pnode)
		{	
		while (!_Isnil(_Left(_Pnode)))
			_Pnode = _Left(_Pnode);
		return (_Pnode);
		}
	};

		
template<class _Traits>
	class _Tree
		: public _Tree_val<_Traits>
	{	
public:
	typedef _Tree<_Traits> _Myt;
	typedef _Tree_val<_Traits> _Mybase;
	typedef typename _Mybase::_Val_type _Val_type;
	typedef typename _Mybase::_Node _Node;
	typedef typename _Mybase::_Nodeptr _Nodeptr;

	typedef typename _Traits::key_type key_type;
	typedef typename _Traits::key_compare key_compare;
	typedef typename _Traits::value_compare value_compare;
	typedef typename _Traits::value_type value_type;
	typedef typename _Traits::allocator_type allocator_type;

	typedef typename allocator_type::size_type size_type;
	typedef typename allocator_type::difference_type difference_type;
	typedef typename allocator_type::pointer pointer;
	typedef typename allocator_type::const_pointer const_pointer;
	typedef typename allocator_type::reference reference;
	typedef typename allocator_type::const_reference const_reference;

	typedef _Tree_const_iterator<_Mybase>
		const_iterator;

	typedef typename ::std:: tr1::conditional<
		::std:: tr1::is_same<key_type, value_type>::value,
		const_iterator,
		_Tree_iterator<_Mybase> >::type iterator;

	typedef ::std:: reverse_iterator<iterator> reverse_iterator;
	typedef ::std:: reverse_iterator<const_iterator> const_reverse_iterator;

	typedef pair<iterator, bool> _Pairib;
	typedef pair<iterator, iterator> _Pairii;
	typedef pair<const_iterator, const_iterator> _Paircc;

	explicit _Tree(const key_compare& _Parg,
		const allocator_type& _Al)
		: _Mybase(_Parg, _Al)
		{	
		}

	_Tree(const value_type *_First, const value_type *_Last,
		const key_compare& _Parg, const allocator_type& _Al)
		: _Mybase(_Parg, _Al)
		{	
		try {
		insert(_First, _Last);
		} catch (...) {
		_Tidy();
		throw;
		}
		}

	_Tree(const _Myt& _Right)
		: _Mybase(_Right.key_comp(), _Right._Alval)
		{	
		try {
		_Copy(_Right);
		} catch (...) {
		_Tidy();
		throw;
		}
		}

	_Tree(_Myt&& _Right)
		: _Mybase(_Right.key_comp(), _Right._Alval)
		{	
		_Assign_rv(::std:: forward<_Myt>(_Right));
		}

	_Myt& operator=(_Myt&& _Right)
		{	
		_Assign_rv(::std:: forward<_Myt>(_Right));
		return (*this);
		}

	void _Assign_rv(_Myt&& _Right)
		{	
		if (this == &_Right)
			;
		else if (get_allocator() != _Right.get_allocator())
			_Xinvalid_argument("invalid map/set<T> move assign");
		else
			{	
			clear();
			this->_Swap_all(_Right);
			_Swap_adl(this->comp, _Right.comp);
			::std:: swap(this->_Myhead, _Right._Myhead);
			::std:: swap(this->_Mysize, _Right._Mysize);
			}
		}

	template<class _Valty>
		_Pairib insert(_Valty&& _Val)
		{	
		return (_Linsert(this->_Buynode(::std:: forward<_Valty>(_Val)),
			false));
		}

	template<class _Valty>
		typename ::std:: tr1::enable_if<!::std:: tr1::is_same<const_iterator,
			typename ::std:: tr1::remove_reference<_Valty>::type>::value,
				iterator>::type
		insert(const_iterator _Where,
			_Valty&& _Val)
		{	
		return (_Insert(_Where,
			this->_Buynode(::std:: forward<_Valty>(_Val))));
		}

	template<class _Valty>
		_Pairib emplace(_Valty&& _Val)
		{	
		return (_Linsert(this->_Buynode(::std:: forward<_Valty>(_Val)),
			false));
		}

	template<class _Valty>
		iterator emplace_hint(const_iterator _Where, _Valty&& _Val)
		{	
		return (_Insert(_Where,
			this->_Buynode(::std:: forward<_Valty>(_Val))));
		}

	void swap(_Myt&& _Right)
		{	
		_Assign_rv(::std:: forward<_Myt>(_Right));
		}

	~_Tree()
		{	
		_Tidy();
		}

	_Myt& operator=(const _Myt& _Right)
		{	
		if (this != &_Right)
			{	
			erase(begin(), end());
			this->comp = _Right.comp;
			_Copy(_Right);
			}
		return (*this);
		}

	iterator begin()
		{	
		return (iterator(_Lmost(), this));
		}

	const_iterator begin() const
		{	
		return (const_iterator(_Lmost(), this));
		}

	iterator end()
		{	
		return (iterator(this->_Myhead, this));
		}

	const_iterator end() const
		{	
		return (const_iterator(this->_Myhead, this));
		}

	reverse_iterator rbegin()
		{	
		return (reverse_iterator(end()));
		}

	const_reverse_iterator rbegin() const
		{	
		return (const_reverse_iterator(end()));
		}

	reverse_iterator rend()
		{	
		return (reverse_iterator(begin()));
		}

	const_reverse_iterator rend() const
		{	
		return (const_reverse_iterator(begin()));
		}

 
	const_iterator cbegin() const
		{	
		return (((const _Myt *)this)->begin());
		}

	const_iterator cend() const
		{	
		return (((const _Myt *)this)->end());
		}

	const_reverse_iterator crbegin() const
		{	
		return (((const _Myt *)this)->rbegin());
		}

	const_reverse_iterator crend() const
		{	
		return (((const _Myt *)this)->rend());
		}
 

	size_type size() const
		{	
		return (this->_Mysize);
		}

	size_type max_size() const
		{	
		return (this->_Alval.max_size());
		}

	bool empty() const
		{	
		return (size() == 0);
		}

	allocator_type get_allocator() const
		{	
		return (this->_Alval);
		}

	key_compare key_comp() const
		{	
		return (this->comp);
		}

	value_compare value_comp() const
		{	
		return (value_compare(key_comp()));
		}

	_Pairib insert(const value_type& _Val)
		{	
		return (insert(_Val, false));
		}

	_Pairib insert(const value_type& _Val, bool _Leftish)
		{	
		_Nodeptr _Trynode = _Root();
		_Nodeptr _Wherenode = this->_Myhead;
		bool _Addleft = true;	
		while (!this->_Isnil(_Trynode))
			{	
			_Wherenode = _Trynode;
			if (_Leftish)
				_Addleft = !_Debug_lt_pred(this->comp, this->_Key(_Trynode), this->_Kfn(_Val), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 913);	
			else
				_Addleft = _Debug_lt_pred(this->comp, this->_Kfn(_Val), this->_Key(_Trynode), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 917);	
			_Trynode = _Addleft ? this->_Left(_Trynode)
				: this->_Right(_Trynode);
			}

		if (this->_Multi)
			return (_Pairib(_Insert(_Addleft, _Wherenode, _Val), true));
		else
			{	
			iterator _Where = iterator(_Wherenode, this);
			if (!_Addleft)
				;	
			else if (_Where == begin())
				return (_Pairib(_Insert(true, _Wherenode, _Val), true));
			else
				--_Where;	

			if (_Debug_lt_pred(this->comp, this->_Key(_Where._Mynode()), this->_Kfn(_Val), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 936))
				return (_Pairib(_Insert(_Addleft, _Wherenode, _Val), true));
			else
				return (_Pairib(_Where, false));
			}
		}

	_Pairib _Linsert(_Nodeptr _Node, bool _Leftish)
		{	
		const value_type& _Val = this->_Myval(_Node);

		_Nodeptr _Trynode = _Root();
		_Nodeptr _Wherenode = this->_Myhead;
		bool _Addleft = true;	
		while (!this->_Isnil(_Trynode))
			{	
			_Wherenode = _Trynode;
			if (_Leftish)
				_Addleft = !_Debug_lt_pred(this->comp, this->_Key(_Trynode), this->_Kfn(_Val), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 956);	
			else
				_Addleft = _Debug_lt_pred(this->comp, this->_Kfn(_Val), this->_Key(_Trynode), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 960);	
			_Trynode = _Addleft ? this->_Left(_Trynode)
				: this->_Right(_Trynode);
			}

		if (this->_Multi)
			return (_Pairib(_Insert(_Addleft, _Wherenode, _Node), true));
		else
			{	
			iterator _Where = iterator(_Wherenode, this);
			if (!_Addleft)
				;	
			else if (_Where == begin())
				return (_Pairib(_Insert(true, _Wherenode, _Node), true));
			else
				--_Where;	

			if (_Debug_lt_pred(this->comp, this->_Key(_Where._Mynode()), this->_Kfn(_Val), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 979))
				return (_Pairib(_Insert(_Addleft, _Wherenode, _Node), true));
			else
				{	
				_Dest_val(this->_Alval,
					::std:: addressof(this->_Myval(_Node)));

				this->_Alnod.deallocate(_Node, 1);

				return (_Pairib(_Where, false));
				}
			}
		}

	iterator insert(const_iterator _Where,
		const value_type& _Val)
		{	
 
		if (_Where._Getcont() != this)
			_Debug_message(L"map/set insert iterator outside range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 998);
 

		const_iterator _Next;
		bool _Leftish = false;	

		if (size() == 0)
			return (_Insert(true, this->_Myhead, _Val));	
		else if (this->_Multi)
			{	
			if (_Where == begin())
				{	
				if (!_Debug_lt_pred(this->comp, this->_Key(_Where._Mynode()), this->_Kfn(_Val), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1011))
					return (_Insert(true, _Where._Mynode(), _Val));
				_Leftish = true;	
				}
			else if (_Where == end())
				{	
				if (!_Debug_lt_pred(this->comp, this->_Kfn(_Val), this->_Key(_Rmost()), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1018))
					return (_Insert(false, _Rmost(), _Val));
				}
			else if (!_Debug_lt_pred(this->comp, this->_Key(_Where._Mynode()), this->_Kfn(_Val), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1022)
				&& !_Debug_lt_pred(this->comp, this->_Kfn(_Val), this->_Key((--(_Next = _Where))._Mynode()), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1025))
				{	
				if (this->_Isnil(this->_Right(_Next._Mynode())))
					return (_Insert(false, _Next._Mynode(), _Val));
				else
					return (_Insert(true, _Where._Mynode(), _Val));
				}
			else if (!_Debug_lt_pred(this->comp, this->_Kfn(_Val), this->_Key(_Where._Mynode()), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1033)
				&& (++(_Next = _Where) == end()
					|| !_Debug_lt_pred(this->comp, this->_Key(_Next._Mynode()), this->_Kfn(_Val), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1036)))
				{	
				if (this->_Isnil(this->_Right(_Where._Mynode())))
					return (_Insert(false, _Where._Mynode(), _Val));
				else
					return (_Insert(true, _Next._Mynode(), _Val));
				}
			else
				_Leftish = true;	
			}
		else
			{	
			if (_Where == begin())
				{	
				if (_Debug_lt_pred(this->comp, this->_Kfn(_Val), this->_Key(_Where._Mynode()), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1051))
					return (_Insert(true, _Where._Mynode(), _Val));
				}
			else if (_Where == end())
				{	
				if (_Debug_lt_pred(this->comp, this->_Key(_Rmost()), this->_Kfn(_Val), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1057))
					return (_Insert(false, _Rmost(), _Val));
				}
			else if (_Debug_lt_pred(this->comp, this->_Kfn(_Val), this->_Key(_Where._Mynode()), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1061)
				&& _Debug_lt_pred(this->comp, this->_Key((--(_Next = _Where))._Mynode()), this->_Kfn(_Val), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1064))
				{	
				if (this->_Isnil(this->_Right(_Next._Mynode())))
					return (_Insert(false, _Next._Mynode(), _Val));
				else
					return (_Insert(true, _Where._Mynode(), _Val));
				}
			else if (_Debug_lt_pred(this->comp, this->_Key(_Where._Mynode()), this->_Kfn(_Val), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1072)
				&& (++(_Next = _Where) == end()
					|| _Debug_lt_pred(this->comp, this->_Kfn(_Val), this->_Key(_Next._Mynode()), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1075)))
				{	
				if (this->_Isnil(this->_Right(_Where._Mynode())))
					return (_Insert(false, _Where._Mynode(), _Val));
				else
					return (_Insert(true, _Next._Mynode(), _Val));
				}
			}

		return (insert(_Val, _Leftish).first);	
		}

	iterator _Insert(const_iterator _Where,
		_Nodeptr _Node)
		{	
 
		if (_Where._Getcont() != this)
			_Debug_message(L"map/set insert iterator outside range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1092);
 

		const value_type& _Val = this->_Myval(_Node);

		const_iterator _Next;
		bool _Leftish = false;	

		if (size() == 0)
			return (_Insert(true, this->_Myhead, _Node));	
		else if (this->_Multi)
			{	
			if (_Where == begin())
				{	
				if (!_Debug_lt_pred(this->comp, this->_Key(_Where._Mynode()), this->_Kfn(_Val), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1107))
					return (_Insert(true, _Where._Mynode(), _Node));
				_Leftish = true;	
				}
			else if (_Where == end())
				{	
				if (!_Debug_lt_pred(this->comp, this->_Kfn(_Val), this->_Key(_Rmost()), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1114))
					return (_Insert(false, _Rmost(), _Node));
				}
			else if (!_Debug_lt_pred(this->comp, this->_Key(_Where._Mynode()), this->_Kfn(_Val), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1118)
				&& !_Debug_lt_pred(this->comp, this->_Kfn(_Val), this->_Key((--(_Next = _Where))._Mynode()), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1121))
				{	
				if (this->_Isnil(this->_Right(_Next._Mynode())))
					return (_Insert(false, _Next._Mynode(), _Node));
				else
					return (_Insert(true, _Where._Mynode(), _Node));
				}
			else if (!_Debug_lt_pred(this->comp, this->_Kfn(_Val), this->_Key(_Where._Mynode()), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1129)
				&& (++(_Next = _Where) == end()
					|| !_Debug_lt_pred(this->comp, this->_Key(_Next._Mynode()), this->_Kfn(_Val), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1132)))
				{	
				if (this->_Isnil(this->_Right(_Where._Mynode())))
					return (_Insert(false, _Where._Mynode(), _Node));
				else
					return (_Insert(true, _Next._Mynode(), _Node));
				}
			else
				_Leftish = true;	
			}
		else
			{	
			if (_Where == begin())
				{	
				if (_Debug_lt_pred(this->comp, this->_Kfn(_Val), this->_Key(_Where._Mynode()), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1147))
					return (_Insert(true, _Where._Mynode(), _Node));
				}
			else if (_Where == end())
				{	
				if (_Debug_lt_pred(this->comp, this->_Key(_Rmost()), this->_Kfn(_Val), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1153))
					return (_Insert(false, _Rmost(), _Node));
				}
			else if (_Debug_lt_pred(this->comp, this->_Kfn(_Val), this->_Key(_Where._Mynode()), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1157)
				&& _Debug_lt_pred(this->comp, this->_Key((--(_Next = _Where))._Mynode()), this->_Kfn(_Val), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1160))
				{	
				if (this->_Isnil(this->_Right(_Next._Mynode())))
					return (_Insert(false, _Next._Mynode(), _Node));
				else
					return (_Insert(true, _Where._Mynode(), _Node));
				}
			else if (_Debug_lt_pred(this->comp, this->_Key(_Where._Mynode()), this->_Kfn(_Val), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1168)
				&& (++(_Next = _Where) == end()
					|| _Debug_lt_pred(this->comp, this->_Kfn(_Val), this->_Key(_Next._Mynode()), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1171)))
				{	
				if (this->_Isnil(this->_Right(_Where._Mynode())))
					return (_Insert(false, _Where._Mynode(), _Node));
				else
					return (_Insert(true, _Next._Mynode(), _Node));
				}
			}

		return (_Linsert(_Node, _Leftish).first);	
		}

	template<class _Iter>
		void insert(_Iter _First, _Iter _Last)
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1186);
		for (; _First != _Last; ++_First)
			{	
			const value_type& _Val = *_First;
			insert(end(), _Val);
			}
		}

	iterator erase(const_iterator _Where)
		{	
 
		if (_Where._Getcont() != this || this->_Isnil(_Where._Mynode()))
			_Debug_message(L"map/set erase iterator outside range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1198);
		_Nodeptr _Erasednode = _Where._Mynode();	
		++_Where;	
		_Orphan_ptr(*this, _Erasednode);

 






		_Nodeptr _Fixnode;	
		_Nodeptr _Fixnodeparent;	
		_Nodeptr _Pnode = _Erasednode;

		if (this->_Isnil(this->_Left(_Pnode)))
			_Fixnode = this->_Right(_Pnode);	
		else if (this->_Isnil(this->_Right(_Pnode)))
			_Fixnode = this->_Left(_Pnode);	
		else
			{	
			_Pnode = _Where._Mynode();	
			_Fixnode = this->_Right(_Pnode);	
			}

		if (_Pnode == _Erasednode)
			{	
			_Fixnodeparent = this->_Parent(_Erasednode);
			if (!this->_Isnil(_Fixnode))
				this->_Parent(_Fixnode) = _Fixnodeparent;	

			if (_Root() == _Erasednode)
				_Root() = _Fixnode;	
			else if (this->_Left(_Fixnodeparent) == _Erasednode)
				this->_Left(_Fixnodeparent) = _Fixnode;	
			else
				this->_Right(_Fixnodeparent) =
					_Fixnode;	

			if (_Lmost() == _Erasednode)
				_Lmost() = this->_Isnil(_Fixnode)
					? _Fixnodeparent	
					: this->_Min(_Fixnode);	

			if (_Rmost() == _Erasednode)
				_Rmost() = this->_Isnil(_Fixnode)
					? _Fixnodeparent	
					: this->_Max(_Fixnode);	
			}
		else
			{	
			this->_Parent(this->_Left(_Erasednode)) =
				_Pnode;	
			this->_Left(_Pnode) =
				this->_Left(_Erasednode);	

			if (_Pnode == this->_Right(_Erasednode))
				_Fixnodeparent = _Pnode;	
			else
				{	
				_Fixnodeparent =
					this->_Parent(_Pnode);	
				if (!this->_Isnil(_Fixnode))
					this->_Parent(_Fixnode) = _Fixnodeparent;	
				this->_Left(_Fixnodeparent) = _Fixnode;	
				this->_Right(_Pnode) =
					this->_Right(_Erasednode);	
				this->_Parent(this->_Right(_Erasednode)) =
					_Pnode;	
				}

			if (_Root() == _Erasednode)
				_Root() = _Pnode;	
			else if (this->_Left(this->_Parent(_Erasednode)) == _Erasednode)
				this->_Left(this->_Parent(_Erasednode)) =
					_Pnode;	
			else
				this->_Right(this->_Parent(_Erasednode)) =
					_Pnode;	

			this->_Parent(_Pnode) =
				this->_Parent(_Erasednode);	
			::std:: swap(this->_Color(_Pnode),
				this->_Color(_Erasednode));	
			}

		if (this->_Color(_Erasednode) == this->_Black)
			{	
			for (; _Fixnode != _Root()
				&& this->_Color(_Fixnode) == this->_Black;
				_Fixnodeparent = this->_Parent(_Fixnode))
				if (_Fixnode == this->_Left(_Fixnodeparent))
					{	
					_Pnode = this->_Right(_Fixnodeparent);
					if (this->_Color(_Pnode) == this->_Red)
						{	
						this->_Color(_Pnode) = this->_Black;
						this->_Color(_Fixnodeparent) = this->_Red;
						_Lrotate(_Fixnodeparent);
						_Pnode = this->_Right(_Fixnodeparent);
						}

					if (this->_Isnil(_Pnode))
						_Fixnode = _Fixnodeparent;	
					else if (this->_Color(this->_Left(_Pnode)) == this->_Black
						&& this->_Color(this->_Right(_Pnode)) == this->_Black)
						{	
						this->_Color(_Pnode) = this->_Red;
						_Fixnode = _Fixnodeparent;
						}
					else
						{	
						if (this->_Color(this->_Right(_Pnode))
							== this->_Black)
							{	
							this->_Color(this->_Left(_Pnode)) = this->_Black;
							this->_Color(_Pnode) = this->_Red;
							_Rrotate(_Pnode);
							_Pnode = this->_Right(_Fixnodeparent);
							}

						this->_Color(_Pnode) = this->_Color(_Fixnodeparent);
						this->_Color(_Fixnodeparent) = this->_Black;
						this->_Color(this->_Right(_Pnode)) = this->_Black;
						_Lrotate(_Fixnodeparent);
						break;	
						}
					}
				else
					{	
					_Pnode = this->_Left(_Fixnodeparent);
					if (this->_Color(_Pnode) == this->_Red)
						{	
						this->_Color(_Pnode) = this->_Black;
						this->_Color(_Fixnodeparent) = this->_Red;
						_Rrotate(_Fixnodeparent);
						_Pnode = this->_Left(_Fixnodeparent);
						}
					if (this->_Isnil(_Pnode))
						_Fixnode = _Fixnodeparent;	
					else if (this->_Color(this->_Right(_Pnode)) ==
						this->_Black
						&& this->_Color(this->_Left(_Pnode)) == this->_Black)
						{	
						this->_Color(_Pnode) = this->_Red;
						_Fixnode = _Fixnodeparent;
						}
					else
						{	
						if (this->_Color(this->_Left(_Pnode)) == this->_Black)
							{	
							this->_Color(this->_Right(_Pnode)) = this->_Black;
							this->_Color(_Pnode) = this->_Red;
							_Lrotate(_Pnode);
							_Pnode = this->_Left(_Fixnodeparent);
							}

						this->_Color(_Pnode) = this->_Color(_Fixnodeparent);
						this->_Color(_Fixnodeparent) = this->_Black;
						this->_Color(this->_Left(_Pnode)) = this->_Black;
						_Rrotate(_Fixnodeparent);
						break;	
						}
					}

			this->_Color(_Fixnode) = this->_Black;	
			}

		_Dest_val(this->_Alval,
			::std:: addressof(this->_Myval(_Erasednode)));	

		this->_Alnod.deallocate(_Erasednode, 1);

		if (0 < this->_Mysize)
			--this->_Mysize;

		return (iterator(_Where._Ptr, this));	
		}

	iterator erase(const_iterator _First, const_iterator _Last)
		{	
		if (_First == begin() && _Last == end())
			{	
			clear();
			return (begin());
			}
		else
			{	
			while (_First != _Last)
				erase(_First++);
			return (iterator(_First._Ptr, this));
			}
		}

	size_type erase(const key_type& _Keyval)
		{	
		_Pairii _Where = equal_range(_Keyval);
		size_type _Num = 0;
		_Distance(_Where.first, _Where.second, _Num);
		erase(_Where.first, _Where.second);
		return (_Num);
		}

	void erase(const key_type *_First, const key_type *_Last)
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1404);
		while (_First != _Last)
			erase(*_First++);
		}

	void clear()
		{	
 
		this->_Orphan_ptr(*this, 0);
 

		_Erase(_Root());
		_Root() = this->_Myhead;
		_Lmost() = this->_Myhead;
		_Rmost() = this->_Myhead;
		this->_Mysize = 0;
		}

	iterator find(const key_type& _Keyval)
		{	
		iterator _Where = lower_bound(_Keyval);
		return (_Where == end()
			|| _Debug_lt_pred(this->comp, _Keyval, this->_Key(_Where._Mynode()), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1427)
					? end() : _Where);
		}

	const_iterator find(const key_type& _Keyval) const
		{	
		const_iterator _Where = lower_bound(_Keyval);
		return (_Where == end()
			|| _Debug_lt_pred(this->comp, _Keyval, this->_Key(_Where._Mynode()), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1436)
					? end() : _Where);
		}

	size_type count(const key_type& _Keyval) const
		{	
		_Paircc _Ans = equal_range(_Keyval);
		size_type _Num = 0;
		_Distance(_Ans.first, _Ans.second, _Num);
		return (_Num);
		}

	iterator lower_bound(const key_type& _Keyval)
		{	
		return (iterator(_Lbound(_Keyval), this));
		}

	const_iterator lower_bound(const key_type& _Keyval) const
		{	
		return (const_iterator(_Lbound(_Keyval), this));
		}

	iterator upper_bound(const key_type& _Keyval)
		{	
		return (iterator(_Ubound(_Keyval), this));
		}

	const_iterator upper_bound(const key_type& _Keyval) const
		{	
		return (const_iterator(_Ubound(_Keyval), this));
		}

	_Pairii equal_range(const key_type& _Keyval)
		{	
		return (_Eqrange(_Keyval));
		}

	_Paircc equal_range(const key_type& _Keyval) const
		{	
		return (_Eqrange(_Keyval));
		}

	void swap(_Myt& _Right)
		{	
		if (this == &_Right)
			;	
		else if (get_allocator() == _Right.get_allocator())
			{	
			this->_Swap_all(_Right);
			_Swap_adl(this->comp, _Right.comp);
			::std:: swap(this->_Myhead, _Right._Myhead);
			::std:: swap(this->_Mysize, _Right._Mysize);
			}
		else
			{	
			_Myt _Tmp = _Move(*this);

			*this = _Move(_Right);
			_Right = _Move(_Tmp);
			}
		}

protected:
	void _Copy(const _Myt& _Right)
		{	
		_Root() = _Copy(_Right._Root(), this->_Myhead);
		this->_Mysize = _Right.size();
		if (!this->_Isnil(_Root()))
			{	
			_Lmost() = this->_Min(_Root());
			_Rmost() = this->_Max(_Root());
			}
		else
			{	
			_Lmost() = this->_Myhead;
			_Rmost() = this->_Myhead;
			}
		}

	_Nodeptr _Copy(_Nodeptr _Rootnode, _Nodeptr _Wherenode)
		{	
		_Nodeptr _Newroot = this->_Myhead;	

		if (!this->_Isnil(_Rootnode))
			{	
			_Nodeptr _Pnode = this->_Buynode(this->_Myval(_Rootnode));
			_Pnode->_Parent = _Wherenode;
			_Pnode->_Color = this->_Color(_Rootnode);
			if (this->_Isnil(_Newroot))
				_Newroot = _Pnode;	

			try {
			this->_Left(_Pnode) = _Copy(this->_Left(_Rootnode), _Pnode);
			this->_Right(_Pnode) = _Copy(this->_Right(_Rootnode), _Pnode);
			} catch (...) {
			_Erase(_Newroot);	
			throw;
			}
			}

		return (_Newroot);	
		}

	_Paircc _Eqrange(const key_type& _Keyval) const
		{	
		_Nodeptr _Pnode = _Root();
		_Nodeptr _Lonode = this->_Myhead;	
		_Nodeptr _Hinode = this->_Myhead;	

		while (!this->_Isnil(_Pnode))
			if (_Debug_lt_pred(this->comp, this->_Key(_Pnode), _Keyval, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1546))
				_Pnode = this->_Right(_Pnode);	
			else
				{	
				if (this->_Isnil(_Hinode)
						&& _Debug_lt_pred(this->comp, _Keyval, this->_Key(_Pnode), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1552))
					_Hinode = _Pnode;	
				_Lonode = _Pnode;
				_Pnode = this->_Left(_Pnode);	
				}

		_Pnode = this->_Isnil(_Hinode) ? _Root()
			: this->_Left(_Hinode);	
		while (!this->_Isnil(_Pnode))
			if (_Debug_lt_pred(this->comp, _Keyval, this->_Key(_Pnode), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1561))
				{	
				_Hinode = _Pnode;
				_Pnode = this->_Left(_Pnode);	
				}
			else
				_Pnode = this->_Right(_Pnode);	

		const_iterator _First = const_iterator(_Lonode, this);
		const_iterator _Last = const_iterator(_Hinode, this);
		return (_Paircc(_First, _Last));
		}

	_Pairii _Eqrange(const key_type& _Keyval)
		{	
		_Nodeptr _Pnode = _Root();
		_Nodeptr _Lonode = this->_Myhead;	
		_Nodeptr _Hinode = this->_Myhead;	

		while (!this->_Isnil(_Pnode))
			if (_Debug_lt_pred(this->comp, this->_Key(_Pnode), _Keyval, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1581))
				_Pnode = this->_Right(_Pnode);	
			else
				{	
				if (this->_Isnil(_Hinode)
						&& _Debug_lt_pred(this->comp, _Keyval, this->_Key(_Pnode), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1587))
					_Hinode = _Pnode;	
				_Lonode = _Pnode;
				_Pnode = this->_Left(_Pnode);	
				}

		_Pnode = this->_Isnil(_Hinode) ? _Root()
			: this->_Left(_Hinode);	
		while (!this->_Isnil(_Pnode))
			if (_Debug_lt_pred(this->comp, _Keyval, this->_Key(_Pnode), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1596))
				{	
				_Hinode = _Pnode;
				_Pnode = this->_Left(_Pnode);	
				}
			else
				_Pnode = this->_Right(_Pnode);	

		iterator _First = iterator(_Lonode, this);
		iterator _Last = iterator(_Hinode, this);
		return (_Pairii(_First, _Last));
		}

	void _Erase(_Nodeptr _Rootnode)
		{	
		for (_Nodeptr _Pnode = _Rootnode;
			!this->_Isnil(_Pnode); _Rootnode = _Pnode)
			{	
			_Erase(this->_Right(_Pnode));
			_Pnode = this->_Left(_Pnode);
			_Dest_val(this->_Alval,
				::std:: addressof(this->_Myval(_Rootnode)));

			this->_Alnod.deallocate(_Rootnode, 1);
			}
		}

	iterator _Insert(bool _Addleft, _Nodeptr _Wherenode,
		const value_type& _Val)
		{	
		return (_Insert(_Addleft, _Wherenode, this->_Buynode(_Val)));
		}

	iterator _Insert(bool _Addleft, _Nodeptr _Wherenode,
		_Nodeptr _Newnode)
		{	
		if (max_size() - 1 <= this->_Mysize)
			{	
			_Dest_val(this->_Alval,
				::std:: addressof(this->_Myval(_Newnode)));

			this->_Alnod.deallocate(_Newnode, 1);

			_Xlength_error("map/set<T> too long");
			}
		++this->_Mysize;
		_Newnode->_Parent = _Wherenode;

		if (_Wherenode == this->_Myhead)
			{	
			_Root() = _Newnode;
			_Lmost() = _Newnode;
			_Rmost() = _Newnode;
			}
		else if (_Addleft)
			{	
			this->_Left(_Wherenode) = _Newnode;
			if (_Wherenode == _Lmost())
				_Lmost() = _Newnode;
			}
		else
			{	
			this->_Right(_Wherenode) = _Newnode;
			if (_Wherenode == _Rmost())
				_Rmost() = _Newnode;
			}

		for (_Nodeptr _Pnode = _Newnode;
			this->_Color(this->_Parent(_Pnode)) == this->_Red; )
			if (this->_Parent(_Pnode)
				== this->_Left(this->_Parent(this->_Parent(_Pnode))))
				{	
				_Wherenode =
					this->_Right(this->_Parent(this->_Parent(_Pnode)));
				if (this->_Color(_Wherenode) == this->_Red)
					{	
					this->_Color(this->_Parent(_Pnode)) = this->_Black;
					this->_Color(_Wherenode) = this->_Black;
					this->_Color(this->_Parent(this->_Parent(_Pnode)))
						= this->_Red;
					_Pnode = this->_Parent(this->_Parent(_Pnode));
					}
				else
					{	
					if (_Pnode == this->_Right(this->_Parent(_Pnode)))
						{	
						_Pnode = this->_Parent(_Pnode);
						_Lrotate(_Pnode);
						}
					this->_Color(this->_Parent(_Pnode)) =
						this->_Black;	
					this->_Color(this->_Parent(this->_Parent(_Pnode))) =
						this->_Red;
					_Rrotate(this->_Parent(this->_Parent(_Pnode)));
					}
				}
			else
				{	
				_Wherenode =
					this->_Left(this->_Parent(this->_Parent(_Pnode)));
				if (this->_Color(_Wherenode) == this->_Red)
					{	
					this->_Color(this->_Parent(_Pnode)) = this->_Black;
					this->_Color(_Wherenode) = this->_Black;
					this->_Color(this->_Parent(this->_Parent(_Pnode))) =
						this->_Red;
					_Pnode = this->_Parent(this->_Parent(_Pnode));
					}
				else
					{	
					if (_Pnode == this->_Left(this->_Parent(_Pnode)))
						{	
						_Pnode = this->_Parent(_Pnode);
						_Rrotate(_Pnode);
						}
					this->_Color(this->_Parent(_Pnode)) =
						this->_Black;	
					this->_Color(this->_Parent(this->_Parent(_Pnode))) =
						this->_Red;
					_Lrotate(this->_Parent(this->_Parent(_Pnode)));
					}
				}

		this->_Color(_Root()) = this->_Black;	
		return (iterator(_Newnode, this));
		}

	_Nodeptr _Lbound(const key_type& _Keyval) const
		{	
		_Nodeptr _Pnode = _Root();
		_Nodeptr _Wherenode = this->_Myhead;	

		while (!this->_Isnil(_Pnode))
			if (_Debug_lt_pred(this->comp, this->_Key(_Pnode), _Keyval, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1729))
				_Pnode = this->_Right(_Pnode);	
			else
				{	
				_Wherenode = _Pnode;
				_Pnode = this->_Left(_Pnode);	
				}

		return (_Wherenode);	
		}

	_Nodeptr _Lbound(const key_type& _Keyval)
		{	
		_Nodeptr _Pnode = _Root();
		_Nodeptr _Wherenode = this->_Myhead;	

		while (!this->_Isnil(_Pnode))
			if (_Debug_lt_pred(this->comp, this->_Key(_Pnode), _Keyval, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1746))
				_Pnode = this->_Right(_Pnode);	
			else
				{	
				_Wherenode = _Pnode;
				_Pnode = this->_Left(_Pnode);	
				}

		return (_Wherenode);	
		}

	_Nodeptr& _Lmost() const
		{	
		return (this->_Left(this->_Myhead));
		}

	void _Lrotate(_Nodeptr _Wherenode)
		{	
		_Nodeptr _Pnode = this->_Right(_Wherenode);
		this->_Right(_Wherenode) = this->_Left(_Pnode);

		if (!this->_Isnil(this->_Left(_Pnode)))
			this->_Parent(this->_Left(_Pnode)) = _Wherenode;
		this->_Parent(_Pnode) = this->_Parent(_Wherenode);

		if (_Wherenode == _Root())
			_Root() = _Pnode;
		else if (_Wherenode == this->_Left(this->_Parent(_Wherenode)))
			this->_Left(this->_Parent(_Wherenode)) = _Pnode;
		else
			this->_Right(this->_Parent(_Wherenode)) = _Pnode;

		this->_Left(_Pnode) = _Wherenode;
		this->_Parent(_Wherenode) = _Pnode;
		}

	_Nodeptr& _Rmost() const
		{	
		return (this->_Right(this->_Myhead));
		}

	_Nodeptr& _Root() const
		{	
		return (this->_Parent(this->_Myhead));
		}

	void _Rrotate(_Nodeptr _Wherenode)
		{	
		_Nodeptr _Pnode = this->_Left(_Wherenode);
		this->_Left(_Wherenode) = this->_Right(_Pnode);

		if (!this->_Isnil(this->_Right(_Pnode)))
			this->_Parent(this->_Right(_Pnode)) = _Wherenode;
		this->_Parent(_Pnode) = this->_Parent(_Wherenode);

		if (_Wherenode == _Root())
			_Root() = _Pnode;
		else if (_Wherenode == this->_Right(this->_Parent(_Wherenode)))
			this->_Right(this->_Parent(_Wherenode)) = _Pnode;
		else
			this->_Left(this->_Parent(_Wherenode)) = _Pnode;

		this->_Right(_Pnode) = _Wherenode;
		this->_Parent(_Wherenode) = _Pnode;
		}

	_Nodeptr _Ubound(const key_type& _Keyval) const
		{	
		_Nodeptr _Pnode = _Root();
		_Nodeptr _Wherenode = this->_Myhead;	

		while (!this->_Isnil(_Pnode))
			if (_Debug_lt_pred(this->comp, _Keyval, this->_Key(_Pnode), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1818))
				{	
				_Wherenode = _Pnode;
				_Pnode = this->_Left(_Pnode);	
				}
			else
				_Pnode = this->_Right(_Pnode);	

		return (_Wherenode);	
		}

	_Nodeptr _Ubound(const key_type& _Keyval)
		{	
		_Nodeptr _Pnode = _Root();
		_Nodeptr _Wherenode = this->_Myhead;	

		while (!this->_Isnil(_Pnode))
			if (_Debug_lt_pred(this->comp, _Keyval, this->_Key(_Pnode), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xtree", 1835))
				{	
				_Wherenode = _Pnode;
				_Pnode = this->_Left(_Pnode);	
				}
			else
				_Pnode = this->_Right(_Pnode);	

		return (_Wherenode);	
		}

 
	void _Orphan_ptr(_Myt& _Cont, _Nodeptr _Ptr) const
		{	
		_Lockit _Lock(3);
		const_iterator **_Pnext = (const_iterator **)_Cont._Getpfirst();
		if (_Pnext != 0)
			while (*_Pnext != 0)
				if ((*_Pnext)->_Ptr == this->_Myhead
					|| _Ptr != 0 && (*_Pnext)->_Ptr != _Ptr)
					_Pnext = (const_iterator **)(*_Pnext)->_Getpnext();
				else
					{	
					(*_Pnext)->_Clrcont();
					*_Pnext = *(const_iterator **)(*_Pnext)->_Getpnext();
					}
		}
 

	void _Tidy()
		{	
		erase(begin(), end());
		}
	};

		
template<class _Traits> inline
	bool operator==(const _Tree<_Traits>& _Left, const _Tree<_Traits>& _Right)
	{	
	return (_Left.size() == _Right.size()
		&& equal(_Left.begin(), _Left.end(), _Right.begin()));
	}

template<class _Traits> inline
	bool operator!=(const _Tree<_Traits>& _Left, const _Tree<_Traits>& _Right)
	{	
	return (!(_Left == _Right));
	}

template<class _Traits> inline
	bool operator<(const _Tree<_Traits>& _Left, const _Tree<_Traits>& _Right)
	{	
	return (lexicographical_compare(_Left.begin(), _Left.end(),
		_Right.begin(), _Right.end()));
	}

template<class _Traits> inline
	bool operator>(const _Tree<_Traits>& _Left, const _Tree<_Traits>& _Right)
	{	
	return (_Right < _Left);
	}

template<class _Traits> inline
	bool operator<=(const _Tree<_Traits>& _Left, const _Tree<_Traits>& _Right)
	{	
	return (!(_Right < _Left));
	}

template<class _Traits> inline
	bool operator>=(const _Tree<_Traits>& _Left, const _Tree<_Traits>& _Right)
	{	
	return (!(_Left < _Right));
	}
}

 #pragma warning(pop)
 #pragma pack(pop)




























 #pragma pack(push,8)
 #pragma warning(push,3)
namespace std {
		
template<class _Kty,	
	class _Pr,	
	class _Alloc,	
	bool _Mfl>	
	class _Tset_traits
		: public _Container_base
	{	
public:
	typedef _Kty _Val_type;
	typedef _Kty key_type;
	typedef _Kty value_type;
	typedef _Pr key_compare;

	typedef typename _Alloc::template rebind<value_type>::other
		allocator_type;

	enum
		{	
		_Multi = _Mfl};

	_Tset_traits()
		: comp()
		{	
		}

	_Tset_traits(_Pr _Parg)
		: comp(_Parg)
		{	
		}

	typedef key_compare value_compare;

	static const _Kty& _Kfn(const value_type& _Val)
		{	
		return (_Val);
		}

	_Pr comp;	
	};

		
template<class _Kty,
	class _Pr = less<_Kty>,
	class _Alloc = allocator<_Kty> >
	class set
		: public _Tree<_Tset_traits<_Kty, _Pr, _Alloc, false> >
	{	
public:
	typedef set<_Kty, _Pr, _Alloc> _Myt;
	typedef _Tree<_Tset_traits<_Kty, _Pr, _Alloc, false> > _Mybase;
	typedef _Kty key_type;
	typedef _Pr key_compare;
	typedef typename _Mybase::value_compare value_compare;
	typedef typename _Mybase::allocator_type allocator_type;
	typedef typename _Mybase::size_type size_type;
	typedef typename _Mybase::difference_type difference_type;
	typedef typename _Mybase::pointer pointer;
	typedef typename _Mybase::const_pointer const_pointer;
	typedef typename _Mybase::reference reference;
	typedef typename _Mybase::const_reference const_reference;
	typedef typename _Mybase::iterator iterator;
	typedef typename _Mybase::const_iterator const_iterator;
	typedef typename _Mybase::reverse_iterator reverse_iterator;
	typedef typename _Mybase::const_reverse_iterator
		const_reverse_iterator;
	typedef typename _Mybase::value_type value_type;

	set()
		: _Mybase(key_compare(), allocator_type())
		{	
		}

	set(const _Myt& _Right)
		: _Mybase(_Right)
		{	
		}

	explicit set(const key_compare& _Pred)
		: _Mybase(_Pred, allocator_type())
		{	
		}

	set(const key_compare& _Pred, const allocator_type& _Al)
		: _Mybase(_Pred, _Al)
		{	
		}

	template<class _Iter>
		set(_Iter _First, _Iter _Last)
		: _Mybase(key_compare(), allocator_type())
		{	
		this->insert(_First, _Last);
		}

	template<class _Iter>
		set(_Iter _First, _Iter _Last,
			const key_compare& _Pred)
		: _Mybase(_Pred, allocator_type())
		{	
		this->insert(_First, _Last);
		}

	template<class _Iter>
		set(_Iter _First, _Iter _Last,
			const key_compare& _Pred, const allocator_type& _Al)
		: _Mybase(_Pred, _Al)
		{	
		this->insert(_First, _Last);
		}

	_Myt& operator=(const _Myt& _Right)
		{	
		_Mybase::operator=(_Right);
		return (*this);
		}

	set(_Myt&& _Right)
		: _Mybase(::std:: move(_Right))
		{	
		}

	_Myt& operator=(_Myt&& _Right)
		{	
		_Mybase::operator=(::std:: move(_Right));
		return (*this);
		}

	void swap(_Myt& _Right)
		{	
		_Mybase::swap(_Right);
		}

	void swap(_Myt&& _Right)
		{	
		_Mybase::swap(::std:: move(_Right));
		}

 

 



















	};

template<class _Kty,
	class _Pr,
	class _Alloc> inline
	void swap(set<_Kty, _Pr, _Alloc>& _Left,
		set<_Kty, _Pr, _Alloc>& _Right)
	{	
	_Left.swap(_Right);
	}

template<class _Kty,
	class _Pr,
	class _Alloc> inline
	void swap(set<_Kty, _Pr, _Alloc>& _Left,
		set<_Kty, _Pr, _Alloc>&& _Right)
	{	
	typedef set<_Kty, _Pr, _Alloc> _Myt;
	_Left.swap(::std:: forward<_Myt>(_Right));
	}

template<class _Kty,
	class _Pr,
	class _Alloc> inline
	void swap(set<_Kty, _Pr, _Alloc>&& _Left,
		set<_Kty, _Pr, _Alloc>& _Right)
	{	
	typedef set<_Kty, _Pr, _Alloc> _Myt;
	_Right.swap(::std:: forward<_Myt>(_Left));
	}

		
template<class _Kty,
	class _Pr = less<_Kty>,
	class _Alloc = allocator<_Kty> >
	class multiset
		: public _Tree<_Tset_traits<_Kty, _Pr, _Alloc, true> >
	{	
public:
	typedef multiset<_Kty, _Pr, _Alloc> _Myt;
	typedef _Tree<_Tset_traits<_Kty, _Pr, _Alloc, true> > _Mybase;
	typedef _Kty key_type;
	typedef _Pr key_compare;
	typedef typename _Mybase::value_compare value_compare;
	typedef typename _Mybase::allocator_type allocator_type;
	typedef typename _Mybase::size_type size_type;
	typedef typename _Mybase::difference_type difference_type;
	typedef typename _Mybase::pointer pointer;
	typedef typename _Mybase::const_pointer const_pointer;
	typedef typename _Mybase::reference reference;
	typedef typename _Mybase::const_reference const_reference;
	typedef typename _Mybase::iterator iterator;
	typedef typename _Mybase::const_iterator const_iterator;
	typedef typename _Mybase::reverse_iterator reverse_iterator;
	typedef typename _Mybase::const_reverse_iterator
		const_reverse_iterator;
	typedef typename _Mybase::value_type value_type;

	multiset()
		: _Mybase(key_compare(), allocator_type())
		{	
		}

	multiset(const _Myt& _Right)
		: _Mybase(_Right)
		{	
		}

	explicit multiset(const key_compare& _Pred)
		: _Mybase(_Pred, allocator_type())
		{	
		}

	multiset(const key_compare& _Pred, const allocator_type& _Al)
		: _Mybase(_Pred, _Al)
		{	
		}

	template<class _Iter>
		multiset(_Iter _First, _Iter _Last)
		: _Mybase(key_compare(), allocator_type())
		{	
		this->insert(_First, _Last);
		}

	template<class _Iter>
		multiset(_Iter _First, _Iter _Last,
			const key_compare& _Pred)
		: _Mybase(_Pred, allocator_type())
		{	
		this->insert(_First, _Last);
		}

	template<class _Iter>
		multiset(_Iter _First, _Iter _Last,
			const key_compare& _Pred, const allocator_type& _Al)
		: _Mybase(_Pred, _Al)
		{	
		this->insert(_First, _Last);
		}

	_Myt& operator=(const _Myt& _Right)
		{	
		_Mybase::operator=(_Right);
		return (*this);
		}

	multiset(_Myt&& _Right)
		: _Mybase(::std:: move(_Right))
		{	
		}

	_Myt& operator=(_Myt&& _Right)
		{	
		_Mybase::operator=(::std:: move(_Right));
		return (*this);
		}

	template<class _Valty>
		iterator insert(_Valty&& _Val)
		{	
		return (_Mybase::insert(::std:: forward<_Valty>(_Val)).first);
		}

	template<class _Valty>
		typename ::std:: tr1::enable_if<!::std:: tr1::is_same<const_iterator,
			typename ::std:: tr1::remove_reference<_Valty>::type>::value,
				iterator>::type
		insert(const_iterator _Where, _Valty&& _Val)
		{	
		return (_Mybase::insert(_Where, ::std:: forward<_Valty>(_Val)));
		}

	void swap(_Myt& _Right)
		{	
		_Mybase::swap(_Right);
		}

	void swap(_Myt&& _Right)
		{	
		_Mybase::swap(::std:: move(_Right));
		}

 

 




















	iterator insert(const value_type& _Val)
		{	
		return (_Mybase::insert(_Val).first);
		}

	iterator insert(const_iterator _Where, const value_type& _Val)
		{	
		return (_Mybase::insert(_Where, _Val));
		}

	template<class _Iter>
		void insert(_Iter _First, _Iter _Last)
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\set", 350);
		for (; _First != _Last; ++_First)
			this->insert(*_First);
		}
	};

template<class _Kty,
	class _Pr,
	class _Alloc> inline
	void swap(multiset<_Kty, _Pr, _Alloc>& _Left,
		multiset<_Kty, _Pr, _Alloc>& _Right)
	{	
	_Left.swap(_Right);
	}

template<class _Kty,
	class _Pr,
	class _Alloc> inline
	void swap(multiset<_Kty, _Pr, _Alloc>& _Left,
		multiset<_Kty, _Pr, _Alloc>&& _Right)
	{	
	typedef multiset<_Kty, _Pr, _Alloc> _Myt;
	_Left.swap(::std:: forward<_Myt>(_Right));
	}

template<class _Kty,
	class _Pr,
	class _Alloc> inline
	void swap(multiset<_Kty, _Pr, _Alloc>&& _Left,
		multiset<_Kty, _Pr, _Alloc>& _Right)
	{	
	typedef multiset<_Kty, _Pr, _Alloc> _Myt;
	_Right.swap(::std:: forward<_Myt>(_Left));
	}
}
 #pragma warning(pop)
 #pragma pack(pop)











#pragma once







 #pragma pack(push,8)
 #pragma warning(push,3)

 #pragma warning(disable: 4244)

namespace std {
 

		
template<class _Myvec>
	class _Vector_const_iterator
		: public _Iterator012<random_access_iterator_tag,
			typename _Myvec::value_type,
			typename _Myvec::difference_type,
			typename _Myvec::const_pointer,
			typename _Myvec::const_reference,
			_Iterator_base>
	{	
public:
	typedef _Vector_const_iterator<_Myvec> _Myiter;
	typedef random_access_iterator_tag iterator_category;

	typedef typename _Myvec::pointer _Tptr;
	typedef typename _Myvec::value_type value_type;
	typedef typename _Myvec::difference_type difference_type;
	typedef typename _Myvec::const_pointer pointer;
	typedef typename _Myvec::const_reference reference;

	_Vector_const_iterator()
		: _Ptr(0)
		{	
		}

	_Vector_const_iterator(_Tptr _Parg, const _Container_base *_Pvector)
		: _Ptr(_Parg)
		{	
		this->_Adopt(_Pvector);
		}

	typedef pointer _Unchecked_type;

	_Myiter& _Rechecked(_Unchecked_type _Right)
		{	
		this->_Ptr = (_Tptr)_Right;
		return (*this);
		}

	_Unchecked_type _Unchecked() const
		{	
		return (_Unchecked_type(this->_Ptr));
		}

	reference operator*() const
		{	
 
		if (this->_Getcont() == 0
			|| this->_Ptr == 0
			|| this->_Ptr < ((_Myvec *)this->_Getcont())->_Myfirst
			|| ((_Myvec *)this->_Getcont())->_Mylast <= this->_Ptr)
			{	
			_Debug_message(L"vector iterator not dereferencable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 70);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 71, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 71, 0); };
			}

 







		;

		return (*this->_Ptr);
		}

	pointer operator->() const
		{	
		return (&**this);
		}

	_Myiter& operator++()
		{	
 
		if (this->_Getcont() == 0
			|| this->_Ptr == 0
			|| ((_Myvec *)this->_Getcont())->_Mylast <= this->_Ptr)
			{	
			_Debug_message(L"vector iterator not incrementable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 99);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 100, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 100, 0); };
			}

 






		++this->_Ptr;
		return (*this);
		}

	_Myiter operator++(int)
		{	
		_Myiter _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Myiter& operator--()
		{	
 
		if (this->_Getcont() == 0
			|| this->_Ptr == 0
			|| this->_Ptr <= ((_Myvec *)this->_Getcont())->_Myfirst)
			{	
			_Debug_message(L"vector iterator not decrementable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 128);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 129, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 129, 0); };
			}

 






		--this->_Ptr;
		return (*this);
		}

	_Myiter operator--(int)
		{	
		_Myiter _Tmp = *this;
		--*this;
		return (_Tmp);
		}

	_Myiter& operator+=(difference_type _Off)
		{	
 
		if (this->_Getcont() == 0
			|| this->_Ptr + _Off < ((_Myvec *)this->_Getcont())->_Myfirst
			|| ((_Myvec *)this->_Getcont())->_Mylast < this->_Ptr + _Off)
			{	
			_Debug_message(L"vector iterator + offset out of range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 157);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 158, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 158, 0); };
			}

 






		_Ptr += _Off;
		return (*this);
		}

	_Myiter operator+(difference_type _Off) const
		{	
		_Myiter _Tmp = *this;
		return (_Tmp += _Off);
		}

	_Myiter& operator-=(difference_type _Off)
		{	
		return (*this += -_Off);
		}

	_Myiter operator-(difference_type _Off) const
		{	
		_Myiter _Tmp = *this;
		return (_Tmp -= _Off);
		}

	difference_type operator-(const _Myiter& _Right) const
		{	
		_Compat(_Right);
		return (this->_Ptr - _Right._Ptr);
		}

	reference operator[](difference_type _Off) const
		{	
		return (*(*this + _Off));
		}

	bool operator==(const _Myiter& _Right) const
		{	
		_Compat(_Right);
		return (this->_Ptr == _Right._Ptr);
		}

	bool operator!=(const _Myiter& _Right) const
		{	
		return (!(*this == _Right));
		}

	bool operator<(const _Myiter& _Right) const
		{	
		_Compat(_Right);
		return (this->_Ptr < _Right._Ptr);
		}

	bool operator>(const _Myiter& _Right) const
		{	
		return (_Right < *this);
		}

	bool operator<=(const _Myiter& _Right) const
		{	
		return (!(_Right < *this));
		}

	bool operator>=(const _Myiter& _Right) const
		{	
		return (!(*this < _Right));
		}

 
	void _Compat(const _Myiter& _Right) const
		{	
		if (this->_Getcont() == 0
			|| this->_Getcont() != _Right._Getcont())
			{	
			_Debug_message(L"vector iterators incompatible", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 238);
			{ (void) ((!!(("Standard C++ Libraries Invalid Argument" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 239, 0, L"\"Standard C++ Libraries Invalid Argument\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 239, 0); };
			}
		}

 












	_Tptr _Ptr;	
	};

template<class _Myvec> inline
	typename _Vector_const_iterator<_Myvec>::_Unchecked_type
		_Unchecked(_Vector_const_iterator<_Myvec> _Iter)
	{	
	return (_Iter._Unchecked());
	}

template<class _Myvec> inline
	_Vector_const_iterator<_Myvec>&
		_Rechecked(_Vector_const_iterator<_Myvec>& _Iter,
			typename _Vector_const_iterator<_Myvec>
				::_Unchecked_type _Right)
	{	
	return (_Iter._Rechecked(_Right));
	}

template<class _Myvec> inline
	_Vector_const_iterator<_Myvec> operator+(
		typename _Vector_const_iterator<_Myvec>::difference_type _Off,
		_Vector_const_iterator<_Myvec> _Next)
	{	
	return (_Next += _Off);
	}

		
template<class _Myvec>
	class _Vector_iterator
		: public _Vector_const_iterator<_Myvec>
	{	
public:
	typedef _Vector_iterator<_Myvec> _Myiter;
	typedef _Vector_const_iterator<_Myvec> _Mybase;
	typedef random_access_iterator_tag iterator_category;

	typedef typename _Myvec::value_type value_type;
	typedef typename _Myvec::difference_type difference_type;
	typedef typename _Myvec::pointer pointer;
	typedef typename _Myvec::reference reference;

	_Vector_iterator()
		{	
		}

	_Vector_iterator(pointer _Parg, const _Container_base *_Pvector)
		: _Mybase(_Parg, _Pvector)
		{	
		}

	typedef pointer _Unchecked_type;

	_Myiter& _Rechecked(_Unchecked_type _Right)
		{	
		this->_Ptr = _Right;
		return (*this);
		}

	_Unchecked_type _Unchecked() const
		{	
		return (_Unchecked_type(this->_Ptr));
		}

	reference operator*() const
		{	
		return ((reference)**(_Mybase *)this);
		}

	pointer operator->() const
		{	
		return (&**this);
		}

	_Myiter& operator++()
		{	
		++*(_Mybase *)this;
		return (*this);
		}

	_Myiter operator++(int)
		{	
		_Myiter _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Myiter& operator--()
		{	
		--*(_Mybase *)this;
		return (*this);
		}

	_Myiter operator--(int)
		{	
		_Myiter _Tmp = *this;
		--*this;
		return (_Tmp);
		}

	_Myiter& operator+=(difference_type _Off)
		{	
		*(_Mybase *)this += _Off;
		return (*this);
		}

	_Myiter operator+(difference_type _Off) const
		{	
		_Myiter _Tmp = *this;
		return (_Tmp += _Off);
		}

	_Myiter& operator-=(difference_type _Off)
		{	
		return (*this += -_Off);
		}

	_Myiter operator-(difference_type _Off) const
		{	
		_Myiter _Tmp = *this;
		return (_Tmp -= _Off);
		}

	difference_type operator-(const _Mybase& _Right) const
		{	
		return (*(_Mybase *)this - _Right);
		}

	reference operator[](difference_type _Off) const
		{	
		return (*(*this + _Off));
		}
	};

template<class _Myvec> inline
	typename _Vector_iterator<_Myvec>::_Unchecked_type
		_Unchecked(_Vector_iterator<_Myvec> _Iter)
	{	
	return (_Iter._Unchecked());
	}

template<class _Myvec> inline
	_Vector_iterator<_Myvec>&
		_Rechecked(_Vector_iterator<_Myvec>& _Iter,
			typename _Vector_iterator<_Myvec>
				::_Unchecked_type _Right)
	{	
	return (_Iter._Rechecked(_Right));
	}

template<class _Myvec> inline
	_Vector_iterator<_Myvec> operator+(
		typename _Vector_iterator<_Myvec>::difference_type _Off,
		_Vector_iterator<_Myvec> _Next)
	{	
	return (_Next += _Off);
	}

		
template<class _Ty,
	class _Alloc>
	class _Vector_val
		: public _Container_base
	{	
public:
	typedef typename _Alloc::template rebind<_Ty>::other _Alty;

 













	_Vector_val(_Alloc _Al = _Alloc())
		: _Alval(_Al)
		{	
		typename _Alloc::template rebind<_Container_proxy>::other
			_Alproxy(_Alval);
		this->_Myproxy = _Alproxy.allocate(1);
		_Cons_val(_Alproxy, this->_Myproxy, _Container_proxy());
		this->_Myproxy->_Mycont = this;

		_Myfirst = 0;
		_Mylast = 0;
		_Myend = 0;
		}

	~_Vector_val()
		{	
		typename _Alloc::template rebind<_Container_proxy>::other
			_Alproxy(_Alval);
		this->_Orphan_all();
		_Dest_val(_Alproxy, this->_Myproxy);
		_Alproxy.deallocate(this->_Myproxy, 1);
		this->_Myproxy = 0;
		}
 

	typedef typename _Alty::size_type size_type;
	typedef typename _Alty::difference_type difference_type;
	typedef typename _Alty::pointer pointer;
	typedef typename _Alty::const_pointer const_pointer;
	typedef typename _Alty::reference reference;
	typedef typename _Alty::const_reference const_reference;
	typedef typename _Alty::value_type value_type;

	pointer _Myfirst;	
	pointer _Mylast;	
	pointer _Myend;	
	_Alty _Alval;	
	};

		
template<class _Ty,
	class _Ax = allocator<_Ty> >
	class vector
		: public _Vector_val<_Ty, _Ax>
	{	
public:
	typedef vector<_Ty, _Ax> _Myt;
	typedef _Vector_val<_Ty, _Ax> _Mybase;
	typedef typename _Mybase::_Alty _Alloc;

	typedef _Alloc allocator_type;
	typedef typename _Alloc::size_type size_type;
	typedef typename _Alloc::difference_type difference_type;
	typedef typename _Alloc::pointer pointer;
	typedef typename _Alloc::const_pointer const_pointer;
	typedef typename _Alloc::reference reference;
	typedef typename _Alloc::const_reference const_reference;
	typedef typename _Alloc::value_type value_type;

 
 

	typedef _Vector_iterator<_Mybase> iterator;
	typedef _Vector_const_iterator<_Mybase> const_iterator;

	typedef ::std:: reverse_iterator<iterator> reverse_iterator;
	typedef ::std:: reverse_iterator<const_iterator> const_reverse_iterator;

	vector()
		: _Mybase()
		{	
		}

	explicit vector(const _Alloc& _Al)
		: _Mybase(_Al)
		{	
		}

	explicit vector(size_type _Count)
		: _Mybase()
		{	
		resize(_Count);
		}

	vector(size_type _Count, const _Ty& _Val)
		: _Mybase()
		{	
		_Construct_n(_Count, ::std:: addressof(_Val));
		}

	vector(size_type _Count, const _Ty& _Val, const _Alloc& _Al)
		: _Mybase(_Al)
		{	
		_Construct_n(_Count, ::std:: addressof(_Val));
		}

	vector(const _Myt& _Right)
		: _Mybase(_Right._Alval)
		{	
		if (_Buy(_Right.size()))
			try {
			this->_Mylast = _Ucopy(_Right.begin(), _Right.end(),
				this->_Myfirst);
			} catch (...) {
			_Tidy();
			throw;
			}
		}

	template<class _Iter>
		vector(_Iter _First, _Iter _Last)
		: _Mybase()
		{	
		_Construct(_First, _Last, _Iter_cat(_First));
		}

	template<class _Iter>
		vector(_Iter _First, _Iter _Last, const _Alloc& _Al)
		: _Mybase(_Al)
		{	
		_Construct(_First, _Last, _Iter_cat(_First));
		}

	template<class _Iter>
		void _Construct(_Iter _Count, _Iter _Val, _Int_iterator_tag)
		{	
		size_type _Size = (size_type)_Count;
		_Ty _Newval = (_Ty)_Val;
		_Construct_n(_Size, ::std:: addressof(_Newval));
		}

	template<class _Iter>
		void _Construct(_Iter _First,
			_Iter _Last, input_iterator_tag)
		{	
		try {
		insert(begin(), _First, _Last);
		} catch (...) {
		_Tidy();
		throw;
		}
		}

	void _Construct_n(size_type _Count, const _Ty *_Pval)
		{	
		if (_Buy(_Count))
			{	
			try {
			this->_Mylast = _Ufill(this->_Myfirst, _Count, _Pval);
			} catch (...) {
			_Tidy();
			throw;
			}
			}
		}

	vector(_Myt&& _Right)
		: _Mybase(_Right._Alval)
		{	
		_Assign_rv(::std:: forward<_Myt>(_Right));
		}

	_Myt& operator=(_Myt&& _Right)
		{	
		_Assign_rv(::std:: forward<_Myt>(_Right));
		return (*this);
		}

	void _Assign_rv(_Myt&& _Right)
		{	
		if (this == &_Right)
			;
		else if (get_allocator() != _Right.get_allocator())
			{	
			clear();
			for (iterator _Next = _Right.begin(); _Next != _Right.end();
				++_Next)
				push_back(::std:: forward<_Ty>(*_Next));
			}
		else
			{	
			_Tidy();
			this->_Swap_all((_Myt&)_Right);
			this->_Myfirst = _Right._Myfirst;
			this->_Mylast = _Right._Mylast;
			this->_Myend = _Right._Myend;

			_Right._Myfirst = 0;
			_Right._Mylast = 0;
			_Right._Myend = 0;
			}
		}

	void push_back(_Ty&& _Val)
		{	
		if (_Inside(::std:: addressof(_Val)))
			{	
			size_type _Idx = ::std:: addressof(_Val) - this->_Myfirst;
			if (this->_Mylast == this->_Myend)
				_Reserve(1);
			_Orphan_range(this->_Mylast, this->_Mylast);
			_Cons_val(this->_Alval,
				this->_Mylast,
				::std:: forward<_Ty>(this->_Myfirst[_Idx]));
			++this->_Mylast;
			}
		else
			{	
			if (this->_Mylast == this->_Myend)
				_Reserve(1);
			_Orphan_range(this->_Mylast, this->_Mylast);
			_Cons_val(this->_Alval,
				this->_Mylast,
				::std:: forward<_Ty>(_Val));
			++this->_Mylast;
			}
		}

	void emplace_back(_Ty&& _Val)
		{	
		push_back(::std:: forward<_Ty>(_Val));
		}

	template<class _Valty>
		void emplace_back(_Valty&& _Val)
		{	
		if (this->_Mylast == this->_Myend)
			_Reserve(1);
		_Orphan_range(this->_Mylast, this->_Mylast);
		_Cons_val(this->_Alval,
			this->_Mylast,
			::std:: forward<_Valty>(_Val));
		++this->_Mylast;
		}

	template<class _Valty>
		iterator insert(const_iterator _Where, _Valty&& _Val)
		{	
		return (emplace(_Where, ::std:: forward<_Valty>(_Val)));
		}

	template<class _Valty>
		iterator emplace(const_iterator _Where, _Valty&& _Val)
		{	
		size_type _Off = (_Where)._Ptr - this->_Myfirst;

 
		if (size() < _Off)
			_Debug_message(L"vector emplace iterator outside range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 685);
 

		emplace_back(::std:: forward<_Valty>(_Val));
		::std:: rotate(begin() + _Off, end() - 1, end());
		return (begin() + _Off);
		}

	void swap(_Myt&& _Right)
		{	
		if (this != &_Right)
			{	
			clear();
			this->_Swap_all((_Myt&)_Right);
			_Assign_rv(::std:: forward<_Myt>(_Right));
			}
		}

	~vector()
		{	
		_Tidy();
		}

	_Myt& operator=(const _Myt& _Right)
		{	
		if (this != &_Right)
			{	
			this->_Orphan_all();

			if (_Right.size() == 0)
				clear();	
			else if (_Right.size() <= size())
				{	
				pointer _Ptr = ::std:: _Copy_impl(_Right._Myfirst, _Right._Mylast,
					this->_Myfirst);	
				_Destroy(_Ptr, this->_Mylast);	
				this->_Mylast = this->_Myfirst + _Right.size();
				}
			else if (_Right.size() <= capacity())
				{	
				pointer _Ptr = _Right._Myfirst + size();
				::std:: _Copy_impl(_Right._Myfirst, _Ptr, this->_Myfirst);
				this->_Mylast = _Ucopy(_Ptr, _Right._Mylast, this->_Mylast);
				}
			else
				{	
				if (this->_Myfirst != 0)
					{	
					_Destroy(this->_Myfirst, this->_Mylast);
					this->_Alval.deallocate(this->_Myfirst,
						this->_Myend - this->_Myfirst);
					}
				if (_Buy(_Right.size()))
					this->_Mylast = _Ucopy(_Right._Myfirst, _Right._Mylast,
						this->_Myfirst);
				}
			}
		return (*this);
		}

	void reserve(size_type _Count)
		{	
		if (max_size() < _Count)
			_Xlen();	
		else if (capacity() < _Count)
			{	
			pointer _Ptr = this->_Alval.allocate(_Count);

			try {
			_Umove(this->_Myfirst, this->_Mylast, _Ptr);
			} catch (...) {
			this->_Alval.deallocate(_Ptr, _Count);
			throw;
			}

			size_type _Size = size();
			if (this->_Myfirst != 0)
				{	
				_Destroy(this->_Myfirst, this->_Mylast);
				this->_Alval.deallocate(this->_Myfirst,
					this->_Myend - this->_Myfirst);
				}

			this->_Orphan_all();
			this->_Myend = _Ptr + _Count;
			this->_Mylast = _Ptr + _Size;
			this->_Myfirst = _Ptr;
			}
		}

	size_type capacity() const
		{	
		return (this->_Myend - this->_Myfirst);
		}

	iterator begin()
		{	
		return (iterator(this->_Myfirst, this));
		}

	const_iterator begin() const
		{	
		return (const_iterator(this->_Myfirst, this));
		}

	iterator end()
		{	
		return (iterator(this->_Mylast, this));
		}

	const_iterator end() const
		{	
		return (const_iterator(this->_Mylast, this));
		}

	iterator _Make_iter(const_iterator _Where) const
		{	
		return (iterator(_Where._Ptr, this));
		}

	reverse_iterator rbegin()
		{	
		return (reverse_iterator(end()));
		}

	const_reverse_iterator rbegin() const
		{	
		return (const_reverse_iterator(end()));
		}

	reverse_iterator rend()
		{	
		return (reverse_iterator(begin()));
		}

	const_reverse_iterator rend() const
		{	
		return (const_reverse_iterator(begin()));
		}

 
	const_iterator cbegin() const
		{	
		return (((const _Myt *)this)->begin());
		}

	const_iterator cend() const
		{	
		return (((const _Myt *)this)->end());
		}

	const_reverse_iterator crbegin() const
		{	
		return (((const _Myt *)this)->rbegin());
		}

	const_reverse_iterator crend() const
		{	
		return (((const _Myt *)this)->rend());
		}

	void shrink_to_fit()
		{	
		if (size() < capacity())
			{	
			_Myt _Tmp(*this);
			swap(_Tmp);
			}
		}
 

	void resize(size_type _Newsize)
		{	
		if (_Newsize < size())
			erase(begin() + _Newsize, end());
		else if (size() < _Newsize)
			{	
			_Reserve(_Newsize - size());
			_Uninitialized_default_fill_n(this->_Mylast, _Newsize - size(),
				(_Ty *)0, this->_Alval);
			this->_Mylast += _Newsize - size();
			}
		}

	void resize(size_type _Newsize, _Ty _Val)
		{	
		if (size() < _Newsize)
			_Insert_n(end(), _Newsize - size(), _Val);
		else if (_Newsize < size())
			erase(begin() + _Newsize, end());
		}

	size_type size() const
		{	
		return (this->_Mylast - this->_Myfirst);
		}

	size_type max_size() const
		{	
		return (this->_Alval.max_size());
		}

	bool empty() const
		{	
		return (this->_Myfirst == this->_Mylast);
		}

	_Alloc get_allocator() const
		{	
		return (this->_Alval);
		}

	const_reference at(size_type _Pos) const
		{	
		if (size() <= _Pos)
			_Xran();
		return (*(this->_Myfirst + _Pos));
		}

	reference at(size_type _Pos)
		{	
		if (size() <= _Pos)
			_Xran();
		return (*(this->_Myfirst + _Pos));
		}

	const_reference operator[](size_type _Pos) const
		{	
 
		if (size() <= _Pos)
			{	
			_Debug_message(L"vector subscript out of range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 916);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 917, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 917, 0); };
			}

 



		return (*(this->_Myfirst + _Pos));
		}

	reference operator[](size_type _Pos)
		{	
 
		if (size() <= _Pos)
			{	
			_Debug_message(L"vector subscript out of range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 932);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 933, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 933, 0); };
			}

 



		return (*(this->_Myfirst + _Pos));
		}

 
	pointer data()
		{	
		return (this->_Myfirst);
		}

	const_pointer data() const
		{	
		return (this->_Myfirst);
		}
 

	reference front()
		{	
		return (*begin());
		}

	const_reference front() const
		{	
		return (*begin());
		}

	reference back()
		{	
		return (*(end() - 1));
		}

	const_reference back() const
		{	
		return (*(end() - 1));
		}

	void push_back(const _Ty& _Val)
		{	
		if (_Inside(::std:: addressof(_Val)))
			{	
			size_type _Idx = ::std:: addressof(_Val) - this->_Myfirst;
			if (this->_Mylast == this->_Myend)
				_Reserve(1);
			_Orphan_range(this->_Mylast, this->_Mylast);
			_Cons_val(this->_Alval,
				this->_Mylast,
				this->_Myfirst[_Idx]);
			++this->_Mylast;
			}
		else
			{	
			if (this->_Mylast == this->_Myend)
				_Reserve(1);
			_Orphan_range(this->_Mylast, this->_Mylast);
			_Cons_val(this->_Alval,
				this->_Mylast,
				_Val);
			++this->_Mylast;
			}
		}

 
	void pop_back()
		{	
		if (empty())
			_Debug_message(L"vector empty before pop", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 1004);
		else
			{	
			_Orphan_range(this->_Mylast - 1, this->_Mylast);
			_Dest_val(this->_Alval,
				this->_Mylast - 1);
			--this->_Mylast;
			}
		}

 











	template<class _Iter>
		void assign(_Iter _First, _Iter _Last)
		{	
		_Assign(_First, _Last, _Iter_cat(_First));
		}

	template<class _Iter>
		void _Assign(_Iter _Count, _Iter _Val, _Int_iterator_tag)
		{	
		_Assign_n((size_type)_Count, (_Ty)_Val);
		}

	template<class _Iter>
		void _Assign(_Iter _First, _Iter _Last, input_iterator_tag)
		{	
		erase(begin(), end());
		insert(begin(), _First, _Last);
		}

	void assign(size_type _Count, const _Ty& _Val)
		{	
		_Assign_n(_Count, _Val);
		}

	iterator insert(const_iterator _Where, const _Ty& _Val)
		{	
		size_type _Off = size() == 0 ? 0 : _Where - begin();
		_Insert_n(_Where, (size_type)1, _Val);
		return (begin() + _Off);
		}

	void insert(const_iterator _Where, size_type _Count, const _Ty& _Val)
		{	
		_Insert_n(_Where, _Count, _Val);
		}

	template<class _Iter>
		void insert(const_iterator _Where, _Iter _First, _Iter _Last)
		{	
		_Insert(_Where, _First, _Last, _Iter_cat(_First));
		}

	template<class _Iter>
		void _Insert(const_iterator _Where, _Iter _First, _Iter _Last,
			_Int_iterator_tag)
		{	
		_Insert_n(_Where, (size_type)_First, (_Ty)_Last);
		}

	template<class _Iter>
		void _Insert(const_iterator _Where, _Iter _First, _Iter _Last,
			input_iterator_tag)
		{	
		size_type _Off = (_Where)._Ptr - this->_Myfirst;

 
		if (size() < _Off)
			_Debug_message(L"vector insert iterator outside range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 1083);
 

		if (_First != _Last)
			{	
			size_type _Oldsize = size();

			try {
			for (; _First != _Last; ++_First)
				push_back(*_First);	

			} catch (...) {
			erase(begin() + _Oldsize, end());
			throw;
			}

			::std:: rotate(begin() + _Off, begin() + _Oldsize, end());
			}
		}

	template<class _Iter>
		void _Insert(const_iterator _Where,
			_Iter _First, _Iter _Last, forward_iterator_tag)
		{	
 
		if (_Where._Getcont() != this
			|| (_Where)._Ptr < this->_Myfirst
			|| this->_Mylast < (_Where)._Ptr)
			_Debug_message(L"vector insert iterator outside range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 1111);
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 1112);
 

		size_type _Count = 0;
		_Distance(_First, _Last, _Count);

		if (_Count == 0)
			;
		else if (max_size() - size() < _Count)
			_Xlen();	
		else if (capacity() < size() + _Count)
			{	
			size_type _Capacity = _Grow_to(size() + _Count);
			pointer _Newvec = this->_Alval.allocate(_Capacity);
			pointer _Ptr = _Newvec;

			try {
			_Ptr = _Umove(this->_Myfirst, (_Where)._Ptr,
				_Newvec);	
			_Ptr = _Ucopy(_First, _Last, _Ptr);	
			_Umove((_Where)._Ptr, this->_Mylast,
				_Ptr);	
			} catch (...) {
			_Destroy(_Newvec, _Ptr);
			this->_Alval.deallocate(_Newvec, _Capacity);
			throw;
			}

			_Count += size();
			if (this->_Myfirst != 0)
				{	
				_Destroy(this->_Myfirst, this->_Mylast);
				this->_Alval.deallocate(this->_Myfirst,
					this->_Myend - this->_Myfirst);
				}

			this->_Orphan_all();
			this->_Myend = _Newvec + _Capacity;
			this->_Mylast = _Newvec + _Count;
			this->_Myfirst = _Newvec;
			}
		else
			{	
			_Ucopy(_First, _Last, this->_Mylast);
			::std:: rotate((_Where)._Ptr, this->_Mylast,
				this->_Mylast + _Count);
			this->_Mylast += _Count;
			_Orphan_range((_Where)._Ptr, this->_Mylast);
			}
		}

 
	iterator erase(const_iterator _Where)
		{	
		if (_Where._Getcont() != this
			|| (_Where)._Ptr < this->_Myfirst
			|| this->_Mylast <= (_Where)._Ptr)
			_Debug_message(L"vector erase iterator outside range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 1169);
		_Move((_Where)._Ptr + 1, this->_Mylast, (_Where)._Ptr);
		_Destroy(this->_Mylast - 1, this->_Mylast);
		_Orphan_range((_Where)._Ptr, this->_Mylast);
		--this->_Mylast;
		return (_Make_iter(_Where));
		}

 










	iterator erase(const_iterator _First_arg,
		const_iterator _Last_arg)
		{	
		iterator _First = _Make_iter(_First_arg);
		iterator _Last = _Make_iter(_Last_arg);

		if (_First != _Last)
			{	
 
			if (_Last < _First || _First._Getcont() != this
				|| (_First)._Ptr < this->_Myfirst
				|| this->_Mylast < (_Last)._Ptr)
				_Debug_message(L"vector erase iterator outside range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 1200);
			pointer _Ptr = _Move((_Last)._Ptr, this->_Mylast,
				(_First)._Ptr);
			_Orphan_range((_First)._Ptr, this->_Mylast);

 




			_Destroy(_Ptr, this->_Mylast);
			this->_Mylast = _Ptr;
			}
		return (_Make_iter(_First));
		}

	void clear()
		{	
		erase(begin(), end());
		}

	void swap(_Myt& _Right)
		{	
		if (this == &_Right)
			;	
		else if (this->_Alval == _Right._Alval)
			{	
			this->_Swap_all(_Right);
			::std:: swap(this->_Myfirst, _Right._Myfirst);
			::std:: swap(this->_Mylast, _Right._Mylast);
			::std:: swap(this->_Myend, _Right._Myend);
			}
		else
			{	
			_Myt _Ts = _Move(*this);

			*this = _Move(_Right);
			_Right = _Move(_Ts);
			}
		}

protected:
	void _Assign_n(size_type _Count, const _Ty& _Val)
		{	
		_Ty _Tmp = _Val;	
		erase(begin(), end());
		insert(begin(), _Count, _Tmp);
		}

	bool _Buy(size_type _Capacity)
		{	
		this->_Myfirst = 0;
		this->_Mylast = 0;
		this->_Myend = 0;

		if (_Capacity == 0)
			return (false);
		else if (max_size() < _Capacity)
			_Xlen();	
		else
			{	
			this->_Myfirst = this->_Alval.allocate(_Capacity);
			this->_Mylast = this->_Myfirst;
			this->_Myend = this->_Myfirst + _Capacity;
			}
		return (true);
		}

	void _Destroy(pointer _First, pointer _Last)
		{	
		_Destroy_range(_First, _Last, this->_Alval);
		}

	size_type _Grow_to(size_type _Count) const
		{	
		size_type _Capacity = capacity();

		_Capacity = max_size() - _Capacity / 2 < _Capacity
			? 0 : _Capacity + _Capacity / 2;	
		if (_Capacity < _Count)
			_Capacity = _Count;
		return (_Capacity);
		}

	bool _Inside(const _Ty *_Ptr) const
		{	
		return (_Ptr < this->_Mylast && this->_Myfirst <= _Ptr);
		}

	void _Reserve(size_type _Count)
		{	
		size_type _Size = size();
		if (max_size() - _Count < _Size)
			_Xlen();
		else if ((_Size += _Count) <= capacity())
			;
		else
			reserve(_Grow_to(_Size));
		}

	void _Tidy()
		{	
		if (this->_Myfirst != 0)
			{	
			this->_Orphan_all();
			_Destroy(this->_Myfirst, this->_Mylast);
			this->_Alval.deallocate(this->_Myfirst,
				this->_Myend - this->_Myfirst);
			}
		this->_Myfirst = 0;
		this->_Mylast = 0;
		this->_Myend = 0;
		}

	template<class _Iter>
		pointer _Ucopy(_Iter _First, _Iter _Last, pointer _Ptr)
		{	
		return (_Uninitialized_copy(_First, _Last,
			_Ptr, this->_Alval));
		}

	template<class _Iter>
		pointer _Umove(_Iter _First, _Iter _Last, pointer _Ptr)
		{	
		return (_Uninitialized_move(_First, _Last,
			_Ptr, this->_Alval));
		}

	void _Insert_n(const_iterator _Where,
		size_type _Count, const _Ty& _Val)
		{	
 
		if (_Where._Getcont() != this
			|| (_Where)._Ptr < this->_Myfirst
			|| this->_Mylast < (_Where)._Ptr)
			_Debug_message(L"vector insert iterator outside range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 1335);
 

		if (_Count == 0)
			;
		else if (max_size() - size() < _Count)
			_Xlen();	
		else if (capacity() < size() + _Count)
			{	
			size_type _Capacity = _Grow_to(size() + _Count);
			pointer _Newvec = this->_Alval.allocate(_Capacity);
			size_type _Whereoff = (_Where)._Ptr - this->_Myfirst;
			int _Ncopied = 0;

			try {
			_Ufill(_Newvec + _Whereoff, _Count,
				::std:: addressof(_Val));	
			++_Ncopied;
			_Umove(this->_Myfirst, (_Where)._Ptr,
				_Newvec);	
			++_Ncopied;
			_Umove((_Where)._Ptr, this->_Mylast,
				_Newvec + (_Whereoff + _Count));	
			} catch (...) {
			if (1 < _Ncopied)
				_Destroy(_Newvec, _Newvec + _Whereoff);
			if (0 < _Ncopied)
				_Destroy(_Newvec + _Whereoff, _Newvec + _Whereoff + _Count);
			this->_Alval.deallocate(_Newvec, _Capacity);
			throw;
			}

			_Count += size();
			if (this->_Myfirst != 0)
				{	
				_Destroy(this->_Myfirst, this->_Mylast);
				this->_Alval.deallocate(this->_Myfirst,
					this->_Myend - this->_Myfirst);
				}

			this->_Orphan_all();
			this->_Myend = _Newvec + _Capacity;
			this->_Mylast = _Newvec + _Count;
			this->_Myfirst = _Newvec;
			}
		else if ((size_type)(this->_Mylast - (_Where)._Ptr)
			< _Count)
			{	
			_Ty _Tmp = _Val;	

			_Umove((_Where)._Ptr, this->_Mylast,
				(_Where)._Ptr + _Count);	

			try {
			_Ufill(this->_Mylast,
				_Count - (this->_Mylast - (_Where)._Ptr),
				::std:: addressof(_Tmp));	
			} catch (...) {
			_Destroy((_Where)._Ptr + _Count,
				this->_Mylast + _Count);
			throw;
			}

			this->_Mylast += _Count;
			_Orphan_range((_Where)._Ptr, this->_Mylast);
			::std:: fill((_Where)._Ptr, this->_Mylast - _Count,
				_Tmp);	
			}
		else
			{	
			_Ty _Tmp = _Val;	

			pointer _Oldend = this->_Mylast;
			this->_Mylast = _Umove(_Oldend - _Count, _Oldend,
				this->_Mylast);	

			_Orphan_range((_Where)._Ptr, this->_Mylast);
			::std:: _Copy_backward((_Where)._Ptr, _Oldend - _Count,
				_Oldend);	
			::std:: fill((_Where)._Ptr,
				(_Where)._Ptr + _Count, _Tmp);	
			}
		}

	pointer _Ufill(pointer _Ptr, size_type _Count, const _Ty *_Pval)
		{	
		_Uninitialized_fill_n(_Ptr, _Count, _Pval, this->_Alval);
		return (_Ptr + _Count);
		}

	__declspec(noreturn) void _Xlen() const
		{	
		_Xlength_error("vector<T> too long");
		}

	__declspec(noreturn) void _Xran() const
		{	
		_Xout_of_range("invalid vector<T> subscript");
		}

 
	void _Orphan_range(pointer _First, pointer _Last) const
		{	
		_Lockit _Lock(3);
		const_iterator **_Pnext = (const_iterator **)this->_Getpfirst();
		if (_Pnext != 0)
			while (*_Pnext != 0)
				if ((*_Pnext)->_Ptr < _First || _Last < (*_Pnext)->_Ptr)
					_Pnext = (const_iterator **)(*_Pnext)->_Getpnext();
				else
					{	
					(*_Pnext)->_Clrcont();
					*_Pnext = *(const_iterator **)(*_Pnext)->_Getpnext();
					}
		}

 




	};

		

template<class _Ty,
	class _Alloc> inline
	void swap(vector<_Ty, _Alloc>& _Left, vector<_Ty, _Alloc>& _Right)
	{	
	_Left.swap(_Right);
	}

template<class _Ty,
	class _Alloc> inline
	void swap(vector<_Ty, _Alloc>& _Left, vector<_Ty, _Alloc>&& _Right)
	{	
	typedef vector<_Ty, _Alloc> _Myt;
	_Left.swap(::std:: forward<_Myt>(_Right));
	}

template<class _Ty,
	class _Alloc> inline
	void swap(vector<_Ty, _Alloc>&& _Left, vector<_Ty, _Alloc>& _Right)
	{	
	typedef vector<_Ty, _Alloc> _Myt;
	_Right.swap(::std:: forward<_Myt>(_Left));
	}

template<class _Ty,
	class _Alloc> inline
	bool operator==(const vector<_Ty, _Alloc>& _Left,
		const vector<_Ty, _Alloc>& _Right)
	{	
	return (_Left.size() == _Right.size()
		&& equal(_Left.begin(), _Left.end(), _Right.begin()));
	}

template<class _Ty,
	class _Alloc> inline
	bool operator!=(const vector<_Ty, _Alloc>& _Left,
		const vector<_Ty, _Alloc>& _Right)
	{	
	return (!(_Left == _Right));
	}

template<class _Ty,
	class _Alloc> inline
	bool operator<(const vector<_Ty, _Alloc>& _Left,
		const vector<_Ty, _Alloc>& _Right)
	{	
	return (lexicographical_compare(_Left.begin(), _Left.end(),
		_Right.begin(), _Right.end()));
	}

template<class _Ty,
	class _Alloc> inline
	bool operator>(const vector<_Ty, _Alloc>& _Left,
		const vector<_Ty, _Alloc>& _Right)
	{	
	return (_Right < _Left);
	}

template<class _Ty,
	class _Alloc> inline
	bool operator<=(const vector<_Ty, _Alloc>& _Left,
		const vector<_Ty, _Alloc>& _Right)
	{	
	return (!(_Right < _Left));
	}

template<class _Ty,
	class _Alloc> inline
	bool operator>=(const vector<_Ty, _Alloc>& _Left,
		const vector<_Ty, _Alloc>& _Right)
	{	
	return (!(_Left < _Right));
	}




typedef unsigned int _Vbase;	
const int _VBITS = 8 * sizeof (_Vbase);	

		
template<class _Alloc>
	class _Vb_iter_base
		: public _Iterator012<random_access_iterator_tag,
			_Bool,
			typename _Alloc::difference_type,
			bool *,
			bool,
			_Iterator_base>
	{	
public:
	typedef typename _Alloc::size_type _Sizet;
	typedef vector<_Bool, _Alloc> _Mycont;

	_Vb_iter_base()
		: _Myptr(0), _Myoff(0)
		{	
		}

	_Vb_iter_base(const _Vbase *_Ptr, _Sizet _Off,
		const _Container_base *_Mypvbool)
		: _Myptr(_Ptr), _Myoff(_Off)
		{	
		this->_Adopt(_Mypvbool);
		}

	int _Valid(_Sizet _Inc) const
		{	
 
		_Sizet _Mysize = ((_Mycont *)this->_Getcont())->_Mysize;

		_Inc += _Myoff;
		_Inc += _VBITS * (_Myptr
			- (((_Mycont *)this->_Getcont())->_Myvec)._Myfirst);
		return (_Inc < _Mysize ? -1 : _Inc == _Mysize ? 0 : +1);

 



		}

	const _Vbase *_Myptr;
	_Sizet _Myoff;
	};

		
template<class _Alloc>
	class _Vb_reference
		: public _Vb_iter_base<_Alloc>
	{	
public:
	typedef _Vb_iter_base<_Alloc> _Mybase;
	typedef _Vb_reference<_Alloc> _Mytype;

	_Vb_reference()
		{	
		}

	_Vb_reference(const _Mybase& _Right)
		: _Mybase(_Right._Myptr, _Right._Myoff, _Right._Getcont())
		{	
		}

	_Mytype& operator=(const _Mytype& _Right)
		{	
		return (*this = bool(_Right));
		}

	_Mytype& operator=(bool _Val)
		{	
		if (_Val)
			*(_Vbase *)_Getptr() |= _Mask();
		else
			*(_Vbase *)_Getptr() &= ~_Mask();
		return (*this);
		}

	void flip()
		{	
		*(_Vbase *)_Getptr() ^= _Mask();
		}

	bool operator~() const
		{	
		return (!bool(*this));
		}

	operator bool() const
		{	
		return ((*_Getptr() & _Mask()) != 0);
		}

	const _Vbase *_Getptr() const
		{	
 
		if (this->_Getcont() == 0
			|| this->_Myptr == 0
			|| 0 <= this->_Valid(0))
			{	
			_Debug_message(L"vector<bool> iterator not dereferencable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 1639);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 1640, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 1640, 0); };
			}

 




		return (this->_Myptr);
		}

protected:
	_Vbase _Mask() const
		{	
		return ((_Vbase)(1 << this->_Myoff));
		}
	};

template<class _Alloc>
	void swap(_Vb_reference<_Alloc> _Left,
		_Vb_reference<_Alloc> _Right)
	{	
	bool _Val = _Left;	
	_Left = _Right;
	_Right = _Val;
	}

		
template<class _Alloc>
	class _Vb_const_iterator
		: public _Vb_iter_base<_Alloc>
	{	
public:
	typedef _Vb_iter_base<_Alloc> _Mybase;
	typedef _Vb_const_iterator<_Alloc> _Mytype;

	typedef _Vb_reference<_Alloc> _Reft;
	typedef bool const_reference;

	typedef random_access_iterator_tag iterator_category;
	typedef _Bool value_type;
	typedef typename _Alloc::size_type size_type;
	typedef typename _Alloc::difference_type difference_type;
	typedef const_reference *pointer;
	typedef const_reference reference;

	_Vb_const_iterator()
		{	
		}

	_Vb_const_iterator(const _Vbase *_Ptr, const _Container_base *_Mypvbool)
		: _Mybase(_Ptr, 0, _Mypvbool)
		{	
		}

	const_reference operator*() const
		{	
		return (_Reft(*this));
		}

	_Mytype& operator++()
		{	
		_Inc();
		return (*this);
		}

	_Mytype operator++(int)
		{	
		_Mytype _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Mytype& operator--()
		{	
		_Dec();
		return (*this);
		}

	_Mytype operator--(int)
		{	
		_Mytype _Tmp = *this;
		--*this;
		return (_Tmp);
		}

	_Mytype& operator+=(difference_type _Off)
		{	
		if (_Off < 0 && this->_Myoff < 0 - (size_type)_Off)
			{	
			this->_Myoff += _Off;
			this->_Myptr -= 1 + ((size_type)(-1) - this->_Myoff) / _VBITS;
			this->_Myoff %= _VBITS;
			}
		else
			{	
			this->_Myoff += _Off;
			this->_Myptr += this->_Myoff / _VBITS;
			this->_Myoff %= _VBITS;
			}
		return (*this);
		}

	_Mytype operator+(difference_type _Off) const
		{	
		_Mytype _Tmp = *this;
		return (_Tmp += _Off);
		}

	_Mytype& operator-=(difference_type _Off)
		{	
		return (*this += -_Off);
		}

	_Mytype operator-(difference_type _Off) const
		{	
		_Mytype _Tmp = *this;
		return (_Tmp -= _Off);
		}

	difference_type operator-(
		const _Mytype& _Right) const
		{	
		_Compat(_Right);
		return (_VBITS * (this->_Myptr - _Right._Myptr)
			+ (difference_type)this->_Myoff
			- (difference_type)_Right._Myoff);
		}

	const_reference operator[](difference_type _Off) const
		{	
		return (*(*this + _Off));
		}

	bool operator==(const _Mytype& _Right) const
		{	
		_Compat(_Right);
		return (this->_Myptr == _Right._Myptr
			&& this->_Myoff == _Right._Myoff);
		}

	bool operator!=(const _Mytype& _Right) const
		{	
		return (!(*this == _Right));
		}

	bool operator<(const _Mytype& _Right) const
		{	
		_Compat(_Right);
		return (this->_Myptr < _Right._Myptr
			|| this->_Myptr == _Right._Myptr
				&& this->_Myoff < _Right._Myoff);
		}

	bool operator>(const _Mytype& _Right) const
		{	
		return (_Right < *this);
		}

	bool operator<=(const _Mytype& _Right) const
		{	
		return (!(_Right < *this));
		}

	bool operator>=(const _Mytype& _Right) const
		{	
		return (!(*this < _Right));
		}

 
	void _Compat(const _Mytype& _Right) const
		{	
		if (this->_Getcont() == 0
			|| this->_Getcont() != _Right._Getcont())
			_Debug_message(L"vector<bool> iterators incompatible", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 1814);
		}

 












	void _Dec()
		{	
		if (this->_Myoff != 0)
			--this->_Myoff;
		else
			{	
 
			if (this->_Getcont() == 0 || 0 < this->_Valid((size_type)-1))
				{	
				_Debug_message(L"vector<bool> iterator not decrementable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 1839);
				{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 1840, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 1840, 0); };
				}

 




			this->_Myoff = _VBITS - 1;
			--this->_Myptr;
			}
		}

	void _Inc()
		{	
		if (this->_Myoff < _VBITS - 1)
			++this->_Myoff;
		else
			{	
 
			if (this->_Getcont() == 0 || 0 < this->_Valid(1))
				{	
				_Debug_message(L"vector<bool> iterator not incrementable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 1862);
				{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 1863, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 1863, 0); };
				}

 




			this->_Myoff = 0;
			++this->_Myptr;
			}
		}
	};

template<class _Alloc>
	_Vb_const_iterator<_Alloc> operator+(
		typename _Alloc::difference_type _Off,
		_Vb_const_iterator<_Alloc> _Right)
		{	
		return (_Right += _Off);
		}

template<class _Alloc>
	struct _Is_checked_helper<_Vb_const_iterator<_Alloc> >
		: public ::std:: tr1::true_type
	{	
	};

	
template<class _Alloc>
	class _Vb_iterator
		: public _Vb_const_iterator<_Alloc>
	{	
public:
	typedef _Vb_const_iterator<_Alloc> _Mybase;
	typedef _Vb_iterator<_Alloc> _Mytype;

	typedef _Vb_reference<_Alloc> _Reft;
	typedef bool const_reference;

	typedef random_access_iterator_tag iterator_category;
	typedef _Bool value_type;
	typedef typename _Alloc::size_type size_type;
	typedef typename _Alloc::difference_type difference_type;
	typedef _Reft *pointer;
	typedef _Reft reference;

	_Vb_iterator()
		{	
		}

	_Vb_iterator(_Vbase *_Ptr, _Container_base *_Mypvbool)
		: _Mybase(_Ptr, _Mypvbool)
		{	
		}

	reference operator*() const
		{	
		return (_Reft(*this));
		}

	_Mytype& operator++()
		{	
		++*(_Mybase *)this;
		return (*this);
		}

	_Mytype operator++(int)
		{	
		_Mytype _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Mytype& operator--()
		{	
		--*(_Mybase *)this;
		return (*this);
		}

	_Mytype operator--(int)
		{	
		_Mytype _Tmp = *this;
		--*this;
		return (_Tmp);
		}

	_Mytype& operator+=(difference_type _Off)
		{	
		*(_Mybase *)this += _Off;
		return (*this);
		}

	_Mytype operator+(difference_type _Off) const
		{	
		_Mytype _Tmp = *this;
		return (_Tmp += _Off);
		}

	_Mytype& operator-=(difference_type _Off)
		{	
		return (*this += -_Off);
		}

	_Mytype operator-(difference_type _Off) const
		{	
		_Mytype _Tmp = *this;
		return (_Tmp -= _Off);
		}

	difference_type operator-(const _Mybase& _Right) const
		{	
		return (*(_Mybase *)this - _Right);
		}

	reference operator[](difference_type _Off) const
		{	
		return (*(*this + _Off));
		}
	};

template<class _Alloc>
	_Vb_iterator<_Alloc> operator+(typename _Alloc::difference_type _Off,
		_Vb_iterator<_Alloc> _Right)
		{	
		return (_Right += _Off);
		}

template<class _Alloc>
	struct _Is_checked_helper<_Vb_iterator<_Alloc> >
		: public ::std:: tr1::true_type
	{	
	};

		
template<class _Alloc>
	class _Vb_val
		: public _Container_base
	{	
public:
	typedef typename _Alloc::template rebind<_Vbase>::other _Alty;
	typedef typename _Alty::size_type size_type;

 











	void _Buyproxy()
	 	{	
		typename _Alloc::template rebind<_Container_proxy>::other
			_Alproxy(_Myvec.get_allocator());
		this->_Myproxy = _Alproxy.allocate(1);
		_Cons_val(_Alproxy, this->_Myproxy, _Container_proxy());
		this->_Myproxy->_Mycont = this;
	 	}

	_Vb_val(size_type _Count, bool _Val, _Alloc _Al = _Alloc())
		: _Myvec(_Nw(_Count), (_Vbase)(_Val ? -1 : 0), _Al)
		{	
		_Buyproxy();
		_Mysize = 0;
		}

	_Vb_val(const _Vb_val& _Right)
		: _Myvec(_Right._Myvec), _Mysize(_Right._Mysize)
		{	
		_Buyproxy();
		}

	~_Vb_val()
		{	
		typename _Alloc::template rebind<_Container_proxy>::other
			_Alproxy(_Myvec.get_allocator());
		this->_Orphan_all();
		_Dest_val(_Alproxy, this->_Myproxy);
		_Alproxy.deallocate(this->_Myproxy, 1);
		this->_Myproxy = 0;
		}
 

	static size_type _Nw(size_type _Count)
		{	
		return ((_Count + _VBITS - 1) / _VBITS);
		}

	::std:: vector<_Vbase, _Alty> _Myvec;	
	typename _Alty::size_type _Mysize;	
	};

		

template<class _Alloc>
	class vector<_Bool, _Alloc>
		: public _Vb_val<_Alloc>
	{	
public:
	typedef typename _Alloc::size_type size_type;
	typedef typename _Alloc::difference_type _Dift;
	typedef ::std:: vector<_Vbase,
		typename _Alloc::template rebind<_Vbase>::other>
			_Vbtype;

	typedef ::std:: vector<_Bool, _Alloc> _Myt;
	typedef _Vb_val<_Alloc> _Mybase;

	typedef _Dift difference_type;
	typedef _Bool _Ty;
	typedef _Alloc allocator_type;

	typedef _Vb_reference<_Alloc> reference;
	typedef bool const_reference;
	typedef bool value_type;

	typedef reference _Reft;
	typedef _Vb_const_iterator<_Alloc> const_iterator;
	typedef _Vb_iterator<_Alloc> iterator;

	typedef iterator pointer;
	typedef const_iterator const_pointer;
	typedef ::std:: reverse_iterator<iterator> reverse_iterator;
	typedef ::std:: reverse_iterator<const_iterator> const_reverse_iterator;

	static const int _VBITS = ::std:: _VBITS;

	vector()
		: _Mybase(0, false)
		{	
		}

	vector(const _Myt& _Right)
		: _Mybase(_Right)
		{	
		}

	explicit vector(const _Alloc& _Al)
		: _Mybase(0, false, _Al)
		{	
		}

	explicit vector(size_type _Count, bool _Val = false)
		: _Mybase(_Count, _Val)
		{	
		_Trim(_Count);
		}

	vector(size_type _Count, bool _Val, const _Alloc& _Al)
		: _Mybase(_Count, _Val, _Al)
		{	
		_Trim(_Count);
		}

	template<class _Iter>
		vector(_Iter _First, _Iter _Last)
		: _Mybase(0, false)
		{	
		_BConstruct(_First, _Last, _Iter_cat(_First));
		}

	template<class _Iter>
		vector(_Iter _First, _Iter _Last, const _Alloc& _Al)
		: _Mybase(0, false, _Al)
		{	
		_BConstruct(_First, _Last, _Iter_cat(_First));
		}

	template<class _Iter>
		void _BConstruct(_Iter _Count, _Iter _Val, _Int_iterator_tag)
		{	
		size_type _Num = (size_type)_Count;
		this->_Myvec.assign(_Num, (_Ty)_Val ? -1 : 0);
		_Trim(_Num);
		}

	template<class _Iter>
		void _BConstruct(_Iter _First, _Iter _Last, input_iterator_tag)
		{	
		insert(begin(), _First, _Last);
		}

	vector(_Myt&& _Right)
		: _Mybase(0, false, _Right.get_allocator())
		{	
		_Assign_rv(::std:: move(_Right));
		}

	_Myt& operator=(_Myt&& _Right)
		{	
		_Assign_rv(::std:: move(_Right));
		return (*this);
		}

	void _Assign_rv(_Myt&& _Right)
		{	
		if (this == &_Right)
			;
		else if (get_allocator() != _Right.get_allocator())
			*this = _Right;
		else
			{	
			clear();
			this->_Swap_all((_Myt&)_Right);
			this->_Mysize = _Right._Mysize;
			_Right._Mysize = 0;
			this->_Myvec = ::std:: move(_Right._Myvec);
			}
		}

	void swap(_Myt&& _Right)
		{	
		_Assign_rv(::std:: move(_Right));
		}

	~vector()
		{	
		this->_Mysize = 0;
		}

	_Myt& operator=(const _Myt& _Right)
		{	
		this->_Mysize = _Right._Mysize;
		this->_Myvec = _Right._Myvec;
		return (*this);
		}

	void reserve(size_type _Count)
		{	
		this->_Myvec.reserve(this->_Nw(_Count));
		}

	size_type capacity() const
		{	
		return (this->_Myvec.capacity() * _VBITS);
		}

	iterator begin()
		{	
		return (iterator((_Vbase *)this->_Myvec._Myfirst, this));
		}

	const_iterator begin() const
		{	
		return (const_iterator((_Vbase *)this->_Myvec._Myfirst, this));
		}

	iterator end()
		{	
		iterator _Tmp = begin();
		if (0 < this->_Mysize)
			_Tmp += this->_Mysize;
		return (_Tmp);
		}

	const_iterator end() const
		{	
		const_iterator _Tmp = begin();
		if (0 < this->_Mysize)
			_Tmp += this->_Mysize;
		return (_Tmp);
		}

 
	const_iterator cbegin() const
		{	
		return (((const _Myt *)this)->begin());
		}

	const_iterator cend() const
		{	
		return (((const _Myt *)this)->end());
		}

	const_reverse_iterator crbegin() const
		{	
		return (((const _Myt *)this)->rbegin());
		}

	const_reverse_iterator crend() const
		{	
		return (((const _Myt *)this)->rend());
		}

	void shrink_to_fit()
		{	
		_Myt _Tmp(*this);
		swap(_Tmp);
		}
 

	iterator _Make_iter(const_iterator _Where)
		{	
		iterator _Tmp = begin();
		if (0 < this->_Mysize)
			_Tmp += _Where - begin();
		return (_Tmp);
		}

	reverse_iterator rbegin()
		{	
		return (reverse_iterator(end()));
		}

	const_reverse_iterator rbegin() const
		{	
		return (const_reverse_iterator(end()));
		}

	reverse_iterator rend()
		{	
		return (reverse_iterator(begin()));
		}

	const_reverse_iterator rend() const
		{	
		return (const_reverse_iterator(begin()));
		}

	void resize(size_type _Newsize, bool _Val = false)
		{	
		if (size() < _Newsize)
			_Insert_n(end(), _Newsize - size(), _Val);
		else if (_Newsize < size())
			erase(begin() + _Newsize, end());
		}

	size_type size() const
		{	
		return (this->_Mysize);
		}

	size_type max_size() const
		{	
		const size_type _Maxsize = this->_Myvec.max_size();
		return (_Maxsize < (size_type)(-1) / _VBITS
			? _Maxsize * _VBITS : (size_type)(-1));
		}

	bool empty() const
		{	
		return (size() == 0);
		}

	_Alloc get_allocator() const
		{	
		return (this->_Myvec.get_allocator());
		}

	const_reference at(size_type _Off) const
		{	
		if (size() <= _Off)
			_Xran();
		return (*(begin() + _Off));
		}

	reference at(size_type _Off)
		{	
		if (size() <= _Off)
			_Xran();
		return (*(begin() + _Off));
		}

	const_reference operator[](size_type _Off) const
		{	
		return (*(begin() + _Off));
		}

	reference operator[](size_type _Off)
		{	
		return (*(begin() + _Off));
		}

	reference front()
		{	
		return (*begin());
		}

	const_reference front() const
		{	
		return (*begin());
		}

	reference back()
		{	
		return (*(end() - 1));
		}

	const_reference back() const
		{	
		return (*(end() - 1));
		}

	void push_back(bool _Val)
		{	
		insert(end(), _Val);
		}

	void pop_back()
		{	
		if (!empty())
			erase(end() - 1);
		}

	template<class _Iter>
		void assign(_Iter _First, _Iter _Last)
		{	
		_Assign(_First, _Last, _Iter_cat(_First));
		}

	template<class _Iter>
		void _Assign(_Iter _Count, _Iter _Val, _Int_iterator_tag)
		{	
		_Assign_n((size_type)_Count, (bool)_Val);
		}

	template<class _Iter>
		void _Assign(_Iter _First, _Iter _Last, input_iterator_tag)
		{	
		erase(begin(), end());
		insert(begin(), _First, _Last);
		}

	void assign(size_type _Count, bool _Val)
		{	
		_Assign_n(_Count, _Val);
		}

	iterator insert(const_iterator _Where, bool _Val)
		{	
		size_type _Off = _Where - begin();
		_Insert_n(_Where, (size_type)1, _Val);
		return (begin() + _Off);
		}

	void insert(const_iterator _Where, size_type _Count, bool _Val)
		{	
		_Insert_n(_Where, _Count, _Val);
		}

	template<class _Iter>
		void insert(const_iterator _Where, _Iter _First, _Iter _Last)
		{	
		_Insert(_Where, _First, _Last, _Iter_cat(_First));
		}

	template<class _Iter>
		void _Insert(const_iterator _Where, _Iter _Count, _Iter _Val,
			_Int_iterator_tag)
		{	
		_Insert_n(_Where, (size_type)_Count, (bool)_Val);
		}

	template<class _Iter>
		void _Insert(const_iterator _Where, _Iter _First, _Iter _Last,
			input_iterator_tag)
		{	
		size_type _Off = _Where - begin();

		for (; _First != _Last; ++_First, ++_Off)
			insert(begin() + _Off, *_First);
		}

	template<class _Iter>
		void _Insert(const_iterator _Where,
			_Iter _First, _Iter _Last,
			forward_iterator_tag)
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 2436);
		size_type _Count = 0;
		_Distance(_First, _Last, _Count);

		size_type _Off = _Insert_x(_Where, _Count);
		::std:: copy(_First, _Last, begin() + _Off);
		}

	iterator erase(const_iterator _Where_arg)
		{	
		iterator _Where = _Make_iter(_Where_arg);
		size_type _Off = _Where - begin();

 
		if (end() <= _Where)
			_Debug_message(L"vector<bool> erase iterator outside range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 2451);
		::std:: copy(_Where + 1, end(), _Where);
		_Orphan_range(_Off, this->_Mysize);

 



		_Trim(this->_Mysize - 1);
		return (begin() + _Off);
		}

	iterator erase(const_iterator _First_arg, const_iterator _Last_arg)
		{	
		iterator _First = _Make_iter(_First_arg);
		iterator _Last = _Make_iter(_Last_arg);
		size_type _Off = _First - begin();

		if (_First != _Last)
			{	
 
			if (_Last < _First || end() < _Last)
				_Debug_message(L"vector<bool> erase iterator outside range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 2473);
			iterator _Next = ::std:: copy(_Last, end(), _First);
			size_type _Newsize = _Next - begin();
			_Orphan_range(_Newsize, this->_Mysize);
			_Trim(_Newsize);

 



			}
		return (begin() + _Off);
		}

	void clear()
		{	
		erase(begin(), end());
		}

	void flip()
		{	
		for (typename _Vbtype::iterator _Next = this->_Myvec.begin();

			_Next != this->_Myvec.end(); ++_Next)
			*_Next = (_Vbase)~*_Next;
		_Trim(this->_Mysize);
		}

	void swap(_Myt& _Right)
		{	
		if (this != &_Right)
			{	
			this->_Swap_all(_Right);
			::std:: swap(this->_Mysize, _Right._Mysize);
			this->_Myvec.swap(_Right._Myvec);
			}
		}

	static void swap(reference _Left, reference _Right)
		{	
		bool _Val = _Left;	

		_Left = _Right;
		_Right = _Val;
		}

 
	size_t hash() const
		{	
		size_t _Val = 2166136261U;
		size_t _First = 0;
		size_t _Last = this->_Myvec.size();

		for(; _First < _Last; ++_First)
			_Val = 16777619U * _Val ^ (size_t)this->_Myvec[_First];
		return (_Val);
		}
 

	void _Assign_n(size_type _Count, bool _Val)
		{	
		erase(begin(), end());
		_Insert_n(begin(), _Count, _Val);
		}

	void _Insert_n(const_iterator _Where,
		size_type _Count, bool _Val)
		{	
		size_type _Off = _Insert_x(_Where, _Count);
		::std:: fill(begin() + _Off, begin() + (_Off + _Count), _Val);
		}

	size_type _Insert_x(const_iterator _Where, size_type _Count)
		{	
		size_type _Off = _Where - begin();

 
		if (end() < _Where)
			_Debug_message(L"vector<bool> insert iterator outside range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\vector", 2551);
		bool _Realloc = capacity() - size() < _Count;
 

		if (_Count == 0)
			;
		else if (max_size() - size() < _Count)
			_Xlen();	
		else
			{	
			this->_Myvec.resize(this->_Nw(size() + _Count), 0);
			if (size() == 0)
				this->_Mysize += _Count;
			else
				{	
				iterator _Oldend = end();
				this->_Mysize += _Count;
				::std:: copy_backward(begin() + _Off, _Oldend, end());
				}

 
			_Orphan_range(_Realloc ? 0 : _Off, this->_Mysize);
 
			}
		return (_Off);
		}

 
	void _Orphan_range(size_type _Offlo, size_type _Offhi) const
		{	
		typedef _Vb_iter_base<_Alloc> _Myiterbase;

		_Lockit _Lock(3);
		_Vbase *_Base = (_Vbase *)this->_Myvec._Myfirst;

		const_iterator **_Pnext = (const_iterator **)this->_Getpfirst();
		if (_Pnext != 0)
			while (*_Pnext != 0)
				{	
				size_type _Off = _VBITS * ((*_Pnext)->_Myptr - _Base)
					+ (*_Pnext)->_Myoff;
				if (_Off < _Offlo || _Offhi < _Off)
					_Pnext = (const_iterator **)(*_Pnext)->_Getpnext();
				else
					{	
					(*_Pnext)->_Clrcont();
					*_Pnext = *(const_iterator **)(*_Pnext)->_Getpnext();
					}
				}
		}

 





	void _Trim(size_type _Size)
		{	
		if (max_size() < _Size)
			_Xlen();	
		size_type _Words = this->_Nw(_Size);

		if (_Words < this->_Myvec.size())
			this->_Myvec.erase(this->_Myvec.begin() + _Words,
				this->_Myvec.end());
		this->_Mysize = _Size;
		_Size %= _VBITS;
		if (0 < _Size)
			this->_Myvec[_Words - 1] &= (_Vbase)((1 << _Size) - 1);
		}

	__declspec(noreturn) void _Xlen() const
		{	
		_Xlength_error("vector<bool> too long");
		}

	__declspec(noreturn) void _Xran() const
		{	
		_Xout_of_range("invalid vector<bool> subscript");
		}
	};

typedef vector<bool, allocator<bool> > _Bvector;

 
template<class _Kty>
	class hash;

template<class _Alloc>
	class hash<vector<_Bool, _Alloc> >
		: public unary_function<vector<_Bool, _Alloc>, size_t>
	{	
public:
	typedef vector<_Bool, _Alloc> _Kty;

	size_t operator()(const _Kty& _Keyval) const
		{	
		return (_Keyval.hash());
		}
	};
 
}

 #pragma warning(pop)
 #pragma pack(pop)





























#pragma once





 #pragma pack(push,8)
 #pragma warning(push,3)
namespace std {
		
template<class _Kty,	
	class _Ty,	
	class _Pr,	
	class _Alloc,	
	bool _Mfl>	
	class _Tmap_traits
		: public _Container_base
	{	
public:
	typedef pair<_Kty, _Ty> _Val_type;
	typedef _Kty key_type;
	typedef pair<const _Kty, _Ty> value_type;
	typedef _Pr key_compare;

	typedef typename _Alloc::template rebind<value_type>::other
		allocator_type;

	enum
		{	
		_Multi = _Mfl};

	_Tmap_traits()
		: comp()
		{	
		}

	_Tmap_traits(_Pr _Parg)
		: comp(_Parg)
		{	
		}

	class value_compare
		: public binary_function<value_type, value_type, bool>
		{	
		friend class _Tmap_traits<_Kty, _Ty, _Pr, _Alloc, _Mfl>;

	public:
		bool operator()(const value_type& _Left,
			const value_type& _Right) const
			{	
			return (comp(_Left.first, _Right.first));
			}

		value_compare(key_compare _Pred)
			: comp(_Pred)
			{	
			}

	protected:
		key_compare comp;	
		};

	template<class _Ty1,
		class _Ty2>
		static const _Kty& _Kfn(const ::std:: pair<_Ty1, _Ty2>& _Val)
		{	
		return (_Val.first);
		}

	_Pr comp;	
	};

		
template<class _Kty,
	class _Ty,
	class _Pr = less<_Kty>,
	class _Alloc = allocator<pair<const _Kty, _Ty> > >
	class map
		: public _Tree<_Tmap_traits<_Kty, _Ty, _Pr, _Alloc, false> >
	{	
public:
	typedef map<_Kty, _Ty, _Pr, _Alloc> _Myt;
	typedef _Tree<_Tmap_traits<_Kty, _Ty, _Pr, _Alloc, false> > _Mybase;
	typedef _Kty key_type;
	typedef _Ty mapped_type;
	typedef _Ty referent_type;	
	typedef _Pr key_compare;
	typedef typename _Mybase::value_compare value_compare;
	typedef typename _Mybase::allocator_type allocator_type;
	typedef typename _Mybase::size_type size_type;
	typedef typename _Mybase::difference_type difference_type;
	typedef typename _Mybase::pointer pointer;
	typedef typename _Mybase::const_pointer const_pointer;
	typedef typename _Mybase::reference reference;
	typedef typename _Mybase::const_reference const_reference;
	typedef typename _Mybase::iterator iterator;
	typedef typename _Mybase::const_iterator const_iterator;
	typedef typename _Mybase::reverse_iterator reverse_iterator;
	typedef typename _Mybase::const_reverse_iterator
		const_reverse_iterator;
	typedef typename _Mybase::value_type value_type;

	map()
		: _Mybase(key_compare(), allocator_type())
		{	
		}

	map(const _Myt& _Right)
		: _Mybase(_Right)
		{	
		}

	explicit map(const key_compare& _Pred)
		: _Mybase(_Pred, allocator_type())
		{	
		}

	map(const key_compare& _Pred, const allocator_type& _Al)
		: _Mybase(_Pred, _Al)
		{	
		}

	template<class _Iter>
		map(_Iter _First, _Iter _Last)
		: _Mybase(key_compare(), allocator_type())
		{	
		this->insert(_First, _Last);
		}

	template<class _Iter>
		map(_Iter _First, _Iter _Last,
			const key_compare& _Pred)
		: _Mybase(_Pred, allocator_type())
		{	
		this->insert(_First, _Last);
		}

	template<class _Iter>
		map(_Iter _First, _Iter _Last,
			const key_compare& _Pred, const allocator_type& _Al)
		: _Mybase(_Pred, _Al)
		{	
		this->insert(_First, _Last);
		}

	_Myt& operator=(const _Myt& _Right)
		{	
		_Mybase::operator=(_Right);
		return (*this);
		}

	map(_Myt&& _Right)
		: _Mybase(::std:: move(_Right))
		{	
		}

	_Myt& operator=(_Myt&& _Right)
		{	
		_Mybase::operator=(::std:: move(_Right));
		return (*this);
		}

	mapped_type& operator[](key_type&& _Keyval)
		{	
		iterator _Where = this->lower_bound(_Keyval);
		if (_Where == this->end()
			|| this->comp(_Keyval, this->_Key(_Where._Mynode())))
			_Where = this->insert(_Where,
				::std:: pair<key_type, mapped_type>(
					::std:: move(_Keyval),
					mapped_type()));
		return ((*_Where).second);
		}

	void swap(_Myt& _Right)
		{	
		_Mybase::swap(_Right);
		}

	void swap(_Myt&& _Right)
		{	
		_Mybase::swap(::std:: move(_Right));
		}

 

 




















	mapped_type& operator[](const key_type& _Keyval)
		{	
		iterator _Where = this->lower_bound(_Keyval);
		if (_Where == this->end()
			|| this->comp(_Keyval, this->_Key(_Where._Mynode())))
			_Where = this->insert(_Where,
				value_type(_Keyval, mapped_type()));
		return ((*_Where).second);
		}

 
	mapped_type& at(const key_type& _Keyval)
		{	
		iterator _Where = this->lower_bound(_Keyval);
		if (_Where == this->end()
			|| this->comp(_Keyval, this->_Key(_Where._Mynode())))
			_Xout_of_range("invalid map<K, T> key");
		return ((*_Where).second);
		}

	const mapped_type& at(const key_type& _Keyval) const
		{	
		const_iterator _Where = this->lower_bound(_Keyval);
		if (_Where == this->end()
			|| this->comp(_Keyval, this->_Key(_Where._Mynode())))
			_Xout_of_range("invalid map<K, T> key");
		return ((*_Where).second);
		}
 
	};

template<class _Kty,
	class _Ty,
	class _Pr,
	class _Alloc> inline
	void swap(map<_Kty, _Ty, _Pr, _Alloc>& _Left,
		map<_Kty, _Ty, _Pr, _Alloc>& _Right)
	{	
	_Left.swap(_Right);
	}

template<class _Kty,
	class _Ty,
	class _Pr,
	class _Alloc> inline
	void swap(map<_Kty, _Ty, _Pr, _Alloc>& _Left,
		map<_Kty, _Ty, _Pr, _Alloc>&& _Right)
	{	
	typedef map<_Kty, _Ty, _Pr, _Alloc> _Myt;
	_Left.swap(::std:: forward<_Myt>(_Right));
	}

template<class _Kty,
	class _Ty,
	class _Pr,
	class _Alloc> inline
	void swap(map<_Kty, _Ty, _Pr, _Alloc>&& _Left,
		map<_Kty, _Ty, _Pr, _Alloc>& _Right)
	{	
	typedef map<_Kty, _Ty, _Pr, _Alloc> _Myt;
	_Right.swap(::std:: forward<_Myt>(_Left));
	}

		
template<class _Kty,
	class _Ty,
	class _Pr = less<_Kty>,
	class _Alloc = allocator<pair<const _Kty, _Ty> > >
	class multimap
		: public _Tree<_Tmap_traits<_Kty, _Ty, _Pr, _Alloc, true> >
	{	
public:
	typedef multimap<_Kty, _Ty, _Pr, _Alloc> _Myt;
	typedef _Tree<_Tmap_traits<_Kty, _Ty, _Pr, _Alloc, true> > _Mybase;
	typedef _Kty key_type;
	typedef _Ty mapped_type;
	typedef _Ty referent_type;	
	typedef _Pr key_compare;
	typedef typename _Mybase::value_compare value_compare;
	typedef typename _Mybase::allocator_type allocator_type;
	typedef typename _Mybase::size_type size_type;
	typedef typename _Mybase::difference_type difference_type;
	typedef typename _Mybase::pointer pointer;
	typedef typename _Mybase::const_pointer const_pointer;
	typedef typename _Mybase::reference reference;
	typedef typename _Mybase::const_reference const_reference;
	typedef typename _Mybase::iterator iterator;
	typedef typename _Mybase::const_iterator const_iterator;
	typedef typename _Mybase::reverse_iterator reverse_iterator;
	typedef typename _Mybase::const_reverse_iterator
		const_reverse_iterator;
	typedef typename _Mybase::value_type value_type;

	multimap()
		: _Mybase(key_compare(), allocator_type())
		{	
		}

	multimap(const _Myt& _Right)
		: _Mybase(_Right)
		{	
		}

	explicit multimap(const key_compare& _Pred)
		: _Mybase(_Pred, allocator_type())
		{	
		}
	multimap(const key_compare& _Pred, const allocator_type& _Al)
		: _Mybase(_Pred, _Al)
		{	
		}

	template<class _Iter>
		multimap(_Iter _First, _Iter _Last)
		: _Mybase(key_compare(), allocator_type())
		{	
		this->insert(_First, _Last);
		}

	template<class _Iter>
		multimap(_Iter _First, _Iter _Last,
			const key_compare& _Pred)
		: _Mybase(_Pred, allocator_type())
		{	
		this->insert(_First, _Last);
		}

	template<class _Iter>
		multimap(_Iter _First, _Iter _Last,
			const key_compare& _Pred, const allocator_type& _Al)
		: _Mybase(_Pred, _Al)
		{	
		this->insert(_First, _Last);
		}

	_Myt& operator=(const _Myt& _Right)
		{	
		_Mybase::operator=(_Right);
		return (*this);
		}

	multimap(_Myt&& _Right)
		: _Mybase(::std:: move(_Right))
		{	
		}

	_Myt& operator=(_Myt&& _Right)
		{	
		_Mybase::operator=(::std:: move(_Right));
		return (*this);
		}

	template<class _Valty>
		iterator insert(_Valty&& _Val)
		{	
		return (_Mybase::insert(::std:: forward<_Valty>(_Val)).first);
		}

	template<class _Valty>
		typename ::std:: tr1::enable_if<!::std:: tr1::is_same<const_iterator,
			typename ::std:: tr1::remove_reference<_Valty>::type>::value,
				iterator>::type
		insert(const_iterator _Where, _Valty&& _Val)
		{	
		return (_Mybase::insert(_Where, ::std:: forward<_Valty>(_Val)));
		}

	void swap(_Myt& _Right)
		{	
		_Mybase::swap(_Right);
		}

	void swap(_Myt&& _Right)
		{	
		_Mybase::swap(::std:: move(_Right));
		}

 

 




















	iterator insert(const value_type& _Val)
		{	
		return (_Mybase::insert(_Val).first);
		}

	iterator insert(const_iterator _Where, const value_type& _Val)
		{	
		return (_Mybase::insert(_Where, _Val));
		}

	template<class _Iter>
		void insert(_Iter _First, _Iter _Last)
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\map", 422);
		for (; _First != _Last; ++_First)
			insert(*_First);
		}
	};

template<class _Kty,
	class _Ty,
	class _Pr,
	class _Alloc> inline
	void swap(multimap<_Kty, _Ty, _Pr, _Alloc>& _Left,
		multimap<_Kty, _Ty, _Pr, _Alloc>& _Right)
	{	
	_Left.swap(_Right);
	}

template<class _Kty,
	class _Ty,
	class _Pr,
	class _Alloc> inline
	void swap(multimap<_Kty, _Ty, _Pr, _Alloc>& _Left,
		multimap<_Kty, _Ty, _Pr, _Alloc>&& _Right)
	{	
	typedef multimap<_Kty, _Ty, _Pr, _Alloc> _Myt;
	_Left.swap(::std:: forward<_Myt>(_Right));
	}

template<class _Kty,
	class _Ty,
	class _Pr,
	class _Alloc> inline
	void swap(multimap<_Kty, _Ty, _Pr, _Alloc>&& _Left,
		multimap<_Kty, _Ty, _Pr, _Alloc>& _Right)
	{	
	typedef multimap<_Kty, _Ty, _Pr, _Alloc> _Myt;
	_Right.swap(::std:: forward<_Myt>(_Left));
	}
}
 #pragma warning(pop)
 #pragma pack(pop)











#pragma once







 #pragma pack(push,8)
 #pragma warning(push,3)

namespace std {
		
template<class _Mylist, class _Base = _Iterator_base0>
	class _List_unchecked_const_iterator
		: public _Iterator012<bidirectional_iterator_tag,
			typename _Mylist::value_type,
			typename _Mylist::difference_type,
			typename _Mylist::const_pointer,
			typename _Mylist::const_reference,
			_Base>
	{	
public:
	typedef _List_unchecked_const_iterator<_Mylist, _Base> _Myiter;
	typedef bidirectional_iterator_tag iterator_category;

	typedef typename _Mylist::_Nodeptr _Nodeptr;
	typedef typename _Mylist::value_type value_type;
	typedef typename _Mylist::difference_type difference_type;
	typedef typename _Mylist::const_pointer pointer;
	typedef typename _Mylist::const_reference reference;

	_List_unchecked_const_iterator()
		: _Ptr(0)
		{	
		}

	_List_unchecked_const_iterator(_Nodeptr _Pnode, const _Mylist *_Plist)
		: _Ptr(_Pnode)
		{	
		this->_Adopt(_Plist);
		}

	reference operator*() const
		{	
		return (_Mylist::_Myval(_Ptr));
		}

	pointer operator->() const
		{	
		return (&**this);
		}

	_Myiter& operator++()
		{	
		_Ptr = _Mylist::_Nextnode(_Ptr);
		return (*this);
		}

	_Myiter operator++(int)
		{	
		_Myiter _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Myiter& operator--()
		{	
		_Ptr = _Mylist::_Prevnode(_Ptr);
		return (*this);
		}

	_Myiter operator--(int)
		{	
		_Myiter _Tmp = *this;
		--*this;
		return (_Tmp);
		}

	bool operator==(const _Myiter& _Right) const
		{	
		return (_Ptr == _Right._Ptr);
		}

	bool operator!=(const _Myiter& _Right) const
		{	
		return (!(*this == _Right));
		}

	_Nodeptr _Mynode() const
		{	
		return (_Ptr);
		}

	_Nodeptr _Ptr;	
	};

	
template<class _Mylist>
	class _List_unchecked_iterator
		: public _List_unchecked_const_iterator<_Mylist>
	{	
public:
	typedef _List_unchecked_iterator<_Mylist> _Myiter;
	typedef _List_unchecked_const_iterator<_Mylist> _Mybase;
	typedef bidirectional_iterator_tag iterator_category;

	typedef typename _Mylist::_Nodeptr _Nodeptr;
	typedef typename _Mylist::value_type value_type;
	typedef typename _Mylist::difference_type difference_type;
	typedef typename _Mylist::pointer pointer;
	typedef typename _Mylist::reference reference;

	_List_unchecked_iterator()
		{	
		}

	_List_unchecked_iterator(_Nodeptr _Pnode, const _Mylist *_Plist)
		: _Mybase(_Pnode, _Plist)
		{	
		}

	reference operator*() const
		{	
		return ((reference)**(_Mybase *)this);
		}

	pointer operator->() const
		{	
		return (&**this);
		}

	_Myiter& operator++()
		{	
		++(*(_Mybase *)this);
		return (*this);
		}

	_Myiter operator++(int)
		{	
		_Myiter _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Myiter& operator--()
		{	
		--(*(_Mybase *)this);
		return (*this);
		}

	_Myiter operator--(int)
		{	
		_Myiter _Tmp = *this;
		--*this;
		return (_Tmp);
		}
	};

	
template<class _Mylist>
	class _List_const_iterator
		: public _List_unchecked_const_iterator<_Mylist, _Iterator_base>
	{	
public:
	typedef _List_const_iterator<_Mylist> _Myiter;
	typedef _List_unchecked_const_iterator<_Mylist, _Iterator_base> _Mybase;
	typedef bidirectional_iterator_tag iterator_category;

	typedef typename _Mylist::_Nodeptr _Nodeptr;
	typedef typename _Mylist::value_type value_type;
	typedef typename _Mylist::difference_type difference_type;
	typedef typename _Mylist::const_pointer pointer;
	typedef typename _Mylist::const_reference reference;

	_List_const_iterator()
		: _Mybase()
		{	
		}

	_List_const_iterator(_Nodeptr _Pnode, const _Mylist *_Plist)
		: _Mybase(_Pnode, _Plist)
		{	
		}

	typedef _List_unchecked_const_iterator<_Mylist> _Unchecked_type;

	_Myiter& _Rechecked(_Unchecked_type _Right)
		{	
		this->_Ptr = _Right._Ptr;
		return (*this);
		}

	_Unchecked_type _Unchecked() const
		{	
		return (_Unchecked_type(this->_Ptr, (_Mylist *)this->_Getcont()));
		}

	reference operator*() const
		{	
 
		if (this->_Getcont() == 0
			|| this->_Ptr == 0
			|| this->_Ptr == ((_Mylist *)this->_Getcont())->_Myhead)
			{	
			_Debug_message(L"list iterator not dereferencable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 207);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 208, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 208, 0); };
			}

 





		return (_Mylist::_Myval(this->_Ptr));
		}

	_Myiter& operator++()
		{	
 
		if (this->_Getcont() == 0
			|| this->_Ptr == 0
			|| this->_Ptr == ((_Mylist *)this->_Getcont())->_Myhead)
			{	
			_Debug_message(L"list iterator not incrementable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 227);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 228, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 228, 0); };
			}

 





		this->_Ptr = _Mylist::_Nextnode(this->_Ptr);
		return (*this);
		}

	_Myiter operator++(int)
		{	
		_Myiter _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Myiter& operator--()
		{	
 
		if (this->_Getcont() == 0
			|| this->_Ptr == 0
			|| (this->_Ptr = _Mylist::_Prevnode(this->_Ptr))
				== ((_Mylist *)this->_Getcont())->_Myhead)
			{	
			_Debug_message(L"list iterator not decrementable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 256);
			{ (void) ((!!(("Standard C++ Libraries Out of Range" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 257, 0, L"\"Standard C++ Libraries Out of Range\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 257, 0); };
			}

 









		return (*this);
		}

	_Myiter operator--(int)
		{	
		_Myiter _Tmp = *this;
		--*this;
		return (_Tmp);
		}

	bool operator==(const _Myiter& _Right) const
		{	
 
		if (this->_Getcont() == 0
			|| this->_Getcont() != _Right._Getcont())
			{	
			_Debug_message(L"list iterators incompatible", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 286);
			{ (void) ((!!(("Standard C++ Libraries Invalid Argument" && 0))) || (1 != _CrtDbgReportW(2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 287, 0, L"\"Standard C++ Libraries Invalid Argument\" && 0")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 287, 0); };
			}

 




		return (this->_Ptr == _Right._Ptr);
		}

	bool operator!=(const _Myiter& _Right) const
		{	
		return (!(*this == _Right));
		}
	};

template<class _Mylist> inline
	typename _List_const_iterator<_Mylist>::_Unchecked_type
		_Unchecked(_List_const_iterator<_Mylist> _Iter)
	{	
	return (_Iter._Unchecked());
	}

template<class _Mylist> inline
	_List_const_iterator<_Mylist>&
		_Rechecked(_List_const_iterator<_Mylist>& _Iter,
			typename _List_const_iterator<_Mylist>
				::_Unchecked_type _Right)
	{	
	return (_Iter._Rechecked(_Right));
	}

	
template<class _Mylist>
	class _List_iterator
		: public _List_const_iterator<_Mylist>
	{	
public:
	typedef _List_iterator<_Mylist> _Myiter;
	typedef _List_const_iterator<_Mylist> _Mybase;
	typedef bidirectional_iterator_tag iterator_category;

	typedef typename _Mylist::_Nodeptr _Nodeptr;
	typedef typename _Mylist::value_type value_type;
	typedef typename _Mylist::difference_type difference_type;
	typedef typename _Mylist::pointer pointer;
	typedef typename _Mylist::reference reference;

	_List_iterator()
		{	
		}

	_List_iterator(_Nodeptr _Pnode, const _Mylist *_Plist)
		: _Mybase(_Pnode, _Plist)
		{	
		}

	typedef _List_unchecked_iterator<_Mylist> _Unchecked_type;

	_Myiter& _Rechecked(_Unchecked_type _Right)
		{	
		this->_Ptr = _Right._Ptr;
		return (*this);
		}

	_Unchecked_type _Unchecked() const
		{	
		return (_Unchecked_type(this->_Ptr, (_Mylist *)this->_Getcont()));
		}

	reference operator*() const
		{	
		return ((reference)**(_Mybase *)this);
		}

	pointer operator->() const
		{	
		return (&**this);
		}

	_Myiter& operator++()
		{	
		++(*(_Mybase *)this);
		return (*this);
		}

	_Myiter operator++(int)
		{	
		_Myiter _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Myiter& operator--()
		{	
		--(*(_Mybase *)this);
		return (*this);
		}

	_Myiter operator--(int)
		{	
		_Myiter _Tmp = *this;
		--*this;
		return (_Tmp);
		}
	};

template<class _Mylist> inline
	typename _List_iterator<_Mylist>::_Unchecked_type
		_Unchecked(_List_iterator<_Mylist> _Iter)
	{	
	return (_Iter._Unchecked());
	}

template<class _Mylist> inline
	_List_iterator<_Mylist>&
		_Rechecked(_List_iterator<_Mylist>& _Iter,
			typename _List_iterator<_Mylist>
				::_Unchecked_type _Right)
	{	
	return (_Iter._Rechecked(_Right));
	}

		
template<class _Ty,
	class _Alloc>
	class _List_nod
		: public _Container_base
	{	
public:
	typedef typename _Alloc::template rebind<_Ty>::other _Alty;
	typedef typename _Alty::size_type size_type;

	struct _Node;
	typedef _Node *_Nodeptr;	
	typedef _Nodeptr& _Nodepref;

	struct _Node
		{	
		_Nodeptr _Next;	
		_Nodeptr _Prev;	
		_Ty _Myval;	

	private:
		_Node& operator=(const _Node&);
		};

 






	_List_nod(_Alloc _Al)
		: _Alnod(_Al), _Alval(_Al)
		{	
		typename _Alloc::template rebind<_Container_proxy>::other
			_Alproxy(_Alnod);
		this->_Myproxy = _Alproxy.allocate(1);
		_Cons_val(_Alproxy, this->_Myproxy, _Container_proxy());
		this->_Myproxy->_Mycont = this;
		}

	~_List_nod()
		{	
		typename _Alloc::template rebind<_Container_proxy>::other
			_Alproxy(_Alnod);
		this->_Orphan_all();
		_Dest_val(_Alproxy, this->_Myproxy);
		_Alproxy.deallocate(this->_Myproxy, 1);
		this->_Myproxy = 0;
		}
 

	_Nodeptr _Myhead;	
	size_type _Mysize;	

	typename _Alloc::template rebind<_Node>::other
		_Alnod;	
	_Alty _Alval;	
	};

		
template<class _Ty,
	class _Alloc>
	class _List_val
		: public _List_nod<_Ty, _Alloc>
	{	
public:
	typedef _List_nod<_Ty, _Alloc> _Mybase;
	typedef typename _Mybase::_Nodeptr _Nodeptr;
	typedef typename _Mybase::_Nodepref _Nodepref;
	typedef typename _Alloc::template rebind<_Ty>::other _Alty;

	typedef typename _Alty::size_type size_type;
	typedef typename _Alty::difference_type difference_type;
	typedef typename _Alty::pointer pointer;
	typedef typename _Alty::const_pointer const_pointer;
	typedef typename _Alty::reference reference;
	typedef typename _Alty::const_reference const_reference;
	typedef typename _Alty::value_type value_type;

	_List_val(_Alloc _Al = _Alloc())
		: _Mybase(_Al)
		{	
		this->_Mysize = 0;
		this->_Myhead = this->_Alnod.allocate(1);
		this->_Nextnode(this->_Myhead) = this->_Myhead;
		this->_Prevnode(this->_Myhead) = this->_Myhead;
		}

	~_List_val()
		{	
		this->_Alnod.deallocate(this->_Myhead, 1);
		}

	_Nodeptr _Buynode(_Nodeptr _Next,
		_Nodeptr _Prev, const _Ty& _Val)
		{	
		_Nodeptr _Pnode = this->_Alnod.allocate(1);

		try {
		this->_Nextnode(_Pnode) = _Next;
		this->_Prevnode(_Pnode) = _Prev;
		_Cons_val(this->_Alval, ::std:: addressof(this->_Myval(_Pnode)), _Val);
		} catch (...) {
		this->_Alnod.deallocate(_Pnode, 1);
		throw;
		}

		return (_Pnode);
		}

	_Nodeptr _Buynode(_Nodeptr _Next,
		_Nodeptr _Prev)
		{	
		_Nodeptr _Pnode = this->_Alnod.allocate(1);

		try {
		this->_Nextnode(_Pnode) = _Next;
		this->_Prevnode(_Pnode) = _Prev;
		_Uninitialized_default_fill_n(::std:: addressof(this->_Myval(_Pnode)), 1,
			(_Ty *)0, this->_Alval);
		} catch (...) {
		this->_Alnod.deallocate(_Pnode, 1);
		throw;
		}

		return (_Pnode);
		}

	template<class _Valty>
		_Nodeptr _Buynode(_Nodeptr _Next,
		_Nodeptr _Prev, _Valty&& _Val)
		{	
		_Nodeptr _Pnode = this->_Alnod.allocate(1);

		try {
		this->_Nextnode(_Pnode) = _Next;
		this->_Prevnode(_Pnode) = _Prev;
		_Cons_val(this->_Alval, ::std:: addressof(this->_Myval(_Pnode)),
			::std:: forward<_Valty>(_Val));
		} catch (...) {
		this->_Alnod.deallocate(_Pnode, 1);
		throw;
		}

		return (_Pnode);
		}

	static _Nodepref _Nextnode(_Nodeptr _Pnode)
		{	
		return ((_Nodepref)(*_Pnode)._Next);
		}

	static _Nodepref _Prevnode(_Nodeptr _Pnode)
		{	
		return ((_Nodepref)(*_Pnode)._Prev);
		}

	static reference _Myval(_Nodeptr _Pnode)
		{	
		return ((reference)(*_Pnode)._Myval);
		}
	};

		
template<class _Ty,
	class _Ax = allocator<_Ty> >
	class list
		: public _List_val<_Ty, _Ax>
	{	
public:
	typedef list<_Ty, _Ax> _Myt;
	typedef _List_val<_Ty, _Ax> _Mybase;
	typedef typename _Mybase::_Alty _Alloc;
	typedef typename _Mybase::_Node _Node;
	typedef typename _Mybase::_Nodeptr _Nodeptr;

	typedef _Alloc allocator_type;
	typedef typename _Alloc::size_type size_type;
	typedef typename _Alloc::difference_type difference_type;
	typedef typename _Alloc::pointer pointer;
	typedef typename _Alloc::const_pointer const_pointer;
	typedef typename _Alloc::reference reference;
	typedef typename _Alloc::const_reference const_reference;
	typedef typename _Alloc::value_type value_type;

	typedef _List_const_iterator<_Mybase>
		const_iterator;
	typedef _List_iterator<_Mybase>
		iterator;

	typedef ::std:: reverse_iterator<iterator> reverse_iterator;
	typedef ::std:: reverse_iterator<const_iterator> const_reverse_iterator;

	list()
		: _Mybase()
		{	
		}

	explicit list(const _Alloc& _Al)
		: _Mybase(_Al)
		{	
		}

	explicit list(size_type _Count)
		: _Mybase()
		{	
		resize(_Count);
		}

	list(size_type _Count, const _Ty& _Val)
		: _Mybase()
		{	
		_Construct_n(_Count, _Val);
		}

	list(size_type _Count, const _Ty& _Val, const _Alloc& _Al)
		: _Mybase(_Al)
		{	
		_Construct_n(_Count, _Val);
		}

	list(const _Myt& _Right)
		: _Mybase(_Right._Alval)
		{	
		try {
		insert(begin(), _Right.begin(), _Right.end());
		} catch (...) {
		_Tidy();
		throw;
		}
		}

	template<class _Iter>
		list(_Iter _First, _Iter _Last)
		: _Mybase()
		{	
		_Construct(_First, _Last, _Iter_cat(_First));
		}

	template<class _Iter>
		list(_Iter _First, _Iter _Last, const _Alloc& _Al)
		: _Mybase(_Al)
		{	
		_Construct(_First, _Last, _Iter_cat(_First));
		}

	template<class _Iter>
		void _Construct(_Iter _Count, _Iter _Val, _Int_iterator_tag)
		{	
		_Construct_n((size_type)_Count, (_Ty)_Val);
		}

	template<class _Iter>
		void _Construct(_Iter _First,
			_Iter _Last, input_iterator_tag)
		{	
		try {
		insert(begin(), _First, _Last);
		} catch (...) {
		_Tidy();
		throw;
		}
		}

	void _Construct_n(size_type _Count,
		const _Ty& _Val)
		{	
		try {
		_Insert_n(begin(), _Count, _Val);
		} catch (...) {
		_Tidy();
		throw;
		}
		}

	list(_Myt&& _Right)
		: _Mybase(_Right._Alval)
		{	
		_Assign_rv(::std:: forward<_Myt>(_Right));
		}

	_Myt& operator=(_Myt&& _Right)
		{	
		_Assign_rv(::std:: forward<_Myt>(_Right));
		return (*this);
		}

	void _Assign_rv(_Myt&& _Right)
		{	
		if (this != &_Right)
			{	
			clear();
			if (!_Right.empty())
				_Splice(begin(), _Right, _Right.begin(), _Right.end(),
					_Right._Mysize);
			}
		}

	void push_front(_Ty&& _Val)
		{	
		_Insert_rv(begin(), ::std:: forward<_Ty>(_Val));
		}

	void push_back(_Ty&& _Val)
		{	
		_Insert_rv(end(), ::std:: forward<_Ty>(_Val));
		}

	template<class _Valty>
		void emplace_front(_Valty&& _Val)
		{	
		_Insert_rv(begin(), ::std:: forward<_Valty>(_Val));
		}

	template<class _Valty>
		void emplace_back(_Valty&& _Val)
		{	
		_Insert_rv(end(), ::std:: forward<_Valty>(_Val));
		}

	template<class _Valty>
		iterator insert(const_iterator _Where, _Valty&& _Val)
		{	
		return (emplace(_Where, ::std:: forward<_Valty>(_Val)));
		}

	template<class _Valty>
		iterator emplace(const_iterator _Where, _Valty&& _Val)
		{	
		_Insert_rv(_Where, ::std:: forward<_Valty>(_Val));
		return (_Make_iter(--_Where));
		}

	template<class _Valty>
		void _Insert_rv(const_iterator _Where,
		_Valty&& _Val)
		{	
 
		if (_Where._Getcont() != this)
			_Debug_message(L"list insert iterator outside range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 751);
 

		_Nodeptr _Pnode = _Where._Mynode();
		_Nodeptr _Newnode =
			this->_Buynode(_Pnode, this->_Prevnode(_Pnode),
				::std:: forward<_Valty>(_Val));
		_Incsize(1);
		this->_Prevnode(_Pnode) = _Newnode;
		this->_Nextnode(this->_Prevnode(_Newnode)) = _Newnode;
		}

	void swap(_Myt&& _Right)
		{	
		_Assign_rv(::std:: forward<_Myt>(_Right));
		}

	~list()
		{	
		_Tidy();
		}

	_Myt& operator=(const _Myt& _Right)
		{	
		if (this != &_Right)
			assign(_Right.begin(), _Right.end());
		return (*this);
		}

	iterator begin()
		{	
		return (iterator(this->_Nextnode(this->_Myhead), this));
		}

	const_iterator begin() const
		{	
		return (const_iterator(this->_Nextnode(this->_Myhead), this));
		}

	iterator end()
		{	
		return (iterator(this->_Myhead, this));
		}

	const_iterator end() const
		{	
		return (const_iterator(this->_Myhead, this));
		}

	iterator _Make_iter(const_iterator _Where) const
		{	
		return (iterator(_Where._Ptr, this));
		}

	reverse_iterator rbegin()
		{	
		return (reverse_iterator(end()));
		}

	const_reverse_iterator rbegin() const
		{	
		return (const_reverse_iterator(end()));
		}

	reverse_iterator rend()
		{	
		return (reverse_iterator(begin()));
		}

	const_reverse_iterator rend() const
		{	
		return (const_reverse_iterator(begin()));
		}

 
	const_iterator cbegin() const
		{	
		return (((const _Myt *)this)->begin());
		}

	const_iterator cend() const
		{	
		return (((const _Myt *)this)->end());
		}

	const_reverse_iterator crbegin() const
		{	
		return (((const _Myt *)this)->rbegin());
		}

	const_reverse_iterator crend() const
		{	
		return (((const _Myt *)this)->rend());
		}
 

	void resize(size_type _Newsize)
		{	
		if (this->_Mysize < _Newsize)
			{	
			size_type _Count = 0;
			try {
			for (; this->_Mysize < _Newsize; ++_Count)
				_Insert(end());
			} catch (...) {
			for (; 0 < _Count; --_Count)
				pop_back();	
			throw;
			}
			}
		else
			while (_Newsize < this->_Mysize)
				pop_back();
		}

	void resize(size_type _Newsize, const _Ty& _Val)
		{	
		if (this->_Mysize < _Newsize)
			_Insert_n(end(), _Newsize - this->_Mysize, _Val);
		else
			while (_Newsize < this->_Mysize)
				pop_back();
		}

	size_type size() const
		{	
		return (this->_Mysize);
		}

	size_type max_size() const
		{	
		return (this->_Alval.max_size());
		}

	bool empty() const
		{	
		return (this->_Mysize == 0);
		}

	allocator_type get_allocator() const
		{	
		return (this->_Alval);
		}

	reference front()
		{	
		return (*begin());
		}

	const_reference front() const
		{	
		return (*begin());
		}

	reference back()
		{	
		return (*(--end()));
		}

	const_reference back() const
		{	
		return (*(--end()));
		}

	void push_front(const _Ty& _Val)
		{	
		_Insert(begin(), _Val);
		}

	void pop_front()
		{	
		erase(begin());
		}

	void push_back(const _Ty& _Val)
		{	
		_Insert(end(), _Val);
		}

	void pop_back()
		{	
		erase(--end());
		}

	template<class _Iter>
		void assign(_Iter _First, _Iter _Last)
		{	
		_Assign(_First, _Last, _Iter_cat(_First));
		}

	template<class _Iter>
		void _Assign(_Iter _Count, _Iter _Val, _Int_iterator_tag)
		{	
		_Assign_n((size_type)_Count, (_Ty)_Val);
		}

	template<class _Iter>
		void _Assign(_Iter _First, _Iter _Last, input_iterator_tag)
		{	
		clear();
		insert(begin(), _First, _Last);
		}

	void assign(size_type _Count, const _Ty& _Val)
		{	
		_Assign_n(_Count, _Val);
		}

	iterator insert(const_iterator _Where, const _Ty& _Val)
		{	
		_Insert(_Where, _Val);
		return (_Make_iter(--_Where));
		}

	void _Insert(const_iterator _Where,
		const _Ty& _Val)
		{	
 
		if (_Where._Getcont() != this)
			_Debug_message(L"list insert iterator outside range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 970);
 

		_Nodeptr _Pnode = _Where._Mynode();
		_Nodeptr _Newnode =
			this->_Buynode(_Pnode, this->_Prevnode(_Pnode), _Val);
		_Incsize(1);
		this->_Prevnode(_Pnode) = _Newnode;
		this->_Nextnode(this->_Prevnode(_Newnode)) = _Newnode;
		}

	void _Insert(const_iterator _Where)
		{	
 
		if (_Where._Getcont() != this)
			_Debug_message(L"list insert iterator outside range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 985);
 

		_Nodeptr _Pnode = _Where._Mynode();
		_Nodeptr _Newnode =
			this->_Buynode(_Pnode, this->_Prevnode(_Pnode));
		_Incsize(1);
		this->_Prevnode(_Pnode) = _Newnode;
		this->_Nextnode(this->_Prevnode(_Newnode)) = _Newnode;
		}

	void insert(const_iterator _Where, size_type _Count, const _Ty& _Val)
		{	
		_Insert_n(_Where, _Count, _Val);
		}

	template<class _Iter>
		void insert(const_iterator _Where, _Iter _First, _Iter _Last)
		{	
		_Insert(_Where, _First, _Last, _Iter_cat(_First));
		}

	template<class _Iter>
		void _Insert(const_iterator _Where, _Iter _Count, _Iter _Val,
			_Int_iterator_tag)
		{	
		_Insert_n(_Where, (size_type)_Count, (_Ty)_Val);
		}

	template<class _Iter>
		void _Insert(const_iterator _Where,
			_Iter _First, _Iter _Last, input_iterator_tag)
		{	
		size_type _Num = 0;

		try {
		for (; _First != _Last; ++_First, ++_Num)
			_Insert(_Where, *_First);
		} catch (...) {
		for (; 0 < _Num; --_Num)
			{	
			const_iterator _Before = _Where;
			erase(--_Before);
			}
		throw;
		}
		}

	template<class _Iter>
		void _Insert(const_iterator _Where,
			_Iter _First, _Iter _Last, forward_iterator_tag)
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 1037);
		_Iter _Next = _First;

		try {
		for (; _First != _Last; ++_First)
			_Insert(_Where, *_First);
		} catch (...) {
		for (; _Next != _First; ++_Next)
			{	
			const_iterator _Before = _Where;
			erase(--_Before);
			}
		throw;
		}
		}

	iterator erase(const_iterator _Where)
		{	
 
		if (_Where._Getcont() != this || _Where._Ptr == this->_Myhead)
			_Debug_message(L"list erase iterator outside range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 1057);
		_Nodeptr _Pnode = (_Where++)._Mynode();
		_Orphan_ptr(*this, _Pnode);

 



		if (_Pnode != this->_Myhead)
			{	
			this->_Nextnode(this->_Prevnode(_Pnode)) =
				this->_Nextnode(_Pnode);
			this->_Prevnode(this->_Nextnode(_Pnode)) =
				this->_Prevnode(_Pnode);

			_Dest_val(this->_Alnod, _Pnode);
			this->_Alnod.deallocate(_Pnode, 1);

			--this->_Mysize;
			}
		return (_Make_iter(_Where));
		}

	iterator erase(const_iterator _First, const_iterator _Last)
		{	
		if (_First == begin() && _Last == end())
			{	
			clear();
			return (end());
			}
		else
			{	
			while (_First != _Last)
				_First = erase(_First);
			return (_Make_iter(_Last));
			}
		}

	void clear()
		{	
 
		this->_Orphan_ptr(*this, 0);
 

		_Nodeptr _Pnext;
		_Nodeptr _Pnode = this->_Nextnode(this->_Myhead);
		this->_Nextnode(this->_Myhead) = this->_Myhead;
		this->_Prevnode(this->_Myhead) = this->_Myhead;
		this->_Mysize = 0;

		for (; _Pnode != this->_Myhead; _Pnode = _Pnext)
			{	
			_Pnext = this->_Nextnode(_Pnode);

			_Dest_val(this->_Alnod, _Pnode);
			this->_Alnod.deallocate(_Pnode, 1);
			}
		}

	void swap(_Myt& _Right)
		{	
		if (this == &_Right)
			;	
		else if (this->_Alval == _Right._Alval)
			{	
			this->_Swap_all(_Right);
			::std:: swap(this->_Myhead, _Right._Myhead);
			::std:: swap(this->_Mysize, _Right._Mysize);
			}
		else
			{	
			iterator _Where = begin();
			splice(_Where, _Right);
			_Right.splice(_Right.begin(), *this, _Where, end());
			}
		}

	void splice(const_iterator _Where, _Myt& _Right)
		{	
		if (this != &_Right && !_Right.empty())
			{	
			_Splice(_Where, _Right, _Right.begin(), _Right.end(),
				_Right._Mysize);
			}
		}

	void splice(const_iterator _Where, _Myt& _Right,
		const_iterator _First)
		{	
 
		if (_First == _Right.end())
			_Debug_message(L"list splice iterator outside range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 1148);
		else

 



			{	
			const_iterator _Last = _First;
			++_Last;
			if (this != &_Right
				|| (_Where != _First && _Where != _Last))
				_Splice(_Where, _Right, _First, _Last, 1);
			}
		}

	void splice(const_iterator _Where,
		_Myt& _Right, const_iterator _First, const_iterator _Last)
		{	
		if (_First != _Last && (this != &_Right || _Where != _Last))
			{	
			size_type _Count = 0;

			if (this == &_Right)
				;	
			else if (_First == _Right.begin() && _Last == _Right.end())
				_Count = _Right._Mysize;	
			else
				{	
				const_iterator _Next = _First;

				for (; _Next != _Last; ++_Next, ++_Count)
					if (_Next == _Right.end())
						_Xlength_error("list<T> bad splice");
				}
			_Splice(_Where, _Right, _First, _Last, _Count);
			}
		}

	void remove(const _Ty& _Val_arg)
		{	
		const _Ty _Val = _Val_arg;	
		const _Nodeptr _Phead = this->_Myhead;
		_Nodeptr _Pnode = _Phead->_Next;

		while (_Pnode != _Phead)
			if (_Pnode->_Myval == _Val)
				{	
				const _Nodeptr _Pprev = _Pnode->_Prev;
				const _Nodeptr _Perase = _Pnode;
				_Pnode = _Pnode->_Next;

				_Pprev->_Next = _Pnode;
				_Pnode->_Prev = _Pprev;

				_Dest_val(this->_Alnod, _Perase);
				this->_Alnod.deallocate(_Perase, 1);
				--this->_Mysize;
				}
			else
				_Pnode = _Pnode->_Next;
		}

	template<class _Pr1>
		void remove_if(_Pr1 _Pred)
		{	
		const _Nodeptr _Phead = this->_Myhead;
		_Nodeptr _Pnode = _Phead->_Next;

		while (_Pnode != _Phead)
			if (_Pred(_Pnode->_Myval))
				{	
				const _Nodeptr _Pprev = _Pnode->_Prev;
				const _Nodeptr _Perase = _Pnode;
				_Pnode = _Pnode->_Next;

				_Pprev->_Next = _Pnode;
				_Pnode->_Prev = _Pprev;

				_Dest_val(this->_Alnod, _Perase);
				this->_Alnod.deallocate(_Perase, 1);
				--this->_Mysize;
				}
			else
				_Pnode = _Pnode->_Next;
		}

	void unique()
		{	
		const _Nodeptr _Phead = this->_Myhead;
		_Nodeptr _Pprev = _Phead->_Next;
		_Nodeptr _Pnode = _Pprev->_Next;

		while (_Pnode != _Phead)
			if (_Pprev->_Myval == _Pnode->_Myval)
				{	
				const _Nodeptr _Perase = _Pnode;
				_Pnode = _Pnode->_Next;

				_Pprev->_Next = _Pnode;
				_Pnode->_Prev = _Pprev;

				_Dest_val(this->_Alnod, _Perase);
				this->_Alnod.deallocate(_Perase, 1);
				--this->_Mysize;
				}
			else
				{	
				_Pprev = _Pnode;
				_Pnode = _Pnode->_Next;
				}
		}

	template<class _Pr2>
		void unique(_Pr2 _Pred)
		{	
		const _Nodeptr _Phead = this->_Myhead;
		_Nodeptr _Pprev = _Phead->_Next;
		_Nodeptr _Pnode = _Pprev->_Next;

		while (_Pnode != _Phead)
			if (_Pred(_Pprev->_Myval, _Pnode->_Myval))
				{	
				const _Nodeptr _Perase = _Pnode;
				_Pnode = _Pnode->_Next;

				_Pprev->_Next = _Pnode;
				_Pnode->_Prev = _Pprev;

				_Dest_val(this->_Alnod, _Perase);
				this->_Alnod.deallocate(_Perase, 1);
				--this->_Mysize;
				}
			else
				{	
				_Pprev = _Pnode;
				_Pnode = _Pnode->_Next;
				}
		}

	void merge(_Myt& _Right)
		{	
		if (&_Right != this)
			{	
			iterator _First1 = begin(), _Last1 = end();
			iterator _First2 = _Right.begin(), _Last2 = _Right.end();
			_Debug_order(_First1, _Last1, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 1294);
			_Debug_order(_First2, _Last2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 1295);

			while (_First1 != _Last1 && _First2 != _Last2)
				if (_Debug_lt(*_First2, *_First1, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 1298))
					{	
					iterator _Mid2 = _First2;
					_Splice(_First1, _Right, _First2, ++_Mid2, 1);
					_First2 = _Mid2;
					}
				else
					++_First1;

			if (_First2 != _Last2)
				_Splice(_Last1, _Right, _First2, _Last2,
					_Right._Mysize);	
			}
		}

	template<class _Pr3>
		void merge(_Myt& _Right, _Pr3 _Pred)
		{	
		if (&_Right != this)
			{	
			iterator _First1 = begin(), _Last1 = end();
			iterator _First2 = _Right.begin(), _Last2 = _Right.end();
			_Debug_order(_First1, _Last1, _Pred, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 1320);
			_Debug_order(_First2, _Last2, _Pred, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 1321);

			while (_First1 != _Last1 && _First2 != _Last2)
				if (_Debug_lt_pred(_Pred, *_First2, *_First1, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 1324))
					{	
					iterator _Mid2 = _First2;
					_Splice(_First1, _Right, _First2, ++_Mid2, 1);
					_First2 = _Mid2;
					}
				else
					++_First1;

			if (_First2 != _Last2)
				_Splice(_Last1, _Right, _First2, _Last2,
					_Right._Mysize);	
			}
		}

	void sort()
		{	
		if (2 <= this->_Mysize)
			{	
			const size_t _MAXBINS = 25;
			_Myt _Templist(this->_Alval), _Binlist[_MAXBINS + 1];
			size_t _Maxbin = 0;

			while (!empty())
				{	
				_Templist._Splice_same(_Templist.begin(), *this, begin(),
					++begin(), 1);

				size_t _Bin;
				for (_Bin = 0; _Bin < _Maxbin && !_Binlist[_Bin].empty();
					++_Bin)
					{	
					_Binlist[_Bin].merge(_Templist);
					_Binlist[_Bin].swap(_Templist);
					}

				if (_Bin == _MAXBINS)
					_Binlist[_Bin - 1].merge(_Templist);
				else
					{	
					_Binlist[_Bin].swap(_Templist);
					if (_Bin == _Maxbin)
						++_Maxbin;
					}
				}

			for (size_t _Bin = 1; _Bin < _Maxbin; ++_Bin)
				_Binlist[_Bin].merge(_Binlist[_Bin - 1]);	
			splice(begin(), _Binlist[_Maxbin - 1]);	
			}
		}

	template<class _Pr3>
		void sort(_Pr3 _Pred)
		{	
		if (2 <= this->_Mysize)
			{	
			const size_t _MAXBINS = 25;
			_Myt _Templist(this->_Alval), _Binlist[_MAXBINS + 1];
			size_t _Maxbin = 0;

			while (!empty())
				{	
				_Templist._Splice_same(_Templist.begin(), *this, begin(),
					++begin(), 1);

				size_t _Bin;
				for (_Bin = 0; _Bin < _Maxbin && !_Binlist[_Bin].empty();
					++_Bin)
					{	
					_Binlist[_Bin].merge(_Templist, _Pred);
					_Binlist[_Bin].swap(_Templist);
					}

				if (_Bin == _MAXBINS)
					_Binlist[_Bin - 1].merge(_Templist, _Pred);
				else
					{	
					_Binlist[_Bin].swap(_Templist);
					if (_Bin == _Maxbin)
						++_Maxbin;
					}
				}

			for (size_t _Bin = 1; _Bin < _Maxbin; ++_Bin)
				_Binlist[_Bin].merge(_Binlist[_Bin - 1],
					_Pred);	
			splice(begin(), _Binlist[_Maxbin - 1]);	
			}
		}

	void reverse()
		{	
		const _Nodeptr _Phead = this->_Myhead;
		_Nodeptr _Pnode = _Phead;

		for (; ; )
			{	
			const _Nodeptr _Pnext = _Pnode->_Next;
			_Pnode->_Next = _Pnode->_Prev;
			_Pnode->_Prev = _Pnext;

			if (_Pnext == _Phead)
				break;
			_Pnode = _Pnext;
			}
		}

	void _Splice(const_iterator _Where,
		_Myt& _Right, const_iterator _First, const_iterator _Last,
		size_type _Count)
		{	
 
		if (_Where._Getcont() != this)
			_Debug_message(L"list splice iterator outside range", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\list", 1438);
		if (this->_Alval == _Right._Alval)
			{	
			if (this != &_Right)
				for (const_iterator _Next = _First; _Next != _Last; )
					{	
					const_iterator _Iter = _Next++;
					_Orphan_ptr(_Right, _Iter._Ptr);
					_Iter._Adopt(this);
					}
			_Splice_same(_Where, _Right, _First, _Last, _Count);
			}

 




		else
			{	
			for (const_iterator _Next = _First; _Next != _Last; ++_Next)
				insert(_Where, (_Ty &&)*_Next);
			_Right.erase(_First, _Last);
			}
		}

	void _Splice_same(const_iterator _Where,
		_Myt& _Right, const_iterator _First, const_iterator _Last,
		size_type _Count)
		{	
		if (this != &_Right)
			{	
			_Incsize(_Count);
			_Right._Mysize -= _Count;
			}
		this->_Nextnode(this->_Prevnode(_First._Mynode())) =
			_Last._Mynode();
		this->_Nextnode(this->_Prevnode(_Last._Mynode())) =
			_Where._Mynode();
		this->_Nextnode(this->_Prevnode(_Where._Mynode())) =
			_First._Mynode();

		_Nodeptr _Pnode = this->_Prevnode(_Where._Mynode());
		this->_Prevnode(_Where._Mynode()) =
			this->_Prevnode(_Last._Mynode());
		this->_Prevnode(_Last._Mynode()) =
			this->_Prevnode(_First._Mynode());
		this->_Prevnode(_First._Mynode()) = _Pnode;
		}

	void _Assign_n(size_type _Count, const _Ty& _Val)
		{	
		_Ty _Tmp = _Val;	
		clear();
		_Insert_n(begin(), _Count, _Tmp);
		}

	void _Tidy()
		{	
		clear();
		}

	void _Insert_n(const_iterator _Where,
		size_type _Count, const _Ty& _Val)
		{	
		size_type _Countsave = _Count;

		try {
		for (; 0 < _Count; --_Count)
			_Insert(_Where, _Val);
		} catch (...) {
		for (; _Count < _Countsave; ++_Count)
			{	
			const_iterator _Before = _Where;
			erase(--_Before);
			}
		throw;
		}
		}

	void _Incsize(size_type _Count)
		{	
		if (max_size() - this->_Mysize - 1 < _Count)
			_Xlength_error("list<T> too long");
		this->_Mysize += _Count;
		}

 
	void _Orphan_ptr(_Myt& _Cont, _Nodeptr _Ptr) const
		{	
		_Lockit _Lock(3);
		const_iterator **_Pnext = (const_iterator **)_Cont._Getpfirst();
		if (_Pnext != 0)
			while (*_Pnext != 0)
				if ((*_Pnext)->_Ptr == this->_Myhead
					|| _Ptr != 0 && (*_Pnext)->_Ptr != _Ptr)
					_Pnext = (const_iterator **)(*_Pnext)->_Getpnext();
				else
					{	
					(*_Pnext)->_Clrcont();
					*_Pnext = *(const_iterator **)(*_Pnext)->_Getpnext();
					}
		}
 
	};

		

template<class _Ty,
	class _Alloc> inline
	void swap(list<_Ty, _Alloc>& _Left, list<_Ty, _Alloc>& _Right)
	{	
	_Left.swap(_Right);
	}

template<class _Ty,
	class _Alloc> inline
	void swap(list<_Ty, _Alloc>& _Left, list<_Ty, _Alloc>&& _Right)
	{	
	typedef list<_Ty, _Alloc> _Myt;
	_Left.swap(::std:: forward<_Myt>(_Right));
	}

template<class _Ty,
	class _Alloc> inline
	void swap(list<_Ty, _Alloc>&& _Left, list<_Ty, _Alloc>& _Right)
	{	
	typedef list<_Ty, _Alloc> _Myt;
	_Right.swap(::std:: forward<_Myt>(_Left));
	}

template<class _Ty,
	class _Alloc> inline
	bool operator==(const list<_Ty, _Alloc>& _Left,
		const list<_Ty, _Alloc>& _Right)
	{	
	return (_Left.size() == _Right.size()
		&& equal(_Left.begin(), _Left.end(), _Right.begin()));
	}

template<class _Ty,
	class _Alloc> inline
	bool operator!=(const list<_Ty, _Alloc>& _Left,
		const list<_Ty, _Alloc>& _Right)
	{	
	return (!(_Left == _Right));
	}

template<class _Ty,
	class _Alloc> inline
	bool operator<(const list<_Ty, _Alloc>& _Left,
		const list<_Ty, _Alloc>& _Right)
	{	
	return (lexicographical_compare(_Left.begin(), _Left.end(),
		_Right.begin(), _Right.end()));
	}

template<class _Ty,
	class _Alloc> inline
	bool operator>(const list<_Ty, _Alloc>& _Left,
		const list<_Ty, _Alloc>& _Right)
	{	
	return (_Right < _Left);
	}

template<class _Ty,
	class _Alloc> inline
	bool operator<=(const list<_Ty, _Alloc>& _Left,
		const list<_Ty, _Alloc>& _Right)
	{	
	return (!(_Right < _Left));
	}

template<class _Ty,
	class _Alloc> inline
	bool operator>=(const list<_Ty, _Alloc>& _Left,
		const list<_Ty, _Alloc>& _Right)
	{	
	return (!(_Left < _Right));
	}
}
 #pragma warning(pop)
 #pragma pack(pop)





























#pragma once





#pragma once





#pragma once





#pragma once





#pragma once









#pragma once





#pragma once





#pragma once









#pragma once





#pragma once
















#pragma once



















 











































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































extern "C" {























































                                













  int __cdecl _isctype(  int _C,   int _Type);
  int __cdecl _isctype_l(  int _C,   int _Type,    _locale_t _Locale);
   int __cdecl isalpha(  int _C);
  int __cdecl _isalpha_l(  int _C,    _locale_t _Locale);
   int __cdecl isupper(  int _C);
  int __cdecl _isupper_l(  int _C,    _locale_t _Locale);
   int __cdecl islower(  int _C);
  int __cdecl _islower_l(  int _C,    _locale_t _Locale);
   int __cdecl isdigit(  int _C);
  int __cdecl _isdigit_l(  int _C,    _locale_t _Locale);
  int __cdecl isxdigit(  int _C);
  int __cdecl _isxdigit_l(  int _C,    _locale_t _Locale);
   int __cdecl isspace(  int _C);
  int __cdecl _isspace_l(  int _C,    _locale_t _Locale);
  int __cdecl ispunct(  int _C);
  int __cdecl _ispunct_l(  int _C,    _locale_t _Locale);
   int __cdecl isalnum(  int _C);
  int __cdecl _isalnum_l(  int _C,    _locale_t _Locale);
  int __cdecl isprint(  int _C);
  int __cdecl _isprint_l(  int _C,    _locale_t _Locale);
  int __cdecl isgraph(  int _C);
  int __cdecl _isgraph_l(  int _C,    _locale_t _Locale);
  int __cdecl iscntrl(  int _C);
  int __cdecl _iscntrl_l(  int _C,    _locale_t _Locale);
   int __cdecl toupper(  int _C);
   int __cdecl tolower(  int _C);
   int __cdecl _tolower(  int _C);
  int __cdecl _tolower_l(  int _C,    _locale_t _Locale);
   int __cdecl _toupper(  int _C);
  int __cdecl _toupper_l(  int _C,    _locale_t _Locale);
  int __cdecl __isascii(  int _C);
  int __cdecl __toascii(  int _C);
  int __cdecl __iscsymf(  int _C);
  int __cdecl __iscsym(  int _C);

















































































 int __cdecl _chvalidator(  int _Ch,   int _Mask);



















































 int __cdecl _chvalidator_l(   _locale_t,   int _Ch,   int _Mask);























































































































}


















#pragma once



















 














































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#pragma pack(push,8)


extern "C" {


























struct lconv {
        char *decimal_point;
        char *thousands_sep;
        char *grouping;
        char *int_curr_symbol;
        char *currency_symbol;
        char *mon_decimal_point;
        char *mon_thousands_sep;
        char *mon_grouping;
        char *positive_sign;
        char *negative_sign;
        char int_frac_digits;
        char frac_digits;
        char p_cs_precedes;
        char p_sep_by_space;
        char n_cs_precedes;
        char n_sep_by_space;
        char p_sign_posn;
        char n_sign_posn;
        wchar_t *_W_decimal_point;
        wchar_t *_W_thousands_sep;
        wchar_t *_W_int_curr_symbol;
        wchar_t *_W_currency_symbol;
        wchar_t *_W_mon_decimal_point;
        wchar_t *_W_mon_thousands_sep;
        wchar_t *_W_positive_sign;
        wchar_t *_W_negative_sign;
        };
























  int __cdecl _configthreadlocale(  int _Flag);
  char * __cdecl setlocale(  int _Category,    const char * _Locale);
  struct lconv * __cdecl localeconv(void);
  _locale_t __cdecl _get_current_locale(void);
  _locale_t __cdecl _create_locale(  int _Category,    const char * _Locale);
 void __cdecl _free_locale(   _locale_t _Locale);


 __declspec(deprecated("This function or variable has been superceded by newer library or operating system functionality. Consider using " "_get_current_locale" " instead. See online help for details."))  _locale_t __cdecl __get_current_locale(void);
 __declspec(deprecated("This function or variable has been superceded by newer library or operating system functionality. Consider using " "_create_locale" " instead. See online help for details."))  _locale_t __cdecl __create_locale(  int _Category,    const char * _Locale);
__declspec(deprecated("This function or variable has been superceded by newer library or operating system functionality. Consider using " "_free_locale" " instead. See online help for details."))  void __cdecl __free_locale(   _locale_t _Locale);











}


#pragma pack(pop)








#pragma pack(push,8)



extern "C" {


		











		



















typedef struct _Collvec
	{	
	unsigned long _Hand;	
	unsigned int _Page;		
	} _Collvec;

typedef struct _Ctypevec
	{	
	unsigned long _Hand;	
	unsigned int _Page;		
	const short *_Table;
	int _Delfl;
	} _Ctypevec;

typedef struct _Cvtvec
	{	
	unsigned long _Hand;	
	unsigned int _Page;		
	} _Cvtvec;

		
 _Collvec __cdecl _Getcoll();
 _Ctypevec __cdecl _Getctype();

 _Cvtvec __cdecl _Getcvt();

 int __cdecl _Getdateorder();





 int __cdecl _Mbrtowc(  wchar_t *, const char *, size_t, mbstate_t *, const _Cvtvec *);


 float __cdecl _Stof(const char *,     char **, long);
 double __cdecl _Stod(const char *,     char **, long);
 long double __cdecl _Stold(const char *,     char **, 
  long);
 int __cdecl _Strcoll(const char *, const char *,
	const char *, const char *, const _Collvec *);
 size_t __cdecl _Strxfrm(
      char * _String1, 
     char * _End1, const char *, const char *, const _Collvec *);
 int __cdecl _Tolower(int, const _Ctypevec *);
 int __cdecl _Toupper(int, const _Ctypevec *);

 int __cdecl _Wcrtomb(  char *, wchar_t, mbstate_t *, const _Cvtvec *);

 int __cdecl _Wcscoll(const wchar_t *, const wchar_t *,
	const wchar_t *, const wchar_t *, const _Collvec *);
 size_t __cdecl _Wcsxfrm(
      wchar_t *_String1, 
     wchar_t *_End1, const wchar_t *, const wchar_t *, const _Collvec *);

 short __cdecl _Getwctype(wchar_t, const _Ctypevec *);
 const wchar_t * __cdecl _Getwctypes(const wchar_t *, const wchar_t *,
	short*, const _Ctypevec*);
 wchar_t __cdecl _Towlower(wchar_t, const _Ctypevec *);
 wchar_t __cdecl _Towupper(wchar_t, const _Ctypevec *);

}



extern "C" {
 void *__cdecl _Gettnames();
 char *__cdecl _Getdays();
 char *__cdecl _Getmonths();
 size_t __cdecl _Strftime(
    char *,   size_t _Maxsize, 
      const char *,   const struct tm *, void *);
}





 _locale_t __cdecl _GetLocaleForCP(unsigned int);


#pragma pack(pop)











 #pragma pack(push,8)
 #pragma warning(push,3)
 #pragma warning(disable:4412)

namespace std {

		
class  _Timevec
	{	
public:
	 _Timevec(void *_Ptr = 0)
		: _Timeptr(_Ptr)
		{	
		}

	 _Timevec(const _Timevec& _Right)
		{	
		*this = _Right;
		}

	 ~_Timevec()
		{	
		free(_Timeptr);
		}

	_Timevec&  operator=(const _Timevec& _Right)
		{	
		_Timeptr = _Right._Timeptr;
		((_Timevec *)&_Right)->_Timeptr = 0;
		return (*this);
		}

	void * _Getptr() const
		{	
		return (_Timeptr);
		}

private:
	void *_Timeptr;	
	};

		

#pragma warning(push)
#pragma warning(disable: 4412)

class  _Locinfo
	{	
public:
	typedef ::_Collvec _Collvec;
	typedef ::_Ctypevec _Ctypevec;
	typedef ::_Cvtvec _Cvtvec;
	typedef ::std:: _Timevec _Timevec;

    static  void __cdecl _Locinfo_ctor(_Locinfo *,
		const char *);
    static  void __cdecl _Locinfo_ctor(_Locinfo *, int,
		const char *);
    static  void __cdecl _Locinfo_dtor(_Locinfo *);
    static  _Locinfo& __cdecl _Locinfo_Addcats(_Locinfo *, int,
		const char *);

	 _Locinfo(const char *_Pch = "C")

        : _Lock(0)

        {	
        if (_Pch == 0)
            throw runtime_error("bad locale name");
        _Locinfo_ctor(this, _Pch);
        }

	 _Locinfo(int _Cat, const char *_Pch)

        : _Lock(0)

        {	
        if (_Pch == 0)
            throw runtime_error("bad locale name");
        _Locinfo_ctor(this, _Cat, _Pch);
        }

	 ~_Locinfo()
        {
        _Locinfo_dtor(this);
        }


	_Locinfo&  _Addcats(int _Cat, const char *_Pch)
		{	
		if (_Pch == 0)
			throw runtime_error("bad locale name");
		return _Locinfo_Addcats(this, _Cat, _Pch);
		}


	const char * _Getname() const
		{	
		return (_Newlocname._C_str());
		}

	_Collvec  _Getcoll() const
		{	
		return (::_Getcoll());
		}

	_Ctypevec  _Getctype() const
		{	
		return (::_Getctype());
		}

	_Cvtvec  _Getcvt() const
		{	
		return (::_Getcvt());
		}

	const lconv * _Getlconv() const
		{	
		return (localeconv());
		}

	_Timevec  _Gettnames() const
		{	
		return (_Timevec(::_Gettnames()));
		}

	const char * _Getdays() const
		{	
		const char *_Ptr = ::_Getdays();
		if (_Ptr != 0)
			{	
			((_Locinfo *)this)->_Days = _Ptr;
			free((void *)_Ptr);
			}
		return (!_Days._Empty() ? _Days._C_str()
			: ":Sun:Sunday:Mon:Monday:Tue:Tuesday:Wed:Wednesday"
				":Thu:Thursday:Fri:Friday:Sat:Saturday");
		}

	const char * _Getmonths() const
		{	
		const char *_Ptr = ::_Getmonths();
		if (_Ptr != 0)
			{	
			((_Locinfo *)this)->_Months = _Ptr;
			free((void *)_Ptr);
			}
		return (!_Months._Empty() ? _Months._C_str()
			: ":Jan:January:Feb:February:Mar:March"
				":Apr:April:May:May:Jun:June"
				":Jul:July:Aug:August:Sep:September"
				":Oct:October:Nov:November:Dec:December");
		}

	const char * _Getfalse() const
		{	
		return ("false");
		}

	const char * _Gettrue() const
		{	
		return ("true");
		}

	int  _Getdateorder() const
		{	
		return ::_Getdateorder();
		}

private:









	_Lockit _Lock;	


	_Yarn<char> _Days;	
	_Yarn<char> _Months;	
	_Yarn<char> _Oldlocname;	
	_Yarn<char> _Newlocname;	
	};
#pragma warning(pop)

		
template<class _Elem> inline
	int __cdecl _LStrcoll(const _Elem *_First1, const _Elem *_Last1,
		const _Elem *_First2, const _Elem *_Last2,
			const _Locinfo::_Collvec *)
	{	
	for (; _First1 != _Last1 && _First2 != _Last2; ++_First1, ++_First2)
		if (*_First1 < *_First2)
			return (-1);	
		else if (*_First2 < *_First1)
			return (+1);	
	return (_First2 != _Last2 ? -1 : _First1 != _Last1 ? +1 : 0);
	}

template<> inline
	int __cdecl _LStrcoll(const char *_First1, const char *_Last1,
		const char *_First2, const char *_Last2,
			const _Locinfo::_Collvec *_Vector)
	{	
	return (_Strcoll(_First1, _Last1, _First2, _Last2, _Vector));
	}

template<> inline
	int __cdecl _LStrcoll(const wchar_t *_First1, const wchar_t *_Last1,
		const wchar_t *_First2, const wchar_t *_Last2,
			const _Locinfo::_Collvec *_Vector)
	{	
	return (_Wcscoll(_First1, _Last1, _First2, _Last2, _Vector));
	}

		
template<class _Elem> inline
	size_t __cdecl _LStrxfrm(_Elem *_First1, _Elem *_Last1,
		const _Elem *_First2, const _Elem *_Last2,
			const _Locinfo::_Collvec *)
	{	
	size_t _Count = _Last2 - _First2;
	if (_Count <= (size_t)(_Last1 - _First1))
		::memcpy_s((_First1), ((_Last1 - _First1) * sizeof(_Elem)), (_First2), (_Count * sizeof (_Elem)));
	return (_Count);
	}

template<> inline
	size_t __cdecl _LStrxfrm(
		    char *_First1, 
		   char *_Last1,
		const char *_First2, const char *_Last2,
			const _Locinfo::_Collvec *_Vector)
	{	
	return (_Strxfrm(_First1, _Last1, _First2, _Last2, _Vector));
	}

template<> inline
	size_t __cdecl _LStrxfrm(
		    wchar_t *_First1, 
		   wchar_t *_Last1,
		const wchar_t *_First2, const wchar_t *_Last2,
			const _Locinfo::_Collvec *_Vector)
	{	
	return (_Wcsxfrm(_First1, _Last1, _First2, _Last2, _Vector));
	}
}

 #pragma warning(pop)
 #pragma pack(pop)











#pragma once





 #pragma pack(push,8)
 #pragma warning(push,3)

 
  
 
  

namespace std {
struct _DebugHeapTag_t
	{	
	int _Type;
	};
}

		

 
   
   
   

  
  

  void * __cdecl operator new(size_t _Size,
	const ::std:: _DebugHeapTag_t&,    char *, int)
		throw (...);	

  void * __cdecl operator new[](size_t _Size,
	const ::std:: _DebugHeapTag_t&,    char *, int)
		throw (...);	

 void __cdecl operator delete(void *,
	const ::std:: _DebugHeapTag_t&,    char *, int)
		throw ();	

 void __cdecl operator delete[](void *,
	const ::std:: _DebugHeapTag_t&,    char *, int)
		throw ();	

namespace std {

 const _DebugHeapTag_t& __cdecl _DebugHeapTag_func();

		
template<class _Ty>
	void __cdecl _DebugHeapDelete(_Ty *_Ptr)
	{	
	if (_Ptr != 0)
		{	
		_Ptr->~_Ty();
		
		
		free(_Ptr);
		}
	}

}

  





 
 

 #pragma warning(pop)
 #pragma pack(pop)











 #pragma pack(push,8)
 #pragma warning(push,3)

 
 

 #pragma warning(disable: 4412)

namespace std {
		
template<class _Dummy>
	class _Locbase
	{	
public:
	 static const int collate = ((1 << (1)) >> 1);
	 static const int ctype = ((1 << (2)) >> 1);
	 static const int monetary = ((1 << (3)) >> 1);
	 static const int numeric = ((1 << (4)) >> 1);
	 static const int time = ((1 << (5)) >> 1);
	 static const int messages = ((1 << (6)) >> 1);
	 static const int all = (((1 << (7)) >> 1) - 1);
	 static const int none = 0;
	};

template<class _Dummy>
	const int _Locbase<_Dummy>::collate;
template<class _Dummy>
	const int _Locbase<_Dummy>::ctype;
template<class _Dummy>
	const int _Locbase<_Dummy>::monetary;
template<class _Dummy>
	const int _Locbase<_Dummy>::numeric;
template<class _Dummy>
	const int _Locbase<_Dummy>::time;
template<class _Dummy>
	const int _Locbase<_Dummy>::messages;
template<class _Dummy>
	const int _Locbase<_Dummy>::all;
template<class _Dummy>
	const int _Locbase<_Dummy>::none;

		
class locale;
template<class _Facet>
	const _Facet& __cdecl use_facet(const locale&);

class  locale
	: public _Locbase<int>
	{	
public:
	typedef int category;

			
	class  id
		{	
	public:
		 id(size_t _Val = 0)
			: _Id(_Val)
			{	
			}

		 operator size_t()
			{	
			if (_Id == 0)
				{	
				{ ::std:: _Lockit _Lock(0);
					if (_Id == 0)
						_Id = ++_Id_cnt;
				}
				}
			return (_Id);
			}

	private:
		size_t _Id;	

		 static int _Id_cnt;

		 id(const id&);	
		id&  operator=(const id&);	
		};

	class _Locimp;

			
	class facet
		{	
		friend class locale;
		friend class _Locimp;

	public:
		 static size_t __cdecl _Getcat(const facet ** = 0,
			const locale * = 0)
			{	
			return ((size_t)(-1));
			}

		 void  _Incref()
			{	
			{ ::std:: _Lockit _Lock(0);
				if (_Refs < (size_t)(-1))
					++_Refs;
			}
			}

		 facet * _Decref()
			{	
			{ ::std:: _Lockit _Lock(0);
				if (0 < _Refs && _Refs < (size_t)(-1))
					--_Refs;
				return (_Refs == 0 ? this : 0);
			}
			}

		void  _Register()
			{	
 



			_Facet_Register(this);
 
			}

  
		 void *__cdecl operator new(size_t _Size)
			{	
			return (operator new(_Size, _DebugHeapTag_func(),
				"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 141));
			}

		 void *__cdecl operator new(size_t _Size,
			const _DebugHeapTag_t& _Tag, char *_File, int _Line)
			{	
			return (::operator new(_Size, _Tag, _File, _Line));
			}

		 void __cdecl operator delete(void *_Ptr,
			const _DebugHeapTag_t&, char *, int)
			{	
			operator delete(_Ptr);
			}

		 void __cdecl operator delete(void *_Ptr)
			{	
			_DebugHeapDelete((facet *)_Ptr);
			}
  


		 virtual  ~facet()
			{	
			}

	protected:
		 explicit  facet(size_t _Initrefs = 0)
			: _Refs(_Initrefs)
			{	
			}

	private:
		size_t _Refs;	

		 facet(const facet&);	

		facet&  operator=(const facet&);	

 



		static void __cdecl _Facet_Register(facet *);
 
		};

			
 #pragma warning(push)
 #pragma warning(disable: 4275)

	class  _Locimp
		: public facet
		{	
	protected:
		 ~_Locimp()
		{	
		_Locimp_dtor(this);
		}

	private:
		static  void __cdecl _Locimp_dtor(_Locimp *);
		static  void __cdecl _Locimp_Addfac(_Locimp *, facet *,
			size_t);	
		static void __cdecl _Locimp_ctor(_Locimp *, const _Locimp&);

		friend class locale;

		 _Locimp(bool _Transparent = false)
			: locale::facet(1), _Facetvec(0), _Facetcount(0),
				_Catmask(none), _Xparent(_Transparent),
					_Name("*")
			{	
			}

		 _Locimp(const _Locimp& _Right)
			: locale::facet(1), _Facetvec(0), _Facetcount(_Right._Facetcount),
				_Catmask(_Right._Catmask), _Xparent(_Right._Xparent),
					_Name(_Right._Name.c_str())
			{	
			_Locimp_ctor(this, _Right);
			}

		void  _Addfac(facet *_Pfacet, size_t _Id)
			{	
			_Locimp_Addfac(this, _Pfacet, _Id);
			}

		static _Locimp *__cdecl _Makeloc(const _Locinfo&,
			category, _Locimp *, const locale *);	

		static void __cdecl _Makewloc(const _Locinfo&,
			category, _Locimp *, const locale *);	

 
		static void __cdecl _Makeushloc(const _Locinfo&,
			category, _Locimp *, const locale *);	
 

		static void __cdecl _Makexloc(const _Locinfo&,
			category, _Locimp *, const locale *);	

		facet **_Facetvec;	
		size_t _Facetcount;	
		category _Catmask;	
		bool _Xparent;	
		_Yarn<char> _Name;	

		 static _Locimp *_Clocptr;

private:
		_Locimp&  operator=(const _Locimp&);	
		};

 #pragma warning(pop)

	template<class _Elem,
		class _Traits,
		class _Alloc>
		bool operator()(const basic_string<_Elem, _Traits, _Alloc>& _Left,
			const basic_string<_Elem, _Traits, _Alloc>& _Right) const
		{	
		const ::std:: collate<_Elem>& _Coll_fac =
			::std:: use_facet<::std:: collate<_Elem> >(*this);

		return (_Coll_fac.compare(_Left.c_str(), _Left.c_str() + _Left.size(),
			_Right.c_str(), _Right.c_str() + _Right.size()) < 0);
		}

	template<class _Facet>
		locale combine(const locale& _Loc) const
		{	
		_Facet *_Facptr;

		try {
			_Facptr = (_Facet *)&::std:: use_facet<_Facet>(_Loc);
		} catch (...) {
			_Xruntime_error("locale::combine facet missing");
		}

		_Locimp *_Newimp = new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 281) _Locimp(*_Ptr);
		_Newimp->_Addfac(_Facptr, _Facet::id);
		_Newimp->_Catmask = 0;
		_Newimp->_Name = "*";
		return (locale(_Newimp));
		}

	template<class _Facet>
		locale(const locale& _Loc, const _Facet *_Facptr)
			: _Ptr(new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 290) _Locimp(*_Loc._Ptr))
		{	
		if (_Facptr != 0)
			{	
			_Ptr->_Addfac((_Facet *)_Facptr, _Facet::id);
			if (_Facet::_Getcat() != (size_t)(-1))
				{	
				_Ptr->_Catmask = 0;
				_Ptr->_Name = "*";
				}
			}
		}

	locale(_Uninitialized)
		{	
		}

	locale(const locale& _Right) throw ()
		: _Ptr(_Right._Ptr)
		{	
		_Ptr->_Incref();
		}

	locale() throw ()
		: _Ptr(_Init())
		{	
		_Getgloballocale()->_Incref();
		}

	locale(const locale& _Loc, const locale& _Other,
		category _Cat)
		: _Ptr(new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 321) _Locimp(*_Loc._Ptr))
		{	
		try {
		{ _Locinfo _Lobj(_Loc._Ptr->_Catmask, _Loc._Ptr->_Name.c_str());
			_Locimp::_Makeloc(_Lobj._Addcats(_Cat & _Other._Ptr->_Catmask,
				_Other._Ptr->_Name.c_str()), _Cat, _Ptr, &_Other);
		}
		} catch (...) {
		::std:: _DebugHeapDelete(_Ptr->_Decref());
		throw;
		}
		}

	explicit locale(const char *_Locname,
		category _Cat = all) 	
		: _Ptr(new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 336) _Locimp)
		{	
		try {
		_Init();
		{ _Locinfo _Lobj(_Cat, _Locname);
			if (_Badname(_Lobj))
				_Xruntime_error("bad locale name");
			_Locimp::_Makeloc(_Lobj, _Cat, _Ptr, 0);
		}
		} catch (...) {
		::std:: _DebugHeapDelete(_Ptr->_Decref());
		throw;
		}
		}

	locale(const locale& _Loc, const char *_Locname,
		category _Cat)
		: _Ptr(new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 353) _Locimp(*_Loc._Ptr))
		{	
		try {
		{ _Locinfo _Lobj(_Loc._Ptr->_Catmask, _Loc._Ptr->_Name.c_str());
			bool _Hadname = !_Badname(_Lobj);
			_Lobj._Addcats(_Cat, _Locname);

			if (_Hadname && _Badname(_Lobj))
				_Xruntime_error("bad locale name");
			_Locimp::_Makeloc(_Lobj, _Cat, _Ptr, 0);
		}
		} catch (...) {
		::std:: _DebugHeapDelete(_Ptr->_Decref());
		throw;
		}
		}

 
	explicit locale(const string& _Str,
		category _Cat = all)
		: _Ptr(new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 373) _Locimp)
		{	
		try {
		_Init();
		_Locinfo _Lobj(_Cat, _Str.c_str());

		if (_Badname(_Lobj))
			_Xruntime_error("bad locale name");
		_Locimp::_Makeloc(_Lobj, _Cat, _Ptr, 0);
		} catch (...) {
		::std:: _DebugHeapDelete(_Ptr->_Decref());
		throw;
		}
		}

	locale(const locale& _Loc, const string& _Str,
		category _Cat)
		: _Ptr(new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 390) _Locimp(*_Loc._Ptr))
		{	
		try {
		_Locinfo _Lobj(_Loc._Ptr->_Catmask, _Loc._Ptr->_Name.c_str());
		bool _Hadname = !_Badname(_Lobj);
		_Lobj._Addcats(_Cat, _Str.c_str());

		if (_Hadname && _Badname(_Lobj))
			_Xruntime_error("bad locale name");
		_Locimp::_Makeloc(_Lobj, _Cat, _Ptr, 0);
		} catch (...) {
		::std:: _DebugHeapDelete(_Ptr->_Decref());
		throw;
		}
		}
 


	~locale() throw ()
		{	
		if (_Ptr != 0)
			::std:: _DebugHeapDelete(_Ptr->_Decref());
		}

	locale& operator=(const locale& _Right) throw ()
		{	
		if (_Ptr != _Right._Ptr)
			{	
			::std:: _DebugHeapDelete(_Ptr->_Decref());
			_Ptr = _Right._Ptr;
			_Ptr->_Incref();
			}
		return (*this);
		}

	string name() const
		{	
		return (_Ptr->_Name.c_str());
		}

	const char *c_str() const
		{	
		return (_Ptr->_Name.c_str());
		}

	const facet *_Getfacet(size_t _Id) const
		{	
		const facet *_Facptr = _Id < _Ptr->_Facetcount
			? _Ptr->_Facetvec[_Id] : 0;	
		if (_Facptr != 0 || !_Ptr->_Xparent)
			return (_Facptr);	
		else
			{	
			locale::_Locimp *_Ptr = _Getgloballocale();
			return (_Id < _Ptr->_Facetcount
				? _Ptr->_Facetvec[_Id]	
				: 0);	
			}
		}

	bool operator==(const locale& _Loc) const
		{	
		return (_Ptr == _Loc._Ptr
			|| name().compare("*") != 0 && name().compare(_Loc.name()) == 0);
		}

	bool operator!=(const locale& _Right) const
		{	
		return (!(*this == _Right));
		}

	static  const locale& __cdecl classic();	

	static  locale __cdecl global(const locale&);	

	static  locale __cdecl empty();	

private:
	locale(_Locimp *_Ptrimp)
		: _Ptr(_Ptrimp)
		{	
		}

    static  _Locimp *__cdecl _Init();	
	static  _Locimp *__cdecl _Getgloballocale();
	static  void __cdecl _Setgloballocale(void *);

	bool _Badname(const _Locinfo& _Lobj)
		{	
		return (:: strcmp(_Lobj._Getname(), "*") == 0);
		}

	_Locimp *_Ptr;	
	};

		
template<class _Facet>
	struct _Facetptr
	{	
	 static const locale::facet *_Psave;
	};

template<class _Facet>
	 const locale::facet *_Facetptr<_Facet>::
		_Psave = 0;

  

  


template<class _Facet> inline
	const _Facet& __cdecl use_facet(const locale& _Loc)

	{	
	{ ::std:: _Lockit _Lock(0);	
		const locale::facet *_Psave =
			_Facetptr<_Facet>::_Psave;	

		size_t _Id = _Facet::id;
		const locale::facet *_Pf = _Loc._Getfacet(_Id);

		if (_Pf != 0)
			;	
		else if (_Psave != 0)
			_Pf = _Psave;	
		else if (_Facet::_Getcat(&_Psave, &_Loc) == (size_t)(-1))

 

			throw bad_cast();	

 



		else
			{	
			_Pf = _Psave;
			_Facetptr<_Facet>::_Psave = _Psave;

			locale::facet *_Pfmod = (_Facet *)_Psave;
			_Pfmod->_Incref();
			_Pfmod->_Register();
			}

		return ((const _Facet&)(*_Pf));	
	}
	}

		
template<class _Elem,
	class _InIt> inline
	int __cdecl _Getloctxt(_InIt& _First, _InIt& _Last, size_t _Numfields,
		const _Elem *_Ptr)
	{	
	for (size_t _Off = 0; _Ptr[_Off] != (_Elem)0; ++_Off)
		if (_Ptr[_Off] == _Ptr[0])
			++_Numfields;	
	string _Str(_Numfields, '\0');	

	int _Ans = -2;	
	for (size_t _Column = 1; ; ++_Column, ++_First, _Ans = -1)
		{	
		bool _Prefix = false;	
		size_t _Off = 0;	
		size_t _Field = 0;	

		for (; _Field < _Numfields; ++_Field)
			{	
			for (; _Ptr[_Off] != (_Elem)0 && _Ptr[_Off] != _Ptr[0]; ++_Off)
				;	

			if (_Str[_Field] != '\0')
				_Off += _Str[_Field];	
			else if (_Ptr[_Off += _Column] == _Ptr[0]
				|| _Ptr[_Off] == (_Elem)0)
				{	
				_Str[_Field] = (char)(_Column < 127
					? _Column : 127);	
				_Ans = (int)_Field;	
				}
			else if (_First == _Last || _Ptr[_Off] != *_First)
				_Str[_Field] = (char)(_Column < 127
					? _Column : 127);	
			else
				_Prefix = true;	
			}

		if (!_Prefix || _First == _Last)
			break;	
		}
	return (_Ans);	
	}

		



template<class _Elem> inline
	char __cdecl _Maklocbyte(_Elem _Char,
		const _Locinfo::_Cvtvec&)
	{	
	return ((char)(unsigned char)_Char);
	}

template<> inline
	char __cdecl _Maklocbyte(wchar_t _Char,
		const _Locinfo::_Cvtvec& _Cvt)
	{	
	char _Byte = '\0';
	mbstate_t _Mbst1 = {0};
	_Wcrtomb(&_Byte, _Char, &_Mbst1, &_Cvt);
	return (_Byte);
	}

 
template<> inline
	char __cdecl _Maklocbyte(unsigned short _Char,
		const _Locinfo::_Cvtvec &_Cvt)
	{	
	char _Byte = '\0';
	mbstate_t _Mbst1 = {0};
	_Wcrtomb(&_Byte, (wchar_t)_Char, &_Mbst1, &_Cvt);
	return (_Byte);
	}
 

		



template<class _Elem> inline
	_Elem __cdecl _Maklocchr(char _Byte, _Elem *,
		const _Locinfo::_Cvtvec&)
	{	
	return ((_Elem)(unsigned char)_Byte);
	}

template<> inline
	wchar_t __cdecl _Maklocchr(char _Byte, wchar_t *,
		const _Locinfo::_Cvtvec& _Cvt)
	{	
	wchar_t _Wc = L'\0';
	mbstate_t _Mbst1 = {0};
	_Mbrtowc(&_Wc, &_Byte, 1, &_Mbst1, &_Cvt);
	return (_Wc);
	}

 
template<> inline
	unsigned short __cdecl _Maklocchr(char _Byte, unsigned short *,
		const _Locinfo::_Cvtvec &_Cvt)
	{	
	unsigned short _Wc = (unsigned short)0;
	mbstate_t _Mbst1 = {0};
	_Mbrtowc((wchar_t *)&_Wc, &_Byte, 1, &_Mbst1, &_Cvt);
	return (_Wc);
	}
 

		



template<class _Elem> inline
	_Elem *__cdecl _Maklocstr(const char *_Ptr, _Elem *,
		const _Locinfo::_Cvtvec&)
	{	
	size_t _Count = :: strlen(_Ptr) + 1;
	_Elem *_Ptrdest = new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 660) _Elem[_Count];

 #pragma warning(push)
 #pragma warning(disable: 6011)	
	for (_Elem *_Ptrnext = _Ptrdest; 0 < _Count; --_Count, ++_Ptrnext, ++_Ptr)
		*_Ptrnext = (_Elem)(unsigned char)*_Ptr;
 #pragma warning(pop)

	return (_Ptrdest);
	}

template<> inline
	wchar_t *__cdecl _Maklocstr(const char *_Ptr, wchar_t *,
		const _Locinfo::_Cvtvec& _Cvt)
	{	
	size_t _Count, _Count1;
	size_t _Wchars;
	const char *_Ptr1;
	int _Bytes;
	wchar_t _Wc;
	mbstate_t _Mbst1 = {0};

	_Count1 = :: strlen(_Ptr) + 1;
	for (_Count = _Count1, _Wchars = 0, _Ptr1 = _Ptr; 0 < _Count;
		_Count -= _Bytes, _Ptr1 += _Bytes, ++_Wchars)
		if ((_Bytes = _Mbrtowc(&_Wc, _Ptr1, _Count, &_Mbst1, &_Cvt)) <= 0)
			break;
	++_Wchars;	

	wchar_t *_Ptrdest = new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 689) wchar_t[_Wchars];
	wchar_t *_Ptrnext = _Ptrdest;
	mbstate_t _Mbst2 = {0};

 #pragma warning(push)
 #pragma warning(disable: 6011)	
	for (; 0 < _Wchars;
		_Count -= _Bytes, _Ptr += _Bytes, --_Wchars, ++_Ptrnext)
		if ((_Bytes = _Mbrtowc(_Ptrnext, _Ptr, _Count1, &_Mbst2, &_Cvt)) <= 0)
			break;
	*_Ptrnext = L'\0';
 #pragma warning(pop)

	return (_Ptrdest);
	}

 
template<> inline
	unsigned short *__cdecl _Maklocstr(const char *_Ptr, unsigned short *,
		const _Locinfo::_Cvtvec &_Cvt)
	{	
	size_t _Count, _Count1;
	size_t _Wchars;
	const char *_Ptr1;
	int _Bytes;
	unsigned short _Wc;
	mbstate_t _Mbst1 = {0};

	_Count1 = :: strlen(_Ptr) + 1;
	for (_Count = _Count1, _Wchars = 0, _Ptr1 = _Ptr; 0 < _Count;
		_Count -= _Bytes, _Ptr1 += _Bytes, ++_Wchars)
		if ((_Bytes =
			_Mbrtowc((wchar_t *)&_Wc, _Ptr1, _Count, &_Mbst1, &_Cvt)) <= 0)
			break;
	++_Wchars;	

	wchar_t *_Ptrdest = new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 725) wchar_t[_Wchars];
	wchar_t *_Ptrnext = _Ptrdest;
	mbstate_t _Mbst2 = {0};
	for (; 0 < _Wchars;
		_Count -= _Bytes, _Ptr += _Bytes, --_Wchars, ++_Ptrnext)
		if ((_Bytes = _Mbrtowc(_Ptrnext, _Ptr, _Count1, &_Mbst2, &_Cvt)) <= 0)
			break;
	*_Ptrnext = L'\0';
	return ((unsigned short *)_Ptrdest);
	}
 

		
 #pragma warning(push)
 #pragma warning(disable: 4275)

class  codecvt_base
	: public locale::facet
	{	
public:
	enum
		{	
		ok, partial, error, noconv};
	typedef int result;

	 codecvt_base(size_t _Refs = 0)
		: locale::facet(_Refs)
		{	
		}

	bool  always_noconv() const throw ()
		{	
		return (do_always_noconv());
		}

	int  max_length() const throw ()
		{	
		return (do_max_length());
		}

	int  encoding() const throw ()
		{	
		return (do_encoding());
		}

	 ~codecvt_base()
		{	
		}

protected:
	virtual bool  do_always_noconv() const throw ()
		{	
		return (true);
		}

	virtual int  do_max_length() const throw ()
		{	
		return (1);
		}

	virtual int  do_encoding() const throw ()
		{	
		return (1);	
		}
	};

 #pragma warning(pop)

		
template<class _Elem,
	class _Byte,
	class _Statype>
	class codecvt
		: public codecvt_base
	{	
public:
	typedef _Elem intern_type;
	typedef _Byte extern_type;
	typedef _Statype state_type;

	result  in(_Statype& _State,
		const _Byte *_First1, const _Byte *_Last1, const _Byte *& _Mid1,
		_Elem *_First2, _Elem *_Last2, _Elem *& _Mid2) const
		{	
		return (do_in(_State,
			_First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
		}

	result  out(_Statype& _State,
		const _Elem *_First1, const _Elem *_Last1, const _Elem *& _Mid1,
		_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		return (do_out(_State,
			_First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
		}

	result  unshift(_Statype& _State,
		_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		return (do_unshift(_State, _First2, _Last2, _Mid2));
		}

	int  length(const _Statype& _State, const _Byte *_First1,
		const _Byte *_Last1, size_t _Count) const
		{	
		return (do_length(_State, _First1, _Last1, _Count));
		}

	 static locale::id id;	

	explicit  codecvt(size_t _Refs = 0)
		: codecvt_base(_Refs)
		{	
		_Init(_Locinfo());
		}

	 codecvt(const _Locinfo& _Lobj, size_t _Refs = 0)
		: codecvt_base(_Refs)
		{	
		_Init(_Lobj);
		}

	static size_t __cdecl _Getcat(const locale::facet **_Ppf = 0,
		const locale *_Ploc = 0)
		{	
		if (_Ppf != 0 && *_Ppf == 0)
			*_Ppf = new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 851) codecvt<_Elem, _Byte, _Statype>(
				_Locinfo(_Ploc->c_str()));
		return (2);
		}

protected:
	virtual  ~codecvt()
		{	
		}

	void  _Init(const _Locinfo&)
		{	
		}

	virtual result  do_in(_Statype&,
		const _Byte *_First1, const _Byte *, const _Byte *& _Mid1,
		_Elem *_First2, _Elem *, _Elem *& _Mid2) const
		{	
		_Mid1 = _First1, _Mid2 = _First2;
		return (noconv);	
		}

	virtual result  do_out(_Statype&,
		const _Elem *_First1, const _Elem *, const _Elem *& _Mid1,
		_Byte *_First2, _Byte *, _Byte *& _Mid2) const
		{	
		_Mid1 = _First1, _Mid2 = _First2;
		return (noconv);	
		}

	virtual result  do_unshift(_Statype&,
		_Byte *_First2, _Byte *, _Byte *&_Mid2) const
		{	
		_Mid2 = _First2;
		return (noconv);	
		}

	virtual int  do_length(const _Statype&, const _Byte *_First1,
		const _Byte *_Last1, size_t _Count) const
		{	
		return ((int)(_Count < (size_t)(_Last1 - _First1)
			? _Count : _Last1 - _First1));	
		}
	};

		
template<class _Elem,
	class _Byte,
	class _Statype>
	 locale::id codecvt<_Elem, _Byte, _Statype>::id;

 






















































































































































































































































































































































































































































































































































































































		
template<>
	class  codecvt<wchar_t, char, _Mbstatet>
	: public codecvt_base
	{	
public:
	typedef wchar_t _Elem;
	typedef char _Byte;
	typedef _Mbstatet _Statype;
	typedef _Elem intern_type;
	typedef _Byte extern_type;
	typedef _Statype state_type;

	result  in(_Statype& _State,
		const _Byte *_First1, const _Byte *_Last1, const _Byte *& _Mid1,
		_Elem *_First2, _Elem *_Last2, _Elem *& _Mid2) const
		{	
		return (do_in(_State,
			_First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
		}

	result  out(_Statype& _State,
		const _Elem *_First1, const _Elem *_Last1, const _Elem *& _Mid1,
		_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		return (do_out(_State,
			_First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
		}

	result  unshift(_Statype& _State,
		_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		return (do_unshift(_State,
			_First2, _Last2, _Mid2));
		}

	int  length(const _Statype& _State, const _Byte *_First1,
		const _Byte *_Last1, size_t _Count) const
		{	
		return (do_length(_State, _First1, _Last1, _Count));
		}

	 static locale::id id;

	explicit  codecvt(size_t _Refs = 0)
		: codecvt_base(_Refs)
		{	
		{ _Locinfo _Lobj;
			_Init(_Lobj);
		}
		}

	 codecvt(const _Locinfo& _Lobj, size_t _Refs = 0)
		: codecvt_base(_Refs)
		{	
		_Init(_Lobj);
		}

	static size_t __cdecl _Getcat(const locale::facet **_Ppf = 0,
		const locale *_Ploc = 0)
		{	
		if (_Ppf != 0 && *_Ppf == 0)
			*_Ppf = new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 1563) codecvt<_Elem, _Byte, _Statype>(
				_Locinfo(_Ploc->c_str()));
		return (2);
		}

protected:
	virtual  ~codecvt()
		{	
		}

	void  _Init(const _Locinfo& _Lobj)
		{	
		_Cvt = _Lobj._Getcvt();
		}

	virtual result  do_in(_Statype& _State,
		const _Byte *_First1, const _Byte *_Last1, const _Byte *& _Mid1,
			_Elem *_First2, _Elem *_Last2, _Elem *& _Mid2) const
		{	
		_Debug_range(_First1, _Last1, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 1582);
		_Debug_range(_First2, _Last2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 1583);
		_Mid1 = _First1, _Mid2 = _First2;
		result _Ans = _Mid1 == _Last1 ? ok : partial;
		int _Bytes;

		while (_Mid1 != _Last1 && _Mid2 != _Last2)
			switch (_Bytes = _Mbrtowc(_Mid2, _Mid1, _Last1 - _Mid1,
				&_State, &_Cvt))
			{	
			case -2:	
				_Mid1 = _Last1;
				return (_Ans);

			case -1:	
				return (error);

			case 0:	
				if (*_Mid2 == (_Elem)0)
					_Bytes = (int):: strlen(_Mid1) + 1;
				

			default:	
				if (_Bytes == -3)
					_Bytes = 0;	
				_Mid1 += _Bytes;
				++_Mid2;
				_Ans = ok;
			}
		return (_Ans);
		}

	virtual result  do_out(_Statype& _State,
		const _Elem *_First1, const _Elem *_Last1, const _Elem *& _Mid1,
			_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		_Debug_range(_First1, _Last1, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 1618);
		_Debug_range(_First2, _Last2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 1619);
		_Mid1 = _First1, _Mid2 = _First2;
		result _Ans = _Mid1 == _Last1 ? ok : partial;
		int _Bytes;

		while (_Mid1 != _Last1 && _Mid2 != _Last2)
			if ((int)___mb_cur_max_func() <= _Last2 - _Mid2)
				if ((_Bytes = _Wcrtomb(_Mid2, *_Mid1,
					&_State, &_Cvt)) < 0)
					return (error);	
				else
					++_Mid1, _Mid2 += _Bytes, _Ans = ok;
			else
				{	
				_Byte _Buf[5];
				_Statype _Stsave = _State;

				if ((_Bytes = _Wcrtomb(_Buf, *_Mid1,
					&_State, &_Cvt)) < 0)
					return (error);	
				else if (_Last2 - _Mid2 < _Bytes)
					{	
					_State = _Stsave;
					return (_Ans);
					}
				else
					{	
					:: memcpy(_Mid2, _Buf, _Bytes);
					++_Mid1, _Mid2 += _Bytes, _Ans = ok;
					}
				}
		return (_Ans);
		}

	virtual result  do_unshift(_Statype& _State,
		_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		_Debug_range(_First2, _Last2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 1656);
		_Mid2 = _First2;
		result _Ans = ok;
		int _Bytes;
		_Byte _Buf[5];
		_Statype _Stsave = _State;

		if ((_Bytes = _Wcrtomb(_Buf, L'\0', &_State, &_Cvt)) <= 0)
			_Ans = error;	
		else if (_Last2 - _Mid2 < --_Bytes)
			{	
			_State = _Stsave;
			_Ans = partial;
			}
		else if (0 < _Bytes)
			{	
			:: memcpy(_Mid2, _Buf, _Bytes);
			_Mid2 += _Bytes;
			}
		return (_Ans);
		}

	virtual int  do_length(const _Statype& _State, const _Byte *_First1,
		const _Byte *_Last1, size_t _Count) const
		{	
 




		_Debug_range(_First1, _Last1, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 1686);
		int _Wchars;
		const _Byte *_Mid1;
		_Statype _Mystate = _State;

		for (_Wchars = 0, _Mid1 = _First1;
			(size_t)_Wchars < _Count && _Mid1 != _Last1; )
			{	
			int _Bytes;
			_Elem _Ch;

			switch (_Bytes = _Mbrtowc(&_Ch, _Mid1, _Last1 - _Mid1,
				&_Mystate, &_Cvt))
				{	
			case -2:	
				return (_Wchars);

			case -1:	
				return (_Wchars);

			case 0:	
				if (_Ch == (_Elem)0)
					_Bytes = (int):: strlen(_Mid1) + 1;
				

			default:	
				if (_Bytes == -3)
					_Bytes = 0;	
				_Mid1 += _Bytes;
				++_Wchars;
				}
			}
		return (_Wchars);
 
		}

	virtual bool  do_always_noconv() const throw ()
		{	
		return (false);
		}

	virtual int  do_max_length() const throw ()
		{	
		return (5);
		}

private:
	_Locinfo::_Cvtvec _Cvt;	
	};

 
		
template<>
	class  codecvt<unsigned short, char, _Mbstatet>
	: public codecvt_base
	{	
public:
	typedef unsigned short _Elem;
	typedef char _Byte;
	typedef _Mbstatet _Statype;
	typedef _Elem intern_type;
	typedef _Byte extern_type;
	typedef _Statype state_type;

	result  in(_Statype& _State,
		const _Byte *_First1, const _Byte *_Last1, const _Byte *& _Mid1,
		_Elem *_First2, _Elem *_Last2, _Elem *& _Mid2) const
		{	
		return (do_in(_State,
			_First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
		}

	result  out(_Statype& _State,
		const _Elem *_First1, const _Elem *_Last1, const _Elem *& _Mid1,
		_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		return (do_out(_State,
			_First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
		}

	result  unshift(_Statype& _State,
		_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		return (do_unshift(_State,
			_First2, _Last2, _Mid2));
		}

	int  length(const _Statype& _State, const _Byte *_First1,
		const _Byte *_Last1, size_t _Count) const
		{	
		return (do_length(_State, _First1, _Last1, _Count));
		}

	 static locale::id id;

	explicit  codecvt(size_t _Refs = 0)
		: codecvt_base(_Refs)
		{	
		{ _Locinfo _Lobj;
			_Init(_Lobj);
		}
		}

	 codecvt(const _Locinfo& _Lobj, size_t _Refs = 0)
		: codecvt_base(_Refs)
		{	
		_Init(_Lobj);
		}

	static size_t __cdecl _Getcat(const locale::facet **_Ppf = 0,
		const locale *_Ploc = 0)
		{	
		if (_Ppf != 0 && *_Ppf == 0)
			*_Ppf = new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 1799) codecvt<_Elem, _Byte, _Statype>(
				_Locinfo(_Ploc->c_str()));
		return (2);
		}

protected:
	virtual  ~codecvt()
		{	
		}

	void  _Init(const _Locinfo& _Lobj)
		{	
		_Cvt = _Lobj._Getcvt();
		}

	virtual result  do_in(_Statype& _State,
		const _Byte *_First1, const _Byte *_Last1, const _Byte *& _Mid1,
			_Elem *_First2, _Elem *_Last2, _Elem *& _Mid2) const
		{	
		_Debug_range(_First1, _Last1, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 1818);
		_Debug_range(_First2, _Last2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 1819);
		_Mid1 = _First1, _Mid2 = _First2;
		result _Ans = _Mid1 == _Last1 ? ok : partial;
		int _Bytes;

		while (_Mid1 != _Last1 && _Mid2 != _Last2)
			switch (_Bytes = _Mbrtowc((wchar_t *)_Mid2, _Mid1, _Last1 - _Mid1,
				&_State, &_Cvt))
			{	
			case -2:	
				_Mid1 = _Last1;
				return (_Ans);

			case -1:	
				return (error);

			case 0:	
				if (*_Mid2 == (_Elem)0)
					_Bytes = (int):: strlen(_Mid1) + 1;
				

			default:	
				if (_Bytes == -3)
					_Bytes = 0;	
				_Mid1 += _Bytes;
				++_Mid2;
				_Ans = ok;
			}
		return (_Ans);
		}

	virtual result  do_out(_Statype& _State,
		const _Elem *_First1, const _Elem *_Last1, const _Elem *& _Mid1,
			_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		_Debug_range(_First1, _Last1, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 1854);
		_Debug_range(_First2, _Last2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 1855);
		_Mid1 = _First1, _Mid2 = _First2;
		result _Ans = _Mid1 == _Last1 ? ok : partial;
		int _Bytes;

		while (_Mid1 != _Last1 && _Mid2 != _Last2)
			if ((int)___mb_cur_max_func() <= _Last2 - _Mid2)
				if ((_Bytes = _Wcrtomb(_Mid2, *_Mid1,
					&_State, &_Cvt)) < 0)
					return (error);	
				else
					++_Mid1, _Mid2 += _Bytes, _Ans = ok;
			else
				{	
				_Byte _Buf[5];
				_Statype _Stsave = _State;

				if ((_Bytes = _Wcrtomb(_Buf, *_Mid1,
					&_State, &_Cvt)) < 0)
					return (error);	
				else if (_Last2 - _Mid2 < _Bytes)
					{	
					_State = _Stsave;
					return (_Ans);
					}
				else
					{	
					:: memcpy(_Mid2, _Buf, _Bytes);
					++_Mid1, _Mid2 += _Bytes, _Ans = ok;
					}
				}
		return (_Ans);
		}

	virtual result  do_unshift(_Statype& _State,
		_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		_Debug_range(_First2, _Last2, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 1892);
		_Mid2 = _First2;
		result _Ans = ok;
		int _Bytes;
		_Byte _Buf[5];
		_Statype _Stsave = _State;

		if ((_Bytes = _Wcrtomb(_Buf, L'\0', &_State, &_Cvt)) <= 0)
			_Ans = error;	
		else if (_Last2 - _Mid2 < --_Bytes)
			{	
			_State = _Stsave;
			_Ans = partial;
			}
		else if (0 < _Bytes)
			{	
			:: memcpy(_Mid2, _Buf, _Bytes);
			_Mid2 += _Bytes;
			}
		return (_Ans);
		}

	virtual int  do_length(const _Statype& _State, const _Byte *_First1,
		const _Byte *_Last1, size_t _Count) const
		{	
		_Debug_range(_First1, _Last1, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 1917);
		int _Wchars;
		const _Byte *_Mid1;
		_Statype _Mystate = _State;

		for (_Wchars = 0, _Mid1 = _First1;
			(size_t)_Wchars < _Count && _Mid1 != _Last1; )
			{	
			int _Bytes;
			_Elem _Ch;

			switch (_Bytes = _Mbrtowc((wchar_t *)&_Ch, _Mid1, _Last1 - _Mid1,
				&_Mystate, &_Cvt))
				{	
			case -2:	
				return (_Wchars);

			case -1:	
				return (_Wchars);

			case 0:	
				if (_Ch == (_Elem)0)
					_Bytes = (int):: strlen(_Mid1) + 1;
				

			default:	
				if (_Bytes == -3)
					_Bytes = 0;	
				_Mid1 += _Bytes;
				++_Wchars;
				}
			}
		return (_Wchars);
		}

	virtual bool  do_always_noconv() const throw ()
		{	
		return (false);
		}

	virtual int  do_max_length() const throw ()
		{	
		return (5);
		}

private:
	_Locinfo::_Cvtvec _Cvt;	
	};
 

		
template<class _Elem,
	class _Byte,
	class _Statype>
	class codecvt_byname
		: public codecvt<_Elem, _Byte, _Statype>
	{	
public:
	explicit  codecvt_byname(const char *_Locname, size_t _Refs = 0)
		: codecvt<_Elem, _Byte, _Statype>(_Locinfo(_Locname), _Refs)
		{	
		}

 
	explicit  codecvt_byname(const string& _Str, size_t _Refs = 0)
		: codecvt<_Elem, _Byte, _Statype>(_Locinfo(_Str.c_str()), _Refs)
		{	
		}
 

protected:
	virtual  ~codecvt_byname()
		{	
		}
	};

		
 #pragma warning(push)
 #pragma warning(disable: 4275)

struct  ctype_base
	: public locale::facet
	{	
	enum
		{	
		alnum = 0x4|0x2|0x1|0x100, alpha = 0x2|0x1|0x100,
		cntrl = 0x20, digit = 0x4, graph = 0x4|0x2|0x10|0x1|0x100,
		lower = 0x2, print = 0x4|0x2|0x10|0x40|0x1|0x100|0x80,
		punct = 0x10, space = 0x8|0x40|0x000, upper = 0x1,
		xdigit = 0x80};
	typedef short mask;	

	 ctype_base(size_t _Refs = 0)
		: locale::facet(_Refs)
		{	
		}

	 ~ctype_base()
		{	
		}
	};

 #pragma warning(pop)

		
template<class _Elem>
	class ctype
		: public ctype_base
	{	
public:
	typedef _Elem char_type;

	bool  is(mask _Maskval, _Elem _Ch) const
		{	
		return (do_is(_Maskval, _Ch));
		}

	const _Elem * is(const _Elem *_First, const _Elem *_Last,
		mask *_Dest) const
		{	
		return (do_is(_First, _Last, _Dest));
		}

	const _Elem * scan_is(mask _Maskval, const _Elem *_First,
		const _Elem *_Last) const
		{	
		return (do_scan_is(_Maskval, _First, _Last));
		}

	const _Elem * scan_not(mask _Maskval, const _Elem *_First,
		const _Elem *_Last) const
		{	
		return (do_scan_not(_Maskval, _First, _Last));
		}

	_Elem  tolower(_Elem _Ch) const
		{	
		return (do_tolower(_Ch));
		}

	const _Elem * tolower(_Elem *_First, const _Elem *_Last) const
		{	
		return (do_tolower(_First, _Last));
		}

	_Elem  toupper(_Elem _Ch) const
		{	
		return (do_toupper(_Ch));
		}

	const _Elem * toupper(_Elem *_First, const _Elem *_Last) const
		{	
		return (do_toupper(_First, _Last));
		}

	_Elem  widen(char _Byte) const
		{	
		return (do_widen(_Byte));
		}

	const char * widen(const char *_First, const char *_Last,
		_Elem *_Dest) const
		{	
		return (do_widen(_First, _Last, _Dest));
		}

	char  narrow(_Elem _Ch, char _Dflt = '\0') const
		{	
		return (do_narrow(_Ch, _Dflt));
		}

	const _Elem * narrow(const _Elem *_First, const _Elem *_Last,
		char _Dflt, char *_Dest) const
		{	
		return (do_narrow(_First, _Last, _Dflt, _Dest));
		}

	 static locale::id id;

	explicit  ctype(size_t _Refs = 0)
		: ctype_base(_Refs)
		{	
		{ _Locinfo _Lobj;
			_Init(_Lobj);
		}
		}

	 ctype(const _Locinfo& _Lobj, size_t _Refs = 0)
		: ctype_base(_Refs)
		{	
		_Init(_Lobj);
		}

	static size_t __cdecl _Getcat(const locale::facet **_Ppf = 0,
		const locale *_Ploc = 0)
		{	
		if (_Ppf != 0 && *_Ppf == 0)
			*_Ppf = new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2114) ctype<_Elem>(
				_Locinfo(_Ploc->c_str()));
		return (2);
		}

protected:
	virtual  ~ctype()
		{	
		if (_Ctype._Delfl)
			free((void *)_Ctype._Table);
		}

	void  _Init(const _Locinfo& _Lobj)
		{	
		_Ctype = _Lobj._Getctype();
		}

	virtual bool  do_is(mask _Maskval, _Elem _Ch) const
		{	
		return ((_Ctype._Table[(unsigned char)narrow(_Ch)]
			& _Maskval) != 0);
		}

	virtual const _Elem * do_is(const _Elem *_First, const _Elem *_Last,
		mask *_Dest) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2140);
		_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2141);
		for (; _First != _Last; ++_First, ++_Dest)
			*_Dest = _Ctype._Table[(unsigned char)narrow(*_First)];
		return (_First);
		}

	virtual const _Elem * do_scan_is(mask _Maskval,
		const _Elem *_First, const _Elem *_Last) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2150);
		for (; _First != _Last && !is(_Maskval, *_First); ++_First)
			;
		return (_First);
		}

	virtual const _Elem * do_scan_not(mask _Maskval,
		const _Elem *_First, const _Elem *_Last) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2159);
		for (; _First != _Last && is(_Maskval, *_First); ++_First)
			;
		return (_First);
		}

	virtual _Elem  do_tolower(_Elem _Ch) const
		{	
		unsigned char _Byte = (unsigned char)narrow(_Ch, '\0');
		if (_Byte == '\0')
			return (_Ch);
		else
			return (widen((char)_Tolower(_Byte, &_Ctype)));
		}

	virtual const _Elem * do_tolower(_Elem *_First,
		const _Elem *_Last) const
		{	
		_Debug_range((const _Elem *)_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2177);
		for (; _First != _Last; ++_First)
			{	
			unsigned char _Byte = (unsigned char)narrow(*_First, '\0');
			if (_Byte != '\0')
				*_First = (widen((char)_Tolower(_Byte, &_Ctype)));
			}
		return ((const _Elem *)_First);
		}

	virtual _Elem  do_toupper(_Elem _Ch) const
		{	
		unsigned char _Byte = (unsigned char)narrow(_Ch, '\0');
		if (_Byte == '\0')
			return (_Ch);
		else
			return (widen((char)_Toupper(_Byte, &_Ctype)));
		}

	virtual const _Elem * do_toupper(_Elem *_First,
		const _Elem *_Last) const
		{	
		_Debug_range((const _Elem *)_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2199);
		for (; _First != _Last; ++_First)
			{	
			unsigned char _Byte = (unsigned char)narrow(*_First, '\0');
			if (_Byte != '\0')
				*_First = (widen((char)_Toupper(_Byte, &_Ctype)));
			}
		return ((const _Elem *)_First);
		}

	virtual _Elem  do_widen(char _Byte) const
		{	
		return (_Maklocchr(_Byte, (_Elem *)0, _Cvt));
		}

	virtual const char * do_widen(const char *_First,
		const char *_Last, _Elem *_Dest) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2217);
		_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2218);
		for (; _First != _Last; ++_First, ++_Dest)
			*_Dest = _Maklocchr(*_First, (_Elem *)0, _Cvt);
		return (_First);
		}

	char  _Donarrow(_Elem _Ch, char _Dflt) const
		{	
		char _Byte;
		if (_Ch == (_Elem)0)
			return ('\0');
		else if ((_Byte = _Maklocbyte((_Elem)_Ch, _Cvt)) == '\0')
			return (_Dflt);
		else
			return (_Byte);
		}

	virtual char  do_narrow(_Elem _Ch, char _Dflt) const
		{	
		return (_Donarrow(_Ch, _Dflt));
		}

	virtual const _Elem * do_narrow(const _Elem *_First,
		const _Elem *_Last, char _Dflt, char *_Dest) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2243);
		_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2244);
		for (; _First != _Last; ++_First, ++_Dest)
			*_Dest = _Donarrow(*_First, _Dflt);
		return (_First);
		}

private:
	_Locinfo::_Ctypevec _Ctype;	
	_Locinfo::_Cvtvec _Cvt;		
	};

		
template<class _Elem>
	locale::id ctype<_Elem>::id;

		
template<>
	class  ctype<char>
	: public ctype_base
	{	
	typedef ctype<char> _Myt;

public:
	typedef char _Elem;
	typedef _Elem char_type;

	bool  is(mask _Maskval, _Elem _Ch) const
		{	
		return ((_Ctype._Table[(unsigned char)_Ch] & _Maskval) != 0);
		}

	const _Elem * is(const _Elem *_First,
		const _Elem *_Last, mask *_Dest) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2278);
		_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2279);
		for (; _First != _Last; ++_First, ++_Dest)
			*_Dest = _Ctype._Table[(unsigned char)*_First];
		return (_First);
		}

	const _Elem * scan_is(mask _Maskval,
		const _Elem *_First, const _Elem *_Last) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2288);
		for (; _First != _Last && !is(_Maskval, *_First); ++_First)
			;
		return (_First);
		}

	const _Elem * scan_not(mask _Maskval,
		const _Elem *_First, const _Elem *_Last) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2297);
		for (; _First != _Last && is(_Maskval, *_First); ++_First)
			;
		return (_First);
		}

	_Elem  tolower(_Elem _Ch) const
		{	
		return (do_tolower(_Ch));
		}

	const _Elem * tolower(_Elem *_First, const _Elem *_Last) const
		{	
		return (do_tolower(_First, _Last));
		}

	_Elem  toupper(_Elem _Ch) const
		{	
		return (do_toupper(_Ch));
		}

	const _Elem * toupper(_Elem *_First, const _Elem *_Last) const
		{	
		return (do_toupper(_First, _Last));
		}

	_Elem  widen(char _Byte) const
		{	
		return (do_widen(_Byte));
		}

	const _Elem * widen(const char *_First, const char *_Last,
		_Elem *_Dest) const
		{	
		return (do_widen(_First, _Last, _Dest));
		}

	_Elem  narrow(_Elem _Ch, char _Dflt = '\0') const
		{	
		return (do_narrow(_Ch, _Dflt));
		}

	const _Elem * narrow(const _Elem *_First, const _Elem *_Last,
		char _Dflt, char *_Dest) const
		{	
		return (do_narrow(_First, _Last, _Dflt, _Dest));
		}

	 static locale::id id;

	explicit  ctype(const mask *_Table = 0,
		bool _Deletetable = false,
		size_t _Refs = 0)
		: ctype_base(_Refs)
		{	
		{ _Locinfo _Lobj;
			_Init(_Lobj);
		}
		if (_Table != 0)
			{	
			_Tidy();
			_Ctype._Table = _Table;
			_Ctype._Delfl = _Deletetable ? -1 : 0;
			}
		}

	 ctype(const _Locinfo& _Lobj, size_t _Refs = 0)
		: ctype_base(_Refs)
		{	
		_Init(_Lobj);
		}

	static size_t __cdecl _Getcat(const locale::facet **_Ppf = 0,
		const locale *_Ploc = 0)
		{	
		if (_Ppf != 0 && *_Ppf == 0)
			*_Ppf = new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2373) ctype<_Elem>(
				_Locinfo(_Ploc->c_str()));
		return (2);
		}

	const mask * table() const throw ()
		{	
		return (_Ctype._Table);
		}

	static const mask *__cdecl classic_table() throw ()
		{	
		const _Myt& _Ctype_fac = use_facet< _Myt >(locale::classic());
		return (_Ctype_fac.table());
		}

	 static const size_t table_size =
		1 << 8;	

protected:
	virtual  ~ctype()
		{	
		_Tidy();
		}

	void  _Init(const _Locinfo& _Lobj)
		{	
		_Ctype = _Lobj._Getctype();
		}

	void  _Tidy()
		{	
		if (0 < _Ctype._Delfl)
			free((void *)_Ctype._Table);
		else if (_Ctype._Delfl < 0)
			delete[] (void *)_Ctype._Table;
		}

	virtual _Elem  do_tolower(_Elem _Ch) const
		{	
		return ((_Elem)_Tolower((unsigned char)_Ch, &_Ctype));
		}

	virtual const _Elem * do_tolower(_Elem *_First,
		const _Elem *_Last) const
		{	
		_Debug_range((const _Elem *)_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2419);
		for (; _First != _Last; ++_First)
			*_First = (_Elem)_Tolower((unsigned char)*_First, &_Ctype);
		return ((const _Elem *)_First);
		}

	virtual _Elem  do_toupper(_Elem _Ch) const
		{	
		return ((_Elem)_Toupper((unsigned char)_Ch, &_Ctype));
		}

	virtual const _Elem * do_toupper(_Elem *_First,
		const _Elem *_Last) const
		{	
		_Debug_range((const _Elem *)_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2433);
		for (; _First != _Last; ++_First)
			*_First = (_Elem)_Toupper((unsigned char)*_First, &_Ctype);
		return ((const _Elem *)_First);
		}

	virtual _Elem  do_widen(char _Byte) const
		{	
		return (_Byte);
		}

	virtual const _Elem * do_widen(const char *_First,
		const char *_Last, _Elem *_Dest) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2447);
		_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2448);
		:: memcpy(_Dest, _First, _Last - _First);
		return (_Last);
		}

	virtual _Elem  do_narrow(_Elem _Ch, char) const
		{	
		return (_Ch);
		}

	virtual const _Elem * do_narrow(const _Elem *_First,
		const _Elem *_Last, char, char *_Dest) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2461);
		_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2462);
		:: memcpy(_Dest, _First, _Last - _First);
		return (_Last);
		}

private:
	_Locinfo::_Ctypevec _Ctype;	
	};

		
template<>
	class  ctype<wchar_t>
	: public ctype_base
	{	
	typedef ctype<wchar_t> _Myt;

public:
	typedef wchar_t _Elem;
	typedef _Elem char_type;

	bool  is(mask _Maskval, _Elem _Ch) const
		{	
		return (do_is(_Maskval, _Ch));
		}

	const _Elem * is(const _Elem *_First, const _Elem *_Last,
		mask *_Dest) const
		{	
		return (do_is(_First, _Last, _Dest));
		}

	const _Elem * scan_is(mask _Maskval, const _Elem *_First,
		const _Elem *_Last) const
		{	
		return (do_scan_is(_Maskval, _First, _Last));
		}

	const _Elem * scan_not(mask _Maskval, const _Elem *_First,
		const _Elem *_Last) const
		{	
		return (do_scan_not(_Maskval, _First, _Last));
		}

	_Elem  tolower(_Elem _Ch) const
		{	
		return (do_tolower(_Ch));
		}

	const _Elem * tolower(_Elem *_First, const _Elem *_Last) const
		{	
		return (do_tolower(_First, _Last));
		}

	_Elem  toupper(_Elem _Ch) const
		{	
		return (do_toupper(_Ch));
		}

	const _Elem * toupper(_Elem *_First, const _Elem *_Last) const
		{	
		return (do_toupper(_First, _Last));
		}

	_Elem  widen(char _Byte) const
		{	
		return (do_widen(_Byte));
		}

	const char * widen(const char *_First, const char *_Last,
		_Elem *_Dest) const
		{	
		return (do_widen(_First, _Last, _Dest));
		}

	char  narrow(_Elem _Ch, char _Dflt = '\0') const
		{	
		return (do_narrow(_Ch, _Dflt));
		}

	const _Elem * narrow(const _Elem *_First, const _Elem *_Last,
		char _Dflt, char *_Dest) const
		{	
		return (do_narrow(_First, _Last, _Dflt, _Dest));
		}

	 static locale::id id;

	explicit  ctype(size_t _Refs = 0)
		: ctype_base(_Refs)
		{	
		{ _Locinfo _Lobj;
			_Init(_Lobj);
		}
		}

	 ctype(const _Locinfo& _Lobj, size_t _Refs = 0)
		: ctype_base(_Refs)
		{	
		_Init(_Lobj);
		}

	static size_t __cdecl _Getcat(const locale::facet **_Ppf = 0,
		const locale *_Ploc = 0)
		{	
		if (_Ppf != 0 && *_Ppf == 0)
			*_Ppf = new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2567) ctype<_Elem>(
				_Locinfo(_Ploc->c_str()));
		return (2);
		}

protected:
	virtual  ~ctype()
		{	
		if (_Ctype._Delfl)
			free((void *)_Ctype._Table);
		}

	void  _Init(const _Locinfo& _Lobj)
		{	
		_Ctype = _Lobj._Getctype();
		_Cvt = _Lobj._Getcvt();
		}

	virtual bool  do_is(mask _Maskval, _Elem _Ch) const
		{	
		return ((:: _Getwctype(_Ch, &_Ctype) & _Maskval) != 0);
		}

	virtual const _Elem * do_is(const _Elem *_First,
		const _Elem *_Last, mask *_Dest) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2593);
		_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2594);
		return (:: _Getwctypes(_First, _Last, _Dest, &_Ctype));
		}

	virtual const _Elem * do_scan_is(mask _Maskval,
		const _Elem *_First, const _Elem *_Last) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2601);
		for (; _First != _Last && !is(_Maskval, *_First); ++_First)
			;
		return (_First);
		}

	virtual const _Elem * do_scan_not(mask _Maskval,
		const _Elem *_First, const _Elem *_Last) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2610);
		for (; _First != _Last && is(_Maskval, *_First); ++_First)
			;
		return (_First);
		}

	virtual _Elem  do_tolower(_Elem _Ch) const
		{	
		return (_Towlower(_Ch, &_Ctype));
		}

	virtual const _Elem * do_tolower(_Elem *_First,
		const _Elem *_Last) const
		{	
		_Debug_range((const _Elem *)_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2624);
		for (; _First != _Last; ++_First)
			*_First = _Towlower(*_First, &_Ctype);
		return ((const _Elem *)_First);
		}

	virtual _Elem  do_toupper(_Elem _Ch) const
		{	
		return (_Towupper(_Ch, &_Ctype));
		}

	virtual const _Elem * do_toupper(_Elem *_First,
		const _Elem *_Last) const
		{	
		_Debug_range((const _Elem *)_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2638);
		for (; _First != _Last; ++_First)
			*_First = _Towupper(*_First, &_Ctype);
		return ((const _Elem *)_First);
		}

	_Elem  _Dowiden(char _Byte) const
		{	
		mbstate_t _Mbst = {0};
		wchar_t _Wc;
		return (_Mbrtowc(&_Wc, &_Byte, 1, &_Mbst, &_Cvt) < 0
			? (wchar_t)(wint_t)(0xFFFF) : _Wc);
		}

	virtual _Elem  do_widen(char _Byte) const
		{	
		return (_Dowiden(_Byte));
		}

	virtual const char * do_widen(const char *_First,
		const char *_Last, _Elem *_Dest) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2660);
		_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2661);
		for (; _First != _Last; ++_First, ++_Dest)
			*_Dest = _Dowiden(*_First);
		return (_First);
		}

	char  _Donarrow(_Elem _Ch, char _Dflt) const
		{	
		char _Buf[5];
		mbstate_t _Mbst = {0};
		return (_Wcrtomb(_Buf, _Ch, &_Mbst, &_Cvt) != 1
			? _Dflt : _Buf[0]);
		}

	virtual char  do_narrow(_Elem _Ch, char _Dflt) const
		{	
		return (_Donarrow(_Ch, _Dflt));
		}

	virtual const _Elem * do_narrow(const _Elem *_First,
		const _Elem *_Last, char _Dflt, char *_Dest) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2683);
		_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2684);
		for (; _First != _Last; ++_First, ++_Dest)
			*_Dest = _Donarrow(*_First, _Dflt);
		return (_First);
		}

private:
	_Locinfo::_Ctypevec _Ctype;	
	_Locinfo::_Cvtvec _Cvt;		
	};

 
		
template<>
	class  ctype<unsigned short>
	: public ctype_base
	{	
	typedef ctype<unsigned short> _Myt;

public:
	typedef unsigned short _Elem;
	typedef _Elem char_type;

	bool  is(mask _Maskval, _Elem _Ch) const
		{	
		return (do_is(_Maskval, _Ch));
		}

	const _Elem * is(const _Elem *_First, const _Elem *_Last,
		mask *_Dest) const
		{	
		return (do_is(_First, _Last, _Dest));
		}

	const _Elem * scan_is(mask _Maskval, const _Elem *_First,
		const _Elem *_Last) const
		{	
		return (do_scan_is(_Maskval, _First, _Last));
		}

	const _Elem * scan_not(mask _Maskval, const _Elem *_First,
		const _Elem *_Last) const
		{	
		return (do_scan_not(_Maskval, _First, _Last));
		}

	_Elem  tolower(_Elem _Ch) const
		{	
		return (do_tolower(_Ch));
		}

	const _Elem * tolower(_Elem *_First, const _Elem *_Last) const
		{	
		return (do_tolower(_First, _Last));
		}

	_Elem  toupper(_Elem _Ch) const
		{	
		return (do_toupper(_Ch));
		}

	const _Elem * toupper(_Elem *_First, const _Elem *_Last) const
		{	
		return (do_toupper(_First, _Last));
		}

	_Elem  widen(char _Byte) const
		{	
		return (do_widen(_Byte));
		}

	const char * widen(const char *_First, const char *_Last,
		_Elem *_Dest) const
		{	
		return (do_widen(_First, _Last, _Dest));
		}

	char  narrow(_Elem _Ch, char _Dflt = '\0') const
		{	
		return (do_narrow(_Ch, _Dflt));
		}

	const _Elem * narrow(const _Elem *_First, const _Elem *_Last,
		char _Dflt, char *_Dest) const
		{	
		return (do_narrow(_First, _Last, _Dflt, _Dest));
		}

	 static locale::id id;

	explicit  ctype(size_t _Refs = 0)
		: ctype_base(_Refs)
		{	
		{ _Locinfo _Lobj;
			_Init(_Lobj);
		}
		}

	 ctype(const _Locinfo& _Lobj, size_t _Refs = 0)
		: ctype_base(_Refs)
		{	
		_Init(_Lobj);
		}

	static size_t __cdecl _Getcat(const locale::facet **_Ppf = 0,
		const locale *_Ploc = 0)
		{	
		if (_Ppf != 0 && *_Ppf == 0)
			*_Ppf = new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2792) ctype<_Elem>(
				_Locinfo(_Ploc->c_str()));
		return (2);
		}

protected:
	virtual  ~ctype()
		{	
		if (_Ctype._Delfl)
			free((void *)_Ctype._Table);
		}

	void  _Init(const _Locinfo& _Lobj)
		{	
		_Ctype = _Lobj._Getctype();
		_Cvt = _Lobj._Getcvt();
		}

	virtual bool  do_is(mask _Maskval, _Elem _Ch) const
		{	
		return ((:: _Getwctype(_Ch, &_Ctype) & _Maskval) != 0);
		}

	virtual const _Elem * do_is(const _Elem *_First,
		const _Elem *_Last, mask *_Dest) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2818);
		_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2819);
		return ((const _Elem *):: _Getwctypes((const wchar_t *)_First,
			(const wchar_t *)_Last, _Dest, &_Ctype));
		}

	virtual const _Elem * do_scan_is(mask _Maskval,
		const _Elem *_First, const _Elem *_Last) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2827);
		for (; _First != _Last && !is(_Maskval, *_First); ++_First)
			;
		return (_First);
		}

	virtual const _Elem * do_scan_not(mask _Maskval,
		const _Elem *_First, const _Elem *_Last) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2836);
		for (; _First != _Last && is(_Maskval, *_First); ++_First)
			;
		return (_First);
		}

	virtual _Elem  do_tolower(_Elem _Ch) const
		{	
		return (_Towlower(_Ch, &_Ctype));
		}

	virtual const _Elem * do_tolower(_Elem *_First,
		const _Elem *_Last) const
		{	
		_Debug_range((const _Elem *)_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2850);
		for (; _First != _Last; ++_First)
			*_First = _Towlower(*_First, &_Ctype);
		return ((const _Elem *)_First);
		}

	virtual _Elem  do_toupper(_Elem _Ch) const
		{	
		return (_Towupper(_Ch, &_Ctype));
		}

	virtual const _Elem * do_toupper(_Elem *_First,
		const _Elem *_Last) const
		{	
		_Debug_range((const _Elem *)_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2864);
		for (; _First != _Last; ++_First)
			*_First = _Towupper(*_First, &_Ctype);
		return ((const _Elem *)_First);
		}

	_Elem  _Dowiden(char _Byte) const
		{	
		mbstate_t _Mbst = {0};
		unsigned short _Wc;
		return (_Mbrtowc((wchar_t *)&_Wc, &_Byte, 1, &_Mbst, &_Cvt) < 0
			? (unsigned short)(wint_t)(0xFFFF) : _Wc);
		}

	virtual _Elem  do_widen(char _Byte) const
		{	
		return (_Dowiden(_Byte));
		}

	virtual const char * do_widen(const char *_First,
		const char *_Last, _Elem *_Dest) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2886);
		_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2887);
		for (; _First != _Last; ++_First, ++_Dest)
			*_Dest = _Dowiden(*_First);
		return (_First);
		}

	char  _Donarrow(_Elem _Ch, char _Dflt) const
		{	
		char _Buf[5];
		mbstate_t _Mbst = {0};
		return (_Wcrtomb(_Buf, _Ch, &_Mbst, &_Cvt) != 1
			? _Dflt : _Buf[0]);
		}

	virtual char  do_narrow(_Elem _Ch, char _Dflt) const
		{	
		return (_Donarrow(_Ch, _Dflt));
		}

	virtual const _Elem * do_narrow(const _Elem *_First,
		const _Elem *_Last, char _Dflt, char *_Dest) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2909);
		_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocale", 2910);
		for (; _First != _Last; ++_First, ++_Dest)
			*_Dest = _Donarrow(*_First, _Dflt);
		return (_First);
		}

private:
	_Locinfo::_Ctypevec _Ctype;	
	_Locinfo::_Cvtvec _Cvt;		
	};
 

		
template<class _Elem>
	class ctype_byname
	: public ctype<_Elem>
	{	
public:
	explicit  ctype_byname(const char *_Locname, size_t _Refs = 0)
		: ctype<_Elem>(_Locinfo(_Locname), _Refs)
		{	
		}

 
	explicit  ctype_byname(const string& _Str, size_t _Refs = 0)
		: ctype<_Elem>(_Locinfo(_Str.c_str()), _Refs)
		{	
		}
 

protected:
	virtual  ~ctype_byname()
		{	
		}
	};

		
template<>
	class ctype_byname<char>
	: public ctype<char>
	{	
public:
	explicit  ctype_byname(const char *_Locname, size_t _Refs = 0)
		: ctype<char>(_Locinfo(_Locname), _Refs)
		{	
		}

 
	explicit  ctype_byname(const string& _Str, size_t _Refs = 0)
		: ctype<char>(_Locinfo(_Str.c_str()), _Refs)
		{	
		}
 

protected:
	virtual  ~ctype_byname()
		{	
		}
	};

 




}

 

 #pragma warning(pop)
 #pragma pack(pop)











 
 

#pragma once





#pragma once











 















#pragma once



















 











































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































extern "C" {














































































































}





















 #pragma pack(push,8)
 #pragma warning(push,3)

 

 



namespace std {
		
	namespace errc {
enum errc {	
	address_family_not_supported = 102,
	address_in_use = 100,
	address_not_available = 101,
	already_connected = 113,
	argument_list_too_long = 7,
	argument_out_of_domain = 33,
	bad_address = 14,
	bad_file_descriptor = 9,
	bad_message = 104,
	broken_pipe = 32,
	connection_aborted = 106,
	connection_already_in_progress = 103,
	connection_refused = 107,
	connection_reset = 108,
	cross_device_link = 18,
	destination_address_required = 109,
	device_or_resource_busy = 16,
	directory_not_empty = 41,
	executable_format_error = 8,
	file_exists = 17,
	file_too_large = 27,
	filename_too_long = 38,
	function_not_supported = 40,
	host_unreachable = 110,
	identifier_removed = 111,
	illegal_byte_sequence = 42,
	inappropriate_io_control_operation = 25,
	interrupted = 4,
	invalid_argument = 22,
	invalid_seek = 29,
	io_error = 5,
	is_a_directory = 21,
	message_size = 115,
	network_down = 116,
	network_reset = 117,
	network_unreachable = 118,
	no_buffer_space = 119,
	no_child_process = 10,
	no_link = 121,
	no_lock_available = 39,
	no_message_available = 120,
	no_message = 122,
	no_protocol_option = 123,
	no_space_on_device = 28,
	no_stream_resources = 124,
	no_such_device_or_address = 6,
	no_such_device = 19,
	no_such_file_or_directory = 2,
	no_such_process = 3,
	not_a_directory = 20,
	not_a_socket = 128,
	not_a_stream = 125,
	not_connected = 126,
	not_enough_memory = 12,
	not_supported = 129,
	operation_canceled = 105,
	operation_in_progress = 112,
	operation_not_permitted = 1,
	operation_not_supported = 130,
	operation_would_block = 140,
	owner_dead = 133,
	permission_denied = 13,
	protocol_error = 134,
	protocol_not_supported = 135,
	read_only_file_system = 30,
	resource_deadlock_would_occur = 36,
	resource_unavailable_try_again = 11,
	result_out_of_range = 34,
	state_not_recoverable = 127,
	stream_timeout = 137,
	text_file_busy = 139,
	timed_out = 138,
	too_many_files_open_in_system = 23,
	too_many_files_open = 24,
	too_many_links = 31,
	too_many_synbolic_link_levels = 114,
	value_too_large = 132,
	wrong_protocol_type = 136
	};
	}	

typedef errc::errc generic_errno;

		
template<class _Enum>
	struct is_error_code_enum
		: public tr1::false_type
	{	
	};

		
template<class _Enum>
	struct is_error_condition_enum
		: public tr1::false_type
	{	
	};

template<>
	struct is_error_condition_enum<generic_errno>
		: public tr1::true_type
	{	
	};

		
	namespace io_errc {
enum io_errc {	
	stream = 1
	};
	}	

typedef io_errc::io_errc _Io_errc;

		
class error_code;
class error_condition;
class error_category;

 const error_category& __cdecl generic_category();
 const error_category& __cdecl iostream_category();
 const error_category& __cdecl system_category();

class error_category
	{	
public:
	typedef int value_type;

	error_category()
		{	
		}

	virtual ~error_category()
		{	
		}

	virtual const char *name() const = 0;

	virtual string message(value_type _Errval) const = 0;

	virtual error_condition default_error_condition(value_type _Errval) const;

	virtual bool equivalent(value_type _Errval,
		const error_condition& _Cond) const;

	virtual bool equivalent(const error_code& _Code,
		value_type _Errval) const;

	bool operator==(const error_category& _Right) const
		{	
		return (this == &_Right);
		}

	bool operator!=(const error_category& _Right) const
		{	
		return (!(*this == _Right));
		}

	bool operator<(const error_category& _Right) const
		{	
		return (this < &_Right);
		}

private:
	error_category(const error_category&);	

	error_category& operator=(const error_category&);	
	};

		
class error_code
	{	
public:
	typedef int value_type;

	error_code()
		: _Myval(0),
			_Mycat(&system_category())
		{	
		}

	error_code(value_type _Val, const error_category& _Cat)
		: _Myval(_Val), _Mycat(&_Cat)
		{	
		}

	template<class _Enum>
		error_code(_Enum _Errcode,
			typename tr1::enable_if<is_error_code_enum<_Enum>::value,
				error_code>::type * = 0)
		: _Myval(0), _Mycat(0)
		{	
		*this = make_error_code(_Errcode);	
		}

	void assign(value_type _Val, const error_category& _Cat)
		{	
		_Myval = _Val;
		_Mycat = &_Cat;
		}

	template<class _Enum>
		typename tr1::enable_if<is_error_code_enum<_Enum>::value,
			error_code>::type& operator=(_Enum _Errcode)
		{	
		*this = make_error_code(_Errcode);	
		return (*this);
		}

	void clear()
		{	
		_Myval = 0;
		_Mycat = &system_category();
		}

	value_type value() const
		{	
		return (_Myval);
		}

	const error_category& category() const
		{	
		return (*_Mycat);
		}

	error_condition default_error_condition() const;

	string message() const
		{	
		return (category().message(value()));
		}

	operator ::std:: _Bool_type() const
		{	
		return (value() != 0 ? (&::std:: _Bool_struct::_Member) : 0);
		}

	bool operator !() const
		{	
		return (value() == 0);
		}

	bool operator==(const error_code& _Right) const
		{	
		return (category() == _Right.category()
			&& value() == _Right.value());
		}

	bool operator!=(const error_code& _Right) const
		{	
		return (!(*this == _Right));
		}

	bool operator<(const error_code& _Right) const
		{	
		return (category() < _Right.category()
			|| category() == _Right.category()
				&& value() < _Right.value());
		}

private:
	value_type _Myval;	
	const error_category *_Mycat;	
	};

		
class error_condition
	{	
public:
	typedef int value_type;

	error_condition()
		: _Myval(0),
			_Mycat(&generic_category())
		{	
		}

	error_condition(value_type _Val, const error_category& _Cat)
		: _Myval(_Val), _Mycat(&_Cat)
		{	
		}

	template<class _Enum>
		error_condition(_Enum _Errcode,
			typename tr1::enable_if<is_error_condition_enum<_Enum>::value,
				error_condition>::type * = 0)
		: _Myval(0), _Mycat(0)
		{	
		*this = make_error_condition(_Errcode);	
		}

	void assign(value_type _Val, const error_category& _Cat)
		{	
		_Myval = _Val;
		_Mycat = &_Cat;
		}

	template<class _Enum>
		typename tr1::enable_if<is_error_condition_enum<_Enum>::value,
			error_condition>::type& operator=(_Enum _Errcode)
		{	
		*this = make_error_condition(_Errcode);	
		return (*this);
		}

	void clear()
		{	
		_Myval = 0;
		_Mycat = &generic_category();
		}

	value_type value() const
		{	
		return (_Myval);
		}

	const error_category& category() const
		{	
		return (*_Mycat);
		}

	string message() const
		{	
		return (category().message(value()));
		}

	operator ::std:: _Bool_type() const
		{	
		return (value() != 0 ? (&::std:: _Bool_struct::_Member) : 0);
		}

	bool operator !() const
		{	
		return (value() == 0);
		}

	bool operator==(const error_condition& _Right) const
		{	
		return (category() == _Right.category()
			&& value() == _Right.value());
		}

	bool operator!=(const error_condition& _Right) const
		{	
		return (!(*this == _Right));
		}

	bool operator<(const error_condition& _Right) const
		{	
		return (category() < _Right.category()
			|| category() == _Right.category()
				&& value() < _Right.value());
		}

private:
	value_type _Myval;	
	const error_category *_Mycat;	
	};

		
inline error_condition
	error_category::default_error_condition(value_type _Errval) const
	{	
	return (error_condition(_Errval, *this));
	}

inline bool
	error_category::equivalent(value_type _Errval,
		const error_condition& _Cond) const
	{	
	return (default_error_condition(_Errval) == _Cond);
	}

inline bool
	error_category::equivalent(const error_code& _Code,
		value_type _Errval) const
	{	
	return (*this == _Code.category() && _Code.value() == _Errval);
	}

		
inline error_condition error_code::default_error_condition() const
	{	
	return (category().default_error_condition(value()));
	}

		
inline bool operator==(
	const error_code& _Left,
	const error_condition& _Right)
	{	
	return (_Left.category().equivalent(_Left.value(), _Right)
		|| _Right.category().equivalent(_Left, _Right.value()));
	}

inline bool operator==(
	const error_condition& _Left,
	const error_code& _Right)
	{	
	return (_Right.category().equivalent(_Right.value(), _Left)
		|| _Left.category().equivalent(_Right, _Left.value()));
	}

		
inline bool operator!=(
	const error_code& _Left,
	const error_condition& _Right)
	{	
	return (!(_Left == _Right));
	}

inline bool operator!=(
	const error_condition& _Left,
	const error_code& _Right)
	{	
	return (!(_Left == _Right));
	}

		
inline error_code make_error_code(generic_errno _Errno)
	{	
	return (error_code(_Errno, generic_category()));
	}

inline error_code make_error_code(_Io_errc _Errno)
	{	
	return (error_code(_Errno, iostream_category()));
	}

		
inline error_condition make_error_condition(generic_errno _Errno)
	{	
	return (error_condition(_Errno, generic_category()));
	}

inline error_condition make_error_condition(_Io_errc _Errno)
	{	
	return (error_condition(_Errno, iostream_category()));
	}

		
template<class _Kty>
	class hash;

template<>
	class hash<::std:: error_code>
		: public unary_function<error_code, size_t>
	{	
public:
	typedef ::std:: error_code _Kty;

	size_t operator()(const _Kty& _Keyval) const
		{	
		ldiv_t _Qrem = :: ldiv((long)(size_t)_Keyval.value(), 127773);

		_Qrem.rem = 16807 * _Qrem.rem - 2836 * _Qrem.quot;
		if (_Qrem.rem < 0)
			_Qrem.rem += 2147483647;
		return ((size_t)_Qrem.rem);
		}
	};

template<>
	class hash<::std:: error_condition>
		: public unary_function<error_condition, size_t>
	{	
public:
	typedef ::std:: error_condition _Kty;

	size_t operator()(const _Kty& _Keyval) const
		{	
		ldiv_t _Qrem = :: ldiv((long)(size_t)_Keyval.value(), 127773);

		_Qrem.rem = 16807 * _Qrem.rem - 2836 * _Qrem.quot;
		if (_Qrem.rem < 0)
			_Qrem.rem += 2147483647;
		return ((size_t)_Qrem.rem);
		}
	};

		
class system_error
	: public runtime_error
	{	
public:
	explicit system_error(error_code _Errcode,
		const string& _Message = "")
		: runtime_error(_Message), _Mycode(_Errcode)
		{	
		_Makestr();
		}

	system_error(error_code _Errcode,
		const char *_Message)
		: runtime_error(_Message), _Mycode(_Errcode)
		{	
		_Makestr();
		}

	system_error(error_code::value_type _Errval,
		const error_category& _Errcat,
		const string& _Message = "")
		: runtime_error(_Message), _Mycode(_Errval, _Errcat)
		{	
		_Makestr();
		}

	system_error(error_code::value_type _Errval,
		const error_category& _Errcat,
		const char *_Message)
		: runtime_error(_Message), _Mycode(_Errval, _Errcat)
		{	
		_Makestr();
		}










	const error_code& code() const throw ()
		{	
		return (_Mycode);
		}

 

 







private:
	void _Makestr()
		{	




		}

	error_code _Mycode;	

	};
}
 #pragma warning(pop)
 #pragma pack(pop)









 

 












#pragma once


























 #pragma pack(push,8)
 #pragma warning(push,3)

 #pragma warning(disable: 4412)

 

 
 

namespace std {
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

 
 

 
 
 

		
template<class _Dummy>
	class _Iosb
	{	
public:
	enum _Dummy_enum {_Dummy_enum_val = 1};	
	enum _Fmtflags
		{	
		_Fmtmask = 0xffff, _Fmtzero = 0};

	static const _Fmtflags skipws = (_Fmtflags)0x0001;
	static const _Fmtflags unitbuf = (_Fmtflags)0x0002;
	static const _Fmtflags uppercase = (_Fmtflags)0x0004;
	static const _Fmtflags showbase = (_Fmtflags)0x0008;
	static const _Fmtflags showpoint = (_Fmtflags)0x0010;
	static const _Fmtflags showpos = (_Fmtflags)0x0020;
	static const _Fmtflags left = (_Fmtflags)0x0040;
	static const _Fmtflags right = (_Fmtflags)0x0080;
	static const _Fmtflags internal = (_Fmtflags)0x0100;
	static const _Fmtflags dec = (_Fmtflags)0x0200;
	static const _Fmtflags oct = (_Fmtflags)0x0400;
	static const _Fmtflags hex = (_Fmtflags)0x0800;
	static const _Fmtflags scientific = (_Fmtflags)0x1000;
	static const _Fmtflags fixed = (_Fmtflags)0x2000;

	static const _Fmtflags hexfloat =
		(_Fmtflags)0x3000;	

	static const _Fmtflags boolalpha = (_Fmtflags)0x4000;
	static const _Fmtflags _Stdio = (_Fmtflags)0x8000;
	static const _Fmtflags adjustfield = (_Fmtflags)(0x0040
		| 0x0080 | 0x0100);
	static const _Fmtflags basefield = (_Fmtflags)(0x0200
		| 0x0400 | 0x0800);
	static const _Fmtflags floatfield = (_Fmtflags)(0x1000
		| 0x2000);

	enum _Iostate
		{	
		_Statmask = 0x17};

	static const _Iostate goodbit = (_Iostate)0x0;
	static const _Iostate eofbit = (_Iostate)0x1;
	static const _Iostate failbit = (_Iostate)0x2;
	static const _Iostate badbit = (_Iostate)0x4;
	static const _Iostate _Hardfail = (_Iostate)0x10;

	enum _Openmode
		{	
		_Openmask = 0xff};

	static const _Openmode in = (_Openmode)0x01;
	static const _Openmode out = (_Openmode)0x02;
	static const _Openmode ate = (_Openmode)0x04;
	static const _Openmode app = (_Openmode)0x08;
	static const _Openmode trunc = (_Openmode)0x10;
	static const _Openmode _Nocreate = (_Openmode)0x40;
	static const _Openmode _Noreplace = (_Openmode)0x80;
	static const _Openmode binary = (_Openmode)0x20;

	enum _Seekdir
		{	
		_Seekmask = 0x3};

	static const _Seekdir beg = (_Seekdir)0;
	static const _Seekdir cur = (_Seekdir)1;
	static const _Seekdir end = (_Seekdir)2;

	enum
		{	
		_Openprot = 0x40};
	};

template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::skipws;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::unitbuf;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::uppercase;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::showbase;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::showpoint;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::showpos;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::left;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::right;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::internal;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::dec;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::oct;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::hex;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::scientific;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::fixed;

template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags
		_Iosb<_Dummy>::hexfloat;	

template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::boolalpha;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::_Stdio;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::adjustfield;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::basefield;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::floatfield;

template<class _Dummy>
	const typename _Iosb<_Dummy>::_Iostate _Iosb<_Dummy>::goodbit;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Iostate _Iosb<_Dummy>::eofbit;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Iostate _Iosb<_Dummy>::failbit;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Iostate _Iosb<_Dummy>::badbit;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Iostate _Iosb<_Dummy>::_Hardfail;

template<class _Dummy>
	const typename _Iosb<_Dummy>::_Openmode _Iosb<_Dummy>::in;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Openmode _Iosb<_Dummy>::out;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Openmode _Iosb<_Dummy>::ate;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Openmode _Iosb<_Dummy>::app;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Openmode _Iosb<_Dummy>::trunc;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Openmode _Iosb<_Dummy>::_Nocreate;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Openmode _Iosb<_Dummy>::_Noreplace;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Openmode _Iosb<_Dummy>::binary;

template<class _Dummy>
	const typename _Iosb<_Dummy>::_Seekdir _Iosb<_Dummy>::beg;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Seekdir _Iosb<_Dummy>::cur;
template<class _Dummy>
	const typename _Iosb<_Dummy>::_Seekdir _Iosb<_Dummy>::end;

		
class  ios_base
	: public _Iosb<int>
	{	
public:
	typedef int fmtflags;
	typedef int iostate;
	typedef int openmode;
	typedef int seekdir;

	typedef ::std:: streamoff streamoff;
	typedef ::std:: streampos streampos;

	enum event
		{	
		erase_event, imbue_event, copyfmt_event};

	typedef void (__cdecl *event_callback)(event, ios_base&, int);
	typedef unsigned int io_state, open_mode, seek_dir;

			
	class failure

 
		: public system_error
		{	
	public:
		explicit failure(const string &_Message,
			const error_code& _Errcode = make_error_code(io_errc::stream))
			: system_error(_Errcode, _Message)
			{	
			}

		explicit failure(const char *_Message,
			const error_code& _Errcode = make_error_code(io_errc::stream))
			: system_error(_Errcode, _Message)
			{	
			}

 














 

 






		};

			
	class  Init
		{	
	public:
		 Init()
			{	
			_Init_ctor(this);
			}

		 ~Init()
			{	
			_Init_dtor(this);
			}

	private:
		static  void __cdecl _Init_ctor(Init *);
		static  void __cdecl _Init_dtor(Init *);

		 static int _Init_cnt;	

		static  int& __cdecl _Init_cnt_func();
		};

	ios_base&  operator=(const ios_base& _Right)
		{	
		if (this != &_Right)
			{	
			_Mystate = _Right._Mystate;
			copyfmt(_Right);
			}
		return (*this);
		}

	 operator void *() const
		{	
		return (fail() ? 0 : (void *)this);
		}

	bool  operator!() const
		{	
		return (fail());
		}

	void  clear(iostate _State, bool _Reraise)
		{	
		_Mystate = (iostate)(_State & _Statmask);
		if ((_Mystate & _Except) == 0)
			;
		else if (_Reraise)
			throw;
		else if (_Mystate & _Except & badbit)
			throw failure("ios_base::badbit set");
		else if (_Mystate & _Except & failbit)
			throw failure("ios_base::failbit set");
		else
			throw failure("ios_base::eofbit set");
		}

	void  clear(iostate _State = goodbit)
		{	
		clear(_State, false);
		}

	void  clear(io_state _State)
		{	
		clear((iostate)_State);
		}

	iostate  rdstate() const
		{	
		return (_Mystate);
		}

	void  setstate(iostate _State, bool _Exreraise)
		{	
		if (_State != goodbit)
			clear((iostate)((int)rdstate() | (int)_State), _Exreraise);
		}

	void  setstate(iostate _State)
		{	
		if (_State != goodbit)
			clear((iostate)((int)rdstate() | (int)_State), false);
		}

	void  setstate(io_state _State)
		{	
		setstate((iostate)_State);
		}

	bool  good() const
		{	
		return (rdstate() == goodbit);
		}

	bool  eof() const
		{	
		return ((int)rdstate() & (int)eofbit);
		}

	bool  fail() const
		{	
		return (((int)rdstate()
			& ((int)badbit | (int)failbit)) != 0);
		}

	bool  bad() const
		{	
		return (((int)rdstate() & (int)badbit) != 0);
		}

	iostate  exceptions() const
		{	
		return (_Except);
		}

	void  exceptions(iostate _Newexcept)
		{	
		_Except = (iostate)((int)_Newexcept & (int)_Statmask);
		clear(_Mystate);
		}

	void  exceptions(io_state _State)
		{	
		exceptions((iostate)_State);
		}

	fmtflags  flags() const
		{	
		return (_Fmtfl);
		}

	fmtflags  flags(fmtflags _Newfmtflags)
		{	
		fmtflags _Oldfmtflags = _Fmtfl;
		_Fmtfl = (fmtflags)((int)_Newfmtflags & (int)_Fmtmask);
		return (_Oldfmtflags);
		}

	fmtflags  setf(fmtflags _Newfmtflags)
		{	
		ios_base::fmtflags _Oldfmtflags = _Fmtfl;
		_Fmtfl = (fmtflags)((int)_Fmtfl
			| (int)_Newfmtflags & (int)_Fmtmask);
		return (_Oldfmtflags);
		}

	fmtflags  setf(fmtflags _Newfmtflags, fmtflags _Mask)
		{	
		ios_base::fmtflags _Oldfmtflags = _Fmtfl;
		_Fmtfl = (fmtflags)(((int)_Fmtfl & (int)~_Mask)
			| ((int)_Newfmtflags & (int)_Mask & (int)_Fmtmask));
		return (_Oldfmtflags);
		}

	void  unsetf(fmtflags _Mask)
		{	
		_Fmtfl = (fmtflags)((int)_Fmtfl & (int)~_Mask);
		}

	streamsize  precision() const
		{	
		return (_Prec);
		}

	streamsize  precision(streamsize _Newprecision)
		{	
		streamsize _Oldprecision = _Prec;
		_Prec = _Newprecision;
		return (_Oldprecision);
		}

	streamsize  width() const
		{	
		return (_Wide);
		}

	streamsize  width(streamsize _Newwidth)
		{	
		streamsize _Oldwidth = _Wide;
		_Wide = _Newwidth;
		return (_Oldwidth);
		}

	locale  getloc() const
		{	
		return (*_Ploc);
		}

	locale  imbue(const locale& _Loc)
		{	
		locale _Oldlocale = *_Ploc;
		*_Ploc = _Loc;
		_Callfns(imbue_event);
		return (_Oldlocale);
		}

	static int __cdecl xalloc()
		{	
		{ ::std:: _Lockit _Lock(2);	
			return (_Index++);
		}
		}

	long&  iword(int _Idx)
		{	
		return (_Findarr(_Idx)._Lo);
		}

	void *&  pword(int _Idx)
		{	
		return (_Findarr(_Idx)._Vp);
		}

	void  register_callback(event_callback _Pfn,
		int _Idx)
		{	
		_Calls = new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xiosbase", 483) _Fnarray(_Idx, _Pfn, _Calls);
		}

	ios_base&  copyfmt(const ios_base& _Other)
		{	
		if (this != &_Other)
			{	
			_Tidy();
			*_Ploc = *_Other._Ploc;
			_Fmtfl = _Other._Fmtfl;
			_Prec = _Other._Prec;
			_Wide = _Other._Wide;
			_Iosarray *_Ptr = _Other._Arr;

			for (_Arr = 0; _Ptr != 0; _Ptr = _Ptr->_Next)
				if (_Ptr->_Lo != 0 || _Ptr->_Vp != 0)
					{	
					iword(_Ptr->_Index) = _Ptr->_Lo;
					pword(_Ptr->_Index) = _Ptr->_Vp;
					}

			for (_Fnarray *_Pfa = _Other._Calls; _Pfa != 0;
				_Pfa = _Pfa->_Next)
				register_callback(_Pfa->_Pfn, _Pfa->_Index);

			_Callfns(copyfmt_event);	
			exceptions(_Other._Except);	
			}
		return (*this);
		}

	static bool __cdecl sync_with_stdio(bool _Newsync = true)
		{	
		{ ::std:: _Lockit _Lock(2);	
			const bool _Oldsync = _Sync;
			_Sync = _Newsync;
			return (_Oldsync);
		}
		}

	void  swap(ios_base& _Right)
		{	
		if (this != &_Right)
			{	
			::std:: swap(_Mystate, _Right._Mystate);
			::std:: swap(_Except, _Right._Except);
			::std:: swap(_Fmtfl, _Right._Fmtfl);
			::std:: swap(_Prec, _Right._Prec);
			::std:: swap(_Wide, _Right._Wide);

			::std:: swap(_Arr, _Right._Arr);
			::std:: swap(_Calls, _Right._Calls);
			::std:: swap(_Ploc, _Right._Ploc);
			}
		}

	virtual  ~ios_base()	
		{	
		_Ios_base_dtor(this);
		}

	static  void __cdecl _Addstd(ios_base *);	

	size_t _Stdstr;	

protected:
	 ios_base()
		{	
		}

	void  _Init()
		{	
		_Ploc = 0;
		_Stdstr = 0;
		_Except = goodbit;
		_Fmtfl = (fmtflags)(skipws | dec);
		_Prec = 6;
		_Wide = 0;
		_Arr = 0;
		_Calls = 0;
		clear(goodbit);
		_Ploc = new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xiosbase", 564) locale;
		}

private:
			
	struct _Iosarray
		{	
	public:
		 _Iosarray(int _Idx, _Iosarray *_Link)
			: _Next(_Link), _Index(_Idx), _Lo(0), _Vp(0)
			{	
			}

		_Iosarray *_Next;	
		int _Index;	
		long _Lo;	
		void *_Vp;	
		};

			
	struct _Fnarray
		{	
		 _Fnarray(int _Idx, event_callback _Pnew, _Fnarray *_Link)
			: _Next(_Link), _Index(_Idx), _Pfn(_Pnew)
			{	
			}

		_Fnarray *_Next;	
		int _Index;	
		event_callback _Pfn;	
		};

	void  _Callfns(event _Ev)
		{	
		for (_Fnarray *_Pfa = _Calls; _Pfa != 0; _Pfa = _Pfa->_Next)
			(*_Pfa->_Pfn)(_Ev, *this, _Pfa->_Index);
		}

	_Iosarray&  _Findarr(int _Idx)
		{	
		_Iosarray *_Ptr1, *_Ptr2;

		for (_Ptr1 = _Arr, _Ptr2 = 0; _Ptr1 != 0; _Ptr1 = _Ptr1->_Next)
			if (_Ptr1->_Index == _Idx)
				return (*_Ptr1);	
			else if (_Ptr2 == 0 && _Ptr1->_Lo == 0 && _Ptr1->_Vp == 0)
				_Ptr2 = _Ptr1;	

		if (_Ptr2 != 0)
			{	
			_Ptr2->_Index = _Idx;
			return (*_Ptr2);
			}

		_Arr = new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xiosbase", 618) _Iosarray(_Idx, _Arr);	
		return (*_Arr);
		}

	void  _Tidy()
		{	
		_Callfns(erase_event);
		_Iosarray *_Ptr1, *_Ptr2;

		for (_Ptr1 = _Arr; _Ptr1 != 0; _Ptr1 = _Ptr2)
			{	
			_Ptr2 = _Ptr1->_Next;
			::std:: _DebugHeapDelete(_Ptr1);
			}
		_Arr = 0;

		_Fnarray *_Pfa1, *_Pfa2;
		for (_Pfa1 = _Calls; _Pfa1 != 0; _Pfa1 = _Pfa2)
			{	
			_Pfa2 = _Pfa1->_Next;
			::std:: _DebugHeapDelete(_Pfa1);
			}
		_Calls = 0;
		}

	iostate _Mystate;	
	iostate _Except;	
	fmtflags _Fmtfl;	
	streamsize _Prec;	
	streamsize _Wide;	
	_Iosarray *_Arr;	
	_Fnarray *_Calls;	
	locale *_Ploc;	

	 static int _Index;
	 static bool _Sync;

	static  void __cdecl _Ios_base_dtor(ios_base *);
	};





}

 

 #pragma warning(pop)
 #pragma pack(pop)










 #pragma pack(push,8)
 #pragma warning(push,3)

 
 

namespace std {
		
template<class _Elem,
	class _Traits>
	class basic_streambuf
	{	
	typedef basic_streambuf<_Elem, _Traits> _Myt;

protected:
	 basic_streambuf()
		: _Plocale(new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\streambuf", 24) locale)
		{	
		_Init();
		}

	 basic_streambuf(_Uninitialized)
		: _Mylock(_Noinit)
		{	
		}

	 basic_streambuf(const _Myt& _Right)
		: _Plocale(new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\streambuf", 35) locale(_Right.getloc()))
		{	
		_Init();
		setp(_Right.pbase(), _Right.pptr(), _Right.epptr());
		setg(_Right.eback(), _Right.gptr(), _Right.egptr());
		}

	_Myt&  operator=(const _Myt& _Right)
		{	
		if (this != &_Right)
			{	
			setp(_Right.pbase(), _Right.pptr(), _Right.epptr());
			setg(_Right.eback(), _Right.gptr(), _Right.egptr());
			pubimbue(_Right.getloc());
			}
		return (*this);
		}

	void  swap(_Myt& _Right)
		{	
		if (this != &_Right)
			{	
			_Elem *_Tfirst = pbase();
			_Elem *_Tnext = pptr();
			_Elem *_Tend = epptr();
			setp(_Right.pbase(), _Right.pptr(), _Right.epptr());
			_Right.setp(_Tfirst, _Tnext, _Tend);

			_Tfirst = eback();
			_Tnext = gptr();
			_Tend = egptr();
			setg(_Right.eback(), _Right.gptr(), _Right.egptr());
			_Right.setg(_Tfirst, _Tnext, _Tend);

			locale _Oldlocale = pubimbue(_Right.getloc());
			_Right.pubimbue(_Oldlocale);
			}
		}

public:
	typedef _Elem char_type;
	typedef _Traits traits_type;

	virtual  ~basic_streambuf()
		{	
		::std:: _DebugHeapDelete(_Plocale);
		}

	typedef typename _Traits::int_type int_type;
	typedef typename _Traits::pos_type pos_type;
	typedef typename _Traits::off_type off_type;

	pos_type  pubseekoff(off_type _Off,
		ios_base::seekdir _Way,
		ios_base::openmode _Mode = ios_base::in | ios_base::out)
		{	
		return (seekoff(_Off, _Way, _Mode));
		}

	pos_type  pubseekoff(off_type _Off,
		ios_base::seek_dir _Way,
		ios_base::open_mode _Mode)
		{	
		return (pubseekoff(_Off, (ios_base::seekdir)_Way,
			(ios_base::openmode)_Mode));
		}

	pos_type  pubseekpos(pos_type _Pos,
		ios_base::openmode _Mode = ios_base::in | ios_base::out)
		{	
		return (seekpos(_Pos, _Mode));
		}

	pos_type  pubseekpos(pos_type _Pos,
		ios_base::open_mode _Mode)
		{	
		return (seekpos(_Pos, (ios_base::openmode)_Mode));
		}

	_Myt * pubsetbuf(_Elem *_Buffer,
		streamsize _Count)
		{	
		return (setbuf(_Buffer, _Count));
		}

	locale  pubimbue(const locale &_Newlocale)
		{	
		locale _Oldlocale = *_Plocale;
		imbue(_Newlocale);
		*_Plocale = _Newlocale;
		return (_Oldlocale);
		}

	locale  getloc() const
		{	
		return (*_Plocale);
		}

	streamsize  in_avail()
		{	
		streamsize _Res = _Gnavail();
		return (0 < _Res ? _Res : showmanyc());
		}

	int  pubsync()
		{	
		return (sync());
		}

	int_type  sbumpc()
		{	
		return (0 < _Gnavail()
			? _Traits::to_int_type(*_Gninc()) : uflow());
		}

	int_type  sgetc()
		{	
		return (0 < _Gnavail()
			? _Traits::to_int_type(*gptr()) : underflow());
		}

	streamsize  sgetn(_Elem *_Ptr,
		streamsize _Count)
		{	
		return (xsgetn(_Ptr, _Count));
		}

	int_type  snextc()
		{	
		return (1 < _Gnavail()
			? _Traits::to_int_type(*_Gnpreinc())
			: _Traits::eq_int_type(_Traits::eof(), sbumpc())
				? _Traits::eof() : sgetc());
		}

	int_type  sputbackc(_Elem _Ch)
		{	
		return (gptr() != 0 && eback() < gptr()
			&& _Traits::eq(_Ch, gptr()[-1])
			? _Traits::to_int_type(*_Gndec())
			: pbackfail(_Traits::to_int_type(_Ch)));
		}

	void  stossc()
		{	
		if (0 < _Gnavail())
			_Gninc();
		else
			uflow();
		}

	int_type  sungetc()
		{	
		return (gptr() != 0 && eback() < gptr()
			? _Traits::to_int_type(*_Gndec()) : pbackfail());
		}

	int_type  sputc(_Elem _Ch)
		{	
		return (0 < _Pnavail()
			? _Traits::to_int_type(*_Pninc() = _Ch)
			: overflow(_Traits::to_int_type(_Ch)));
		}

	streamsize  sputn(const _Elem *_Ptr,
		streamsize _Count)
		{	
		return (xsputn(_Ptr, _Count));
		}

	virtual void  _Lock()
		{	
		_Mylock._Lock();
		}

	virtual void  _Unlock()
		{	
		_Mylock._Unlock();
		}

protected:
	_Elem * eback() const
		{	
		return (*_IGfirst);
		}

	_Elem * gptr() const
		{	
		return (*_IGnext);
		}

	_Elem * pbase() const
		{	
		return (*_IPfirst);
		}

	_Elem * pptr() const
		{	
		return (*_IPnext);
		}

	_Elem * egptr() const
		{	
		return (*_IGnext + *_IGcount);
		}

	void  gbump(int _Off)
		{	
		*_IGcount -= _Off;
		*_IGnext += _Off;
		}

	void  setg(_Elem *_First, _Elem *_Next, _Elem *_Last)
		{	
		*_IGfirst = _First;
		*_IGnext = _Next;
		*_IGcount = (int)(_Last - _Next);
		}

	_Elem * epptr() const
		{	
		return (*_IPnext + *_IPcount);
		}

	_Elem * _Gndec()
		{	
		++*_IGcount;
		return (--*_IGnext);
		}

	_Elem * _Gninc()
		{	
		--*_IGcount;
		return ((*_IGnext)++);
		}

	_Elem * _Gnpreinc()
		{	
		--*_IGcount;
		return (++(*_IGnext));
		}

	streamsize  _Gnavail() const
		{	
		return (*_IGnext != 0 ? *_IGcount : 0);
		}

	void  pbump(int _Off)
		{	
		*_IPcount -= _Off;
		*_IPnext += _Off;
		}

	void  setp(_Elem *_First, _Elem *_Last)
		{	
		*_IPfirst = _First;
		*_IPnext = _First;
		*_IPcount = (int)(_Last - _First);
		}

	void  setp(_Elem *_First, _Elem *_Next, _Elem *_Last)
		{	
		*_IPfirst = _First;
		*_IPnext = _Next;
		*_IPcount = (int)(_Last - _Next);
		}

	_Elem * _Pninc()
		{	
		--*_IPcount;
		return ((*_IPnext)++);
		}

	streamsize  _Pnavail() const
		{	
		return (*_IPnext != 0 ? *_IPcount : 0);
		}

	void  _Init()
		{	
		_IGfirst = &_Gfirst;
		_IPfirst = &_Pfirst;
		_IGnext = &_Gnext;
		_IPnext = &_Pnext;
		_IGcount = &_Gcount;
		_IPcount = &_Pcount;
		setp(0, 0);
		setg(0, 0, 0);
		}

	void  _Init(_Elem **_Gf, _Elem **_Gn, int *_Gc,
		_Elem **_Pf, _Elem **_Pn, int *_Pc)
		{	
		_IGfirst = _Gf;
		_IPfirst = _Pf;
		_IGnext = _Gn;
		_IPnext = _Pn;
		_IGcount = _Gc;
		_IPcount = _Pc;
		}

	virtual int_type  overflow(int_type = _Traits::eof())
		{	
		return (_Traits::eof());
		}

	virtual int_type  pbackfail(int_type = _Traits::eof())
		{	
		return (_Traits::eof());
		}

	virtual streamsize  showmanyc()
		{	
		return (0);
		}

	virtual int_type  underflow()
		{	
		return (_Traits::eof());
		}

	virtual int_type  uflow()
		{	
		return (_Traits::eq_int_type(_Traits::eof(), underflow())
			? _Traits::eof() : _Traits::to_int_type(*_Gninc()));
		}

	virtual streamsize  xsgetn(_Elem * _Ptr,
		streamsize _Count)
		{	
		int_type _Meta;
		streamsize _Size, _Copied;

		for (_Copied = 0; 0 < _Count; )
			if (0 < (_Size = _Gnavail()))
				{	
				if (_Count < _Size)
					_Size = _Count;
				_Traits::copy(_Ptr, gptr(), (size_t)_Size);
				_Ptr += _Size;
				_Copied += _Size;
				_Count -= _Size;
				gbump((int)_Size);
				}
			else if (_Traits::eq_int_type(_Traits::eof(), _Meta = uflow()))
				break;	
			else
				{	
				*_Ptr++ = _Traits::to_char_type(_Meta);
				++_Copied;
				--_Count;
				}

		return (_Copied);
		}

	virtual streamsize  xsputn(const _Elem *_Ptr,
		streamsize _Count)
		{	
		streamsize _Size, _Copied;

		for (_Copied = 0; 0 < _Count; )
			if (0 < (_Size = _Pnavail()))
				{	
				if (_Count < _Size)
					_Size = _Count;
				_Traits::copy(pptr(), _Ptr, (size_t)_Size);
				_Ptr += _Size;
				_Copied += _Size;
				_Count -= _Size;
				pbump((int)_Size);
				}
			else if (_Traits::eq_int_type(_Traits::eof(),
				overflow(_Traits::to_int_type(*_Ptr))))
				break;	
			else
				{	
				++_Ptr;
				++_Copied;
				--_Count;
				}

		return (_Copied);
		}

	virtual pos_type  seekoff(off_type,
		ios_base::seekdir,
		ios_base::openmode = ios_base::in | ios_base::out)
		{	
		return (streampos(_BADOFF));
		}

	virtual pos_type  seekpos(pos_type,
		ios_base::openmode = ios_base::in | ios_base::out)
		{	
		return (streampos(_BADOFF));
		}

	virtual _Myt * setbuf(_Elem *, streamsize)
		{	
		return (this);
		}

	virtual int  sync()
		{	
		return (0);
		}

	virtual void  imbue(const locale&)
		{	
		}

private:
	_Mutex _Mylock;	
	_Elem *_Gfirst;	
	_Elem *_Pfirst;	
	_Elem **_IGfirst;	
	_Elem **_IPfirst;	
	_Elem *_Gnext;	
	_Elem *_Pnext;	
	_Elem **_IGnext;	
	_Elem **_IPnext;	

	int _Gcount;	
	int _Pcount;	
	int *_IGcount;	
	int *_IPcount;	

	locale *_Plocale;	
	};

 







		
template<class _Elem,
	class _Traits>
	class istreambuf_iterator
		: public iterator<input_iterator_tag,
			_Elem, typename _Traits::off_type, _Elem *, _Elem&>
	{	
	typedef istreambuf_iterator<_Elem, _Traits> _Myt;
public:
	typedef _Elem char_type;
	typedef _Traits traits_type;
	typedef basic_streambuf<_Elem, _Traits> streambuf_type;
	typedef basic_istream<_Elem, _Traits> istream_type;

	typedef typename traits_type::int_type int_type;

	istreambuf_iterator(streambuf_type *_Sb = 0) throw ()
		: _Strbuf(_Sb), _Got(_Sb == 0)
		{	
		}

	istreambuf_iterator(istream_type& _Istr) throw ()
		: _Strbuf(_Istr.rdbuf()), _Got(_Istr.rdbuf() == 0)
		{	
		}

	_Elem operator*() const
		{	
		if (!_Got)
			_Peek();

 
		if (_Strbuf == 0)
			_Debug_message(L"istreambuf_iterator is not dereferencable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\streambuf", 507);
 

		return (_Val);
		}

	_Myt& operator++()
		{	
 
		if (_Strbuf == 0)
			_Debug_message(L"istreambuf_iterator is not incrementable", L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\streambuf", 517);
 

		_Inc();
		return (*this);
		}

	_Myt operator++(int)
		{	
		if (!_Got)
			_Peek();
		_Myt _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	bool equal(const _Myt& _Right) const
		{	
		if (!_Got)
			_Peek();
		if (!_Right._Got)
			_Right._Peek();
		return (_Strbuf == 0 && _Right._Strbuf == 0
			|| _Strbuf != 0 && _Right._Strbuf != 0);
		}

private:
	void _Inc()
		{	
		if (_Strbuf == 0
			|| traits_type::eq_int_type(traits_type::eof(),
				_Strbuf->sbumpc()))
			_Strbuf = 0, _Got = true;
		else
			_Got = false;
		}

	_Elem _Peek() const
		{	
		int_type _Meta;
		if (_Strbuf == 0
			|| traits_type::eq_int_type(traits_type::eof(),
				_Meta = _Strbuf->sgetc()))
			_Strbuf = 0;
		else
			_Val = traits_type::to_char_type(_Meta);
		_Got = true;
		return (_Val);
		}

	mutable streambuf_type *_Strbuf;	
	mutable bool _Got;	
	mutable _Elem _Val;	
	};

template<class _Elem,
	class _Traits>
	struct _Is_checked_helper<istreambuf_iterator<_Elem, _Traits> >
	: public ::std:: tr1::true_type
	{	
	};

		
template<class _Elem,
	class _Traits> inline
	bool  operator==(
		const istreambuf_iterator<_Elem, _Traits>& _Left,
		const istreambuf_iterator<_Elem, _Traits>& _Right)
	{	
	return (_Left.equal(_Right));
	}

template<class _Elem,
	class _Traits> inline
	bool  operator!=(
		const istreambuf_iterator<_Elem, _Traits>& _Left,
		const istreambuf_iterator<_Elem, _Traits>& _Right)
	{	
	return (!(_Left == _Right));
	}

		
template<class _Elem,
	class _Traits>
	class ostreambuf_iterator
		: public _Outit
	{	
	typedef ostreambuf_iterator<_Elem, _Traits> _Myt;
public:
	typedef _Elem char_type;
	typedef _Traits traits_type;
	typedef basic_streambuf<_Elem, _Traits> streambuf_type;
	typedef basic_ostream<_Elem, _Traits> ostream_type;

	ostreambuf_iterator(streambuf_type *_Sb) throw ()
		: _Failed(false), _Strbuf(_Sb)
		{	
		}

	ostreambuf_iterator(ostream_type& _Ostr) throw ()
		: _Failed(false), _Strbuf(_Ostr.rdbuf())
		{	
		}

	_Myt& operator=(_Elem _Right)
		{	
		if (_Strbuf == 0
			|| traits_type::eq_int_type(_Traits::eof(),
				_Strbuf->sputc(_Right)))
			_Failed = true;
		return (*this);
		}

	_Myt& operator*()
		{	
		return (*this);
		}

	_Myt& operator++()
		{	
		return (*this);
		}

	_Myt& operator++(int)
		{	
		return (*this);
		}

	bool failed() const throw ()
		{	
		return (_Failed);
		}

private:
	bool _Failed;	
	streambuf_type *_Strbuf;	
	};

template<class _Elem,
	class _Traits>
	struct _Is_checked_helper<ostreambuf_iterator<_Elem, _Traits> >
	: public ::std:: tr1::true_type
	{	
	};
}

 

 #pragma warning(pop)
 #pragma pack(pop)










 #pragma pack(push,8)
 #pragma warning(push,3)

 
 

 #pragma warning(disable: 4189 4275)

		


 
extern "C" {
 

extern  float __cdecl _Stofx(const char *,
	    char **,
	long, int *);
extern  double __cdecl _Stodx(const char *,
	    char **,
	long, int *);
extern  long double __cdecl _Stoldx(const char *,
	    char **,
	long, int *);
extern  long __cdecl _Stolx(const char *,
	    char **,
	int, int *);
extern  unsigned long __cdecl _Stoulx(const char *,
	    char **,
	int, int *);
extern  __int64 __cdecl _Stollx(const char *,
	    char **,
	int, int *);
extern  unsigned __int64 __cdecl _Stoullx(const char *,
	    char **,
	int, int *);

 
}
 


namespace std {
		
template<class _Elem>
	class numpunct
		: public locale::facet
	{	
public:
	typedef basic_string<_Elem, char_traits<_Elem>, allocator<_Elem> >
		string_type;
	typedef _Elem char_type;

	  static locale::id id;	

	_Elem decimal_point() const
		{	
		return (do_decimal_point());
		}

	_Elem thousands_sep() const
		{	
		return (do_thousands_sep());
		}

	string grouping() const
		{	
		return (do_grouping());
		}

	string_type falsename() const
		{	
		return (do_falsename());
		}

	string_type truename() const
		{	
		return (do_truename());
		}

	explicit numpunct(size_t _Refs = 0)
		: locale::facet(_Refs)
		{	
		{ _Locinfo _Lobj;
			_Init(_Lobj);
			if (_Kseparator == 0)
				_Kseparator =	
					_Maklocchr(',', (_Elem *)0, _Lobj._Getcvt());
		}
		}

	numpunct(const _Locinfo& _Lobj, size_t _Refs = 0, bool _Isdef = false)
		: locale::facet(_Refs)
		{	
		_Init(_Lobj, _Isdef);
		}

	static size_t _Getcat(const locale::facet **_Ppf = 0,
		const locale *_Ploc = 0)
		{	
		if (_Ppf != 0 && *_Ppf == 0)
			*_Ppf = new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocnum", 113) numpunct<_Elem>(
				_Locinfo(_Ploc->c_str()), 0, true);
		return (4);
		}

protected:
	virtual  ~numpunct()
		{	
		_Tidy();
		}

	numpunct(const char *_Locname, size_t _Refs = 0, bool _Isdef = false)
		: locale::facet(_Refs)
		{	
		{ _Locinfo _Lobj(_Locname);
			_Init(_Lobj, _Isdef);
		}
		}

	void _Init(const _Locinfo& _Lobj, bool _Isdef = false)
		{	
		const lconv *_Ptr = _Lobj._Getlconv();

		_Grouping = 0;
		_Falsename = 0;
		_Truename = 0;

		try {
		_Grouping = _Maklocstr(_Isdef ? "" : _Ptr->grouping, (char *)0, _Lobj._Getcvt());
		_Falsename = _Maklocstr(_Lobj._Getfalse(), (_Elem *)0, _Lobj._Getcvt());
		_Truename = _Maklocstr(_Lobj._Gettrue(), (_Elem *)0, _Lobj._Getcvt());
		} catch (...) {
		_Tidy();
		throw;
		}

		_Dp = _Maklocchr(_Ptr->decimal_point[0], (_Elem *)0, _Lobj._Getcvt());
		_Kseparator =
			_Maklocchr(_Ptr->thousands_sep[0], (_Elem *)0, _Lobj._Getcvt());

		if (_Isdef)
			{	

			_Dp = _Maklocchr('.', (_Elem *)0, _Lobj._Getcvt());
			_Kseparator = _Maklocchr(',', (_Elem *)0, _Lobj._Getcvt());
			}
		}

	virtual _Elem  do_decimal_point() const
		{	
		return (_Dp);
		}

	virtual _Elem  do_thousands_sep() const
		{	
		return (_Kseparator);
		}

	virtual string  do_grouping() const
		{	
		return (string(_Grouping));
		}

	virtual string_type  do_falsename() const
		{	
		return (string_type(_Falsename));
		}

	virtual string_type  do_truename() const
		{	
		return (string_type(_Truename));
		}

private:
	void _Tidy()
		{	
		::std:: _DebugHeapDelete((void *)(void *)_Grouping);
		::std:: _DebugHeapDelete((void *)(void *)_Falsename);
		::std:: _DebugHeapDelete((void *)(void *)_Truename);
		}

	const char *_Grouping;	
	_Elem _Dp;	
	_Elem _Kseparator;	
	const _Elem *_Falsename;	
	const _Elem *_Truename;	
	};

		
template<class _Elem>
	class numpunct_byname
		: public numpunct<_Elem>
	{	
public:
	explicit numpunct_byname(const char *_Locname, size_t _Refs = 0)
		: numpunct<_Elem>(_Locname, _Refs)
		{	
		}

 
	explicit numpunct_byname(const string& _Str, size_t _Refs = 0)
		: numpunct<_Elem>(_Str.c_str(), _Refs)
		{	
		}
 

protected:
	virtual  ~numpunct_byname()
		{	
		}
	};

		
template<class _Elem>
	 locale::id numpunct<_Elem>::id;

		
template<class _Elem,
	class _InIt = istreambuf_iterator<_Elem, char_traits<_Elem> > >
	class num_get
		: public locale::facet
	{	
public:
	typedef numpunct<_Elem> _Mypunct;
	typedef basic_string<_Elem, char_traits<_Elem>, allocator<_Elem> >
		_Mystr;

	static size_t __cdecl _Getcat(const locale::facet **_Ppf = 0,
		const locale *_Ploc = 0)
		{	
		if (_Ppf != 0 && *_Ppf == 0)
			*_Ppf = new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocnum", 245) num_get<_Elem, _InIt>(
				_Locinfo(_Ploc->c_str()));
		return (4);
		}

	 static locale::id id;	

protected:
	virtual  ~num_get()
		{	
		}

	void _Init(const _Locinfo& _Lobj)
		{	
		_Cvt = _Lobj._Getcvt();
		}

	_Locinfo::_Cvtvec _Cvt;		

public:
	explicit  num_get(size_t _Refs = 0)
		: locale::facet(_Refs)
		{	
		{ _Locinfo _Lobj;
			_Init(_Lobj);
		}
		}

	 num_get(const _Locinfo& _Lobj, size_t _Refs = 0)
		: locale::facet(_Refs)
		{	
		_Init(_Lobj);
		}

	typedef _Elem char_type;
	typedef _InIt iter_type;

	_InIt  get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase,	ios_base::iostate& _State,
			_Bool& _Val) const
		{	
		return (do_get(_First, _Last, _Iosbase, _State, _Val));
		}

	_InIt  get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase,	ios_base::iostate& _State,
			unsigned short& _Val) const
		{	
		return (do_get(_First, _Last, _Iosbase, _State, _Val));
		}

	_InIt  get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase,	ios_base::iostate& _State,
			unsigned int& _Val) const
		{	
		return (do_get(_First, _Last, _Iosbase, _State, _Val));
		}

	_InIt  get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			long& _Val) const
		{	
		return (do_get(_First, _Last, _Iosbase, _State, _Val));
		}

	_InIt  get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			unsigned long& _Val) const
		{	
		return (do_get(_First, _Last, _Iosbase, _State, _Val));
		}

 
	_InIt  get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			__int64& _Val) const
		{	
		return (do_get(_First, _Last, _Iosbase, _State, _Val));
		}

	_InIt  get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			unsigned __int64& _Val) const
		{	
		return (do_get(_First, _Last, _Iosbase, _State, _Val));
		}
 

	_InIt  get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			float& _Val) const
		{	
		return (do_get(_First, _Last, _Iosbase, _State, _Val));
		}

	_InIt  get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			double& _Val) const
		{	
		return (do_get(_First, _Last, _Iosbase, _State, _Val));
		}

	_InIt  get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			long double& _Val) const
		{	
		return (do_get(_First, _Last, _Iosbase, _State, _Val));
		}

	_InIt  get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			void *& _Val) const
		{	
		return (do_get(_First, _Last, _Iosbase, _State, _Val));
		}

protected:
	virtual _InIt  do_get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			_Bool& _Val) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocnum", 366);
		int _Ans = -1;	

		if (_Iosbase.flags() & ios_base::boolalpha)
			{	
			typedef typename _Mystr::size_type _Mystrsize;
			const _Mypunct& _Punct_fac = use_facet< _Mypunct >(_Iosbase.getloc());
			_Mystr _Str((_Mystrsize)1, (char_type)0);
			_Str += _Punct_fac.falsename();
			_Str += (char_type)0;
			_Str += _Punct_fac.truename();	
			_Ans = _Getloctxt(_First, _Last, (size_t)2, _Str.c_str());
			}
		else
			{	
			char _Ac[32], *_Ep;
			int _Errno = 0;
			const unsigned long _Ulo = :: _Stoulx(_Ac, &_Ep,
				_Getifld(_Ac, _First, _Last, _Iosbase.flags(),
					_Iosbase.getloc()), &_Errno);
			if (_Ep != _Ac && _Errno == 0 && _Ulo <= 1)
				_Ans = _Ulo;
			}

		if (_First == _Last)
			_State |= ios_base::eofbit;
		if (_Ans < 0)
			_State |= ios_base::failbit;
		else
			_Val = _Ans != 0;	
		return (_First);
		}

	virtual _InIt  do_get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			unsigned short& _Val) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocnum", 403);
		char _Ac[32], *_Ep;
		int _Errno = 0;
		int _Base = _Getifld(_Ac, _First, _Last, _Iosbase.flags(),
			_Iosbase.getloc());	
		char *_Ptr = _Ac[0] == '-' ? _Ac + 1 : _Ac;	
		const unsigned long _Ans =
			:: _Stoulx(_Ptr, &_Ep, _Base, &_Errno);	

		if (_First == _Last)
			_State |= ios_base::eofbit;
		if (_Ep == _Ptr || _Errno != 0 || 0xffff < _Ans)
			_State |= ios_base::failbit;
		else
			_Val = (unsigned short)(_Ac[0] == '-'
				? 0 -_Ans : _Ans);	
		return (_First);
		}

	virtual _InIt  do_get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			unsigned int& _Val) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocnum", 426);
		char _Ac[32], *_Ep;
		int _Errno = 0;
		int _Base = _Getifld(_Ac, _First, _Last, _Iosbase.flags(),
			_Iosbase.getloc());	
		char *_Ptr = _Ac[0] == '-' ? _Ac + 1 : _Ac;	
		const unsigned long _Ans =
			:: _Stoulx(_Ptr, &_Ep, _Base, &_Errno);	

		if (_First == _Last)
			_State |= ios_base::eofbit;
		if (_Ep == _Ptr || _Errno != 0 || 0xffffffff < _Ans)
			_State |= ios_base::failbit;
		else
			_Val = _Ac[0] == '-' ? 0 -_Ans : _Ans;	
		return (_First);
		}

	virtual _InIt  do_get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			long& _Val) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocnum", 448);
		char _Ac[32], *_Ep;
		int _Errno = 0;
		const long _Ans = :: _Stolx(_Ac, &_Ep,
			_Getifld(_Ac, _First, _Last, _Iosbase.flags(),
				_Iosbase.getloc()), &_Errno);	

		if (_First == _Last)
			_State |= ios_base::eofbit;
		if (_Ep == _Ac || _Errno != 0)
			_State |= ios_base::failbit;
		else
			_Val = _Ans;	
		return (_First);
		}

	virtual _InIt  do_get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			unsigned long& _Val) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocnum", 468);
		char _Ac[32], *_Ep;
		int _Errno = 0;
		const unsigned long _Ans = :: _Stoulx(_Ac, &_Ep,
			_Getifld(_Ac, _First, _Last, _Iosbase.flags(),
				_Iosbase.getloc()), &_Errno);	

		if (_First == _Last)
			_State |= ios_base::eofbit;
		if (_Ep == _Ac || _Errno != 0)
			_State |= ios_base::failbit;
		else
			_Val = _Ans;	
		return (_First);
		}

 
	virtual _InIt  do_get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			__int64& _Val) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocnum", 489);
		char _Ac[32], *_Ep;
		int _Errno = 0;
		const __int64 _Ans = :: _Stollx(_Ac, &_Ep,
			_Getifld(_Ac, _First, _Last, _Iosbase.flags(),
				_Iosbase.getloc()), &_Errno);	

		if (_First == _Last)
			_State |= ios_base::eofbit;
		if (_Ep == _Ac || _Errno != 0)
			_State |= ios_base::failbit;
		else
			_Val = _Ans;	
		return (_First);
		}

	virtual _InIt  do_get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			unsigned __int64& _Val) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocnum", 509);
		char _Ac[32], *_Ep;
		int _Errno = 0;
		const unsigned __int64 _Ans = :: _Stoullx(_Ac, &_Ep,
			_Getifld(_Ac, _First, _Last, _Iosbase.flags(),
				_Iosbase.getloc()), &_Errno);	

		if (_First == _Last)
			_State |= ios_base::eofbit;
		if (_Ep == _Ac || _Errno != 0)
			_State |= ios_base::failbit;
		else
			_Val = _Ans;	
		return (_First);
		}
 

	virtual _InIt  do_get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			float& _Val) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocnum", 530);
		char _Ac[8 + 36 + 16], *_Ep;
		int _Errno = 0;
		int _Hexexp = 0;
		float _Ans = :: _Stofx(_Ac, &_Ep,
			_Getffld(_Ac, _First, _Last,
				_Iosbase, &_Hexexp), &_Errno);	

		if (_Hexexp != 0)
			_Ans = :: ldexpf(_Ans, 4 * _Hexexp);

		if (_First == _Last)
			_State |= ios_base::eofbit;
		if (_Ep == _Ac || _Errno != 0)
			_State |= ios_base::failbit;
		else
			_Val = _Ans;	
		return (_First);
		}

	virtual _InIt  do_get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			double& _Val) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocnum", 554);
		char _Ac[8 + 36 + 16], *_Ep;
		int _Errno = 0;
		int _Hexexp = 0;
		double _Ans = :: _Stodx(_Ac, &_Ep,
			_Getffld(_Ac, _First, _Last,
				_Iosbase, &_Hexexp), &_Errno);	

		if (_Hexexp != 0)
			_Ans = :: ldexp(_Ans, 4 * _Hexexp);

		if (_First == _Last)
			_State |= ios_base::eofbit;
		if (_Ep == _Ac || _Errno != 0)
			_State |= ios_base::failbit;
		else
			_Val = _Ans;	
		return (_First);
		}

	virtual _InIt  do_get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			long double& _Val) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocnum", 578);
		char _Ac[8 + 36 + 16], *_Ep;
		int _Errno = 0;
		int _Hexexp = 0;
		long double _Ans = :: _Stoldx(_Ac, &_Ep,
			_Getffld(_Ac, _First, _Last,
				_Iosbase, &_Hexexp), &_Errno);	

		if (_Hexexp != 0)
			_Ans = :: ldexpl(_Ans, 4 * _Hexexp);

		if (_First == _Last)
			_State |= ios_base::eofbit;
		if (_Ep == _Ac || _Errno != 0)
			_State |= ios_base::failbit;
		else
			_Val = _Ans;	
		return (_First);
		}

	virtual _InIt  do_get(_InIt _First, _InIt _Last,
		ios_base& _Iosbase, ios_base::iostate& _State,
			void *& _Val) const
		{	
		_Debug_range(_First, _Last, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocnum", 602);
		char _Ac[32], *_Ep;
		int _Errno = 0;

 
		int _Base = _Getifld(_Ac, _First, _Last, ios_base::hex,
			_Iosbase.getloc());	
		const unsigned __int64 _Ans =
			(sizeof (void *) == sizeof (unsigned long))
				? (unsigned __int64):: _Stoulx(_Ac, &_Ep, _Base, &_Errno)
				: :: _Stoullx(_Ac, &_Ep, _Base, &_Errno);

 





		if (_First == _Last)
			_State |= ios_base::eofbit;
		if (_Ep == _Ac || _Errno != 0)
			_State |= ios_base::failbit;
		else
			_Val = (void *)((char *)0 + _Ans);	
		return (_First);
		}

private:
	int __cdecl _Getifld(char *_Ac,
		_InIt& _First, _InIt& _Last, ios_base::fmtflags _Basefield,
			const locale& _Loc) const
		{	
		const _Mypunct& _Punct_fac = use_facet< _Mypunct >(_Loc);
		const string _Grouping = _Punct_fac.grouping();
		const _Elem _Kseparator = _Grouping.size() == 0
			? (_Elem)0 : _Punct_fac.thousands_sep();
		const _Elem _E0 = _Maklocchr('0', (_Elem *)0, _Cvt);
		char *_Ptr = _Ac;

		if (_First == _Last)
			;	
		else if (*_First == _Maklocchr('+', (_Elem *)0, _Cvt))
			*_Ptr++ = '+', ++_First;	
		else if (*_First == _Maklocchr('-', (_Elem *)0, _Cvt))
			*_Ptr++ = '-', ++_First;	

		_Basefield &= ios_base::basefield;
		int _Base = _Basefield == ios_base::oct ? 8
			: _Basefield == ios_base::hex ? 16
			: _Basefield == ios_base::_Fmtzero ? 0 : 10;

		bool _Seendigit = false;	
		bool _Nonzero = false;	

		if (_First != _Last && *_First == _E0)
			{	
			_Seendigit = true, ++_First;
			if (_First != _Last && (*_First == _Maklocchr('x', (_Elem *)0, _Cvt)
					|| *_First == _Maklocchr('X', (_Elem *)0, _Cvt))
				&& (_Base == 0 || _Base == 16))
				_Base = 16, _Seendigit = false, ++_First;
			else if (_Base == 0)
				_Base = 8;
			}

		int _Dlen = _Base == 0 || _Base == 10 ? 10
			: _Base == 8 ? 8 : 16 + 6;
		string _Groups((size_t)1, (char)_Seendigit);
		size_t _Group = 0;

		for (char *const _Pe = &_Ac[32 - 1];
			_First != _Last; ++_First)
			if (:: memchr((const char *)"0123456789abcdefABCDEF",
				*_Ptr = _Maklocbyte((_Elem)*_First, _Cvt), _Dlen) != 0)
				{	
				if ((_Nonzero || *_Ptr != '0') && _Ptr < _Pe)
					++_Ptr, _Nonzero = true;
				_Seendigit = true;
				if (_Groups[_Group] != 127)
					++_Groups[_Group];
				}
			else if (_Groups[_Group] == '\0'
				|| _Kseparator == (_Elem)0
				|| *_First != _Kseparator)
				break;	
			else
				{	
				_Groups.append((string::size_type)1, '\0');
				++_Group;
				}

		if (_Group == 0)
			;	
		else if ('\0' < _Groups[_Group])
			++_Group;	
		else
			_Seendigit = false;	

		for (const char *_Pg = _Grouping.c_str(); _Seendigit && 0 < _Group; )
			if (*_Pg == 127)
				break;	
			else if (0 < --_Group && *_Pg != _Groups[_Group]
				|| 0 == _Group && *_Pg < _Groups[_Group])
				_Seendigit = false;	
			else if ('\0' < _Pg[1])
				++_Pg;	

		if (_Seendigit && !_Nonzero)
			*_Ptr++ = '0';	
		else if (!_Seendigit)
			_Ptr = _Ac;	
		*_Ptr = '\0';
		return (_Base);
		}

	int __cdecl _Getffld(char *_Ac,
		_InIt& _First, _InIt &_Last,
		ios_base& _Iosbase, int *_Phexexp) const
		{	
		if ((_Iosbase.flags() & ios_base::floatfield) == ios_base::hexfloat)
			return (_Getffldx(_Ac, _First, _Last,
				_Iosbase, _Phexexp));	

		const _Mypunct& _Punct_fac = use_facet< _Mypunct >(_Iosbase.getloc());
		const string _Grouping = _Punct_fac.grouping();
		const _Elem _E0 = _Maklocchr('0', (_Elem *)0, _Cvt);
		char *_Ptr = _Ac;
		bool _Bad = false;

		if (_First == _Last)
			;	
		else if (*_First == _Maklocchr('+', (_Elem *)0, _Cvt))
			*_Ptr++ = '+', ++_First;	
		else if (*_First == _Maklocchr('-', (_Elem *)0, _Cvt))
			*_Ptr++ = '-', ++_First;	

		bool _Seendigit = false;	
		int _Significant = 0;	
		int _Pten = 0;	

		if (*_Grouping.c_str() == 127 || *_Grouping.c_str() <= '\0')
			for (; _First != _Last
				&& _E0 <= *_First && *_First <= _E0 + 9;
					_Seendigit = true, ++_First)
				if (36 <= _Significant)
					++_Pten;	
				else if (*_First == _E0 && _Significant == 0)
					;	
				else
					{	
					*_Ptr++ = (char)((*_First - _E0) + '0');
					++_Significant;
					}
		else
			{	
			const _Elem _Kseparator = _Grouping.size() == 0
				? (_Elem)0 : _Punct_fac.thousands_sep();
			string _Groups((size_t)1, '\0');
			size_t _Group = 0;

			for (; _First != _Last; ++_First)
				if (_E0 <= *_First && *_First <= _E0 + 9)
					{	
					_Seendigit = true;
					if (36 <= _Significant)
						++_Pten;	
					else if (*_First == _E0 && _Significant == 0)
						;	
					else
						{	
						*_Ptr++ = (char)((*_First - _E0) + '0');
						++_Significant;
						}
					if (_Groups[_Group] != 127)
						++_Groups[_Group];
					}
				else if (_Groups[_Group] == '\0'
					|| _Kseparator == (_Elem)0
					|| *_First != _Kseparator)
					break;	
				else
					{	
					_Groups.append((size_t)1, '\0');
					++_Group;
					}
			if (_Group == 0)
				;	
			else if ('\0' < _Groups[_Group])
				++_Group;	
			else
				_Bad = true;	

			for (const char *_Pg = _Grouping.c_str();
				!_Bad && 0 < _Group; )
				if (*_Pg == 127)
					break;	
				else if (0 < --_Group && *_Pg != _Groups[_Group]
					|| 0 == _Group && *_Pg < _Groups[_Group])
					_Bad = true;	
				else if ('\0' < _Pg[1])
					++_Pg;	
			}

		if (_Seendigit && _Significant == 0)
			*_Ptr++ = '0';	

		if (_First != _Last && *_First == _Punct_fac.decimal_point())
			*_Ptr++ = localeconv()->decimal_point[0], ++_First;	

		if (_Significant == 0)
			{	
			for (; _First != _Last && *_First == _E0;
				_Seendigit = true, ++_First)
				--_Pten;	
			if (_Pten < 0)
				*_Ptr++ = '0', ++_Pten;	
			}

		for (; _First != _Last
				&& _E0 <= *_First && *_First <= _E0 + 9;
				_Seendigit = true, ++_First)
			if (_Significant < 36)
				{	
				*_Ptr++ = (char)((*_First - _E0) + '0');
				++_Significant;
				}

		if (_Seendigit && _First != _Last
			&& (*_First == _Maklocchr('e', (_Elem *)0, _Cvt)
				|| *_First == _Maklocchr('E', (_Elem *)0, _Cvt)))
			{	
			*_Ptr++ = 'e', ++_First;
			_Seendigit = false, _Significant = 0;

			if (_First == _Last)
				;	
			else if (*_First == _Maklocchr('+', (_Elem *)0, _Cvt))
				*_Ptr++ = '+', ++_First;	
			else if (*_First == _Maklocchr('-', (_Elem *)0, _Cvt))
				*_Ptr++ = '-', ++_First;	
			for (; _First != _Last && *_First == _E0; )
				_Seendigit = true, ++_First;	
			if (_Seendigit)
				*_Ptr++ = '0';	
			for (; _First != _Last
				&& _E0 <= *_First && *_First <= _E0 + 9;
				_Seendigit = true, ++_First)
				if (_Significant < 8)
					{	
					*_Ptr++ = (char)((*_First - _E0) + '0');
					++_Significant;
					}
			}

		if (_Bad || !_Seendigit)
			_Ptr = _Ac;	
		*_Ptr = '\0';
		return (_Pten);
		}

	int __cdecl _Hexdig(const _Elem _Dig, const _Elem _E0,
		const _Elem _Al, const _Elem _Au) const
		{	
		if (_E0 <= _Dig && _Dig <= _E0 + 9)
			return (_Dig - _E0);	
		else if (_Al <= _Dig && _Dig <= _Al + 5)
			return (_Dig - _Al + 10);	
		else if (_Au <= _Dig && _Dig <= _Au + 5)
			return (_Dig - _Au + 10);	
		else
			return (-1);
		}

	int __cdecl _Getffldx(char *_Ac,
		_InIt& _First, _InIt &_Last,
		ios_base& _Iosbase, int *_Phexexp) const
		{	
		const _Mypunct& _Punct_fac = use_facet< _Mypunct >(_Iosbase.getloc());
		const string _Grouping = _Punct_fac.grouping();
		const _Elem _E0 = _Maklocchr('0', (_Elem *)0, _Cvt);
		const _Elem _Al = _Maklocchr('a', (_Elem *)0, _Cvt);
		const _Elem _Au = _Maklocchr('A', (_Elem *)0, _Cvt);
		char *_Ptr = _Ac;
		bool _Bad = false;
		int _Dig;

		if (_First == _Last)
			;	
		else if (*_First == _Maklocchr('+', (_Elem *)0, _Cvt))
			*_Ptr++ = '+', ++_First;	
		else if (*_First == _Maklocchr('-', (_Elem *)0, _Cvt))
			*_Ptr++ = '-', ++_First;	

		*_Ptr++ = '0';
		*_Ptr++ = 'x';

		bool _Seendigit = false;	
		int _Significant = 0;	
		int _Phex = 0;	

		if (_First == _Last || *_First != _E0)
			;
		else if (++_First != _Last
			&& (*_First == _Maklocchr('x', (_Elem *)0, _Cvt)
				 || *_First == _Maklocchr('X', (_Elem *)0, _Cvt)))
			++_First;	
		else
			_Seendigit = true;	

		if (*_Grouping.c_str() == 127 || *_Grouping.c_str() <= '\0')
			for (; _First != _Last
				&& 0 <= (_Dig = _Hexdig(*_First, _E0, _Al, _Au));
					_Seendigit = true, ++_First)
				if (36 <= _Significant)
					++_Phex;	
				else if (*_First == _E0 && _Significant == 0)
					;	
				else
					{	
					*_Ptr++ = "0123456789abcdef"[_Dig];
					++_Significant;
					}
		else
			{	
			const _Elem _Kseparator = _Grouping.size() == 0
				? (_Elem)0 : _Punct_fac.thousands_sep();
			string _Groups((size_t)1, '\0');
			size_t _Group = 0;

			for (; _First != _Last; ++_First)
				if (0 <= (_Dig = _Hexdig(*_First, _E0, _Al, _Au)))
					{	
					_Seendigit = true;
					if (36 <= _Significant)
						++_Phex;	
					else if (*_First == _E0 && _Significant == 0)
						;	
					else
						{	
						*_Ptr++ = "0123456789abcdef"[_Dig];
						++_Significant;
						}
					if (_Groups[_Group] != 127)
						++_Groups[_Group];
					}
				else if (_Groups[_Group] == '\0'
					|| _Kseparator == (_Elem)0
					|| *_First != _Kseparator)
					break;	
				else
					{	
					_Groups.append((size_t)1, '\0');
					++_Group;
					}
			if (_Group == 0)
				;	
			else if ('\0' < _Groups[_Group])
				++_Group;	
			else
				_Bad = true;	

			for (const char *_Pg = _Grouping.c_str();
				!_Bad && 0 < _Group; )
				if (*_Pg == 127)
					break;	
				else if (0 < --_Group && *_Pg != _Groups[_Group]
					|| 0 == _Group && *_Pg < _Groups[_Group])
					_Bad = true;	
				else if ('\0' < _Pg[1])
					++_Pg;	
			}

		if (_Seendigit && _Significant == 0)
			*_Ptr++ = '0';	

		if (_First != _Last && *_First == _Punct_fac.decimal_point())
			*_Ptr++ = localeconv()->decimal_point[0], ++_First;	

		if (_Significant == 0)
			{	
			for (; _First != _Last && *_First == _E0;
				_Seendigit = true, ++_First)
				--_Phex;	
			if (_Phex < 0)
				*_Ptr++ = '0', ++_Phex;	
			}

		for (; _First != _Last
				&& 0 <= (_Dig = _Hexdig(*_First, _E0, _Al, _Au));
				_Seendigit = true, ++_First)
			if (_Significant < 36)
				{	
				*_Ptr++ = "0123456789abcdef"[_Dig];
				++_Significant;
				}

		if (_Seendigit && _First != _Last
			&& (*_First == _Maklocchr('p', (_Elem *)0, _Cvt)
				|| *_First == _Maklocchr('P', (_Elem *)0, _Cvt)))
			{	
			*_Ptr++ = 'p', ++_First;
			_Seendigit = false, _Significant = 0;

			if (_First == _Last)
				;	
			else if (*_First == _Maklocchr('+', (_Elem *)0, _Cvt))
				*_Ptr++ = '+', ++_First;	
			else if (*_First == _Maklocchr('-', (_Elem *)0, _Cvt))
				*_Ptr++ = '-', ++_First;	
			for (; _First != _Last && *_First == _E0; )
				_Seendigit = true, ++_First;	
			if (_Seendigit)
				*_Ptr++ = '0';	
			for (; _First != _Last
				&& _E0 <= *_First && *_First <= _E0 + 9;
				_Seendigit = true, ++_First)
				if (_Significant < 8)
					{	
					*_Ptr++ = (char)((*_First - _E0) + '0');
					++_Significant;
					}
			}

		if (_Bad || !_Seendigit)
			_Ptr = _Ac;	
		*_Ptr = '\0';
		*_Phexexp = _Phex;	
		return (0);	
		}
	};

		
template<class _Elem,
	class _InIt>
	 locale::id num_get<_Elem, _InIt>::id;

		
template<class _Elem,
	class _OutIt = ostreambuf_iterator<_Elem, char_traits<_Elem> > >
	class num_put
		: public locale::facet
	{	
public:
	typedef numpunct<_Elem> _Mypunct;
	typedef basic_string<_Elem, char_traits<_Elem>, allocator<_Elem> >
		_Mystr;

	static size_t __cdecl _Getcat(const locale::facet **_Ppf = 0,
		const locale *_Ploc = 0)
		{	
		if (_Ppf != 0 && *_Ppf == 0)
			*_Ppf = new(::std:: _DebugHeapTag_func(), "D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocnum", 1053) num_put<_Elem, _OutIt>(
				_Locinfo(_Ploc->c_str()));
		return (4);
		}

	 static locale::id id;	

protected:
	virtual  ~num_put()
		{	
		}

	void  _Init(const _Locinfo& _Lobj)
		{	
		_Cvt = _Lobj._Getcvt();
		}

	_Locinfo::_Cvtvec _Cvt;		

public:
	explicit  num_put(size_t _Refs = 0)
		: locale::facet(_Refs)
		{	
		{ _Locinfo _Lobj;
			_Init(_Lobj);
		}
		}

	 num_put(const _Locinfo& _Lobj, size_t _Refs = 0)
		: locale::facet(_Refs)
		{	
		_Init(_Lobj);
		}

	typedef _Elem char_type;
	typedef _OutIt iter_type;

	_OutIt  put(_OutIt _Dest,
		ios_base& _Iosbase, _Elem _Fill, _Bool _Val) const
		{	
		return (do_put(_Dest, _Iosbase, _Fill, _Val));
		}

	_OutIt  put(_OutIt _Dest,
		ios_base& _Iosbase, _Elem _Fill, long _Val) const
		{	
		return (do_put(_Dest, _Iosbase, _Fill, _Val));
		}

	_OutIt  put(_OutIt _Dest,
		ios_base& _Iosbase, _Elem _Fill, unsigned long _Val) const
		{	
		return (do_put(_Dest, _Iosbase, _Fill, _Val));
		}

 
	_OutIt  put(_OutIt _Dest,
		ios_base& _Iosbase, _Elem _Fill, __int64 _Val) const
		{	
		return (do_put(_Dest, _Iosbase, _Fill, _Val));
		}

	_OutIt  put(_OutIt _Dest,
		ios_base& _Iosbase, _Elem _Fill, unsigned __int64 _Val) const
		{	
		return (do_put(_Dest, _Iosbase, _Fill, _Val));
		}
 

	_OutIt  put(_OutIt _Dest,
		ios_base& _Iosbase, _Elem _Fill, double _Val) const
		{	
		return (do_put(_Dest, _Iosbase, _Fill, _Val));
		}

	_OutIt  put(_OutIt _Dest,
		ios_base& _Iosbase, _Elem _Fill, long double _Val) const
		{	
		return (do_put(_Dest, _Iosbase, _Fill, _Val));
		}

	_OutIt  put(_OutIt _Dest,
		ios_base& _Iosbase, _Elem _Fill, const void *_Val) const
		{	
		return (do_put(_Dest, _Iosbase, _Fill, _Val));
		}

protected:
	virtual _OutIt  do_put(_OutIt _Dest,
		ios_base& _Iosbase, _Elem _Fill, _Bool _Val) const
		{	
		_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocnum", 1144);
		if (!(_Iosbase.flags() & ios_base::boolalpha))
			return (do_put(_Dest, _Iosbase, _Fill, (long)_Val));
		else
			{	
			const _Mypunct& _Punct_fac = use_facet< _Mypunct >(_Iosbase.getloc());
			_Mystr _Str;
			if (_Val)
				_Str.assign(_Punct_fac.truename());
			else
				_Str.assign(_Punct_fac.falsename());

			size_t _Fillcount = _Iosbase.width() <= 0
				|| (size_t)_Iosbase.width() <= _Str.size()
					? 0 : (size_t)_Iosbase.width() - _Str.size();

			if ((_Iosbase.flags() & ios_base::adjustfield) != ios_base::left)
				{	
				_Dest = _Rep(_Dest, _Fill, _Fillcount);
				_Fillcount = 0;
				}
			_Dest = _Put(_Dest, _Str.c_str(), _Str.size());	
			_Iosbase.width(0);
			return (_Rep(_Dest, _Fill, _Fillcount));	
			}
		}

	virtual _OutIt  do_put(_OutIt _Dest,
		ios_base& _Iosbase, _Elem _Fill, long _Val) const
		{	
		char _Buf[2 * 32], _Fmt[6];

		return (_Iput(_Dest, _Iosbase, _Fill, _Buf,
			:: sprintf_s(_Buf, sizeof (_Buf), _Ifmt(_Fmt, "ld",
				_Iosbase.flags()), _Val)));
		}

	virtual _OutIt  do_put(_OutIt _Dest,
		ios_base& _Iosbase, _Elem _Fill, unsigned long _Val) const
		{	
		char _Buf[2 * 32], _Fmt[6];

		return (_Iput(_Dest, _Iosbase, _Fill, _Buf,
			:: sprintf_s(_Buf, sizeof (_Buf), _Ifmt(_Fmt, "lu",
				_Iosbase.flags()), _Val)));
		}

 
	virtual _OutIt  do_put(_OutIt _Dest,
		ios_base& _Iosbase, _Elem _Fill, __int64 _Val) const
		{	
		char _Buf[2 * 32], _Fmt[8];

		return (_Iput(_Dest, _Iosbase, _Fill, _Buf,
			:: sprintf_s(_Buf, sizeof (_Buf), _Ifmt(_Fmt, "Ld",
				_Iosbase.flags()), _Val)));
		}

	virtual _OutIt  do_put(_OutIt _Dest,
		ios_base& _Iosbase, _Elem _Fill, unsigned __int64 _Val) const
		{	
		char _Buf[2 * 32], _Fmt[8];

		return (_Iput(_Dest, _Iosbase, _Fill, _Buf,
			:: sprintf_s(_Buf, sizeof (_Buf), _Ifmt(_Fmt, "Lu",
				_Iosbase.flags()), _Val)));
		}
 

	virtual _OutIt  do_put(_OutIt _Dest,
		ios_base& _Iosbase, _Elem _Fill, double _Val) const
		{	
		char _Buf[8 + 36 + 64], _Fmt[8];
		streamsize _Precision = _Iosbase.precision() <= 0
			&& !(_Iosbase.flags() & ios_base::fixed)
				? 6 : _Iosbase.precision();	
		int _Significance = 36 < _Precision
			? 36 : (int)_Precision;	
		_Precision -= _Significance;
		size_t _Beforepoint = 0;	
		size_t _Afterpoint = 0;	

		if ((_Iosbase.flags() & ios_base::floatfield) == ios_base::fixed
			&& _Val * 0.5 != _Val)	
			{	
			bool _Signed = _Val < 0;
			if (_Signed)
				_Val = -_Val;

			for (; 1e35 <= _Val && _Beforepoint < 5000; _Beforepoint += 10)
				_Val /= 1e10;	

			if (0 < _Val)
				for (; 10 <= _Precision && _Val <= 1e-35
					&& _Afterpoint < 5000; _Afterpoint += 10)
					{	
					_Val *= 1e10;
					_Precision -= 10;
					}

			if (_Signed)
				_Val = -_Val;
			}

		return (_Fput(_Dest, _Iosbase, _Fill, _Buf,
			_Beforepoint, _Afterpoint, (size_t)_Precision,
				:: sprintf_s(_Buf, sizeof (_Buf),
					_Ffmt(_Fmt, 0, _Iosbase.flags()),
					_Significance, _Val)));	
		}

	virtual _OutIt  do_put(_OutIt _Dest,
		ios_base& _Iosbase, _Elem _Fill, long double _Val) const
		{	
		char _Buf[8 + 36 + 64], _Fmt[8];
		streamsize _Precision = _Iosbase.precision() <= 0
			&& !(_Iosbase.flags() & ios_base::fixed)
				? 6 : _Iosbase.precision();	
		int _Significance = 36 < _Precision
			? 36 : (int)_Precision;	
		_Precision -= _Significance;
		size_t _Beforepoint = 0;	
		size_t _Afterpoint = 0;	

		if ((_Iosbase.flags() & ios_base::floatfield) == ios_base::fixed)
			{	
			bool _Signed = _Val < 0;
			if (_Signed)
				_Val = -_Val;

			for (; 1e35 <= _Val && _Beforepoint < 5000; _Beforepoint += 10)
				_Val /= 1e10;	

			if (0 < _Val)
				for (; 10 <= _Precision && _Val <= 1e-35
					&& _Afterpoint < 5000; _Afterpoint += 10)
					{	
					_Val *= 1e10;
					_Precision -= 10;
					}

			if (_Signed)
				_Val = -_Val;
			}

		return (_Fput(_Dest, _Iosbase, _Fill, _Buf,
			_Beforepoint, _Afterpoint, (size_t)_Precision,
				:: sprintf_s(_Buf, sizeof (_Buf),
					_Ffmt(_Fmt, 'L', _Iosbase.flags()),
					_Significance, _Val)));	
		}

	virtual _OutIt  do_put(_OutIt _Dest,
		ios_base& _Iosbase, _Elem _Fill, const void *_Val) const
		{	
		char _Buf[2 * 32];

		return (_Iput(_Dest, _Iosbase, _Fill, _Buf,
			:: sprintf_s(_Buf, sizeof (_Buf), "%p", _Val)));
		}

private:
	char *__cdecl _Ffmt(char *_Fmt,
		char _Spec, ios_base::fmtflags _Flags) const
		{	
		char *_Ptr = _Fmt;
		*_Ptr++ = '%';

		if (_Flags & ios_base::showpos)
			*_Ptr++ = '+';
		if (_Flags & ios_base::showpoint)
			*_Ptr++ = '#';
		*_Ptr++ = '.';
		*_Ptr++ = '*';	
		if (_Spec != '\0')
			*_Ptr++ = _Spec;	

		ios_base::fmtflags _Ffl = _Flags & ios_base::floatfield;
		*_Ptr++ = _Ffl == ios_base::fixed ? 'f'
			: _Ffl == ios_base::hexfloat ? 'a'	
			: _Ffl == ios_base::scientific ? 'e' : 'g';	
		*_Ptr = '\0';
		return (_Fmt);
		}

	_OutIt __cdecl _Fput(_OutIt _Dest,
		ios_base& _Iosbase, _Elem _Fill, const char *_Buf,
			size_t _Beforepoint, size_t _Afterpoint,
				size_t _Trailing, size_t _Count) const
		{	
		_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocnum", 1334);
		const _Mypunct& _Punct_fac = use_facet< _Mypunct >(_Iosbase.getloc());
		const string _Grouping = _Punct_fac.grouping();
		const _Elem _Kseparator = _Punct_fac.thousands_sep();
		string _Groupstring;
		const _Elem _E0 = _Maklocchr('0', (_Elem *)0, _Cvt);
		size_t _Prefix = _Buf[0] == '+' || _Buf[0] == '-' ? 1 : 0;

		char _Enders[3];
		_Enders[0] = :: localeconv()->decimal_point[0];
		_Enders[1] = 'e';
		_Enders[2] = '\0';

		const char *_Eptr = (const char *):: memchr(_Buf,
			'e', _Count);	
		const char *_Pointptr = (const char *):: memchr(_Buf,
			_Enders[0], _Count);	
		if (_Pointptr == 0)
			_Trailing = 0;

		if (*_Grouping.c_str() != 127 && '\0' < *_Grouping.c_str())
			{	
			_Groupstring.append(_Buf, _Count);	
			if (_Eptr == 0)
				_Groupstring.append(_Trailing, '0');
			else
				{	
				if (_Pointptr == 0)
					{	
					_Groupstring.append(_Beforepoint, '0');
					_Beforepoint = 0;
					}
				_Groupstring.insert(_Eptr - _Buf, _Trailing, '0');
				}
			_Trailing = 0;

			if (_Pointptr == 0)
				_Groupstring.append(_Beforepoint, '0');
			else
				{	
				_Groupstring.insert(_Pointptr - _Buf + 1, _Afterpoint, '0');
				_Groupstring.insert(_Pointptr - _Buf, _Beforepoint, '0');
				_Afterpoint = 0;
				}
			_Beforepoint = 0;

			const char *_Pg = _Grouping.c_str();
			size_t _Off = :: strcspn(&_Groupstring[0], &_Enders[0]);
			while (*_Pg != 127 && '\0' < *_Pg
				&& (size_t)*_Pg < _Off - _Prefix)
				{	
				_Groupstring.insert(_Off -= *_Pg, (size_t)1, '\0');
				if ('\0' < _Pg[1])
					++_Pg;	
				}

			_Buf = &_Groupstring[0];
			_Trailing = 0;
			_Count = _Groupstring.size();
			}

		size_t _Fillcount = _Beforepoint + _Afterpoint + _Trailing + _Count;
		_Fillcount = _Iosbase.width() <= 0
			|| (size_t)_Iosbase.width() <= _Fillcount
				? 0 : (size_t)_Iosbase.width() - _Fillcount;
		ios_base::fmtflags _Adjustfield =
			_Iosbase.flags() & ios_base::adjustfield;
		if (_Adjustfield != ios_base::left
			&& _Adjustfield != ios_base::internal)
			{	
			_Dest = _Rep(_Dest, _Fill, _Fillcount);
			_Fillcount = 0;
			}
		else if (_Adjustfield == ios_base::internal)
			{	
			if (0 < _Prefix)
				{	
				_Dest = _Putc(_Dest, _Buf, 1);
				++_Buf, --_Count;
				}
			_Dest = _Rep(_Dest, _Fill, _Fillcount);
			_Fillcount = 0;
			}

		_Pointptr = (const char *):: memchr(_Buf,
			_Enders[0], _Count);	
		if (_Pointptr != 0)
			{	
			size_t _Fracoffset = _Pointptr - _Buf + 1;
			_Dest = _Putgrouped(_Dest, _Buf, _Fracoffset - 1, _Kseparator);
			_Dest = _Rep(_Dest, _E0, _Beforepoint);
			_Dest = _Rep(_Dest, _Punct_fac.decimal_point(), 1);
			_Dest = _Rep(_Dest, _E0, _Afterpoint);
			_Buf += _Fracoffset, _Count -= _Fracoffset;
			}

		_Eptr = (const char *):: memchr(_Buf,
			'e', _Count);	
		if (_Eptr != 0)
			{	
			size_t _Expoffset = _Eptr - _Buf + 1;
			_Dest = _Putgrouped(_Dest, _Buf, _Expoffset - 1, _Kseparator);
			_Dest = _Rep(_Dest, _E0, _Trailing), _Trailing = 0;
			_Dest = _Putc(_Dest, _Iosbase.flags() & ios_base::uppercase
				? "E" : "e", 1);
			_Buf += _Expoffset, _Count -= _Expoffset;
			}

		_Dest = _Putgrouped(_Dest, _Buf, _Count,
			_Kseparator);	
		_Dest = _Rep(_Dest, _E0, _Trailing);	
		_Iosbase.width(0);
		return (_Rep(_Dest, _Fill, _Fillcount));	
		}

	char *__cdecl _Ifmt(char *_Fmt,
		const char *_Spec, ios_base::fmtflags _Flags) const
		{	
		char *_Ptr = _Fmt;
		*_Ptr++ = '%';

		if (_Flags & ios_base::showpos)
			*_Ptr++ = '+';
		if (_Flags & ios_base::showbase)
			*_Ptr++ = '#';
		if (_Spec[0] != 'L')
			*_Ptr++ = _Spec[0];	
		else

			{	
			*_Ptr++ = 'I';
			*_Ptr++ = '6';
			*_Ptr++ = '4';
			}

		ios_base::fmtflags _Basefield = _Flags & ios_base::basefield;
		*_Ptr++ = _Basefield == ios_base::oct ? 'o'
			: _Basefield != ios_base::hex ? _Spec[1]	
			: _Flags & ios_base::uppercase ? 'X' : 'x';
		*_Ptr = '\0';
		return (_Fmt);
		}

	_OutIt __cdecl _Iput(_OutIt _Dest,
		ios_base& _Iosbase, _Elem _Fill, char *_Buf, size_t _Count) const
		{	
		_Debug_pointer(_Dest, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\xlocnum", 1480);
		const _Mypunct& _Punct_fac = use_facet< _Mypunct >(_Iosbase.getloc());
		const string _Grouping = _Punct_fac.grouping();
		const size_t _Prefix = *_Buf == '+' || *_Buf == '-' ? 1
			: *_Buf == '0' && (_Buf[1] == 'x' || _Buf[1] == 'X') ? 2
			: 0;

		if (*_Grouping.c_str() != 127 && '\0' < *_Grouping.c_str())
			{	
			const char *_Pg = _Grouping.c_str();
			size_t _Off = _Count;
			while (*_Pg != 127 && '\0' < *_Pg
				&& (size_t)*_Pg < _Off - _Prefix)
				{	
				_Off -= *_Pg;

				;
				::memmove_s((&_Buf[_Off + 1]), (_Count + 1 - _Off), (&_Buf[_Off]), (_Count + 1 - _Off));

				_Buf[_Off] = '\0', ++_Count;
				if ('\0' < _Pg[1])
					++_Pg;	
				}
			}

		size_t _Fillcount = _Iosbase.width() <= 0
			|| (size_t)_Iosbase.width() <= _Count
				? 0 : (size_t)_Iosbase.width() - _Count;

		ios_base::fmtflags _Adjustfield =
			_Iosbase.flags() & ios_base::adjustfield;
		if (_Adjustfield != ios_base::left
			&& _Adjustfield != ios_base::internal)
			{	
			_Dest = _Rep(_Dest, _Fill, _Fillcount);
			_Fillcount = 0;
			}
		else if (_Adjustfield == ios_base::internal)
			{	
			_Dest = _Putc(_Dest, _Buf, _Prefix);	
			_Buf += _Prefix, _Count -= _Prefix;
			_Dest = _Rep(_Dest, _Fill, _Fillcount), _Fillcount = 0;
			}

		_Dest = _Putgrouped(_Dest, _Buf, _Count,
			_Punct_fac.thousands_sep());	
		_Iosbase.width(0);
		return (_Rep(_Dest, _Fill, _Fillcount));	
		}

	_OutIt __cdecl _Put(_OutIt _Dest,
		const _Elem *_Ptr, size_t _Count) const
		{	
		for (; 0 < _Count; --_Count, ++_Dest, ++_Ptr)
			*_Dest = *_Ptr;
		return (_Dest);
		}

	_OutIt __cdecl _Putc(_OutIt _Dest,
		const char *_Ptr, size_t _Count) const
		{	
		for (; 0 < _Count; --_Count, ++_Dest, ++_Ptr)
			*_Dest = _Maklocchr(*_Ptr, (_Elem *)0, _Cvt);
		return (_Dest);
		}

	_OutIt __cdecl _Putgrouped(_OutIt _Dest,
		const char *_Ptr, size_t _Count, _Elem _Kseparator) const
		{	
		for (; ; ++_Ptr, --_Count)
			{	
			const char *_Pend =
				(const char *):: memchr(_Ptr, '\0', _Count);
			size_t _Groupsize = _Pend != 0 ? _Pend - _Ptr : _Count;

			_Dest = _Putc(_Dest, _Ptr, _Groupsize);
			_Ptr += _Groupsize, _Count -= _Groupsize;
			if (_Count == 0)
				break;
			if (_Kseparator != (_Elem)0)
				_Dest = _Rep(_Dest, _Kseparator, 1);
			}
		return (_Dest);
		}

	_OutIt __cdecl _Rep(_OutIt _Dest,
		_Elem _Ch, size_t _Count) const
		{	
		for (; 0 < _Count; --_Count, ++_Dest)
			*_Dest = _Ch;
		return (_Dest);
		}
	};

		
template<class _Elem,
	class _OutIt>
	 locale::id num_put<_Elem, _OutIt>::id;

 


















}

 

 #pragma warning(pop)
 #pragma pack(pop)











 #pragma pack(push,8)
 #pragma warning(push,3)

 #pragma warning(disable: 4189)

namespace std {
		
template<class _Elem,
	class _Traits>
	class basic_ios
		: public ios_base
	{	
public:
	typedef basic_ios<_Elem, _Traits> _Myt;
	typedef basic_ostream<_Elem, _Traits> _Myos;
	typedef basic_streambuf<_Elem, _Traits> _Mysb;
	typedef ctype<_Elem> _Ctype;
	typedef _Elem char_type;
	typedef _Traits traits_type;
	typedef typename _Traits::int_type int_type;
	typedef typename _Traits::pos_type pos_type;
	typedef typename _Traits::off_type off_type;

	explicit  basic_ios(_Mysb *_Strbuf)
		{	
		init(_Strbuf);
		}

	virtual  ~basic_ios()
		{	
		}

	void  clear(iostate _State = goodbit,
		bool _Reraise = false)
		{	
		ios_base::clear((iostate)(_Mystrbuf == 0
			? (int)_State | (int)badbit : (int)_State), _Reraise);
		}

	void  clear(io_state _State)
		{	
		clear((iostate)_State);
		}

	void  setstate(iostate _State,
		bool _Reraise = false)
		{	
		if (_State != goodbit)
			clear((iostate)((int)rdstate() | (int)_State), _Reraise);
		}

	void  setstate(io_state _State)
		{	
		setstate((iostate)_State);
		}

	_Myt&  copyfmt(const _Myt& _Right)
		{	
		_Tiestr = _Right.tie();
		_Fillch = _Right.fill();
		ios_base::copyfmt(_Right);
		return (*this);
		}

	_Myos * tie() const
		{	
		return (_Tiestr);
		}

	_Myos * tie(_Myos *_Newtie)
		{	
		_Myos *_Oldtie = _Tiestr;
		_Tiestr = _Newtie;
		return (_Oldtie);
		}

	_Mysb * rdbuf() const
		{	
		return (_Mystrbuf);
		}

	_Mysb * rdbuf(_Mysb *_Strbuf)
		{	
		_Mysb *_Oldstrbuf = _Mystrbuf;
		_Mystrbuf = _Strbuf;
		clear();
		return (_Oldstrbuf);
		}

	locale  imbue(const locale& _Loc)
		{	
		locale _Oldlocale = ios_base::imbue(_Loc);
		if (rdbuf() != 0)
			rdbuf()->pubimbue(_Loc);
		return (_Oldlocale);
		}

	_Elem  fill() const
		{	
		return (_Fillch);
		}

	_Elem  fill(_Elem _Newfill)
		{	
		_Elem _Oldfill = _Fillch;
		_Fillch = _Newfill;
		return (_Oldfill);
		}

	char  narrow(_Elem _Ch, char _Dflt = '\0') const
		{	
		const _Ctype& _Ctype_fac = use_facet< _Ctype >(getloc());
		return (_Ctype_fac.narrow(_Ch, _Dflt));
		}

	_Elem  widen(char _Byte) const
		{	
		const _Ctype& _Ctype_fac = use_facet< _Ctype >(getloc());
		return (_Ctype_fac.widen(_Byte));
		}

	void  move(_Myt&& _Right)
		{	
		if (this != &_Right)
			{	
			_Mystrbuf = 0;
			_Tiestr = 0;
			this->swap(_Right);
			}
		}

	void  swap(_Myt& _Right)
		{	
		ios_base::swap(_Right);
		::std:: swap(_Fillch, _Right._Fillch);
		::std:: swap(_Tiestr, _Right._Tiestr);
		}

	void  set_rdbuf(_Mysb *_Strbuf)
		{	
		_Mystrbuf = _Strbuf;
		}

protected:
	void  init(_Mysb *_Strbuf = 0,
		bool _Isstd = false)
		{	
		_Init();	
		_Mystrbuf = _Strbuf;
		_Tiestr = 0;
		_Fillch = widen(' ');

		if (_Mystrbuf == 0)
			setstate(badbit);

		if (_Isstd)
			_Addstd(this);	
		}

	 basic_ios()
		{	
		}

private:
	_Mysb *_Mystrbuf;	
	_Myos *_Tiestr;	
	_Elem _Fillch;	

	 basic_ios(const _Myt&);	
	_Myt&  operator=(const _Myt&);	
	};

 










		
inline ios_base& __cdecl boolalpha(ios_base& _Iosbase)
	{	
	_Iosbase.setf(ios_base::boolalpha);
	return (_Iosbase);
	}

inline ios_base& __cdecl dec(ios_base& _Iosbase)
	{	
	_Iosbase.setf(ios_base::dec, ios_base::basefield);
	return (_Iosbase);
	}

 
inline ios_base& __cdecl defaultfloat(ios_base& _Iosbase)
	{	
	_Iosbase.unsetf(ios_base::floatfield);
	return (_Iosbase);
	}
 

inline ios_base& __cdecl fixed(ios_base& _Iosbase)
	{	
	_Iosbase.setf(ios_base::fixed, ios_base::floatfield);
	return (_Iosbase);
	}

inline ios_base& __cdecl hex(ios_base& _Iosbase)
	{	
	_Iosbase.setf(ios_base::hex, ios_base::basefield);
	return (_Iosbase);
	}

 
	namespace tr1 {	
inline ::std:: ios_base& __cdecl hexfloat(::std:: ios_base& _Iosbase)
	{	
	_Iosbase.setf(::std:: ios_base::hexfloat, ::std:: ios_base::floatfield);
	return (_Iosbase);
	}
	}	
 

 

using tr1::hexfloat;

 

inline ios_base& __cdecl internal(ios_base& _Iosbase)
	{	
	_Iosbase.setf(ios_base::internal, ios_base::adjustfield);
	return (_Iosbase);
	}

inline ios_base& __cdecl left(ios_base& _Iosbase)
	{	
	_Iosbase.setf(ios_base::left, ios_base::adjustfield);
	return (_Iosbase);
	}

inline ios_base& __cdecl noboolalpha(ios_base& _Iosbase)
	{	
	_Iosbase.unsetf(ios_base::boolalpha);
	return (_Iosbase);
	}

inline ios_base& __cdecl noshowbase(ios_base& _Iosbase)
	{	
	_Iosbase.unsetf(ios_base::showbase);
	return (_Iosbase);
	}

inline ios_base& __cdecl noshowpoint(ios_base& _Iosbase)
	{	
	_Iosbase.unsetf(ios_base::showpoint);
	return (_Iosbase);
	}

inline ios_base& __cdecl noshowpos(ios_base& _Iosbase)
	{	
	_Iosbase.unsetf(ios_base::showpos);
	return (_Iosbase);
	}

inline ios_base& __cdecl noskipws(ios_base& _Iosbase)
	{	
	_Iosbase.unsetf(ios_base::skipws);
	return (_Iosbase);
	}

inline ios_base& __cdecl nounitbuf(ios_base& _Iosbase)
	{	
	_Iosbase.unsetf(ios_base::unitbuf);
	return (_Iosbase);
	}

inline ios_base& __cdecl nouppercase(ios_base& _Iosbase)
	{	
	_Iosbase.unsetf(ios_base::uppercase);
	return (_Iosbase);
	}

inline ios_base& __cdecl oct(ios_base& _Iosbase)
	{	
	_Iosbase.setf(ios_base::oct, ios_base::basefield);
	return (_Iosbase);
	}

inline ios_base& __cdecl right(ios_base& _Iosbase)
	{	
	_Iosbase.setf(ios_base::right, ios_base::adjustfield);
	return (_Iosbase);
	}

inline ios_base& __cdecl scientific(ios_base& _Iosbase)
	{	
	_Iosbase.setf(ios_base::scientific, ios_base::floatfield);
	return (_Iosbase);
	}

inline ios_base& __cdecl showbase(ios_base& _Iosbase)
	{	
	_Iosbase.setf(ios_base::showbase);
	return (_Iosbase);
	}

inline ios_base& __cdecl showpoint(ios_base& _Iosbase)
	{	
	_Iosbase.setf(ios_base::showpoint);
	return (_Iosbase);
	}

inline ios_base& __cdecl showpos(ios_base& _Iosbase)
	{	
	_Iosbase.setf(ios_base::showpos);
	return (_Iosbase);
	}

inline ios_base& __cdecl skipws(ios_base& _Iosbase)
	{	
	_Iosbase.setf(ios_base::skipws);
	return (_Iosbase);
	}

inline ios_base& __cdecl unitbuf(ios_base& _Iosbase)
	{	
	_Iosbase.setf(ios_base::unitbuf);
	return (_Iosbase);
	}

inline ios_base& __cdecl uppercase(ios_base& _Iosbase)
	{	
	_Iosbase.setf(ios_base::uppercase);
	return (_Iosbase);
	}
}

 #pragma warning(pop)
 #pragma pack(pop)










 #pragma pack(push,8)
 #pragma warning(push,3)

 #pragma warning(disable: 4189 4390)

namespace std {
		

 
 

 



 



 





		
template<class _Elem,
	class _Traits>
	class basic_ostream
		: virtual public basic_ios<_Elem, _Traits>
	{	
public:
	typedef basic_ostream<_Elem, _Traits> _Myt;
	typedef basic_ios<_Elem, _Traits> _Myios;
	typedef basic_streambuf<_Elem, _Traits> _Mysb;
	typedef ostreambuf_iterator<_Elem, _Traits> _Iter;
	typedef num_put<_Elem, _Iter> _Nput;

	explicit  basic_ostream(
		basic_streambuf<_Elem, _Traits> *_Strbuf,

		bool _Isstd = false)
		{	
		_Myios::init(_Strbuf, _Isstd);
		}

	 basic_ostream(_Uninitialized, bool _Addit = true)
		{	
		if (_Addit)
			ios_base::_Addstd(this);	
		}

	 basic_ostream(_Myt&& _Right)
		{	
		_Myios::init();
		_Myios::move(::std:: move(_Right));
		}

	_Myt&  operator=(_Myt&& _Right)
		{	
		this->swap(_Right);
		return (*this);
		}

	void  swap(_Myt& _Right)
		{	
		if (this != &_Right)
			_Myios::swap(_Right);
		}

	virtual  ~basic_ostream()
		{	
		}

	typedef typename _Traits::int_type int_type;
	typedef typename _Traits::pos_type pos_type;
	typedef typename _Traits::off_type off_type;

	class _Sentry_base
		{	
	public:
		 _Sentry_base(_Myt& _Ostr)
			: _Myostr(_Ostr)
			{	
			if (_Myostr.rdbuf() != 0)
				_Myostr.rdbuf()->_Lock();
			}

		 ~_Sentry_base()
			{	
			if (_Myostr.rdbuf() != 0)
				_Myostr.rdbuf()->_Unlock();
			}

		_Myt& _Myostr;	

	private:
		_Sentry_base& operator=(const _Sentry_base&);
		};

	class sentry
		: public _Sentry_base
		{	
	public:
		explicit  sentry(_Myt& _Ostr)
			: _Sentry_base(_Ostr)
			{	
			if (_Ostr.good() && _Ostr.tie() != 0)
				_Ostr.tie()->flush();
			_Ok = _Ostr.good();	
			}

		 ~sentry()
			{	
 
			if (!uncaught_exception())
				this->_Myostr._Osfx();

 


			}

		 operator ::std:: _Bool_type() const
			{	
			return (_Ok ? (&::std:: _Bool_struct::_Member) : 0);
			}

	private:
		bool _Ok;	

		 sentry(const sentry&);	
		sentry&  operator=(const sentry&);	
		};

	bool  opfx()
		{	
		if (ios_base::good() && _Myios::tie() != 0)
			_Myios::tie()->flush();
		return (ios_base::good());
		}

	void  osfx()
		{	
		_Osfx();
		}

	void  _Osfx()
		{	
		try {
		if (ios_base::flags() & ios_base::unitbuf)
			flush();	
		} catch (...) {
		}
		}

  





















	_Myt&  operator<<(_Myt& (__cdecl *_Pfn)(_Myt&))
		{	
		_Debug_pointer(_Pfn, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\ostream", 188);
		return ((*_Pfn)(*this));
		}

	_Myt&  operator<<(_Myios& (__cdecl *_Pfn)(_Myios&))
		{	
		_Debug_pointer(_Pfn, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\ostream", 194);
		(*_Pfn)(*(_Myios *)this);
		return (*this);
		}

	_Myt&  operator<<(ios_base& (__cdecl *_Pfn)(ios_base&))
		{	
		_Debug_pointer(_Pfn, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\ostream", 201);
		(*_Pfn)(*(ios_base *)this);
		return (*this);
		}

	_Myt&  operator<<(_Bool _Val)
		{	
		ios_base::iostate _State = ios_base::goodbit;
		const sentry _Ok(*this);

		if (_Ok)
			{	
			const _Nput& _Nput_fac = use_facet< _Nput >(ios_base::getloc());

			try {
			if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
				_Myios::fill(), _Val).failed())
				_State |= ios_base::badbit;
			} catch (...) { _Myios::setstate(ios_base::badbit, true); }
			}

		_Myios::setstate(_State);
		return (*this);
		}

	_Myt&  operator<<(short _Val)
		{	
		ios_base::iostate _State = ios_base::goodbit;
		const sentry _Ok(*this);

		if (_Ok)
			{	
			const _Nput& _Nput_fac = use_facet< _Nput >(ios_base::getloc());
			ios_base::fmtflags _Bfl =
				ios_base::flags() & ios_base::basefield;
			long _Tmp = (_Bfl == ios_base::oct
				|| _Bfl == ios_base::hex)
				? (long)(unsigned short)_Val : (long)_Val;

			try {
			if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
				_Myios::fill(), _Tmp).failed())
				_State |= ios_base::badbit;
			} catch (...) { _Myios::setstate(ios_base::badbit, true); }
			}

		_Myios::setstate(_State);
		return (*this);
		}










	_Myt&  operator<<(unsigned short _Val)
		{	
		ios_base::iostate _State = ios_base::goodbit;
		const sentry _Ok(*this);

		if (_Ok)
			{	
			const _Nput& _Nput_fac = use_facet< _Nput >(ios_base::getloc());

			try {
			if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
				_Myios::fill(), (unsigned long)_Val).failed())
				_State |= ios_base::badbit;
			} catch (...) { _Myios::setstate(ios_base::badbit, true); }
			}

		_Myios::setstate(_State);
		return (*this);
		}

	_Myt&  operator<<(int _Val)
		{	
		ios_base::iostate _State = ios_base::goodbit;
		const sentry _Ok(*this);

		if (_Ok)
			{	
			const _Nput& _Nput_fac = use_facet< _Nput >(ios_base::getloc());
			ios_base::fmtflags _Bfl =
				ios_base::flags() & ios_base::basefield;
			long _Tmp = (_Bfl == ios_base::oct
				|| _Bfl == ios_base::hex)
				? (long)(unsigned int)_Val : (long)_Val;

			try {
			if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
				_Myios::fill(), _Tmp).failed())
				_State |= ios_base::badbit;
			} catch (...) { _Myios::setstate(ios_base::badbit, true); }
			}

		_Myios::setstate(_State);
		return (*this);
		}

	_Myt&  operator<<(unsigned int _Val)
		{	
		ios_base::iostate _State = ios_base::goodbit;
		const sentry _Ok(*this);

		if (_Ok)
			{	
			const _Nput& _Nput_fac = use_facet< _Nput >(ios_base::getloc());

			try {
			if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
				_Myios::fill(), (unsigned long)_Val).failed())
				_State |= ios_base::badbit;
			} catch (...) { _Myios::setstate(ios_base::badbit, true); }
			}

		_Myios::setstate(_State);
		return (*this);
		}

	_Myt&  operator<<(long _Val)
		{	
		ios_base::iostate _State = ios_base::goodbit;
		const sentry _Ok(*this);

		if (_Ok)
			{	
			const _Nput& _Nput_fac = use_facet< _Nput >(ios_base::getloc());

			try {
			if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
				_Myios::fill(), _Val).failed())
				_State |= ios_base::badbit;
			} catch (...) { _Myios::setstate(ios_base::badbit, true); }
			}

		_Myios::setstate(_State);
		return (*this);
		}

	_Myt&  operator<<(unsigned long _Val)
		{	
		ios_base::iostate _State = ios_base::goodbit;
		const sentry _Ok(*this);

		if (_Ok)
			{	
			const _Nput& _Nput_fac = use_facet< _Nput >(ios_base::getloc());

			try {
			if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
				_Myios::fill(), _Val).failed())
				_State |= ios_base::badbit;
			} catch (...) { _Myios::setstate(ios_base::badbit, true); }
			}

		_Myios::setstate(_State);
		return (*this);
		}

 
	_Myt&  operator<<(__int64 _Val)
		{	
		ios_base::iostate _State = ios_base::goodbit;
		const sentry _Ok(*this);

		if (_Ok)
			{	
			const _Nput& _Nput_fac = use_facet< _Nput >(ios_base::getloc());

			try {
			if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
				_Myios::fill(), _Val).failed())
				_State |= ios_base::badbit;
			} catch (...) { _Myios::setstate(ios_base::badbit, true); }
			}

		_Myios::setstate(_State);
		return (*this);
		}

	_Myt&  operator<<(unsigned __int64 _Val)
		{	
		ios_base::iostate _State = ios_base::goodbit;
		const sentry _Ok(*this);

		if (_Ok)
			{	
			const _Nput& _Nput_fac = use_facet< _Nput >(ios_base::getloc());

			try {
			if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
				_Myios::fill(), _Val).failed())
				_State |= ios_base::badbit;
			} catch (...) { _Myios::setstate(ios_base::badbit, true); }
			}

		_Myios::setstate(_State);
		return (*this);
		}
 

	_Myt&  operator<<(float _Val)
		{	
		ios_base::iostate _State = ios_base::goodbit;
		const sentry _Ok(*this);

		if (_Ok)
			{	
			const _Nput& _Nput_fac = use_facet< _Nput >(ios_base::getloc());

			try {
			if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
				_Myios::fill(), (double)_Val).failed())
				_State |= ios_base::badbit;
			} catch (...) { _Myios::setstate(ios_base::badbit, true); }
			}

		_Myios::setstate(_State);
		return (*this);
		}

	_Myt&  operator<<(double _Val)
		{	
		ios_base::iostate _State = ios_base::goodbit;
		const sentry _Ok(*this);

		if (_Ok)
			{	
			const _Nput& _Nput_fac = use_facet< _Nput >(ios_base::getloc());

			try {
			if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
				_Myios::fill(), _Val).failed())
				_State |= ios_base::badbit;
			} catch (...) { _Myios::setstate(ios_base::badbit, true); }
			}

		_Myios::setstate(_State);
		return (*this);
		}

	_Myt&  operator<<(long double _Val)
		{	
		ios_base::iostate _State = ios_base::goodbit;
		const sentry _Ok(*this);

		if (_Ok)
			{	
			const _Nput& _Nput_fac = use_facet< _Nput >(ios_base::getloc());

			try {
			if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
				_Myios::fill(), _Val).failed())
				_State |= ios_base::badbit;
			} catch (...) { _Myios::setstate(ios_base::badbit, true); }
			}

		_Myios::setstate(_State);
		return (*this);
		}

	_Myt&  operator<<(const void *_Val)
		{	
		ios_base::iostate _State = ios_base::goodbit;
		const sentry _Ok(*this);

		if (_Ok)
			{	
			const _Nput& _Nput_fac = use_facet< _Nput >(ios_base::getloc());

			try {
			if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
				_Myios::fill(), _Val).failed())
				_State |= ios_base::badbit;
			} catch (...) { _Myios::setstate(ios_base::badbit, true); }
			}

		_Myios::setstate(_State);
		return (*this);
		}

	_Myt&  operator<<(_Mysb *_Strbuf)
		{	
		ios_base::iostate _State = ios_base::goodbit;
		bool _Copied = false;
		const sentry _Ok(*this);

		if (_Ok && _Strbuf != 0)
			for (int_type _Meta = _Traits::eof(); ; _Copied = true)
				{	
				try {
				_Meta = _Traits::eq_int_type(_Traits::eof(), _Meta)
					? _Strbuf->sgetc() : _Strbuf->snextc();
				} catch (...) {
					_Myios::setstate(ios_base::failbit);
					throw;
				}

				if (_Traits::eq_int_type(_Traits::eof(), _Meta))
					break;	

				try {
					if (_Traits::eq_int_type(_Traits::eof(),
						_Myios::rdbuf()->sputc(
							_Traits::to_char_type(_Meta))))
						{	
						_State |= ios_base::badbit;
						break;
						}
				} catch (...) { _Myios::setstate(ios_base::badbit, true); }
				}

		ios_base::width(0);
		_Myios::setstate(_Strbuf == 0 ? ios_base::badbit
			: !_Copied ? _State | ios_base::failbit : _State);
		return (*this);
		}

	_Myt&  put(_Elem _Ch)
		{	
		ios_base::iostate _State = ios_base::goodbit;
		const sentry _Ok(*this);

		if (!_Ok)
			_State |= ios_base::badbit;
		else
			{	
			try {
			if (_Traits::eq_int_type(_Traits::eof(),
				_Myios::rdbuf()->sputc(_Ch)))
				_State |= ios_base::badbit;
			} catch (...) { _Myios::setstate(ios_base::badbit, true); }
			}

		_Myios::setstate(_State);
		return (*this);
		}

	_Myt&  write(const _Elem *_Str,
		streamsize _Count)
		{	
 
		if (0 < _Count)
			_Debug_pointer(_Str, L"D:\\Program Files\\Microsoft Visual Studio 10.0\\VC\\include\\ostream", 549);
 

		ios_base::iostate _State = ios_base::goodbit;
		const sentry _Ok(*this);

		if (!_Ok)
			_State |= ios_base::badbit;
		else
			{	
			try {
			if (_Myios::rdbuf()->sputn(_Str, _Count) != _Count)
				_State |= ios_base::badbit;
			} catch (...) { _Myios::setstate(ios_base::badbit, true); }
			}

		_Myios::setstate(_State);
		return (*this);
		}

	_Myt&  flush()
		{	
		ios_base::iostate _State = ios_base::goodbit;
		if (!ios_base::fail() && _Myios::rdbuf()->pubsync() == -1)
			_State |= ios_base::badbit;	
		_Myios::setstate(_State);
		return (*this);
		}

	_Myt&  seekp(pos_type _Pos)
		{	
		if (!ios_base::fail()
			&& (off_type)_Myios::rdbuf()->pubseekpos(_Pos,
				ios_base::out) == _BADOFF)
			_Myios::setstate(ios_base::failbit);
		return (*this);
		}

	_Myt&  seekp(off_type _Off, ios_base::seekdir _Way)
		{	
		if (!ios_base::fail()
			&& (off_type)_Myios::rdbuf()->pubseekoff(_Off, _Way,
				ios_base::out) == _BADOFF)
			_Myios::setstate(ios_base::failbit);
		return (*this);
		}

	pos_type  tellp()
		{	
		if (!ios_base::fail())
			return (_Myios::rdbuf()->pubseekoff(0,
				ios_base::cur, ios_base::out));
		else
			return (pos_type(_BADOFF));
		}
	};

	
template<class _Elem,
	class _Traits> inline
	void swap(basic_ostream<_Elem, _Traits>& _Left,
		basic_ostream<_Elem, _Traits>& _Right)
	{	
	_Left.swap(_Right);
	}

  

















































 









		

template<class _Elem,
	class _Traits> inline
	basic_ostream<_Elem, _Traits>& operator<<(
		basic_ostream<_Elem, _Traits>& _Ostr, const char *_Val)
	{	
	ios_base::iostate _State = ios_base::goodbit;
	streamsize _Count = (streamsize):: strlen(_Val);	
	streamsize _Pad = _Ostr.width() <= 0 || _Ostr.width() <= _Count
		? 0 : _Ostr.width() - _Count;
	const typename basic_ostream<_Elem, _Traits>::sentry _Ok(_Ostr);

	if (!_Ok)
		_State |= ios_base::badbit;
	else
		{	
		try {
		const ctype<_Elem>& _Ctype_fac = use_facet< ctype<_Elem> >(_Ostr.getloc());
		if ((_Ostr.flags() & ios_base::adjustfield) != ios_base::left)
			for (; 0 < _Pad; --_Pad)	
				if (_Traits::eq_int_type(_Traits::eof(),
					_Ostr.rdbuf()->sputc(_Ostr.fill())))
					{	
					_State |= ios_base::badbit;
					break;
					}

		for (; _State == ios_base::goodbit && 0 < _Count; --_Count, ++_Val)
			if (_Traits::eq_int_type(_Traits::eof(),
				_Ostr.rdbuf()->sputc(_Ctype_fac.widen(*_Val))))
					_State |= ios_base::badbit;

		if (_State == ios_base::goodbit)
			for (; 0 < _Pad; --_Pad)	
				if (_Traits::eq_int_type(_Traits::eof(),
					_Ostr.rdbuf()->sputc(_Ostr.fill())))
					{	
					_State |= ios_base::badbit;
					break;
					}
		_Ostr.width(0);
		} catch (...) { (_Ostr).setstate(ios_base::badbit, true); }
		}

	_Ostr.setstate(_State);
	return (_Ostr);
	}

template<class _Elem,
	class _Traits> inline
	basic_ostream<_Elem, _Traits>& operator<<(
		basic_ostream<_Elem, _Traits>& _Ostr, char _Ch)
	{	
	ios_base::iostate _State = ios_base::goodbit;
	const typename basic_ostream<_Elem, _Traits>::sentry _Ok(_Ostr);

	if (_Ok)
		{	
		const ctype<_Elem>& _Ctype_fac = use_facet< ctype<_Elem> >(_Ostr.getloc());
		streamsize _Pad = _Ostr.width() <= 1 ? 0 : _Ostr.width() - 1;

		try {
		if ((_Ostr.flags() & ios_base::adjustfield) != ios_base::left)


		}