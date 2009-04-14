USING: alien.fortran kernel math.blas.config namespaces ;
IN: math.blas.ffi

<<
"blas" blas-library blas-fortran-abi [ get ] bi@
add-fortran-library
>>

LIBRARY: blas

! Level 1 BLAS (scalar-vector and vector-vector)

FUNCTION: REAL SDSDOT
    ( INTEGER N, REAL ALPHA, REAL(*) X, INTEGER INCX, REAL(*) Y, INTEGER INCY ) ;
FUNCTION: DOUBLE-PRECISION DSDOT
    ( INTEGER N, DOUBLE-PRECISION(*) X, INTEGER INCX, REAL(*) Y, INTEGER INCY ) ;
FUNCTION: REAL SDOT
    ( INTEGER N, REAL(*) X, INTEGER INCX, REAL(*) Y, INTEGER INCY ) ;
FUNCTION: DOUBLE-PRECISION DDOT
    ( INTEGER N, DOUBLE-PRECISION(*) X, INTEGER INCX, DOUBLE-PRECISION(*) Y, INTEGER INCY ) ;

FUNCTION: COMPLEX CDOTU
    ( INTEGER N, COMPLEX(*) X, INTEGER INCX, COMPLEX(*) Y, INTEGER INCY ) ;
FUNCTION: COMPLEX CDOTC
    ( INTEGER N, COMPLEX(*) X, INTEGER INCX, COMPLEX(*) Y, INTEGER INCY ) ;

FUNCTION: DOUBLE-COMPLEX ZDOTU
    ( INTEGER N, DOUBLE-COMPLEX(*) X, INTEGER INCX, DOUBLE-COMPLEX(*) Y, INTEGER INCY ) ;
FUNCTION: DOUBLE-COMPLEX ZDOTC
    ( INTEGER N, DOUBLE-COMPLEX(*) X, INTEGER INCX, DOUBLE-COMPLEX(*) Y, INTEGER INCY ) ;

FUNCTION: REAL SNRM2
    ( INTEGER N, REAL(*) X, INTEGER INCX ) ;
FUNCTION: REAL SASUM
    ( INTEGER N, REAL(*) X, INTEGER INCX ) ;

FUNCTION: DOUBLE-PRECISION DNRM2
    ( INTEGER N, DOUBLE-PRECISION(*) X, INTEGER INCX ) ;
FUNCTION: DOUBLE-PRECISION DASUM
    ( INTEGER N, DOUBLE-PRECISION(*) X, INTEGER INCX ) ;

FUNCTION: REAL SCNRM2
    ( INTEGER N, COMPLEX(*) X, INTEGER INCX ) ;
FUNCTION: REAL SCASUM
    ( INTEGER N, COMPLEX(*) X, INTEGER INCX ) ;

FUNCTION: DOUBLE-PRECISION DZNRM2
    ( INTEGER N, DOUBLE-COMPLEX(*) X, INTEGER INCX ) ;
FUNCTION: DOUBLE-PRECISION DZASUM
    ( INTEGER N, DOUBLE-COMPLEX(*) X, INTEGER INCX ) ;

FUNCTION: INTEGER ISAMAX
    ( INTEGER N, REAL(*) X, INTEGER INCX ) ;
FUNCTION: INTEGER IDAMAX
    ( INTEGER N, DOUBLE-PRECISION(*) X, INTEGER INCX ) ;
FUNCTION: INTEGER ICAMAX
    ( INTEGER N, COMPLEX(*) X, INTEGER INCX ) ;
FUNCTION: INTEGER IZAMAX
    ( INTEGER N, DOUBLE-COMPLEX(*) X, INTEGER INCX ) ;

SUBROUTINE: SSWAP
    ( INTEGER N, REAL(*) X, INTEGER INCX, REAL(*) Y, INTEGER INCY ) ;
SUBROUTINE: SCOPY
    ( INTEGER N, REAL(*) X, INTEGER INCX, REAL(*) Y, INTEGER INCY ) ;
SUBROUTINE: SAXPY
    ( INTEGER N, REAL ALPHA, REAL(*) X, INTEGER INCX, REAL(*) Y, INTEGER INCY ) ;

SUBROUTINE: DSWAP
    ( INTEGER N, DOUBLE-PRECISION(*) X, INTEGER INCX, DOUBLE-PRECISION(*) Y, INTEGER INCY ) ;
SUBROUTINE: DCOPY
    ( INTEGER N, DOUBLE-PRECISION(*) X, INTEGER INCX, DOUBLE-PRECISION(*) Y, INTEGER INCY ) ;
SUBROUTINE: DAXPY
    ( INTEGER N, DOUBLE-PRECISION ALPHA, DOUBLE-PRECISION(*) X, INTEGER INCX, DOUBLE-PRECISION(*) Y, INTEGER INCY ) ;

