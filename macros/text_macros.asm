
; text macros
text   EQUS "db $00," ; ここからテキストの描画を開始
next   EQUS "db $4e," ; Move a line down. 
line   EQUS "db $4f," ; テキストボックスの2行目にテキストを配置
para   EQUS "db $51," ; 次のパラグラフ(セリフの区切り)を開始する
cont   EQUS "db $55," ; 次の行にテキストボックスをスクロールさせる
done   EQUS "db $57"  ; テキストボックスを終了させる。(イベントなし)
prompt EQUS "db $58"  ; テキストボックスを終了させる。(この後ほかのイベントが開始する)

page   EQUS "db $49,"     ; Start a new Pokedex page.
dex    EQUS "db $5f, $50" ; End a Pokedex entry.

; 第一引数で渡されたアドレスの中の文字列をテキストとして表示する
TX_RAM: MACRO
	db $1
	dw \1
ENDM

TX_BCD: MACRO
; \1: RAM address to read from
; \2: number of bytes + print flags
	db $2
	dw \1
	db \2
ENDM

TX_LINE    EQUS "db $05"
TX_BLINK   EQUS "db $06"
;TX_SCROLL EQUS "db $07"
TX_ASM     EQUS "db $08"

TX_NUM: MACRO
; print a big-endian decimal number.
; \1: address to read from
; \2: number of bytes to read
; \3: number of digits to display
	db $09
	dw \1
	db \2 << 4 | \3
ENDM

TX_DELAY              EQUS "db $0a"
TX_SFX_ITEM_1         EQUS "db $0b"
TX_SFX_LEVEL_UP       EQUS "db $0b"
;TX_ELLIPSES          EQUS "db $0c"
TX_WAIT               EQUS "db $0d"
;TX_SFX_DEX_RATING    EQUS "db $0e"
TX_SFX_ITEM_2         EQUS "db $10"
TX_SFX_KEY_ITEM       EQUS "db $11"
TX_SFX_CAUGHT_MON     EQUS "db $12"
TX_SFX_DEX_PAGE_ADDED EQUS "db $13"
TX_CRY_NIDORINA       EQUS "db $14"
TX_CRY_PIDGEOT        EQUS "db $15"
;TX_CRY_DEWGONG       EQUS "db $16"

TX_FAR: MACRO
	db $17
	dw \1
	db BANK(\1)
ENDM

TX_VENDING_MACHINE         EQUS "db $f5"
TX_CABLE_CLUB_RECEPTIONIST EQUS "db $f6"
TX_PRIZE_VENDOR            EQUS "db $f7"
TX_POKECENTER_PC           EQUS "db $f9"
TX_PLAYERS_PC              EQUS "db $fc"
TX_BILLS_PC                EQUS "db $fd"

TX_MART: MACRO
	db $FE, _NARG
	REPT _NARG
	db \1
	SHIFT
	ENDR
	db $FF
ENDM

TX_POKECENTER_NURSE        EQUS "db $ff"
