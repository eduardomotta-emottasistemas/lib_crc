#xcommand DEFAULT <v1> := <x1> [, <vn> TO <xn> ] => ;
    IF <v1> == NIL ; <v1> := <x1> ; END ;
    [; IF <vn> == NIL ; <vn> := <xn> ; END ]


/*************************************************************************************
 Funcao: EMTCRC_CCITT_FFFF                       Autor: Eduardo Motta  Data 07/04/2021
-------------------------------------------------------------------------------------
 Descrição:
**************************************************************************************/
Function EMTCRC_CCITT_FFFF(cTexto)
Local cCrc,nCrc
nCrc := C_EMTCRC_CCITT_FFFF(cTexto)
cCrc := NumToHex(nCrc)
cCrc := PadL(NumToHex(nCrc), 4, "0")
Return cCrc

/*************************************************************************************
    Funcao: EMTCRC_CRC_16                            Autor: Eduardo Motta  Data 07/04/2021
-------------------------------------------------------------------------------------
    Descrição:
**************************************************************************************/
Function EMTCRC_CRC_16(cTexto)
Local cCrc,nCrc
nCrc := C_EMTCRC_CRC_16(cTexto)
cCrc := NumToHex(nCrc)
cCrc := PadL(NumToHex(nCrc), 4, "0")
Return cCrc

/*************************************************************************************
    Funcao: EMTCRC_CRC_MODBUS                        Autor: Eduardo Motta  Data 07/04/2021
-------------------------------------------------------------------------------------
    Descrição:
**************************************************************************************/
Function EMTCRC_CRC_MODBUS(cTexto)
Local cCrc,nCrc
nCrc := C_EMTCRC_CRC_MODBUS(cTexto)
cCrc := NumToHex(nCrc)
cCrc := PadL(NumToHex(nCrc), 4, "0")
Return cCrc

/*************************************************************************************
    Funcao: EMTCRC_CRC_MODBUS                        Autor: Eduardo Motta  Data 07/04/2021
-------------------------------------------------------------------------------------
    Descrição:
**************************************************************************************/
Function EMTCRC_CRC16_MCRF4XX(cTexto, lInvert)
Local cCrc,nCrc
Local cCrc_Str
Default lInvert := .t.

nCrc := C_EMTCRC_CRC16_MCRF4XX(cTexto, Len(cTexto))
cCrc := NumToHex(nCrc)
cCrc := PadL(NumToHex(nCrc), 4, "0")

If lInvert
    cCrc_Str := HexTostr(cCrc)
    cCrc := ""
    For nI := Len(cCrc_Str) to 1 Step -1
        cCrc+=SubStr(cCrc_Str, nI, 1)
    Next
    cCrc := StrToHex(cCrc)
EndIf

Return cCrc
    

/*************************************************************************************
    Funcao: EMTCRC_CRC_KERMIT                        Autor: Eduardo Motta  Data 22/03/2022
-------------------------------------------------------------------------------------
    Descrição:
**************************************************************************************/
/*
para testes:

crc  texto
4016 12345678901234567890
0252 1234567890123456789
9560 12345678901234567890123456789012345678
E60A 1234567890123456789012345678901234567890123456789
*/
Function EMTCRC_CRC_KERMIT(cTexto, lInvert)
Local cCrc, nCrc, nI
Local cCrc_Str

Default lInvert := .t.
nCrc := C_EMTCRC_CRC_KERMIT(cTexto)
cCrc := PadL(NumToHex(nCrc), 4, "0")

If lInvert
    cCrc_Str := HexTostr(cCrc)
    cCrc := ""
    For nI := Len(cCrc_Str) to 1 Step -1
        cCrc+=SubStr(cCrc_Str, nI, 1)
    Next
    cCrc := StrToHex(cCrc)
EndIf

Return cCrc
    