SUBROUTINE: CSWAP
    ( INTEGER N, COMPLEX(*) X, INTEGER INCX, COMPLEX(*) Y, INTEGER INCY ) ;
SUBROUTINE: CCOPY
    ( INTEGER N, COMPLEX(*) X, INTEGER INCX, COMPLEX(*) Y, INTEGER INCY ) ;
SUBROUTINE: CAXPY
    ( INTEGER N, COMPLEX ALPHA, COMPLEX(*) X, INTEGER INCX, COMPLEX(*) Y, INTEGER INCY ) ;

SUBROUTINE: ZSWAP
    ( INTEGER N, DOUBLE-COMPLEX(*) X, INTEGER INCX, DOUBLE-COMPLEX(*) Y, INTEGER INCY ) ;
SUBROUTINE: ZCOPY
    ( INTEGER N, DOUBLE-COMPLEX(*) X, INTEGER INCX, DOUBLE-COMPLEX(*) Y, INTEGER INCY ) ;
SUBROUTINE: ZAXPY
    ( INTEGER N, DOUBLE-COMPLEX ALPHA, DOUBLE-COMPLEX(*) X, INTEGER INCX, DOUBLE-COMPLEX(*) Y, INTEGER INCY ) ;

SUBROUTINE: SSCAL
    ( INTEGER N, REAL ALPHA, REAL(*) X, INTEGER INCX ) ;
SUBROUTINE: DSCAL
    ( INTEGER N, DOUBLE-PRECISION ALPHA, DOUBLE-PRECISION(*) X, INTEGER INCX ) ;
SUBROUTINE: CSCAL
    ( INTEGER N, COMPLEX ALPHA, COMPLEX(*) X, INTEGER INCX ) ;
SUBROUTINE: ZSCAL
    ( INTEGER N, DOUBLE-COMPLEX ALPHA, DOUBLE-COMPLEX(*) X, INTEGER INCX ) ;
SUBROUTINE: CSSCAL
    ( INTEGER N, REAL ALPHA, COMPLEX(*) X, INTEGER INCX ) ;
SUBROUTINE: ZDSCAL
    ( INTEGER N, DOUBLE-PRECISION ALPHA, DOUBLE-COMPLEX(*) X, INTEGER INCX ) ;

SUBROUTINE: SROTG
    ( REAL(*) A, REAL(*) B, REAL(*) C, REAL(*) S ) ;
SUBROUTINE: SROTMG
    ( REAL(*) D1, REAL(*) D2, REAL(*) B1, REAL B2, REAL(*) P ) ;
SUBROUTINE: SROT
    ( INTEGER N, REAL(*) X, INTEGER INCX, REAL(*) Y, INTEGER INCY, REAL C, REAL S ) ;
SUBROUTINE: SROTM
    ( INTEGER N, REAL(*) X, INTEGER INCX, REAL(*) Y, INTEGER INCY, REAL(*) P ) ;

SUBROUTINE: DROTG
    ( DOUBLE-PRECISION(*) A, DOUBLE-PRECISION(*) B, DOUBLE-PRECISION(*) C, DOUBLE-PRECISION(*) S ) ;
SUBROUTINE: DROTMG
    ( DOUBLE-PRECISION(*) D1, DOUBLE-PRECISION(*) D2, DOUBLE-PRECISION(*) B1, DOUBLE-PRECISION B2, DOUBLE-PRECISION(*) P ) ;
SUBROUTINE: DROT
    ( INTEGER N, DOUBLE-PRECISION(*) X, INTEGER INCX, DOUBLE-PRECISION(*) Y, INTEGER INCY, DOUBLE-PRECISION C, DOUBLE-PRECISION S ) ;
SUBROUTINE: DROTM
    ( INTEGER N, DOUBLE-PRECISION(*) X, INTEGER INCX, DOUBLE-PRECISION(*) Y, INTEGER INCY, DOUBLE-PRECISION(*) P ) ;
 
! LEVEL 2 BLAS (MATRIX-VECTOR)

SUBROUTINE: SGEMV ( CHARACTER*1 TRANSA, INTEGER M, INTEGER N,
                 REAL ALPHA, REAL(*) A, INTEGER LDA,
                 REAL(*) X, INTEGER INCX, REAL BETA,
                 REAL(*) Y, INTEGER INCY ) ;
SUBROUTINE: SGBMV ( CHARACTER*1 TRANSA, INTEGER M, INTEGER N,
                 INTEGER KL, INTEGER KU, REAL ALPHA,
                 REAL(*) A, INTEGER LDA, REAL(*) X,
                 INTEGER INCX, REAL BETA, REAL(*) Y, INTEGER INCY ) ;
SUBROUTINE: STRMV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, REAL(*) A, INTEGER LDA,
                 REAL(*) X, INTEGER INCX ) ;
SUBROUTINE: STBMV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, INTEGER K, REAL(*) A, INTEGER LDA,
                 REAL(*) X, INTEGER INCX ) ;
