CREATE OR REPLACE FUNCTION SF_AV_DECODE("IN_AV_ID" NUMBER(35,4))
RETURNS STRING
LANGUAGE SQL

AS '
  /*********************************************************************
  * Name   SF_ALLOWABLE_VALUES
  * Purpose   Decodes av id and returns description
  *    if av id is found else return null
  * Input Parameter  Code_in   Varchar2
  * Output Parameter Code_desc Varchar2
  * Edit History
  *
  *  Name    Date           Comment
  *
  *  CMS     01/21/1997     Date created
  *********************************************************************
  */
    SELECT MAX(VALUE_SHORT_DESC)
    FROM TEST.PUBLIC.T_ALLOWABLE_VALUES
    WHERE AV_ID = IN_AV_ID
';
