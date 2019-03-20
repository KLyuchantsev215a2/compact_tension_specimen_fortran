        !COMPILER-GENERATED INTERFACE MODULE: Tue Mar 19 09:46:58 2019
        MODULE COMPUTE_W_COR__genmod
          INTERFACE 
            SUBROUTINE COMPUTE_W_COR(X,XPER,H,N,VOL,W)
              INTEGER(KIND=4) :: N
              REAL(KIND=8) :: X(2,N)
              REAL(KIND=8) :: XPER(2,N)
              REAL(KIND=8) :: H
              REAL(KIND=8) :: VOL(N)
              REAL(KIND=8) :: W(N,N)
            END SUBROUTINE COMPUTE_W_COR
          END INTERFACE 
        END MODULE COMPUTE_W_COR__genmod
