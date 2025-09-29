# Miku Murder Mystery - QR Code Clue System

A web-based murder mystery game where clues can only be accessed through QR codes.

## Setup Instructions

### 1. Image Setup
The website references images directly from the "Miku Murder Mystery" folder. Ensure this folder contains:
- Clue 1.png
- Clue 2.png
- Clue 3.png  
- Clue 4.png
- Clue 5.png
- Clue 6.png
- Clue 7.png
- Clue 8.png
- Start.png

*Note: Print On Wall and Load Bearing Coconut will be physical prints, not digital clues.*

### 2. QR Code URLs
Generate QR codes for these URLs to access each clue:

**Start**: `https://minhjo005.github.io/miku-murder-mystery/?token=miku-start-x9k2p7w4`
**Clue 1**: `https://minhjo005.github.io/miku-murder-mystery/?token=hatsune-clue1-q8m5n3r9`
**Clue 2**: `https://minhjo005.github.io/miku-murder-mystery/?token=vocaloid-clue2-l4j7b6t2`
**Clue 3**: `https://minhjo005.github.io/miku-murder-mystery/?token=mystery-clue3-z5v8c1x3`
**Clue 4**: `https://minhjo005.github.io/miku-murder-mystery/?token=detective-clue4-h9k2m7p5`
**Clue 5**: `https://minhjo005.github.io/miku-murder-mystery/?token=investigation-clue5-w6n3r8q4`
**Clue 6**: `https://minhjo005.github.io/miku-murder-mystery/?token=evidence-clue6-t2b9j5l7`
**Clue 7**: `https://minhjo005.github.io/miku-murder-mystery/?token=suspect-clue7-x3c6v1z8`
**Clue 8**: `https://minhjo005.github.io/miku-murder-mystery/?token=solution-clue8-p5h4k9m2`

### 3. Security Features
- Each clue has a unique access token
- No navigation between clues (prevents cheating)
- Basic developer tools protection
- Clean URLs with no visible clue structure

### 4. File Structure
```
miku-murder-mystery/
├── miku.html (main website)
├── images/
│   ├── Clue 1.png
│   ├── Clue 3.png
│   ├── Clue 4.png
│   ├── Clue 5.png
│   ├── Clue 6.png
│   ├── Clue 7.png
│   ├── Clue 8.png
│   └── Start.png
└── README.md
```

### 5. Hosting
- Upload to any web host (GitHub Pages, Netlify, etc.)
- Make sure the images directory is publicly accessible
- Test each QR code URL before the game

## How It Works
1. Players scan a QR code
2. They're taken to the website with a unique token
3. Only the corresponding clue is displayed
4. No way to access other clues without their QR codes
Miku Murder Mystery - ANISYD Carnival of the Curse 