SUBROUTINE: STPMV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, REAL(*) AP, REAL(*) X, INTEGER INCX ) ;
SUBROUTINE: STRSV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, REAL(*) A, INTEGER LDA, REAL(*) X,
                 INTEGER INCX ) ;
SUBROUTINE: STBSV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, INTEGER K, REAL(*) A, INTEGER LDA,
                 REAL(*) X, INTEGER INCX ) ;
SUBROUTINE: STPSV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, REAL(*) AP, REAL(*) X, INTEGER INCX ) ;

SUBROUTINE: DGEMV ( CHARACTER*1 TRANSA, INTEGER M, INTEGER N,
                 DOUBLE-PRECISION ALPHA, DOUBLE-PRECISION(*) A, INTEGER LDA,
                 DOUBLE-PRECISION(*) X, INTEGER INCX, DOUBLE-PRECISION BETA,
                 DOUBLE-PRECISION(*) Y, INTEGER INCY ) ;
SUBROUTINE: DGBMV ( CHARACTER*1 TRANSA, INTEGER M, INTEGER N,
                 INTEGER KL, INTEGER KU, DOUBLE-PRECISION ALPHA,
                 DOUBLE-PRECISION(*) A, INTEGER LDA, DOUBLE-PRECISION(*) X,
                 INTEGER INCX, DOUBLE-PRECISION BETA, DOUBLE-PRECISION(*) Y, INTEGER INCY ) ;
SUBROUTINE: DTRMV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, DOUBLE-PRECISION(*) A, INTEGER LDA,
                 DOUBLE-PRECISION(*) X, INTEGER INCX ) ;
SUBROUTINE: DTBMV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, INTEGER K, DOUBLE-PRECISION(*) A, INTEGER LDA,
                 DOUBLE-PRECISION(*) X, INTEGER INCX ) ;
SUBROUTINE: DTPMV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, DOUBLE-PRECISION(*) AP, DOUBLE-PRECISION(*) X, INTEGER INCX ) ;
SUBROUTINE: DTRSV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, DOUBLE-PRECISION(*) A, INTEGER LDA, DOUBLE-PRECISION(*) X,
                 INTEGER INCX ) ;
SUBROUTINE: DTBSV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, INTEGER K, DOUBLE-PRECISION(*) A, INTEGER LDA,
                 DOUBLE-PRECISION(*) X, INTEGER INCX ) ;
SUBROUTINE: DTPSV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, DOUBLE-PRECISION(*) AP, DOUBLE-PRECISION(*) X, INTEGER INCX ) ;

SUBROUTINE: CGEMV ( CHARACTER*1 TRANSA, INTEGER M, INTEGER N,
                 COMPLEX ALPHA, COMPLEX(*) A, INTEGER LDA,
                 COMPLEX(*) X, INTEGER INCX, COMPLEX BETA,
                 COMPLEX(*) Y, INTEGER INCY ) ;
SUBROUTINE: CGBMV ( CHARACTER*1 TRANSA, INTEGER M, INTEGER N,
                 INTEGER KL, INTEGER KU, COMPLEX ALPHA,
                 COMPLEX(*) A, INTEGER LDA, COMPLEX(*) X,
                 INTEGER INCX, COMPLEX BETA, COMPLEX(*) Y, INTEGER INCY ) ;
SUBROUTINE: CTRMV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, COMPLEX(*) A, INTEGER LDA,
                 COMPLEX(*) X, INTEGER INCX ) ;
SUBROUTINE: CTBMV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, INTEGER K, COMPLEX(*) A, INTEGER LDA,
                 COMPLEX(*) X, INTEGER INCX ) ;
SUBROUTINE: CTPMV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, COMPLEX(*) AP, COMPLEX(*) X, INTEGER INCX ) ;
SUBROUTINE: CTRSV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, COMPLEX(*) A, INTEGER LDA, COMPLEX(*) X,
                 INTEGER INCX ) ;
SUBROUTINE: CTBSV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, INTEGER K, COMPLEX(*) A, INTEGER LDA,
                 COMPLEX(*) X, INTEGER INCX ) ;
SUBROUTINE: CTPSV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, COMPLEX(*) AP, COMPLEX(*) X, INTEGER INCX ) ;

SUBROUTINE: ZGEMV ( CHARACTER*1 TRANSA, INTEGER M, INTEGER N,
                 DOUBLE-COMPLEX ALPHA, DOUBLE-COMPLEX(*) A, INTEGER LDA,
                 DOUBLE-COMPLEX(*) X, INTEGER INCX, DOUBLE-COMPLEX BETA,
                 DOUBLE-COMPLEX(*) Y, INTEGER INCY ) ;
