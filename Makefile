build:
	@mkdir -p ./dist
	@make assets-copy
	@make gen

assets-copy:
	cp -r ./src/assets ./dist/

gen:
	gen -base ./ -src ./src/content -dst ./dist -w

serve:
	which open && open http://localhost:8080
	lserver -d dist

dev:
	@make build
	@make serve

watch:
	goemon --
