implicit none
real(8),allocatable::x(:,:),y(:,:)
integer::i,j
allocate(x(5000,5000))
allocate(y(5000,5000))

        do i=1,5000
                do j=1,5000
                        x(j,i)=0.0D+0
                        y(j,i)=dble(i)
                enddo
        enddo
        do i=1,5000
                do j=1,5000
                        x(j,i) = x(j,i)+y(j,i)
                enddo
        enddo
        write(*,*)x(5000,5000)
end
