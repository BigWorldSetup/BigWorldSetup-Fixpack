SET eff    = 0x00
SET kso    = 0x2d4
SET ksc    = 0x00
SET smo    = 0x2d4
SET smc    = 0x00
SET mso    = 0x2d4
SET msc    = 0x00
SET iso    = 0x2d4
SET ilo    = 0x2d4
SET ilc    = 0x00
SET elo    = 0x2d4
SET elc    = 0x00
SET i_0    = 0x00
SET off_0  = 0x00
SET off_1  = 0x00
SET temp_0 = 0x00
SET temp_1 = 0x00
SPRINT ks   fail
SPRINT sm   fail
SPRINT ms   fail
SPRINT is   fail
SPRINT il   fail
SPRINT el   fail
READ_BYTE    0x0033 eff
READ_LONG    0x02a0 kso
READ_LONG    0x02a4 ksc
READ_LONG    0x02a8 smo
READ_LONG    0x02ac smc
READ_LONG    0x02b0 mso
READ_LONG    0x02b4 msc
READ_LONG    0x02b8 iso
READ_LONG    0x02bc ilo
READ_LONG    0x02c0 ilc
READ_LONG    0x02c4 elo
READ_LONG    0x02c8 elc
READ_ASCII   kso ks ELSE fail (0x0c * ksc)
READ_ASCII   smo sm ELSE fail (0x10 * smc)
READ_ASCII   mso ms ELSE fail (0x0c * msc)
READ_ASCII   iso is ELSE fail (0x50)
READ_ASCII   ilo il ELSE fail (0x14 * ilc)
READ_ASCII   elo el ELSE fail (elc * (0x30 + ((eff & 0x01) = 0x01 ? 0xd8 : 0x00)))
DELETE_BYTES      0x02d4 SOURCE_SIZE - 0x02d4
SET               off_0 = 0x02d4
WRITE_LONG        0x02a0 off_0
PATCH_IF ~%ks%~ STR_CMP fail BEGIN
  INSERT_BYTES    off_0 0x0c * ksc
  WRITE_ASCIIE    off_0 ~%ks%~
END ELSE BEGIN
  SET             ksc = 0x00
  WRITE_LONG      0x02a4 ksc
END
SET               off_0 += 0x0c * ksc
WRITE_LONG        0x02a8 off_0
INSERT_BYTES      off_0 0x10 * 0x11
PATCH_IF ~%sm%~ STR_CMP fail && smc = 0x11 BEGIN
  WRITE_ASCIIE    off_0 ~%sm%~
END ELSE BEGIN
  FOR (i_0 = 0x00; i_0 < 0x07; i_0 += 0x01) BEGIN
    WRITE_SHORT   off_0 + i_0 * 0x10 i_0
  END
  FOR (i_0 = 0x00; i_0 < 0x09; i_0 += 0x01) BEGIN
    WRITE_SHORT   off_0 + i_0 * 0x10 + 0x070 i_0
    WRITE_SHORT   off_0 + i_0 * 0x10 + 0x076 0x01
  END
  WRITE_SHORT     off_0 + 0x106 0x02
  PATCH_IF ~%sm%~ STR_CMP fail BEGIN
    PATCH_IF smc > 0x11 BEGIN
      SET msc = 0x00
      SPRINT ms fail
    END ELSE PATCH_IF smc < 0x11 && smc > 0x00 BEGIN
      PATCH_IF STRING_LENGTH EVALUATE_BUFFER ~%sm%~ = 0x10 * smc BEGIN
        SET smc = 0x11
        WHILE STRING_LENGTH EVALUATE_BUFFER ~%sm%~ > 0x00 BEGIN
          SET off_1 = 0x00
          INNER_PATCH_SAVE sm ~%sm%~ BEGIN
            READ_SHORT   0x00 temp_0
            SET off_1 += temp_0 * 0x10
            READ_SHORT   0x06 temp_0
            SET off_1 += 0x70 * temp_0 + (temp_0 = 0x02 ? 0x10 : 0x00)
            READ_SHORT   0x08 temp_0
            READ_ASCII   0x00 temp_1 (0x10)
            DELETE_BYTES 0x00 0x10
          END
          WRITE_ASCIIE off_0 + off_1 ~%temp_1%~
          FOR (off_1 += 0x10; off_1 < 0x110; off_1 += 0x10) BEGIN
            WRITE_SHORT off_0 + off_1 + 0x08 temp_0
          END
        END
      END ELSE BEGIN
        SET smc = 0x11
        SET msc = 0x00
        SPRINT ms fail
      END
    END
  END
END
SET               off_0 += 0x110
WRITE_LONG        0x02b0 off_0
PATCH_IF ~%ms%~ STR_CMP fail && ~%sm%~ STR_CMP fail && smc = 0x11 BEGIN
  INSERT_BYTES    off_0 0x0c * msc
  WRITE_ASCIIE    off_0 ~%ms%~
END ELSE BEGIN
  SET             msc = 0x00
  WRITE_LONG      0x02b4 msc
END
SET               smc = 0x11
WRITE_LONG        0x2ac smc
SET               off_0 += 0x0c * msc
WRITE_LONG        0x02c4 off_0
PATCH_IF ~%el%~ STR_CMP fail BEGIN
  INSERT_BYTES    off_0 (elc * (0x30 + (((eff & 0x01) = 0x01) ? 0xd8 : 0x00)))
  WRITE_ASCIIE    off_0 ~%el%~
END ELSE BEGIN
  SET             elc = 0x00
  WRITE_LONG      0x02c8 elc
END
SET               off_0 += (elc * (0x30 + (((eff & 0x01) = 0x01) ? 0xd8 : 0x00)))
WRITE_LONG        0x02bc off_0
PATCH_IF ~%il%~ STR_CMP fail BEGIN
  INSERT_BYTES    off_0 (0x14 * ilc)
  WRITE_ASCIIE    off_0 ~%il%~
END ELSE BEGIN
   SET            ilc = 0x00
   WRITE_LONG     0x02c0 ilc
END
SET               off_0 += 0x14 * ilc
WRITE_LONG        0x02b8 off_0
INSERT_BYTES      off_0 0x50
PATCH_IF ~%is%~ STR_CMP fail BEGIN
  WRITE_ASCIIE    off_0 ~%is%~
END ELSE BEGIN
  FOR (i_0 = 0x00; i_0 < 0x4c; i_0 += 0x02) BEGIN
    WRITE_SHORT   off_0 + i1 0xffff
  END
END
SET SOURCE_SIZE = off_0 + 0x50
