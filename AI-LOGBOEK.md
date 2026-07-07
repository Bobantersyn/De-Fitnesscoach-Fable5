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