SUBROUTINE: ZGBMV ( CHARACTER*1 TRANSA, INTEGER M, INTEGER N,
                 INTEGER KL, INTEGER KU, DOUBLE-COMPLEX ALPHA,
                 DOUBLE-COMPLEX(*) A, INTEGER LDA, DOUBLE-COMPLEX(*) X,
                 INTEGER INCX, DOUBLE-COMPLEX BETA, DOUBLE-COMPLEX(*) Y, INTEGER INCY ) ;
SUBROUTINE: ZTRMV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, DOUBLE-COMPLEX(*) A, INTEGER LDA,
                 DOUBLE-COMPLEX(*) X, INTEGER INCX ) ;
SUBROUTINE: ZTBMV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, INTEGER K, DOUBLE-COMPLEX(*) A, INTEGER LDA,
                 DOUBLE-COMPLEX(*) X, INTEGER INCX ) ;
SUBROUTINE: ZTPMV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, DOUBLE-COMPLEX(*) AP, DOUBLE-COMPLEX(*) X, INTEGER INCX ) ;
SUBROUTINE: ZTRSV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, DOUBLE-COMPLEX(*) A, INTEGER LDA, DOUBLE-COMPLEX(*) X,
                 INTEGER INCX ) ;
SUBROUTINE: ZTBSV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, INTEGER K, DOUBLE-COMPLEX(*) A, INTEGER LDA,
                 DOUBLE-COMPLEX(*) X, INTEGER INCX ) ;
SUBROUTINE: ZTPSV ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANSA, CHARACTER*1 DIAG,
                 INTEGER N, DOUBLE-COMPLEX(*) AP, DOUBLE-COMPLEX(*) X, INTEGER INCX ) ;


SUBROUTINE: SSYMV ( CHARACTER*1 UPLO,
                 INTEGER N, REAL ALPHA, REAL(*) A,
                 INTEGER LDA, REAL(*) X, INTEGER INCX,
                 REAL BETA, REAL(*) Y, INTEGER INCY ) ;
SUBROUTINE: SSBMV ( CHARACTER*1 UPLO,
                 INTEGER N, INTEGER K, REAL ALPHA, REAL(*) A,
                 INTEGER LDA, REAL(*) X, INTEGER INCX,
                 REAL BETA, REAL(*) Y, INTEGER INCY ) ;
SUBROUTINE: SSPMV ( CHARACTER*1 UPLO,
                 INTEGER N, REAL ALPHA, REAL(*) AP,
                 REAL(*) X, INTEGER INCX,
                 REAL BETA, REAL(*) Y, INTEGER INCY ) ;
SUBROUTINE: SGER ( INTEGER M, INTEGER N,
                REAL ALPHA, REAL(*) X, INTEGER INCX,
                REAL(*) Y, INTEGER INCY, REAL(*) A, INTEGER LDA ) ;
SUBROUTINE: SSYR ( CHARACTER*1 UPLO,
                INTEGER N, REAL ALPHA, REAL(*) X,
                INTEGER INCX, REAL(*) A, INTEGER LDA ) ;
SUBROUTINE: SSPR ( CHARACTER*1 UPLO,
                INTEGER N, REAL ALPHA, REAL(*) X,
                INTEGER INCX, REAL(*) AP ) ;
SUBROUTINE: SSYR2 ( CHARACTER*1 UPLO,
                INTEGER N, REAL ALPHA, REAL(*) X,
                INTEGER INCX, REAL(*) Y, INTEGER INCY, REAL(*) A,
                INTEGER LDA ) ;
SUBROUTINE: SSPR2 ( CHARACTER*1 UPLO,
                INTEGER N, REAL ALPHA, REAL(*) X,
                INTEGER INCX, REAL(*) Y, INTEGER INCY, REAL(*) A ) ;

SUBROUTINE: DSYMV ( CHARACTER*1 UPLO,
                 INTEGER N, DOUBLE-PRECISION ALPHA, DOUBLE-PRECISION(*) A,
                 INTEGER LDA, DOUBLE-PRECISION(*) X, INTEGER INCX,
                 DOUBLE-PRECISION BETA, DOUBLE-PRECISION(*) Y, INTEGER INCY ) ;
SUBROUTINE: DSBMV ( CHARACTER*1 UPLO,
                 INTEGER N, INTEGER K, DOUBLE-PRECISION ALPHA, DOUBLE-PRECISION(*) A,
                 INTEGER LDA, DOUBLE-PRECISION(*) X, INTEGER INCX,
                 DOUBLE-PRECISION BETA, DOUBLE-PRECISION(*) Y, INTEGER INCY ) ;
SUBROUTINE: DSPMV ( CHARACTER*1 UPLO,
                 INTEGER N, DOUBLE-PRECISION ALPHA, DOUBLE-PRECISION(*) AP,
                 DOUBLE-PRECISION(*) X, INTEGER INCX,
                 DOUBLE-PRECISION BETA, DOUBLE-PRECISION(*) Y, INTEGER INCY ) ;
