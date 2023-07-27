Function Test()
Local cTexto, cTexto2

cTexto := "Eduardo Motta"

? "Gerando CRC para o texto: '" + cTexto + "'"
? "CCITT_FFFF => ", EMTCRC_CCITT_FFFF(cTexto)
? "EMTCRC_CRC_16 => ", EMTCRC_CRC_16(cTexto)
? "EMTCRC_CRC_MODBUS => ", EMTCRC_CRC_MODBUS(cTexto)
? "EMTCRC_CRC16_MCRF4XX (invert-default) => ", EMTCRC_CRC16_MCRF4XX(cTexto)
? "EMTCRC_CRC16_MCRF4XX (invert) => ", EMTCRC_CRC16_MCRF4XX(cTexto, .t.)
? "EMTCRC_CRC16_MCRF4XX => ", EMTCRC_CRC16_MCRF4XX(cTexto, .f.)
? "EMTCRC_CRC_KERMIT (invert-default) => ", EMTCRC_CRC_KERMIT(cTexto)
? "EMTCRC_CRC_KERMIT (invert) => ", EMTCRC_CRC_KERMIT(cTexto, .t.)
? "EMTCRC_CRC_KERMIT => ", EMTCRC_CRC_KERMIT(cTexto, .f.)


cTexto2 := HexToStr("0d0004020000000000000031")
?
? "Gerando CRC para o texto: '" + StrToHex(cTexto2) + "'"
? "EMTCRC_CRC16_MCRF4XX (invert-default) => ", EMTCRC_CRC16_MCRF4XX(cTexto2)
? "EMTCRC_CRC16_MCRF4XX (invert) => ", EMTCRC_CRC16_MCRF4XX(cTexto2, .t.)
? "EMTCRC_CRC16_MCRF4XX => ", EMTCRC_CRC16_MCRF4XX(cTexto2, .f.)

cTexto2 := HexToStr("0d0004020000000000000032")
?
? "Gerando CRC para o texto: '" + StrToHex(cTexto2) + "'"
? "EMTCRC_CRC16_MCRF4XX (invert-default) => ", EMTCRC_CRC16_MCRF4XX(cTexto2)
? "EMTCRC_CRC16_MCRF4XX (invert) => ", EMTCRC_CRC16_MCRF4XX(cTexto2, .t.)
? "EMTCRC_CRC16_MCRF4XX => ", EMTCRC_CRC16_MCRF4XX(cTexto2, .f.)

cTexto2 := HexToStr("0d0004020000000000000033")
?
? "Gerando CRC para o texto: '" + StrToHex(cTexto2) + "'"
? "EMTCRC_CRC16_MCRF4XX (invert-default) => ", EMTCRC_CRC16_MCRF4XX(cTexto2)
? "EMTCRC_CRC16_MCRF4XX (invert) => ", EMTCRC_CRC16_MCRF4XX(cTexto2, .t.)
? "EMTCRC_CRC16_MCRF4XX => ", EMTCRC_CRC16_MCRF4XX(cTexto2, .f.)

cTexto2 := HexToStr("0d0004020000000000000034")
?
? "Gerando CRC para o texto: '" + StrToHex(cTexto2) + "'"
? "EMTCRC_CRC16_MCRF4XX (invert-default) => ", EMTCRC_CRC16_MCRF4XX(cTexto2)
? "EMTCRC_CRC16_MCRF4XX (invert) => ", EMTCRC_CRC16_MCRF4XX(cTexto2, .t.)
? "EMTCRC_CRC16_MCRF4XX => ", EMTCRC_CRC16_MCRF4XX(cTexto2, .f.)

cTexto2 := HexToStr("0d0004020000000000000035")
?
? "Gerando CRC para o texto: '" + StrToHex(cTexto2) + "'"
? "EMTCRC_CRC16_MCRF4XX (invert-default) => ", EMTCRC_CRC16_MCRF4XX(cTexto2)
? "EMTCRC_CRC16_MCRF4XX (invert) => ", EMTCRC_CRC16_MCRF4XX(cTexto2, .t.)
? "EMTCRC_CRC16_MCRF4XX => ", EMTCRC_CRC16_MCRF4XX(cTexto2, .f.)

Return