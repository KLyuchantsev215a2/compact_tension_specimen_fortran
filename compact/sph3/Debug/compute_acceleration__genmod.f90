        !COMPILER-GENERATED INTERFACE MODULE: Wed Mar 20 21:41:34 2019
        MODULE COMPUTE_ACCELERATION__genmod
          INTERFACE 
            SUBROUTINE COMPUTE_ACCELERATION(N,H,DH,RHO_0,MU,K,VOL,F,C,  &
     &PK1,X,X_OLD,NABLA_W_0,NABLA_W,W,WPER1,WPER2,WPER3,WPER4,ACC,      &
     &COUNT_HOLE,COUNT_SECTION,INDEX_SECTION,INDEX_HOLE)
              INTEGER(KIND=4) :: COUNT_SECTION
              INTEGER(KIND=4) :: COUNT_HOLE
              INTEGER(KIND=4) :: N
              REAL(KIND=8) :: H
              REAL(KIND=8) :: DH
              REAL(KIND=8) :: RHO_0
              REAL(KIND=8) :: MU
              REAL(KIND=8) :: K
              REAL(KIND=8) :: VOL(N)
              REAL(KIND=8) :: F(2,2,N)
              REAL(KIND=8) :: C(2,2,N)
              REAL(KIND=8) :: PK1(2,2,N)
              REAL(KIND=8) :: X(2,N)
              REAL(KIND=8) :: X_OLD(2,N)
              REAL(KIND=8) :: NABLA_W_0(2,N,N)
              REAL(KIND=8) :: NABLA_W(2,N,N)
              REAL(KIND=8) :: W(N,N)
              REAL(KIND=8) :: WPER1(N,N)
              REAL(KIND=8) :: WPER2(N,N)
              REAL(KIND=8) :: WPER3(N,N)
              REAL(KIND=8) :: WPER4(N,N)
              REAL(KIND=8) :: ACC(2,N)
              INTEGER(KIND=4) :: INDEX_SECTION(COUNT_SECTION)
              INTEGER(KIND=4) :: INDEX_HOLE(COUNT_HOLE)
            END SUBROUTINE COMPUTE_ACCELERATION
          END INTERFACE 
        END MODULE COMPUTE_ACCELERATION__genmod