class ZCX_DEMO_IGG definition
  public
  inheriting from CX_STATIC_CHECK
  final
  create private .

public section.

  constants MESSAGE type SOTR_CONC value '73A93DF394E61EEE9DC9671D01D88D5D' ##NO_TEXT.
  data TEXT type STRING .

  methods CONSTRUCTOR
    importing
      !TEXTID like TEXTID optional
      !PREVIOUS like PREVIOUS optional
      !TEXT type STRING optional .
protected section.
private section.
ENDCLASS.



CLASS ZCX_DEMO_IGG IMPLEMENTATION.


  method CONSTRUCTOR.
CALL METHOD SUPER->CONSTRUCTOR
EXPORTING
TEXTID = TEXTID
PREVIOUS = PREVIOUS
.
me->TEXT = TEXT .
  endmethod.
ENDCLASS.
