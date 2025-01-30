CLASS zcl_scrabble_score DEFINITION PUBLIC .
    PUBLIC SECTION.
      METHODS score
        IMPORTING
          input         TYPE string OPTIONAL
        RETURNING
          VALUE(result) TYPE i.
    PROTECTED SECTION.
    PRIVATE SECTION.
  ENDCLASS.
  CLASS zcl_scrabble_score IMPLEMENTATION.
    METHOD score.
   data(lv_in) = to_upper( input ).
    data: lv_len type i,
          lv_temp type i value 0,
          lv_total type i value 0,
  lv_C type c.
    lv_len = strlen( lv_in ).
    do lv_len times.
      lv_c = lv_in+lv_temp(1).
      if lv_c ca 'AEIOULNRST'.
        lv_total += 1.
      elseif lv_C ca 'DG' .
        lv_total += 2.
      elseif lv_c ca 'BCMP'. 
        lv_total += 3.
      elseif lv_c ca 'FHVWY'.
        lv_total += 4.
      elseif lv_c ca 'K'.
        lv_total += 5.
      elseif lv_c ca 'JX'.
        lv_total += 8.
      elseif lv_c ca 'QZ'.
        lv_total += 10.
      endif..
    lv_temp += 1.
    enddo.
    result = lv_total.
    ENDMETHOD. 
  ENDCLASS.
  