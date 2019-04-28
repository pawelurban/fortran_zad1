module bettermath
    implicit none
    public :: bettmull
    private :: bettmull_kind4, bettmull_kind8, bettmull_kind16
    
    interface bettmull
        procedure bettmull_kind4, bettmull_kind8, bettmull_kind16
    end interface

contains
    function bettmull_kind4(A,B) result (C)
        real(kind=4), intent(in), dimension(:,:) :: A,B
        real(kind=4) :: C(size(A,1),size(B,2))
        integer :: i,j,k
        do j = 1, size(B,2)
            do k=1, size(A,2)
                do i=1, size(A,1)
                    C(i,j) = C(i,j) + A(i,k)*B(k,j)
                end do
            end do
        end do
    end function

    function bettmull_kind8(A,B) result (C)
        real(kind=8), intent(in), dimension(:,:) :: A,B
        real(kind=8) :: C(size(A,1),size(B,2))
        integer :: i,j,k
        do j = 1, size(B,2)
            do k=1, size(A,2)
                do i=1, size(A,1)
                    C(i,j) = C(i,j) + A(i,k)*B(k,j)
                end do
            end do
        end do
    end function

    function bettmull_kind16(A,B) result (C)
        real(kind=16), intent(in), dimension(:,:) :: A,B
        real(kind=16) :: C(size(A,1),size(B,2))
        integer :: i,j,k
        do j = 1, size(B,2)
            do k=1, size(A,2)
                do i=1, size(A,1)
                    C(i,j) = C(i,j) + A(i,k)*B(k,j)
                end do
            end do
        end do
    end function

end module bettermath

