# De Fitnesscoach — website (Fable 5-versie)

Statische meerpagina-website voor De Fitnesscoach (online fitness coaching door Ertuğrul), van scratch gebouwd door Claude Fable 5. Geen build-stap: uploaden naar elke host (Vercel, Netlify, cPanel) is genoeg.

## Pagina's

- `index.html` — home: hero, statbar, herkenning, DFC-methode, resultaten, reviews, receptenboek, CTA
- `coaching.html` — wat je krijgt, traject in 4 stappen, voor wie wel/niet, FAQ
- `resultaten.html` — before/afters, cijferwand, alle reviews
- `over-ertugrul.html` — het verhaal en de filosofie van de coach
- `contact.html` — WhatsApp/bel/mail/Instagram, verwachtingen gesprek, zakelijke gegevens

## Design

- Kleuren: papier `#f6f1e7`, inkt `#1e2a31`, cyaan `#43d8e5` (huiskleur, marker/accent), teal `#077280`, rood `#e4572e` (spaarzaam)
- Fonts: Anton (display) + Schibsted Grotesk (body), via Google Fonts
- Alles in `assets/style.css` (design tokens bovenaan in `:root`)

## Lokaal bekijken

```bash
python3 -m http.server 4173 --directory .
# open http://localhost:4173
```

## Nog te doen door Bob

- Stockfoto's in `assets/img/` (behalve `omer-*.jpg` en logo's) vervangen door eigen foto's van Ertuğrul
- Eventueel tarieven toevoegen zodra die publiek mogen zijn

Zie `AI-LOGBOEK.md` voor de volledige bouwgeschiedenis.