SUBROUTINE: DGER ( INTEGER M, INTEGER N,
                DOUBLE-PRECISION ALPHA, DOUBLE-PRECISION(*) X, INTEGER INCX,
                DOUBLE-PRECISION(*) Y, INTEGER INCY, DOUBLE-PRECISION(*) A, INTEGER LDA ) ;
SUBROUTINE: DSYR ( CHARACTER*1 UPLO,
                INTEGER N, DOUBLE-PRECISION ALPHA, DOUBLE-PRECISION(*) X,
                INTEGER INCX, DOUBLE-PRECISION(*) A, INTEGER LDA ) ;
SUBROUTINE: DSPR ( CHARACTER*1 UPLO,
                INTEGER N, DOUBLE-PRECISION ALPHA, DOUBLE-PRECISION(*) X,
                INTEGER INCX, DOUBLE-PRECISION(*) AP ) ;
SUBROUTINE: DSYR2 ( CHARACTER*1 UPLO,
                INTEGER N, DOUBLE-PRECISION ALPHA, DOUBLE-PRECISION(*) X,
                INTEGER INCX, DOUBLE-PRECISION(*) Y, INTEGER INCY, DOUBLE-PRECISION(*) A,
                INTEGER LDA ) ;
SUBROUTINE: DSPR2 ( CHARACTER*1 UPLO,
                INTEGER N, DOUBLE-PRECISION ALPHA, DOUBLE-PRECISION(*) X,
                INTEGER INCX, DOUBLE-PRECISION(*) Y, INTEGER INCY, DOUBLE-PRECISION(*) A ) ;


SUBROUTINE: CHEMV ( CHARACTER*1 UPLO,
                 INTEGER N, COMPLEX ALPHA, COMPLEX(*) A,
                 INTEGER LDA, COMPLEX(*) X, INTEGER INCX,
                 COMPLEX BETA, COMPLEX(*) Y, INTEGER INCY ) ;
SUBROUTINE: CHBMV ( CHARACTER*1 UPLO,
                 INTEGER N, INTEGER K, COMPLEX ALPHA, COMPLEX(*) A,
                 INTEGER LDA, COMPLEX(*) X, INTEGER INCX,
                 COMPLEX BETA, COMPLEX(*) Y, INTEGER INCY ) ;
SUBROUTINE: CHPMV ( CHARACTER*1 UPLO,
                 INTEGER N, COMPLEX ALPHA, COMPLEX(*) AP,
                 COMPLEX(*) X, INTEGER INCX,
                 COMPLEX BETA, COMPLEX(*) Y, INTEGER INCY ) ;
SUBROUTINE: CGERU ( INTEGER M, INTEGER N,
                 COMPLEX ALPHA, COMPLEX(*) X, INTEGER INCX,
                 COMPLEX(*) Y, INTEGER INCY, COMPLEX(*) A, INTEGER LDA ) ;
SUBROUTINE: CGERC ( INTEGER M, INTEGER N,
                 COMPLEX ALPHA, COMPLEX(*) X, INTEGER INCX,
                 COMPLEX(*) Y, INTEGER INCY, COMPLEX(*) A, INTEGER LDA ) ;
SUBROUTINE: CHER ( CHARACTER*1 UPLO,
                INTEGER N, REAL ALPHA, COMPLEX(*) X, INTEGER INCX,
                COMPLEX(*) A, INTEGER LDA ) ;
SUBROUTINE: CHPR ( CHARACTER*1 UPLO,
                INTEGER N, REAL ALPHA, COMPLEX(*) X,
                INTEGER INCX, COMPLEX(*) A ) ;
SUBROUTINE: CHER2 ( CHARACTER*1 UPLO, INTEGER N,
                COMPLEX ALPHA, COMPLEX(*) X, INTEGER INCX,
                COMPLEX(*) Y, INTEGER INCY, COMPLEX(*) A, INTEGER LDA ) ;
SUBROUTINE: CHPR2 ( CHARACTER*1 UPLO, INTEGER N,
                COMPLEX ALPHA, COMPLEX(*) X, INTEGER INCX,
                COMPLEX(*) Y, INTEGER INCY, COMPLEX(*) AP ) ;

SUBROUTINE: ZHEMV ( CHARACTER*1 UPLO,
                 INTEGER N, DOUBLE-COMPLEX ALPHA, DOUBLE-COMPLEX(*) A,
                 INTEGER LDA, DOUBLE-COMPLEX(*) X, INTEGER INCX,
                 DOUBLE-COMPLEX BETA, DOUBLE-COMPLEX(*) Y, INTEGER INCY ) ;
SUBROUTINE: ZHBMV ( CHARACTER*1 UPLO,
                 INTEGER N, INTEGER K, DOUBLE-COMPLEX ALPHA, DOUBLE-COMPLEX(*) A,
                 INTEGER LDA, DOUBLE-COMPLEX(*) X, INTEGER INCX,
                 DOUBLE-COMPLEX BETA, DOUBLE-COMPLEX(*) Y, INTEGER INCY ) ;
