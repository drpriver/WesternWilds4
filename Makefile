.SUFFIXES:
CLASSES=classes.dnd\
	barbarian.dnd\
	bard.dnd\
	cleric.dnd\
	druid.dnd\
	fighter.dnd\
	monk.dnd\
	paladin.dnd\
	ranger.dnd\
	thief.dnd\
	sorcerer.dnd\
	wizard.dnd\
	fighter-wizard.dnd\
	fighter-thief.dnd\

RACES=races.dnd\
      humans.dnd\
      dwarves.dnd\
      elves.dnd\
      gnomes.dnd\
      half-elves.dnd\
      half-orcs.dnd\
      halflings.dnd\

SPELLS=spells.dnd\

FEATS=feats.dnd\
      	general-feats.dnd\
	barbarian-feats.dnd\
	bard-feats.dnd\
	cleric-feats.dnd\
	druid-feats.dnd\
	fighter-feats.dnd\
	monk-feats.dnd\
	paladin-feats.dnd\
	ranger-feats.dnd\
	thief-feats.dnd\
	sorcerer-feats.dnd\
	wizard-feats.dnd

ALL=basics.dnd\
    $(addprefix Races/,$(RACES))\
    alignment.dnd\
    $(addprefix Classes/,$(CLASSES))\
    skills.dnd\
    $(addprefix Feats/,$(FEATS))\
    equipment.dnd\
    experience.dnd\
    factions.dnd\
    guilds.dnd\
    domains.dnd\
    combat.dnd\
    ships.dnd\
    magic.dnd\
    $(addprefix Spells/,$(SPELLS))

index.html: $(ALL) dd.css dd.js
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
