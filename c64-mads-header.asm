; mads c64-mads.asm -o:c64-mads.prg

      opt h-

      org [f($080b0801),a(10),$9e,c'2064',a(0),f(0)],$810

      ldx #0
      jmp entry
@     sta $400,x
      inx
entry lda text,x
      bne @-
      rts

text  .by +$c0 'MADS'
      .by 0