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
