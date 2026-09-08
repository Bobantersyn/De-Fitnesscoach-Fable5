# AI-Logboek — De Fitnesscoach (Fable 5-versie)

Centraal logboek van al het AI-werk in dit project. Elke AI die hier iets bouwt, aanpast of verwijdert, voegt een entry toe volgens de `ai-logboek` skill.

---

## Entry 1

- **ID:** 1
- **Start:** 2026-07-02 19:30
- **Einde:** 2026-07-02 20:05
- **AI:** Claude Fable 5 via Claude Code (bewust als Fable 5 gelogd: Bob wil deze versie vergelijken met de eerdere Opus-build)
- **Type:** gemaakt
- **Onderdeel:** Volledige meerpagina-website De Fitnesscoach, gebouwd van scratch
- **Bestand(en):** `index.html`, `coaching.html`, `resultaten.html`, `over-ertugrul.html`, `contact.html`, `assets/style.css`, `assets/script.js`, `assets/img/*`
- **Briefing:** Bob wil dat Fable 5 de website voor De Fitnesscoach van scratch bouwt, als alternatief naast de bestaande site in `de-fitnesscoach-website/`. Huiskleuren cyaan `#43D8E5` en donker blauwgrijs `#1E2A31`; andere kleuren toegestaan; bron voor content: info.defitnesscoach.nl.
- **Aanleiding:** Vergelijking tussen modellen; eerdere feedback van Bob: echte fotografie, dichte redactionele opbouw, geen "landingspagina-vibe".
- **Doel:** Een complete, direct te hosten merkwebsite (statisch HTML/CSS/JS, geen build-stap) die de positionering draagt: online coaching voor Nederlandse mannen van Turkse afkomst.
- **Status:** voltooid
- **Resultaat:**
  - Vijf pagina's: Home, Coaching, Resultaten, Over Ertuğrul, Contact.
  - Designrichting "sports-editorial": warm papier-canvas (`#f6f1e7`), inkt `#1e2a31`, cyaan `#43d8e5` als marker/accent, donker teal `#077280` voor accenttekst, spaarzaam rood `#e4572e` voor stickers. Display-font Anton, body Schibsted Grotesk (Google Fonts).
  - Signature-elementen: nieuws-ticker boven de header, cyaan marquee, marker-highlights onder koppen, zwevende annotatie-chips op foto's, harde offset-schaduwen, outline-woordmerk in de footer, papierkorrel-overlay.
  - Echte content: reviews letterlijk overgenomen uit Instagram-screenshots en Discord (map `De Fitnesscoach/Reviews ...`), echte before/after-collages (`Omer before after-2` → geoptimaliseerd als `omer-1..5.jpg`), echte cijfers (−40 kg Bob, −30 kg Süley, 97→79 kg Ali, enz.), officiële contactgegevens en KvK/BTW van info.defitnesscoach.nl.
  - Toegankelijkheid: alle 5 pagina's door accesslint (WCAG 2.2, live-DOM) zonder schendingen na fixes (contrast logo-woordmerk, heading-hiërarchie, sr-only tussenkoppen). `prefers-reduced-motion` gerespecteerd; mobiel menu met `aria-expanded`.
  - Geverifieerd in browser-preview op mobiel (375px) en desktop (1280px): geen console-errors, geen gefaalde requests, geen kapotte afbeeldingen.
- **Foutmelding:** n.v.t.
- **Notes voor opvolger:**
  - Foto's in `assets/img/` behalve `omer-*.jpg` en de logo's zijn royalty-free stock uit de eerdere site; Bob vervangt ze door eigen beeld van Ertuğrul.
  - Er staan bewust geen tarieven op de site (niet publiek bekend); FAQ verwijst naar het gratis gesprek.
  - Alle cijfers en quotes komen uit echte reviews; niets verzinnen bij uitbreidingen.
  - Lokaal previewen: `python3 -m http.server 4173 --directory ~/Documents/Bob/de-fitnesscoach-fable5` (launch-config `dfc-fable5` in `Landingspaginacoaching-2026/.claude/launch.json`).
  - Header/footer zijn per pagina gedupliceerd (geen build-stap): wijzigingen daaraan in alle 5 HTML-bestanden doorvoeren.

