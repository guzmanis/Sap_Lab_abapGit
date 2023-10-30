*&---------------------------------------------------------------------*
*& Report zdemo_igg
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zdemo_igg.

CLASS lcl_how_many_monster DEFINITION.
  PUBLIC SECTION.
    METHODS: how_many_make_five RETURNING VALUE(rd_how_many) TYPE i.

  PRIVATE SECTION.

ENDCLASS.


CLASS lcl_how_many_monster IMPLEMENTATION.

  METHOD how_many_make_five.
    DO 100 TIMES.

      SELECT COUNT( * )
      FROM sflight
      WHERE carrid = 'LH'.

      CHECK sy-subrc = 0.

        ADD 1 TO rd_how_many.

    ENDDO.
  ENDMETHOD.

ENDCLASS.



**********************************************************************

START-OF-SELECTION.

DATA: how_many type i.
DATA: counter type ref to lcl_how_many_monster.

 CREATE OBJECT counter.
 how_many = counter->how_many_make_five(  ).
 WRITE:/ how_many.
