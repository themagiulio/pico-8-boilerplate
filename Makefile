SRC_DIR     = src
DIST_DIR    = dist

minify:
	@mkdir -p $(DIST_DIR)
	@touch $(DIST_DIR)/main.lua

	@for file in $$(find $(SRC_DIR)/ -name '*.lua'); do\
		cat $${file} >> $(DIST_DIR)/main.lua;\
	done

build: minify
	@cp main.p8 $(DIST_DIR)/main.p8
	@sed -i '/__lua__/,/__gfx__/{/__lua__/!{/__gfx__/!d}}' ${DIST_DIR}/main.p8 \
  && sed -i "/__lua__/r <(find ${SRC_DIR} -type f -name '*.lua' | sort | sed 's/^/#include /')" ${DIST_DIR}/main.p8
	@sed '/^#/d' $(DIST_DIR)/main.p8 > $(DIST_DIR)/main_nolua.p8
	@p8tool build $(DIST_DIR)/main_nolua.p8 --lua $(DIST_DIR)/main.lua 
	@mv $(DIST_DIR)/main_nolua.p8 $(DIST_DIR)/main.p8
	@p8tool luamin $(DIST_DIR)/main.p8 > /dev/null
	@mv $(DIST_DIR)/main_fmt.p8 $(DIST_DIR)/main.p8
	@rm $(DIST_DIR)/main.lua
	@echo "Cart exported to" $(DIST_DIR)/main.p8
