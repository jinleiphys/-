      program spherical
      implicit none
      complex*16 :: ylm,iu
      integer :: l,m 
      real*8 :: pi, theta, phi 
      
      pi=acos(-1.0d0)
      iu=cmplx(0.0d0,1.0d0)
      
      write(*,*) "please enter l and m"
      read(*,*) l,m
      write(*,*) "please enter theta and phi in degree"
      read(*,*) theta, phi 
      
      
       theta=theta*pi/180.
       phi=phi*pi/180.
      
      
       Ylm=(-1.0)**m * exp(iu*m*phi) * cos( (l+0.5)*theta - 0.25*pi 
     &  + 0.5*m*pi ) / pi / sqrt(sin(theta))
     
     
        write(*,*) "Ylm=", ylm
        
        
        write(*,*) "conjugation check"
        
         write(*,*) "Ylm*=", CONJG(ylm)
         
        Ylm=(-1.0)**m * (-1.0)**(-m) * exp(iu*(-m)*phi) * 
     &     cos( (l+0.5)*theta - 0.25*pi+ 0.5*(-m)*pi ) 
     &     / pi / sqrt(sin(theta))
         
         write(*,*) "(-1)^m Yl(-m)=", Ylm
        

      
      
      
      
      
      
      end program 