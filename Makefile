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
      loxodon.dnd\

SPELLS=spells.dnd\
       wild-shape-black-bear.dnd\

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

SKILLS=skills.dnd\
	alchemy.dnd\
	appraise.dnd\
	craft-armor.dnd\
	craft-weapon.dnd\
	bluff.dnd\
	climb.dnd\
	diplomacy.dnd\
	disguise.dnd\
	escape-artist.dnd\
	forgery.dnd\
	gather-information.dnd\
	heal.dnd\
	jump.dnd\
	knowledge.dnd\
	listen.dnd\
	perform.dnd\
	ride.dnd\
	sailing.dnd\
	scent.dnd\
	speak-language.dnd\
	spellcraft.dnd\
	spot.dnd\
	stealth.dnd\
	survival.dnd\
	swim.dnd\
	tumble.dnd\

EQUIPMENT=equipment.dnd\
	  weapons.dnd\

ALL=basics.dnd\
    $(addprefix Races/,$(RACES))\
    alignment.dnd\
    $(addprefix Classes/,$(CLASSES))\
    $(addprefix Skills/,$(SKILLS))\
    flaws.dnd\
    $(addprefix Feats/,$(FEATS))\
    $(addprefix Equipment/,$(EQUIPMENT))\
    experience.dnd\
    factions.dnd\
    guilds.dnd\
    domains.dnd\
    combat.dnd\
    ships.dnd\
    magic.dnd\
    $(addprefix Spells/,$(SPELLS))\
    NavalCombat/naval_combat.dnd

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

make clean:
	rm -f index.html
.DEFAULT:index.html
