/* Formatted on 2001/07/13 17:50 (RevealNet Formatter v4.4.0) */
CREATE OR REPLACE PACKAGE utunittest
IS

/************************************************************************
GNU General Public License for utPLSQL

Copyright (C) 2000-2003 
Steven Feuerstein and the utPLSQL Project
(steven@stevenfeuerstein.com)

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program (see license.txt); if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
************************************************************************
$Log$
************************************************************************/

   c_name     CONSTANT CHAR (9) := 'UNIT TEST';
   c_abbrev   CONSTANT CHAR (2) := 'UT';

   /* UT##NNN */
   FUNCTION name (
      ut_in    IN   ut_unittest%ROWTYPE
   )
      RETURN VARCHAR2;
      
   /* SCHEMA.UTP##NNN.UT##NNN */
   FUNCTION full_name (
      utp_in   IN   ut_utp%ROWTYPE,
      ut_in    IN   ut_unittest%ROWTYPE
   )
      RETURN VARCHAR2;      
      
  FUNCTION name (
      id_in IN ut_unittest.id%TYPE
   )
      RETURN VARCHAR2;

   FUNCTION onerow (id_in IN ut_unittest.id%TYPE)
      RETURN ut_unittest%ROWTYPE;

   FUNCTION program_name (id_in IN ut_unittest.id%TYPE)
      RETURN ut_unittest.program_name%TYPE;

   FUNCTION id (name_in IN VARCHAR2)
      RETURN ut_unittest.id%TYPE;

   PROCEDURE ADD (
      utp_id_in        IN   ut_unittest.utp_id%TYPE,      
      program_name_in          IN   ut_unittest.program_name%TYPE,
      seq_in           IN   ut_unittest.seq%TYPE := NULL,
      description_in   IN   ut_unittest.description%TYPE
            := NULL
   );

   PROCEDURE rem (
      name_in     IN   VARCHAR2
   );

   PROCEDURE rem (id_in IN ut_unittest.id%TYPE);
END;
/

