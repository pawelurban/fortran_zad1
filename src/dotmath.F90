module dotmath
    implicit none
    public :: dotmull
    private :: dotmull_kind4, dotmull_kind8, dotmull_kind16

    interface dotmull
        procedure dotmull_kind4, dotmull_kind8, dotmull_kind16
    end interface

contains
    function dotmull_kind4(A,B) result (C)
        real(kind=4), intent(in), dimension(:,:) :: A,B
        real(kind=4) :: C(size(A,1),size(B,2))
        integer :: i,j,k
        do i=1, size(B,2)
            do j=1, size(A,2)
                C(i,j) = dot_product(A(i,1:size(A,2)),B(1:size(B,2),j))
            end do
        end do
    end function

    function dotmull_kind8(A,B) result (C)
        real(kind=8), intent(in), dimension(:,:) :: A,B
        real(kind=8) :: C(size(A,1),size(B,2))
        integer :: i,j,k
        do i=1, size(B,2)
            do j=1, size(A,2)
                C(i,j) = dot_product(A(i,1:size(A,2)),B(1:size(B,2),j))
            end do
        end do
    end function

    function dotmull_kind16(A,B) result (C)
        real(kind=16), intent(in), dimension(:,:) :: A,B
        real(kind=16) :: C(size(A,1),size(B,2))
        integer :: i,j,k
        do i=1, size(B,2)
            do j=1, size(A,2)
                C(i,j) = dot_product(A(i,1:size(A,2)),B(1:size(B,2),j))
            end do
        end do
    end function

end module dotmath

