subroutine Compute_Acceleration(N,h,dh,rho_0,mu,k,vol,F,C,PK1,x,x_old,nabla_W_0,nabla_W,W,Wper1,Wper2,Wper3,Wper4,acc,count_hole,count_section,index_section,index_hole)
    integer :: N,i,j,alpha,beta,k1,k2,count_hole,count_section
    real*8 :: h
    real*8 :: dh
    real*8 :: rho_0
    real*8 :: mu
    real*8 :: k
    real*8 :: vol(N)
    real*8 :: F(2,2,N)
    real*8 :: C(2,2,N)
    real*8 :: PK1(2,2,N)
    real*8 :: x(2,N)
    real*8 :: x_old(2,N)
    real*8 :: nabla_W_0(2,N,N)
    real*8 :: nabla_W(2,N,N)
    real*8 :: W(N,N)
    real*8 ::Wper1(N,N)
    real*8 ::Wper2(N,N)
    real*8 ::Wper3(N,N)
    real*8 ::Wper4(N,N)
    real*8 :: acc(2,N)
    integer :: index_section(count_section)
    integer :: index_hole(count_hole)

   ! call compute_W_cor(x,x,h,N,vol,W)
    !call Compute_nabla_W(x,h,vol,N,W,Wper1,Wper2,Wper3,Wper4,nabla_W,dh)
    call Compute_F(vol,x,x_old,nabla_W_0,N,F)
    call Compute_Stress_PK1(F,C,PK1,mu,k,N)

    acc=0

    do i=1,N
        do j=1,N
            do beta=1,2
                do alpha=1,2
                    acc(alpha,i)=acc(alpha,i)-(vol(j))*PK1(alpha,beta,j)*nabla_W_0(beta,j,i)
                enddo
            enddo
        enddo

        do alpha=1,2
            acc(alpha,i)=acc(alpha,i)/rho_0
        enddo
    enddo
    
 
        do k1=1,count_section
             acc(2,index_section(k1))=0
        enddo
    
        do k2=1,count_hole
             acc(2,index_hole(k2))=acc(2,index_hole(k2))+1
        enddo

    
    return
    end