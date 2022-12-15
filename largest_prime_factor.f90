! Largest prime factor using a fast trial division algorithm.
! Copyright © 2022 Pim Nelissen.
! This software is licensed under the MIT license.
! Read more at https://mit-license.org/.

PROGRAM largest_prime_factor
    IMPLICIT NONE
    
    CHARACTER (len = 20) :: input
    INTEGER :: x = 3
    INTEGER :: n
    INTEGER :: chosen_number

    PRINT *, "Enter a positive integer between 1 and 9223372036854775807:"
    READ *, n
    chosen_number = n
    
    DO WHILE (MOD(n,2) .eq. 0)
        n = n/2
    ENDDO

    DO WHILE (n .gt. 1)
        IF (MOD(n,x) .eq. 0) THEN
            n = n/x
        ELSE
            x = x + 2
        ENDIF
    ENDDO

    PRINT '(4g0)', "The largest prime factor of ", chosen_number, " is ", x

END PROGRAM largest_prime_factor
