SRC_DIR     = src
DIST_DIR    = dist

minify:
	@touch $(DIST_DIR)/main.lua

	@for file in $(SRC_DIR)/*.lua; do\
		cat $${file} >> $(DIST_DIR)/main.lua;\
	done

build: minify
	@cp main.p8 $(DIST_DIR)/main.p8
	@sed '/^#/d' $(DIST_DIR)/main.p8 > $(DIST_DIR)/main_nolua.p8
	@p8tool build $(DIST_DIR)/main_nolua.p8 --lua $(DIST_DIR)/main.lua 
	@mv $(DIST_DIR)/main_nolua.p8 $(DIST_DIR)/main.p8
	@p8tool luamin $(DIST_DIR)/main.p8
	@mv $(DIST_DIR)/main_fmt.p8 $(DIST_DIR)/main.p8
	@rm $(DIST_DIR)/main.lua
