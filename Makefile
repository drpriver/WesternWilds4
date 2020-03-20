srd:
	rm -rf build
	mkdir build
	cat *.dnd > build/rules.dnd
	python3 -m ez_dungeon.document build/rules.dnd build

validate:
	python3 -m ez_dungeon.html_validate build/*.html


.DEFAULT:srd
