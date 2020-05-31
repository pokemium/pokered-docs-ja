; **LoadTilesetHeader**  
; - - -  
LoadTilesetHeader:
	call GetPredefRegisters
	push hl ; stack_depth = 0

	; de = [wCurMapTileset] * 12
	ld d, 0
	ld a, [wCurMapTileset]
	add a
	add a
	ld b, a
	add a
	add b ; a = tilesetのオフセット * 12 = Tilesetsのエントリサイズ + 1
	jr nc, .noCarry
	inc d
.noCarry
	ld e, a

	; hl = Tilesetsのエントリのポインタ
	ld hl, Tilesets
	add hl, de

	; [wCurMapTileset]から tilesetのバンク番号 + tileset headerにコピーする
	ld de, wTilesetBank
	ld c, $b ; 11 = tileset headerのサイズ
.copyTilesetHeaderLoop
	; [de++] = [hl++]
	ld a, [hli]
	ld [de], a
	inc de

	dec c
	jr nz, .copyTilesetHeaderLoop

	ld a, [hl]
	ld [hTilesetType], a
	xor a
	ld [$ffd8], a
	pop hl
	ld a, [wCurMapTileset]
	push hl
	push de
	ld hl, DungeonTilesets
	ld de, $1
	call IsInArray
	pop de
	pop hl
	jr c, .asm_c797
	ld a, [wCurMapTileset]
	ld b, a
	ld a, [hPreviousTileset]
	cp b
	jr z, .done
.asm_c797
	ld a, [wDestinationWarpID]
	cp $ff
	jr z, .done
	call LoadDestinationWarpPosition
	ld a, [wYCoord]
	and $1
	ld [wYBlockCoord], a
	ld a, [wXCoord]
	and $1
	ld [wXBlockCoord], a
.done
	ret

INCLUDE "data/dungeon_tilesets.asm"

INCLUDE "data/tileset_headers.asm"
