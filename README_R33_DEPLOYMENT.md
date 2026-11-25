# MY WORLD & MY EARTH — R33 Deployment Package

## Why this version is lighter
- The 65,000 flashcards are split into 62 JSON files.
- The page loads the lightweight domain manifest first.
- Only the selected subject is downloaded by default.
- Selecting **All subjects** intentionally loads all 65,000 cards.
- The 23 Knowledge Hub card thumbnails are separate JPG files rather than embedded base64 images.

## GitHub Pages deployment
1. Extract this ZIP file.
2. Open the extracted `MWME_R33_DEPLOY` folder.
3. Upload **all contents inside this folder** to the root of the GitHub Pages repository.
4. Ensure `index.html`, `data/`, and `assets/` are at the repository root.
5. In GitHub repository settings, open **Pages** and confirm the correct branch and folder (usually `main` and `/ (root)`).
6. Open the published GitHub Pages URL.

Do not upload only `index.html`. It relies on the companion `data/` and `assets/` folders.

## Local preview
- Windows with Python installed: double-click `START_LOCAL_PREVIEW.bat`.
- Or run in this directory: `python -m http.server 8000`
- Then open `http://localhost:8000`.

Do not open index.html by double-clicking it (file://). The flashcard loader uses fetch(), which requires HTTP or HTTPS.

## Package structure
- `index.html` — main website
- `data/flashcards-manifest.json` — list of subjects and card counts
- `data/flashcards/` — 62 domain-specific datasets
- `assets/hub-thumbnails/` — 24 image assets for the Knowledge Hub
- `.nojekyll` — GitHub Pages static-site marker

## Flashcard totals
- 65,000 flashcards
- 62 knowledge domains
- Existing 65,000 cards preserved exactly
