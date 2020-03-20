.SUFFIXES:
CC=
CXX=
CFLAGS=
CPPFLAGS=
CXXFLAGS=
ALL=basics.dnd classes.dnd barbarian.dnd bard.dnd cleric.dnd druid.dnd fighter.dnd monk.dnd paladin.dnd ranger.dnd thief.dnd sorcerer.dnd wizard.dnd 
srd: $(ALL)
	rm -rf build
	mkdir build
	cat $(ALL) > build/rules.dnd
	python3 -m ez_dungeon.document build/rules.dnd build

validate:
	python3 -m ez_dungeon.html_validate build/*.html
$(basename $(ALL)):
	python3 -m ez_dungeon.document $(addsuffix .dnd,$@) build


.DEFAULT:srd