---

## Entry 2

- **ID:** 2
- **Start:** 2026-07-02 20:15
- **Einde:** 2026-07-02 20:20
- **AI:** Claude Fable 5 via Claude Code
- **Type:** gemaakt
- **Onderdeel:** Lokale server + GitHub-repository
- **Bestand(en):** `start-server.command`, `.gitignore`, git-repo
- **Briefing:** Bob wil de site voorlopig lokaal bewaren en op GitHub; Vercel nog niet.
- **Aanleiding:** Versiebeheer en backup zonder al live te gaan.
- **Doel:** Site veilig bewaard en lokaal te bekijken.
- **Status:** voltooid
- **Resultaat:** Dubbelklikbaar startscript (`start-server.command`, poort 8080) en publieke repo https://github.com/Bobantersyn/De-Fitnesscoach-Fable5 (branch `main`, alles gepusht).
- **Notes voor opvolger:** Nog niet gedeployed; als Vercel later gewenst is, is de repo de bron.

---

## Entry 3

- **ID:** 3
- **Start:** 2026-07-04 00:20
- **Einde:** 2026-07-04 00:35
- **AI:** Claude Fable 5 via Claude Code
- **Type:** aangepast
- **Onderdeel:** Stockfoto's en logo vervangen door echt materiaal
- **Bestand(en):** `assets/img/*` (nieuw: ertugrul-gym/portret/belts, broeders-gym, maaltijd-wraps, bigmac-wrap, face-ali/bob/jeff, logo.png), `index.html`, `over-ertugrul.html`
- **Briefing:** Bob wees op de map `~/Desktop/De Fitnesscoach` met echte foto's, reviews en "De Juist Logo's".
- **Aanleiding:** De site stond nog vol royalty-free stock; echt beeld maakt hem geloofwaardig (zie ook Bobs designfeedback).
- **Doel:** Alle zichtbare stock vervangen door echte foto's van Ertuğrul, cliënten en maaltijden, plus het juiste logo (mannetje met dumbbell).
- **Status:** voltooid
- **Resultaat:** Hero = echte gymfoto van Ertuğrul (gecropt naar 4:5), over-pagina = studioportret, pijler 1 = Ertuğrul met lifting belts, pijler 3 = broedersfoto, voeding = echte maaltijden uit de voedingsapp (incl. Big Mac Wrap in de receptenband), proofline-gezichten = Ali/Bob/Jeff, logo = `01_mannetje_transparant.png` (512px). Alles geverifieerd in preview: geen kapotte afbeeldingen.
- **Notes voor opvolger:** Bronmateriaal staat in `~/Desktop/De Fitnesscoach/` (logo-SVG's, meer trainings- en voedingsfoto's, before/afters, ebooks). Ongebruikte stockfoto's staan nog in `assets/img/` en kunnen weg zodra zeker is dat ze nergens meer nodig zijn.

---

## Entry 4

