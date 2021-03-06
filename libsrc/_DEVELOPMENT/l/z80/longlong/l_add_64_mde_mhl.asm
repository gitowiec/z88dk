
SECTION code_clib
SECTION code_l

PUBLIC l_add_64_mde_mhl

l_add_64_mde_mhl:

   ; 64-bit number at address de += 64-bit number at address hl
   ;
   ; enter : de = int64_t *A
   ;         hl = int64_t *B
   ;
   ; exit  : *A += *B
   ;         de = A + 8
   ;         hl = B + 8
   ;
   ; uses  : af, de, hl
   
   ld a,(de)
   add a,(hl)
   inc hl
   ld (de),a
   inc de
   
   ld a,(de)
   adc a,(hl)
   inc hl
   ld (de),a
   inc de
   
   call again

again:

   ld a,(de)
   adc a,(hl)
   inc hl
   ld (de),a
   inc de
   
   ld a,(de)
   adc a,(hl)
   inc hl
   ld (de),a
   inc de
   
   ld a,(de)
   adc a,(hl)
   inc hl
   ld (de),a
   inc de
   
   ret
