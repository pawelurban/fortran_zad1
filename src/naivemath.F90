module naivemath
    implicit none
    public :: naivmull 
    private :: naivmull_kind4, naivmull_kind8, naivmull_kind16
    
    interface naivmull
        procedure naivmull_kind4, naivmull_kind8, naivmull_kind16
    end interface

contains
    function naivmull_kind4(A,B) result (C)
        real(kind=4), intent(in), dimension(:,:) :: A,B
        real(kind=4) :: C(size(A,1),size(B,2))
        integer :: i,j,k
        do i = 1, size(A,1)
            do j=1, size(B,2)
                do k=1,size(A,2)
                    C(i,j) = C(i,j) + A(i,k)*B(k,j)
                end do
            end do
        end do
    end function

    function naivmull_kind8(A,B) result (C)
        real(kind=8), intent(in), dimension(:,:) :: A,B
        real(kind=8) :: C(size(A,1),size(B,2))
        integer :: i,j,k
        do i = 1, size(A,1)
            do j=1, size(B,2)
                do k=1,size(A,2)
                    C(i,j) = C(i,j) + A(i,k)*B(k,j)
                end do
            end do
        end do
    end function

    function naivmull_kind16(A,B) result (C)
        real(kind=16), intent(in), dimension(:,:) :: A,B
        real(kind=16) :: C(size(A,1),size(B,2))
        integer :: i,j,k
        do i = 1, size(A,1)
            do j=1, size(B,2)
                do k=1,size(A,2)
                    C(i,j) = C(i,j) + A(i,k)*B(k,j)
                end do
            end do
        end do
    end function

end module naivemath

