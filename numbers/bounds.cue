package bounds

signed_float: number

singed_int:   int
byte:         int8 & >=-128 & <=127
word:         int16 & >=-32_768 & <=32_767
double_word:  int32 & >=-2_147_483_648 & <=2_147_483_647
quad_word:    int64 & >=-9_223_372_036_854_775_808 & <=9_223_372_036_854_775_807
octople_word: int128 & >=-170_141_183_460_469_231_731_687_303_715_884_105_728 & <=170_141_183_460_469_231_731_687_303_715_884_105_727

unsigned_int:          uint & >=0
char:                  uint8 & >=0 & <=255
unsigned_word:         uint16 & >=0 & <=65536
unsigned_double_word:  uint32 & >=0 & <=4_294_967_296
unsigned_quad_word:    uint64 & >=0 & <=18_446_744_073_709_551_615
unsigned_octople_word: uint128 & >=0 & <=340_282_366_920_938_463_463_374_607_431_768_211_455

utf8: rune & >=0 & <=0x10FFFF
