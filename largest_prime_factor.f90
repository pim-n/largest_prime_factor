! Largest prime factor using a fast trial division algorithm.
! Copyright © 2022 Pim Nelissen.
! This software is licensed under the MIT license.
! Read more at https://mit-license.org/.

PROGRAM largest_prime_factor
    IMPLICIT NONE
    
    CHARACTER (len = 32) :: input
    INTEGER :: x = 3
    INTEGER :: n

    READ *, n
    
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

    PRINT *, x

END PROGRAM largest_prime_factor
