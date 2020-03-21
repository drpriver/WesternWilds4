.SUFFIXES:
CLASSES=classes.dnd barbarian.dnd bard.dnd cleric.dnd druid.dnd fighter.dnd monk.dnd paladin.dnd ranger.dnd thief.dnd sorcerer.dnd wizard.dnd  fighter-wizard.dnd fighter-thief.dnd

ALL=basics.dnd $(CLASSES) skills.dnd feats.dnd equipment.dnd experience.dnd factions.dnd guilds.dnd domains.dnd combat.dnd ships.dnd magic.dnd spells.dnd

index.html: $(ALL)
	rm -rf build
	mkdir build
	cat $(ALL) > build/rules.dnd
	python3 -m ez_dungeon.document build/rules.dnd build
	cp build/rules.html index.html
	rm -rf build

validate:
	python3 -m ez_dungeon.html_validate index.html

$(basename $(ALL)):
	rm -rf build
	mkdir build
	python3 -m ez_dungeon.document $(addsuffix .dnd,$@) build


.DEFAULT:index.html
