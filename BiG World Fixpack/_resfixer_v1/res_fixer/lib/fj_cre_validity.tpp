SET temp_0 = 0x02d4
SET temp_1 = 0x02d4
SET temp_2 = 0x02d4
SET temp_3 = 0x0000
SPRINT signature ~CRE V1.0~
SET valid = 1
PATCH_IF ~%SOURCE_RES%~ STRING_EQUAL_CASE charbase BEGIN
  SET valid = 0
END ELSE BEGIN
  PATCH_IF SOURCE_SIZE < 0x2d4 BEGIN
    SET valid = 0
    PATCH_PRINT ~%SOURCE_FILE% is corrupt: below minimum length.~
  END ELSE BEGIN
    READ_ASCII 0x000 signature
    PATCH_IF ~%signature%~ STR_CMP ~CRE V1.0~ BEGIN
      SET valid = 0
      PATCH_PRINT ~%SOURCE_FILE% is corrupt: header misplaced.~
    END ELSE BEGIN
      DEFINE_ASSOCIATIVE_ARRAY cre_offset BEGIN
        0x02a0 => 0x02a4
        0x02a8 => 0x02ac
        0x02b0 => 0x02b4
        0x02b8 => 0x02c0
        0x02bc => 0x02c0
        0x02c4 => 0x02c8
      END
      PHP_EACH cre_offset AS temp => temp_1 BEGIN
        READ_LONG temp_0 temp_2
        READ_LONG temp_1 temp_3
        PATCH_IF temp_3 = 0 && temp_2 < 0x2d4 BEGIN
          WRITE_LONG temp_0 0x2d4
        END
        PATCH_IF temp_3 != 0x00 && temp_2 < 0x2d4 BEGIN
          SET valid = 0
          PATCH_PRINT ~%SOURCE_FILE% is corrupt: extended structures pointed to header.~
        END
      END
    END
  END
END
