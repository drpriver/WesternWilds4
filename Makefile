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
	cleric-sorcerer.dnd\
	cleric-thief.dnd\
	cleric-wizard.dnd\
	druid-sorcerer.dnd\
	druid-thief.dnd\
	druid-wizard.dnd\
	fighter-cleric.dnd\
	fighter-druid.dnd\
	fighter-sorcerer.dnd\
	fighter-thief.dnd\
	fighter-wizard.dnd\
	sorcerer-thief.dnd\
	wizard-thief.dnd\

RACES=races.dnd\
      humans.dnd\
      dwarves.dnd\
      elves.dnd\
      gnomes.dnd\
      half-elves.dnd\
      half-orcs.dnd\
      halflings.dnd\
      loxodon.dnd\

THESPELLS=acid-arrow.dnd\
          acid-splash.dnd\
          animal-messenger.dnd\
          animal-trance.dnd\
          animate-ghouls.dnd\
          animate-rope.dnd\
          animate-skeletons.dnd\
          animate-zombies.dnd\
          baleful-transposition.dnd\
          benign-transposition.dnd\
          blindness-deafness.dnd\
          blink.dnd\
          blur.dnd\
          burning-hands.dnd\
          calm-emotions.dnd\
          cause-fear.dnd\
          chain-missiles.dnd\
          charm-monster.dnd\
          charm-person.dnd\
          color-spray.dnd\
          combust.dnd\
          cone-of-fire.dnd\
          confusion,-lesser.dnd\
          confusion.dnd\
          corrosive-grasp.dnd\
          crushing-despair.dnd\
          cure-light-wounds.dnd\
          cure-moderate-wounds.dnd\
          cure-serious-wounds.dnd\
          curse-of-impending-blades.dnd\
          dancing-lights.dnd\
          darkness.dnd\
          daylight.dnd\
          daze-monster.dnd\
          daze.dnd\
          deep-slumber.dnd\
          delay-poison.dnd\
          delusions-of-grandeur.dnd\
          detect-magic.dnd\
          detect-secret-doors.dnd\
          dimension-door.dnd\
          disguise-self.dnd\
          dispel-magic.dnd\
          displacement.dnd\
          disrupt-undead.dnd\
          distort-speech.dnd\
          earthbind.dnd\
          electric-loop.dnd\
          electroic-jolt.dnd\
          elemental-orb.dnd\
          enhance-ability.dnd\
          enthrall.dnd\
          expeditious-retreat.dnd\
          false-life.dnd\
          fear.dnd\
          feather-fall.dnd\
          fire-shield.dnd\
          fireball.dnd\
          flame-arrow.dnd\
          flaming-sphere.dnd\
          flare.dnd\
          floating-disk.dnd\
          fly.dnd\
          fog-cloud.dnd\
          gaseous-form.dnd\
          ghost-harp.dnd\
          ghost-sound.dnd\
          ghoul-touch.dnd\
          glitterdust.dnd\
          good-hope.dnd\
          grease.dnd\
          greater-flaming-sphere.dnd\
          greater-invisibility.dnd\
          guiding-light.dnd\
          gust-of-wind.dnd\
          haste.dnd\
          heroism.dnd\
          hideous-laughter.dnd\
          hold-person.dnd\
          hypnotic-pattern.dnd\
          hypnotism.dnd\
          ice-storm.dnd\
          identify.dnd\
          illusory-wall.dnd\
          inspirational-boost.dnd\
          invisibility,-10-radius.dnd\
          invisibility.dnd\
          jump.dnd\
          knock.dnd\
          lesser-elemental-orb.dnd\
          lesser-geas.dnd\
          lesser-globe-of-invulnerability.dnd\
          light.dnd\
          lightning-bolt.dnd\
          lullaby.dnd\
          mage-armor.dnd\
          mage-hand.dnd\
          magic-circle-against-chaos-evil-good-law.dnd\
          magic-missile.dnd\
          magic-mouth.dnd\
          magic-weapon.dnd\
          major-image.dnd\
          mass-mage-armor.dnd\
          mass-shield.dnd\
          message.dnd\
          minor-image.dnd\
          mirror-image.dnd\
          obscuring-mist.dnd\
          open-close.dnd\
          phantasmal-killer.dnd\
          prestidigitation.dnd\
          protection-from-arrows.dnd\
          protection-from-chaos-evil-good-law.dnd\
          pyrotechnics.dnd\
          ray-of-frost.dnd\
          reload.dnd\
          remove-curse.dnd\
          remove-fear.dnd\
          resilient-sphere.dnd\
          reverse-arrows.dnd\
          scare.dnd\
          scorching-ray.dnd\
          sculpt-sound.dnd\
          see-invisibility.dnd\
          shatter.dnd\
          shield.dnd\
          shocking-grasp.dnd\
          shout.dnd\
          shrink-item.dnd\
          silence.dnd\
          silent-image.dnd\
          sleep.dnd\
          sleet-storm.dnd\
          slow.dnd\
          snowball-swarm.dnd\
          sonic-snap.dnd\
          sound-burst.dnd\
          stick.dnd\
          stinking-cloud.dnd\
          stoneskin.dnd\
          suggestion.dnd\
          summon-instrument.dnd\
          tongues.dnd\
          unseen-servant.dnd\
          vampiric-touch.dnd\
          ventriloquism.dnd\
          wall-of-ice.dnd\
          web.dnd\
          whispering-wind.dnd\
	  wild-shape-black-bear.dnd\
          wind-gale.dnd

SPELLS=spell-lists.dnd\
       bard-spells.dnd\
       cleric-spells.dnd\
       druid-spells.dnd\
       sorcerer-spells.dnd\
       wizard-spells.dnd\
       spells.dnd\
       $(addprefix Spells/,$(THESPELLS))

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
	sorcerer-feats.dnd\
	thief-feats.dnd\
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
	  gear.dnd\


CAMPAIGNS=campaigns.dnd\
	  guilds.dnd\
	  factions.dnd\
	  domains.dnd\

ALL=basics.dnd\
    $(addprefix Races/,$(RACES))\
    alignment.dnd\
    $(addprefix Classes/,$(CLASSES))\
    $(addprefix Skills/,$(SKILLS))\
    flaws.dnd\
    $(addprefix Feats/,$(FEATS))\
    $(addprefix Equipment/,$(EQUIPMENT))\
    adventures.dnd\
    experience.dnd\
    $(addprefix Campaigns/,$(CAMPAIGNS))\
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
.PHONY: strip
strip:
	python3 stripper.py
