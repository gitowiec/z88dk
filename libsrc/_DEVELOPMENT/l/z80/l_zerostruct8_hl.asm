
XLIB l_zerostruct8_hl

LIB l_setmem_hl

l_zerostruct8_hl:

   ; zero an eight-byte struct
   ;
   ; enter : hl = void *struct
   ;
   ; uses  : af, hl
   
   xor a
   jp l_setmem_hl - 16
