# Kraken AD&D Character Sheets

Fantasy Grounds Unity extension for the `2E` ruleset.

## Changes

- Enlarges the character-sheet portrait from `50x50` to `120x120`.
- Lets the inherited relative anchors move the character name beside the portrait.
- Moves class and level, race, and kit into the overview panel beneath the character name.
- Pulls abilities and saves upward after removing the visible class row from the main tab.
- Increases the default and minimum sheet size so the AD&D 2E controls remain aligned below the larger header.

## Build and install

Run:

```powershell
.\build.ps1
```

This validates the XML, creates `Kraken AD&D Character Sheets.ext` in the workspace root, and copies it into the Fantasy Grounds `extensions` directory.

## Install from a release

Unzip the release zip into your Fantasy Grounds data folder (it holds `extensions/Kraken AD&D Character Sheets.ext`; keep that file name), then tick **Kraken AD&D Character Sheets** in your AD&D 2E campaign.