SUBROUTINE: ZHPMV ( CHARACTER*1 UPLO,
                 INTEGER N, DOUBLE-COMPLEX ALPHA, DOUBLE-COMPLEX(*) AP,
                 DOUBLE-COMPLEX(*) X, INTEGER INCX,
                 DOUBLE-COMPLEX BETA, DOUBLE-COMPLEX(*) Y, INTEGER INCY ) ;
SUBROUTINE: ZGERU ( INTEGER M, INTEGER N,
                 DOUBLE-COMPLEX ALPHA, DOUBLE-COMPLEX(*) X, INTEGER INCX,
                 DOUBLE-COMPLEX(*) Y, INTEGER INCY, DOUBLE-COMPLEX(*) A, INTEGER LDA ) ;
SUBROUTINE: ZGERC ( INTEGER M, INTEGER N,
                 DOUBLE-COMPLEX ALPHA, DOUBLE-COMPLEX(*) X, INTEGER INCX,
                 DOUBLE-COMPLEX(*) Y, INTEGER INCY, DOUBLE-COMPLEX(*) A, INTEGER LDA ) ;
SUBROUTINE: ZHER ( CHARACTER*1 UPLO,
                INTEGER N, REAL ALPHA, DOUBLE-COMPLEX(*) X, INTEGER INCX,
                DOUBLE-COMPLEX(*) A, INTEGER LDA ) ;
SUBROUTINE: ZHPR ( CHARACTER*1 UPLO,
                INTEGER N, REAL ALPHA, DOUBLE-COMPLEX(*) X,
                INTEGER INCX, DOUBLE-COMPLEX(*) A ) ;
SUBROUTINE: ZHER2 ( CHARACTER*1 UPLO, INTEGER N,
                DOUBLE-COMPLEX ALPHA, DOUBLE-COMPLEX(*) X, INTEGER INCX,
                DOUBLE-COMPLEX(*) Y, INTEGER INCY, DOUBLE-COMPLEX(*) A, INTEGER LDA ) ;
SUBROUTINE: ZHPR2 ( CHARACTER*1 UPLO, INTEGER N,
                DOUBLE-COMPLEX ALPHA, DOUBLE-COMPLEX(*) X, INTEGER INCX,
                DOUBLE-COMPLEX(*) Y, INTEGER INCY, DOUBLE-COMPLEX(*) AP ) ;

! LEVEL 3 BLAS (MATRIX-MATRIX) 

SUBROUTINE: SGEMM ( CHARACTER*1 TRANSA,
                 CHARACTER*1 TRANSB, INTEGER M, INTEGER N,
                 INTEGER K, REAL ALPHA, REAL(*) A,
                 INTEGER LDA, REAL(*) B, INTEGER LDB,
                 REAL BETA, REAL(*) C, INTEGER LDC ) ;
SUBROUTINE: SSYMM ( CHARACTER*1 SIDE,
                 CHARACTER*1 UPLO, INTEGER M, INTEGER N,
                 REAL ALPHA, REAL(*) A, INTEGER LDA,
                 REAL(*) B, INTEGER LDB, REAL BETA,
                 REAL(*) C, INTEGER LDC ) ;
SUBROUTINE: SSYRK ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANS, INTEGER N, INTEGER K,
                 REAL ALPHA, REAL(*) A, INTEGER LDA,
                 REAL BETA, REAL(*) C, INTEGER LDC ) ;
SUBROUTINE: SSYR2K ( CHARACTER*1 UPLO,
                  CHARACTER*1 TRANS, INTEGER N, INTEGER K,
                  REAL ALPHA, REAL(*) A, INTEGER LDA,
                  REAL(*) B, INTEGER LDB, REAL BETA,
                  REAL(*) C, INTEGER LDC ) ;
SUBROUTINE: STRMM ( CHARACTER*1 SIDE,
                 CHARACTER*1 UPLO, CHARACTER*1 TRANSA,
                 CHARACTER*1 DIAG, INTEGER M, INTEGER N,
                 REAL ALPHA, REAL(*) A, INTEGER LDA,
                 REAL(*) B, INTEGER LDB ) ;
SUBROUTINE: STRSM ( CHARACTER*1 SIDE,
                 CHARACTER*1 UPLO, CHARACTER*1 TRANSA,
                 CHARACTER*1 DIAG, INTEGER M, INTEGER N,
                 REAL ALPHA, REAL(*) A, INTEGER LDA,
                 REAL(*) B, INTEGER LDB ) ;

