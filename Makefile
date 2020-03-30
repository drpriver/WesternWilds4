.SUFFIXES:
CLASSES=classes.dnd\
	barbarian.dnd\
	bard.dnd\
	cleric.dnd\
	druid.dnd\
	fighter.dnd\
	monk.dnd\
	ranger.dnd\
	sorcerer.dnd\
	thief.dnd\
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
       bard-spells.dnd\
       cleric-spells.dnd\
       druid-spells.dnd\
       sorcerer-spells.dnd\
       wizard-spells.dnd

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
	  Weapons/bastard-sword.dnd\
	  Weapons/battleaxe.dnd\
	  Weapons/blunderbuss.dnd\
	  Weapons/club.dnd\
	  Weapons/cutlass.dnd\
	  Weapons/dagger.dnd\
	  Weapons/dwarven-waraxe.dnd\
	  Weapons/falchion.dnd\
	  Weapons/flail.dnd\
	  Weapons/glaive.dnd\
	  Weapons/greataxe.dnd\
	  Weapons/greatclub.dnd\
	  Weapons/greatsword.dnd\
	  Weapons/halberd.dnd\
	  Weapons/handaxe.dnd\
	  Weapons/harpoon.dnd\
	  Weapons/heavy-crossbow.dnd\
	  Weapons/heavy-flail.dnd\
	  Weapons/heavy-pick.dnd\
	  Weapons/javelin.dnd\
	  Weapons/light-crossbow.dnd\
	  Weapons/longbow.dnd\
	  Weapons/longspear.dnd\
	  Weapons/longsword.dnd\
	  Weapons/mace.dnd\
	  Weapons/morningstar.dnd\
	  Weapons/musket.dnd\
	  Weapons/pistol.dnd\
	  Weapons/quarterstaff.dnd\
	  Weapons/rapier.dnd\
	  Weapons/sap.dnd\
	  Weapons/shortbow.dnd\
	  Weapons/shortspear.dnd\
	  Weapons/shortsword.dnd\
	  Weapons/sling.dnd\
	  Weapons/spear.dnd\
	  Weapons/throwing-axe.dnd\
	  Weapons/trident.dnd\
	  Weapons/warhammer.dnd\
	  Weapons/whip.dnd\
	  armor.dnd\

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
