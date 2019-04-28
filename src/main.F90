PROGRAM MAIN
    use naivemath
    use bettermath
    use dotmath

    implicit none

    real(kind=4), allocatable, dimension(:,:) :: A4
    real(kind=4), allocatable, dimension(:,:) :: B4
    real(kind=8), allocatable, dimension(:,:) :: A8
    real(kind=8), allocatable, dimension(:,:) :: B8
    real(kind=16), allocatable, dimension(:,:) :: A16
    real(kind=16), allocatable, dimension(:,:) :: B16

    real(kind=4) :: x4
    real(kind=8) :: x8
    real(kind=16) :: x16
    integer, dimension(8) :: sizes
    integer :: i, j, k

    sizes = (/10,20,40,80,160,320,640,1280/)

    do i=8, size(sizes)
        allocate(A4(sizes(i),sizes(i)))
        allocate(B4(sizes(i),sizes(i)))
        allocate(A8(sizes(i),sizes(i)))
        allocate(B8(sizes(i),sizes(i)))
        allocate(A16(sizes(i),sizes(i)))
        allocate(B16(sizes(i),sizes(i)))

        do j=1, sizes(i)
            do k=1, sizes(i)
                call random_number(x4)
                A4(j,k)=x4
                call random_number(x4)
                B4(j,k)=x4

                call random_number(x8)
                A8(j,k)=x8
                call random_number(x8)
                B8(j,k)=x8

                call random_number(x16)
                A16(j,k)=x16
                call random_number(x16)
                B16(j,k)=x16
            end do
        end do

        print *, sizes(i)
        print *, 'kind4'
        call measure_kind4(A4,B4)

        print *, sizes(i)
        print *, 'kind8'
        call measure_kind8(A8,B8)

        print *, sizes(i)
        print *, 'kind16'
        call measure_kind16(A16,B16)

        deallocate(A4)
        deallocate(B4)
        deallocate(A8)
        deallocate(B8)
        deallocate(A16)
        deallocate(B16)
    end do
    !print *, 'j'

    if(allocated(A4)) deallocate(A4)
    if(allocated(B4)) deallocate(B4)
    if(allocated(A8)) deallocate(A8)
    if(allocated(B8)) deallocate(B8)
    if(allocated(A16)) deallocate(A16)
    if(allocated(B16)) deallocate(B16)
    
contains
    
    subroutine measure_kind4(A,B)
        implicit none
        real(kind=4), intent(in), dimension(:,:) :: A, B
        real(kind=4), dimension(:,:), allocatable :: C 
        real(kind=4) :: starttime, endtime
    
        call cpu_time(starttime)
        C=naivmull(A,B)
        call cpu_time(endtime)

        write(*,*) endtime-starttime

        call cpu_time(starttime)
        C=naivmull(A,B)
        call cpu_time(endtime)

        write(*,*) endtime-starttime

        call cpu_time(starttime)
        C=bettmull(A,B)
        call cpu_time(endtime)

        write(*,*) endtime-starttime

        call cpu_time(starttime)
        C=matmul(A,B)
        call cpu_time(endtime)

        write(*,*) endtime-starttime

        if(allocated(C)) deallocate(C)
    end subroutine 

    subroutine measure_kind8(A,B)
        implicit none
        real(kind=8), intent(in), dimension(:,:) :: A, B
        real(kind=8), dimension(:,:), allocatable :: C 
        real(kind=8) :: starttime, endtime
    
        call cpu_time(starttime)
        C=naivmull(A,B)
        call cpu_time(endtime)

        write(*,*) endtime-starttime

        call cpu_time(starttime)
        C=naivmull(A,B)
        call cpu_time(endtime)

        write(*,*) endtime-starttime

        call cpu_time(starttime)
        C=bettmull(A,B)
        call cpu_time(endtime)

        write(*,*) endtime-starttime

        call cpu_time(starttime)
        C=matmul(A,B)
        call cpu_time(endtime)

        write(*,*) endtime-starttime

        if(allocated(C)) deallocate(C)
    end subroutine   

    subroutine measure_kind16(A,B)
        implicit none
        real(kind=16), intent(in), dimension(:,:) :: A, B
        real(kind=16), dimension(:,:), allocatable :: C 
        real(kind=16) :: starttime, endtime
    
        call cpu_time(starttime)
        C=naivmull(A,B)
        call cpu_time(endtime)

        write(*,*) endtime-starttime

        call cpu_time(starttime)
        C=naivmull(A,B)
        call cpu_time(endtime)

        write(*,*) endtime-starttime

        call cpu_time(starttime)
        C=bettmull(A,B)
        call cpu_time(endtime)

        write(*,*) endtime-starttime

        call cpu_time(starttime)
        C=matmul(A,B)
        call cpu_time(endtime)

        write(*,*) endtime-starttime

        if(allocated(C)) deallocate(C)
    end subroutine
END PROGRAM MAIN