SUBROUTINE: DGEMM ( CHARACTER*1 TRANSA,
                 CHARACTER*1 TRANSB, INTEGER M, INTEGER N,
                 INTEGER K, DOUBLE-PRECISION ALPHA, DOUBLE-PRECISION(*) A,
                 INTEGER LDA, DOUBLE-PRECISION(*) B, INTEGER LDB,
                 DOUBLE-PRECISION BETA, DOUBLE-PRECISION(*) C, INTEGER LDC ) ;
SUBROUTINE: DSYMM ( CHARACTER*1 SIDE,
                 CHARACTER*1 UPLO, INTEGER M, INTEGER N,
                 DOUBLE-PRECISION ALPHA, DOUBLE-PRECISION(*) A, INTEGER LDA,
                 DOUBLE-PRECISION(*) B, INTEGER LDB, DOUBLE-PRECISION BETA,
                 DOUBLE-PRECISION(*) C, INTEGER LDC ) ;
SUBROUTINE: DSYRK ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANS, INTEGER N, INTEGER K,
                 DOUBLE-PRECISION ALPHA, DOUBLE-PRECISION(*) A, INTEGER LDA,
                 DOUBLE-PRECISION BETA, DOUBLE-PRECISION(*) C, INTEGER LDC ) ;
SUBROUTINE: DSYR2K ( CHARACTER*1 UPLO,
                  CHARACTER*1 TRANS, INTEGER N, INTEGER K,
                  DOUBLE-PRECISION ALPHA, DOUBLE-PRECISION(*) A, INTEGER LDA,
                  DOUBLE-PRECISION(*) B, INTEGER LDB, DOUBLE-PRECISION BETA,
                  DOUBLE-PRECISION(*) C, INTEGER LDC ) ;
SUBROUTINE: DTRMM ( CHARACTER*1 SIDE,
                 CHARACTER*1 UPLO, CHARACTER*1 TRANSA,
                 CHARACTER*1 DIAG, INTEGER M, INTEGER N,
                 DOUBLE-PRECISION ALPHA, DOUBLE-PRECISION(*) A, INTEGER LDA,
                 DOUBLE-PRECISION(*) B, INTEGER LDB ) ;
SUBROUTINE: DTRSM ( CHARACTER*1 SIDE,
                 CHARACTER*1 UPLO, CHARACTER*1 TRANSA,
                 CHARACTER*1 DIAG, INTEGER M, INTEGER N,
                 DOUBLE-PRECISION ALPHA, DOUBLE-PRECISION(*) A, INTEGER LDA,
                 DOUBLE-PRECISION(*) B, INTEGER LDB ) ;

SUBROUTINE: CGEMM ( CHARACTER*1 TRANSA,
                 CHARACTER*1 TRANSB, INTEGER M, INTEGER N,
                 INTEGER K, COMPLEX ALPHA, COMPLEX(*) A,
                 INTEGER LDA, COMPLEX(*) B, INTEGER LDB,
                 COMPLEX BETA, COMPLEX(*) C, INTEGER LDC ) ;
SUBROUTINE: CSYMM ( CHARACTER*1 SIDE,
                 CHARACTER*1 UPLO, INTEGER M, INTEGER N,
                 COMPLEX ALPHA, COMPLEX(*) A, INTEGER LDA,
                 COMPLEX(*) B, INTEGER LDB, COMPLEX BETA,
                 COMPLEX(*) C, INTEGER LDC ) ;
SUBROUTINE: CSYRK ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANS, INTEGER N, INTEGER K,
                 COMPLEX ALPHA, COMPLEX(*) A, INTEGER LDA,
                 COMPLEX BETA, COMPLEX(*) C, INTEGER LDC ) ;
SUBROUTINE: CSYR2K ( CHARACTER*1 UPLO,
                  CHARACTER*1 TRANS, INTEGER N, INTEGER K,
                  COMPLEX ALPHA, COMPLEX(*) A, INTEGER LDA,
                  COMPLEX(*) B, INTEGER LDB, COMPLEX BETA,
                  COMPLEX(*) C, INTEGER LDC ) ;
SUBROUTINE: CTRMM ( CHARACTER*1 SIDE,
                 CHARACTER*1 UPLO, CHARACTER*1 TRANSA,
                 CHARACTER*1 DIAG, INTEGER M, INTEGER N,
                 COMPLEX ALPHA, COMPLEX(*) A, INTEGER LDA,
                 COMPLEX(*) B, INTEGER LDB ) ;
SUBROUTINE: CTRSM ( CHARACTER*1 SIDE,
                 CHARACTER*1 UPLO, CHARACTER*1 TRANSA,
                 CHARACTER*1 DIAG, INTEGER M, INTEGER N,
                 COMPLEX ALPHA, COMPLEX(*) A, INTEGER LDA,
                 COMPLEX(*) B, INTEGER LDB ) ;