- **ID:** 4
- **Start:** 2026-07-07 20:40
- **Einde:** 2026-07-07 20:55
- **AI:** Claude Fable 5 via Claude Code
- **Type:** aangepast
- **Onderdeel:** Feedbackronde 1 van Bob verwerkt (Notion-pagina "Website")
- **Bestand(en):** `index.html`, `coaching.html`, `resultaten.html`, `over-ertugrul.html`, `contact.html`, `assets/style.css`
- **Briefing:** Bob deelde een Notion-pagina met 6 feedbackpunten met screenshots.
- **Aanleiding:** Eerste review van de site door Bob.
- **Doel:** Alle feedbackpunten doorvoeren.
- **Status:** voltooid
- **Resultaat:**
  1. Juiste logo: was al vervangen in entry 3.
  2. Kicker "Online coaching · Den Haag & heel NL" boven de hero-kop verwijderd.
  3. Proofline: meer ruimte tussen gezichten en tekst; tekst nu "Deze broeders gingen je voor." (zonder kilo's).
  4. Statbar nu: 12+ jaar / 500+ broeders geholpen / DFC-community / 1 app voor voeding én training (cijfer 500+ komt van Bob zelf).
  5. 24/7-chip op de broedersfoto van boven naar onder verplaatst zodat Ertuğruls gezicht vrij is.
  6. Groot outline-woordmerk "De Fitnesscoach" uit de footer verwijderd op alle 5 pagina's (incl. CSS).
- **Notes voor opvolger:** Notion-pagina "Website" (38afcad62f628091a40cc49ba729a774) is de plek waar Bob feedback verzamelt; check die bij een volgende ronde. Er stonden ook drie inspiratielinks in: shaders.com, is.graphics, contentcore.xyz.

---

## Entry 5

- **ID:** 5
- **Start:** 2026-07-07 21:05
- **Einde:** 2026-07-07 21:25
- **AI:** Claude Fable 5 via Claude Code
- **Type:** aangepast
- **Onderdeel:** Cijferwand uniform gemaakt + before/afters vervangen door onbewerkte foto's
- **Bestand(en):** `index.html`, `resultaten.html`, `assets/style.css`, `assets/img/ba1-voor/na.jpg`, `assets/img/ba2-voor/na.jpg`
- **Briefing:** Bob vond de cijferwand lelijk (mix van "−40 kg" en "100+ → 77 kg") en wilde de before/afters met onbewerkte foto's in plaats van de Canva-collages.
- **Aanleiding:** Feedbackronde 2.
- **Doel:** Consistente cijfers en geloofwaardiger beeldmateriaal in de huisstijl van de site zelf.
- **Status:** voltooid
- **Resultaat:**
  - Cijferwand: alle cellen nu uniform "−XX kg" (aflopend gesorteerd), naam apart, quote eronder; boxerig raster vervangen door open grid met cyaan streepje boven elk getal. Resultatenpagina sluit af met een "Jij?"-cel met link naar contact.
  - Nieuw `.ba-card`-component: twee onbewerkte foto's naast elkaar in één kader met VOOR/NA-pillen in huisstijl. Twee bevestigde paren gebruikt uit `Before afters onbewerkt`: (1) 42dd50ee → b1b794a8 (kleedkamer → eindshoot, zelfde man als omer-2-collage) en (2) WhatsApp 2025-06-21 13.02.27 → 13.02.50 (zelfde minuut geappt, zelfde man). Omer-collages (`omer-*.jpg`) overal van de pagina's verwijderd.
  - Beide pagina's accesslint-schoon; alle nieuwe afbeeldingen laden.
- **Notes voor opvolger:** In `Before afters onbewerkt` liggen nog: Emre 1+2 (volgorde onduidelijk, niet gebruikt), "Juiste foto.jpg" (zware before, na-foto ontbreekt los), 2025-12-06 (tattoo, geen after) en een vrouwelijke transformatie (2026-05-30, 2 collages); site richt zich op mannen, dus niet geplaatst zonder overleg met Bob.

---

## Entry 6

- **ID:** 6
- **Start:** 2026-07-08 
- **Einde:** 2026-07-08
- **AI:** Claude Fable 5 via Claude Code
- **Type:** aangepast
- **Onderdeel:** Vier nieuwe onbewerkte before/after-paren toegevoegd
- **Bestand(en):** `assets/img/ba3..ba6-voor/na.jpg`, `resultaten.html`, `index.html`
- **Briefing:** Bob downloadde nieuwe onbewerkte foto's naar ~/Downloads.
- **Aanleiding:** Vervolg op feedbackronde 2 (meer echte before/afters).
- **Status:** voltooid
- **Resultaat:** Resultatenpagina toont nu 6 ba-cards: ba1 (kleedkamer→eindshoot), ba5 (onbewerkte originelen van de oude omer-1-collage, IMG_5420/IMG_3024), ba3 (kledingkast, WhatsApp-notificatie uit before weggecropt i.v.m. privacy), ba4 (gang→dubbele biceps woonkamer), ba2 (zelfde-minuut appjes), ba6 (strand→DFC-logobord). Homepage toont ba1 + ba5. Alle beelden 3:4, geen kapotte afbeeldingen.
- **Notes voor opvolger:** ba6-na is een lage-resolutie screenshot (354×472); vraag Bob om het origineel voor scherper beeld. Zijaanzichten van het kastman-paar (image-4/image-5 in Downloads) zijn beschikbaar maar niet gebruikt. Bronbestanden staan nog in ~/Downloads.

---

## Entry 7

- **ID:** 7
- **Start:** 2026-07-08
- **Einde:** 2026-07-08
- **AI:** Claude Fable 5 via Claude Code
- **Type:** aangepast
- **Onderdeel:** Resultaatcijfers verplaatst naar lopende band; cijferwand vervangen door extra before/afters
- **Bestand(en):** `index.html`, `resultaten.html`, `assets/style.css`
- **Briefing:** Bob vond de cijfers bij de foto's nog steeds niet mooi en stelde voor ze in de bewegende tekstband te zetten, met daarvoor in de plaats meer before/after-foto's.
- **Aanleiding:** Feedbackronde 3.
- **Status:** voltooid
- **Resultaat:** De cyaan marquee is nu een "scorebord" (−40 kg · Bob ✶ −30 kg · Süley ✶ … ✶ 500+ broeders geholpen), op de homepage onder de statbar en nieuw toegevoegd op de resultatenpagina onder de page-hero. De cijferwand is volledig verwijderd (HTML + CSS); homepage toont nu 4 ba-cards, resultatenpagina 6. Lange quotes blijven in de reviewsectie staan.
- **Notes voor opvolger:** De marquee is aria-hidden en decoratief; de onderliggende cijfers blijven voor screenreaders beschikbaar via de reviewquotes. Bij prefers-reduced-motion staat de band stil.

---

## Entry 8

- **ID:** 8
- **Start:** 2026-07-08
- **Einde:** 2026-07-08
- **AI:** Claude Fable 5 via Claude Code
- **Type:** aangepast
- **Onderdeel:** Gekruiste before/after-foto's hersteld (ba5/ba6)
- **Bestand(en):** `assets/img/ba5-voor.jpg`, `assets/img/ba6-na.jpg`, `resultaten.html`
- **Briefing:** Bob zag dat twee kaarten "omgekeerd" stonden.
- **Aanleiding:** Bij het verwerken van de downloads waren IMG_5420.heic (= after van de strandjongen, vóór het DFC-bord) en de schermafbeelding (= before van de zwarte-jeans broeder) aan de verkeerde paren gekoppeld.
- **Status:** voltooid
- **Resultaat:** ba6-na is nu de DFC-bord foto op hoge resolutie (900×1200, uit IMG_5420.heic); ba5-voor is de zware broeder, hi-res uit de originele collage gecropt met ffmpeg (880×1173) in plaats van het 354px-screenshot. Beide kaarten kloppen nu logisch (zwaarder → slanker). De lage-resolutie-kanttekening uit entry 6 is hiermee vervallen.
- **Notes voor opvolger:** Losse originelen van de zware broeder (voor-foto) bestaan mogelijk nog ergens; de crop uit de collage is nu prima, maar een origineel blijft welkom.

---

## Entry 9

- **ID:** 9
- **Start:** 2026-07-08
- **Einde:** 2026-07-08
- **AI:** Claude Fable 5 via Claude Code
- **Type:** aangepast
- **Onderdeel:** Twee extra before/after-kaarten (zijaanzichten)
- **Bestand(en):** `assets/img/ba7-voor/na.jpg`, `assets/img/ba8-voor/na.jpg`, `resultaten.html`
- **Briefing:** Bob wil meer before/afters; al het materiaal staat nu in `Before afters onbewerkt`.
- **Status:** voltooid
- **Resultaat:** Resultatenpagina toont nu 8 ba-cards. Nieuw: ba7 = kledingkast-broeder van opzij (image-4 → image-5, zwarte balken weggecropt), ba8 = groene-muur broeder van opzij (73be6135 → 595b99ea). Alle beelden 3:4, geen kapotte afbeeldingen.
- **Notes voor opvolger:** Nog onbenut in de map: Emre 1+2 (volgorde voor/na onbekend), "Juiste foto.jpg" en de tattoo-jongen (alleen before, geen after) en de vrouwelijke transformatie (positionering site is "voor mannen"; alleen plaatsen na akkoord van Bob).

---

## Entry 10

- **ID:** 10
- **Start:** 2026-07-08
- **Einde:** 2026-07-08
- **AI:** Claude Fable 5 via Claude Code
- **Type:** aangepast
- **Onderdeel:** Negende before/after-kaart (Emre)
- **Bestand(en):** `assets/img/ba9-voor/na.jpg`, `resultaten.html`
- **Briefing:** Bob bevestigde: Emre 1 = after, Emre 2 = before.
- **Status:** voltooid
- **Resultaat:** ba9 toegevoegd (Emre 2 → Emre 1), resultatenpagina toont nu 9 ba-cards, alle beelden laden.
- **Notes voor opvolger:** Enige resterende kandidaten in de map: "Juiste foto.jpg" en de tattoo-jongen (missen een after) en de vrouwelijke transformatie (wacht op besluit van Bob over positionering).

---

## Entry 11

- **ID:** 11
- **Start:** 2026-07-08
- **Einde:** 2026-07-08
- **AI:** Claude Fable 5 via Claude Code
- **Type:** aangepast
- **Onderdeel:** Vier nieuwe before/after-kaarten uit WhatsApp-batch 2026-07-08
- **Bestand(en):** `assets/img/ba10..ba12,ba14-voor/na.jpg`, `resultaten.html`
- **Briefing:** Bob zette 10 nieuwe foto's in `Before afters onbewerkt`.
- **Status:** voltooid
- **Resultaat:** 13 ba-cards totaal. Nieuw: ba10 (kant-en-klare collage gesplitst, grijze short), ba11 (keuken → groene muur, onderarm-tattoo), ba12 (Apple Watch-broeder, screenshotbalken weggecropt), ba14 (tattoo-sleeve, lage resolutie 300×400, bijschrift benoemt dat bewust: "zoals het binnenkwam op WhatsApp").
- **Notes voor opvolger:** Twee paren bewust NIET geplaatst, wachten op bevestiging van Bob: (a) gordijnen-jongen (12.22.31 (6)) → vakantiefoto met zonnebril (12.22.31 (7)): zelfde persoon?; (b) badkamer-collage (12.22.31 (1)): linkerfoto is de slankere, dus volgorde in de collage lijkt omgedraaid; welke is voor?

---

## Entry 12

- **ID:** 12
- **Start:** 2026-07-09
- **Einde:** 2026-07-09
- **AI:** Claude Fable 5 via Claude Code
- **Type:** aangepast
- **Onderdeel:** Laatste twee before/after-kaarten na bevestiging van Bob (15 totaal)
- **Bestand(en):** `assets/img/ba13-voor/na.jpg`, `assets/img/ba15-voor/na.jpg`, `resultaten.html`
- **Briefing:** Bob bevestigde: gordijnen-jongen en vakantieman zijn dezelfde persoon; badkamer-collage stond omgedraaid (rechts = voor).
- **Status:** voltooid
- **Resultaat:** ba13 (slaapkamer → vakantiebalkon) en ba15 (badkamer-collage gesplitst en omgewisseld naar voller → slanker). Resultatenpagina toont nu 15 onbewerkte transformaties; alle beelden laden.
- **Notes voor opvolger:** Hiermee is al het aangeleverde before/after-materiaal verwerkt, behalve: "Juiste foto.jpg" + tattoo-jongen 2025-12-06 (missen een after) en de vrouwelijke transformatie (wacht op positioneringsbesluit).

---

## Entry 13

- **ID:** 13
- **Start:** 2026-07-09
- **Einde:** 2026-07-09
- **AI:** Claude Fable 5 via Claude Code
- **Type:** verwijderd
- **Onderdeel:** Cyaan scorebord-marquee verwijderd
- **Bestand(en):** `index.html`, `resultaten.html`, `assets/style.css`
- **Briefing:** Bob vond de lopende cijferband de site te druk maken.
- **Status:** voltooid
- **Resultaat:** Marquee van homepage en resultatenpagina verwijderd, inclusief bijbehorende CSS. De dunne donkere USP-ticker bovenaan staat er nog. De kilo's van cliënten blijven zichtbaar in de reviewquotes.
- **Notes voor opvolger:** De `@keyframes ticker` animatie wordt nog gebruikt door de top-ticker; niet verwijderen.

---

## Entry 14

- **ID:** 14
- **Start:** 2026-07-13
- **Einde:** 2026-07-13
- **AI:** Claude Fable 5 via Claude Code
- **Type:** gemaakt
- **Onderdeel:** Site live gezet op Vercel (deelbare link)
- **Bestand(en):** Vercel-project `de-fitnesscoach-fable5` (team bobantersyns-projects), `.gitignore` (.vercel toegevoegd)
- **Briefing:** Bob wil de site aan iemand laten zien; koos voor een Vercel-link.
- **Status:** voltooid
- **Resultaat:** Live op https://de-fitnesscoach-fable5.vercel.app (publiek, 200 op pagina's en afbeeldingen). Bewust als production-target van een apart project gedeployed: previews zitten bij Vercel standaard achter een inlogscherm. defitnesscoach.nl is NIET gekoppeld.
- **Notes voor opvolger:** Nieuwe versie live zetten = `npx vercel deploy --prod --yes` vanuit de projectmap (CLI is ingelogd als bobantersyn). De site staat los van het echte domein tot Bob anders beslist.

---

## Entry 15

- **ID:** 15
- **Start:** 2026-07-13
- **Einde:** 2026-07-13
- **AI:** Claude Fable 5 via Claude Code
- **Type:** aangepast / beslissing
- **Onderdeel:** Voorbereiding domeinkoppeling www.defitnesscoach.nl
- **Bestand(en):** `vercel.json` (nieuw), Vercel-project `de-fitnesscoach-fable5`
- **Briefing:** Bob wil de nieuwe site op www.defitnesscoach.nl. Op dat domein draait nu een Next.js-app (ander Vercel-account) met de funnel op /receptenboek en /coaching; de root is leeg. Dezelfde app draait ook op info.defitnesscoach.nl.
- **Status:** voltooid met issues
- **Resultaat:** `vercel.json` toegevoegd met (1) apex→www redirect en (2) doorverwijzingen /receptenboek* en /coaching* → info.defitnesscoach.nl zodat bestaande funnel-links en ads blijven werken na de overstap. Gedeployed en getest (307 → info werkt). Domein koppelen faalt nog: `domain_not_owned` (403), want www.defitnesscoach.nl is geclaimd door Bobs ándere Vercel-account (funnel via GitHub-integratie; login onbekend, enige team hier is bobantersyns-projects).
- **Foutmelding:** `vercel domains add` → "Not authorized to use www.defitnesscoach.nl (403), domain_not_owned".
- **Notes voor opvolger:** Vervolgstappen: (1) Bob verwijdert in zijn andere Vercel-account bij het funnel-project de domeinen www.defitnesscoach.nl en evt. defitnesscoach.nl (info.defitnesscoach.nl LATEN STAAN), (2) daarna `npx vercel domains add www.defitnesscoach.nl` en `npx vercel domains add defitnesscoach.nl` in deze map, (3) DNS bij Hostnet: www CNAME staat nu op a730c5d3137853aa.vercel-dns-017.com en moet naar de waarde die Vercel bij stap 2 geeft; apex heeft al A 216.198.79.1 (Vercel).

---

## Entry 16

- **ID:** 16
- **Start:** 2026-07-13
- **Einde:** 2026-07-13
- **AI:** Claude Fable 5 via Claude Code
- **Type:** aangepast
- **Onderdeel:** www.defitnesscoach.nl gekoppeld aan de nieuwe site
- **Bestand(en):** Vercel-projecten `de-fitnesscoach-receptenboek` en `de-fitnesscoach-fable5`, DNS bij Hostnet
- **Briefing:** Bob wil de nieuwe merkwebsite op www.defitnesscoach.nl.
- **Status:** voltooid
- **Resultaat:**
  - Bleek geen tweede Vercel-account: het domein zat aan het project `de-fitnesscoach-receptenboek` (prj_QFsM6rSbUHfjKCP0Tv2vPAlmp5OA) binnen hetzelfde team. Domein daar losgekoppeld en toegevoegd aan `de-fitnesscoach-fable5`.
  - Bob heeft bij Hostnet twee TXT-records `_vercel.defitnesscoach.nl` gezet met de nieuwe verificatiecodes; beide domeinen geverifieerd.
  - Apex `defitnesscoach.nl` staat op platform-niveau als 308-redirect naar www.
  - Live getest: www = nieuwe site (200), apex → www (308), /resultaten.html (200), /receptenboek → info.defitnesscoach.nl (307), info-funnel ongewijzigd (200).
- **Notes voor opvolger:**
  - `www.defitnesscoach.nl/receptenboek` en `/coaching` sturen via `vercel.json` door naar info.defitnesscoach.nl (oude funnel-links en ads blijven werken). Let op: `/coaching` gaat dus naar de funnel, de merkpagina staat op `/coaching.html`. Zodra Bob zeker weet dat er geen ads meer op /coaching draaien, kan die redirect eruit.
  - Oude DNS-restjes bij Hostnet die geen kwaad kunnen: TXT `_vercel.www.defitnesscoach.nl` (oude code) en CNAME `www` → `a730c5d3137853aa.vercel-dns-017.com` (werkt, Vercel meldt geen misconfiguratie).
  - Nieuwe versie live zetten: `npx vercel deploy --prod --yes` in deze map.

---

## Entry 17

- **ID:** 17
- **Start:** 2026-07-13
- **Einde:** 2026-07-13
- **AI:** Claude Fable 5 via Claude Code
- **Type:** aangepast
- **Onderdeel:** /coaching teruggegeven aan de merksite + nette URL's zonder .html
- **Bestand(en):** `vercel.json`
- **Briefing:** Bob: de oude funnelpagina op /coaching wordt niet meer gebruikt.
- **Status:** voltooid
- **Resultaat:** De doorverwijzing /coaching → info.defitnesscoach.nl is verwijderd. `cleanUrls: true` aangezet, dus /coaching, /resultaten, /contact en /over-ertugrul werken nu zonder .html (getest: 200); oude .html-adressen sturen met 308 door naar de nette variant, dus interne links en eventuele externe links blijven werken. /receptenboek blijft doorverwijzen naar de funnel (307).
- **Notes voor opvolger:** Interne links in de HTML staan bewust nog op `*.html` zodat de lokale preview (python http.server, geen clean URLs) blijft werken; live lost Vercel dat op met een redirect.

---

## Entry 18

- **ID:** 18
- **Start:** 2026-07-13
- **Einde:** 2026-07-13
- **AI:** Claude Fable 5 via Claude Code
- **Type:** aangepast
- **Onderdeel:** HERSTEL — receptenboek-funnel teruggezet op www.defitnesscoach.nl/receptenboek
- **Bestand(en):** `vercel.json`
- **Briefing:** Bob meldde dat /receptenboek moest blijven zoals het was; daar begint zijn funnel.
- **Aanleiding:** FOUT in entry 15/16. Aanname was dat info.defitnesscoach.nl dezelfde funnel-app draaide, dus /receptenboek werd doorverwezen naar info. In werkelijkheid is info.defitnesscoach.nl een héél andere landingspagina op een andere host (A 15.197.171.219, geen Vercel, titel "Buikvet verliezen als Turkse man?"). De funnel-app (project `de-fitnesscoach-receptenboek`) was alleen via www bereikbaar; na het verplaatsen van het domein was hij dus onbereikbaar geworden — /receptenboek gaf 404 via de redirect.
- **Status:** voltooid
- **Resultaat:** Redirects vervangen door **rewrites (proxy)** naar `landingspagina2026.vercel.app`, zodat de funnel op het onveranderde adres www.defitnesscoach.nl/receptenboek draait. Geproxyed: /receptenboek(/*), /bedankt(/*), /privacy, /_next/*, /api/*, /logo-defitnesscoach.png. Getest: funnel 200 met eigen URL behouden, JS-assets 200, /bedankt en /privacy 200, merksite (/ , /coaching, /resultaten) onveranderd 200, visueel gecontroleerd in de browser.
- **Notes voor opvolger:**
  - LES: nooit aannemen dat een subdomein dezelfde app draait; altijd de inhoud van de doel-URL controleren vóór een redirect live gaat.
  - De funnel-app heeft alleen de routes /receptenboek, /bedankt, /privacy, /coaching (die laatste gebruikt Bob niet meer). Geen sitemap; andere paden geven 404.
  - Het funnel-project houdt `landingspagina2026.vercel.app` als bron voor de proxy; die alias niet verwijderen.

---

## Entry 19

- **ID:** 19
- **Start:** 2026-07-13
- **Einde:** 2026-07-13
- **AI:** Claude Fable 5 via Claude Code
- **Type:** aangepast
- **Onderdeel:** Mobiele controle van de live site + twee correcties
- **Bestand(en):** `assets/style.css`
- **Briefing:** Bob vroeg om alles op mobiel te checken.
- **Status:** voltooid
- **Resultaat:**
  - Gecontroleerd op 375×812 (live, www.defitnesscoach.nl): home, coaching, resultaten, over-ertugrul, contact en de funnel op /receptenboek. Geen horizontale overflow op één van de pagina's, geen kapotte afbeeldingen, reviews vallen terug naar 1 kolom, FAQ-accordeon werkt, mobiel menu opent/sluit met correcte aria-expanded en toont alle 6 links, contactkaarten 343px breed met werkende tel:- en WhatsApp-links, funnel-CTA opent het opt-informulier (naam + e-mail) op het onveranderde adres (niets verstuurd).
  - **Fix 1:** annotatie-chips stonden op mobiel deels buiten beeld (negatieve inline left/right, body heeft overflow-x hidden). Media query < 720px trekt ze naar 10px binnen het kader. Alle 6 chips nu volledig zichtbaar.
  - **Fix 2:** footerlinks waren 19-21px hoog, te klein om te tikken. Nu 45px op mobiel.
  - Desktop geverifieerd op 1280px: chips en footer ongewijzigd, geen overflow.
- **Notes voor opvolger:** Bob wil later de receptenboek-funnel als échte pagina in deze site opnemen, in plaats van de proxy naar `landingspagina2026.vercel.app`. Screenshots via de Browser pane zijn onbetrouwbaar zolang die is dichtgeklapt; metingen via javascript_tool wel.

---

## Entry 20

- **ID:** 20
- **Start:** 2026-07-13
- **Einde:** 2026-07-13
- **AI:** Claude Fable 5 via Claude Code
- **Type:** aangepast
- **Onderdeel:** HERSTEL — /boek-een-gesprek gaf 404 op www
- **Bestand(en):** `vercel.json`
- **Aanleiding:** Bob meldde een 404. Bij het overzetten van het domein waren alleen /receptenboek, /bedankt, /privacy, /_next, /api en /logo geproxied; de funnelroute **/boek-een-gesprek** (en de map /transformaties met de bewijsfoto's) was vergeten.
- **Status:** voltooid
- **Resultaat:** Rewrites toegevoegd voor `/boek-een-gesprek(/*)` en `/transformaties/*`. Live getest: /boek-een-gesprek, /receptenboek, /bedankt, /privacy, /coaching en /resultaten geven allemaal 200.
- **Notes voor opvolger:** De funnel-app heeft vier routes: /receptenboek, /bedankt, /boek-een-gesprek, /privacy. Bij wijzigingen aan de proxy: controleer die vier plus /_next, /api, /transformaties en /logo-defitnesscoach.png. Zolang de funnel een aparte app is, moet elke nieuwe funnelroute hier worden bijgezet — reden te meer om hem op termijn in deze site op te nemen.