SUBROUTINE: ZGEMM ( CHARACTER*1 TRANSA,
                 CHARACTER*1 TRANSB, INTEGER M, INTEGER N,
                 INTEGER K, DOUBLE-COMPLEX ALPHA, DOUBLE-COMPLEX(*) A,
                 INTEGER LDA, DOUBLE-COMPLEX(*) B, INTEGER LDB,
                 DOUBLE-COMPLEX BETA, DOUBLE-COMPLEX(*) C, INTEGER LDC ) ;
SUBROUTINE: ZSYMM ( CHARACTER*1 SIDE,
                 CHARACTER*1 UPLO, INTEGER M, INTEGER N,
                 DOUBLE-COMPLEX ALPHA, DOUBLE-COMPLEX(*) A, INTEGER LDA,
                 DOUBLE-COMPLEX(*) B, INTEGER LDB, DOUBLE-COMPLEX BETA,
                 DOUBLE-COMPLEX(*) C, INTEGER LDC ) ;
SUBROUTINE: ZSYRK ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANS, INTEGER N, INTEGER K,
                 DOUBLE-COMPLEX ALPHA, DOUBLE-COMPLEX(*) A, INTEGER LDA,
                 DOUBLE-COMPLEX BETA, DOUBLE-COMPLEX(*) C, INTEGER LDC ) ;
SUBROUTINE: ZSYR2K ( CHARACTER*1 UPLO,
                  CHARACTER*1 TRANS, INTEGER N, INTEGER K,
                  DOUBLE-COMPLEX ALPHA, DOUBLE-COMPLEX(*) A, INTEGER LDA,
                  DOUBLE-COMPLEX(*) B, INTEGER LDB, DOUBLE-COMPLEX BETA,
                  DOUBLE-COMPLEX(*) C, INTEGER LDC ) ;
SUBROUTINE: ZTRMM ( CHARACTER*1 SIDE,
                 CHARACTER*1 UPLO, CHARACTER*1 TRANSA,
                 CHARACTER*1 DIAG, INTEGER M, INTEGER N,
                 DOUBLE-COMPLEX ALPHA, DOUBLE-COMPLEX(*) A, INTEGER LDA,
                 DOUBLE-COMPLEX(*) B, INTEGER LDB ) ;
SUBROUTINE: ZTRSM ( CHARACTER*1 SIDE,
                 CHARACTER*1 UPLO, CHARACTER*1 TRANSA,
                 CHARACTER*1 DIAG, INTEGER M, INTEGER N,
                 DOUBLE-COMPLEX ALPHA, DOUBLE-COMPLEX(*) A, INTEGER LDA,
                 DOUBLE-COMPLEX(*) B, INTEGER LDB ) ;

SUBROUTINE: CHEMM ( CHARACTER*1 SIDE,
                 CHARACTER*1 UPLO, INTEGER M, INTEGER N,
                 COMPLEX ALPHA, COMPLEX(*) A, INTEGER LDA,
                 COMPLEX(*) B, INTEGER LDB, COMPLEX BETA,
                 COMPLEX(*) C, INTEGER LDC ) ;
SUBROUTINE: CHERK ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANS, INTEGER N, INTEGER K,
                 REAL ALPHA, COMPLEX(*) A, INTEGER LDA,
                 REAL BETA, COMPLEX(*) C, INTEGER LDC ) ;
SUBROUTINE: CHER2K ( CHARACTER*1 UPLO,
                  CHARACTER*1 TRANS, INTEGER N, INTEGER K,
                  COMPLEX ALPHA, COMPLEX(*) A, INTEGER LDA,
                  COMPLEX(*) B, INTEGER LDB, REAL BETA,
                  COMPLEX(*) C, INTEGER LDC ) ;
SUBROUTINE: ZHEMM ( CHARACTER*1 SIDE,
                 CHARACTER*1 UPLO, INTEGER M, INTEGER N,
                 DOUBLE-COMPLEX ALPHA, DOUBLE-COMPLEX(*) A, INTEGER LDA,
                 DOUBLE-COMPLEX(*) B, INTEGER LDB, DOUBLE-COMPLEX BETA,
                 DOUBLE-COMPLEX(*) C, INTEGER LDC ) ;
SUBROUTINE: ZHERK ( CHARACTER*1 UPLO,
                 CHARACTER*1 TRANS, INTEGER N, INTEGER K,
                 REAL ALPHA, DOUBLE-COMPLEX(*) A, INTEGER LDA,
                 REAL BETA, DOUBLE-COMPLEX(*) C, INTEGER LDC ) ;
SUBROUTINE: ZHER2K ( CHARACTER*1 UPLO,
                  CHARACTER*1 TRANS, INTEGER N, INTEGER K,
                  DOUBLE-COMPLEX ALPHA, DOUBLE-COMPLEX(*) A, INTEGER LDA,
                  DOUBLE-COMPLEX(*) B, INTEGER LDB, REAL BETA,
                  DOUBLE-COMPLEX(*) C, INTEGER LDC ) ;
