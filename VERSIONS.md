# Mil-Spec × 91Pixels — Live Deck Versions

**Live URL:** https://bala91px.github.io/milspec-partnership/

Every version below is a git **tag**. Any version can be put back live at any time
(see **Rollback**). Newest first.

| Version | Date (IST)  | What changed |
|---------|-------------|--------------|
| **v2**  | 6 Jul 2026  | Page 6 (12-month rhythm): Foundation is now a **one-time setup completed in Month 1**; the **$3,250/mo retainer begins from Month 2**. Phase 01 → "Month 1 · One-time", Phase 02 → "Months 2-4 · Retainer begins". Statement rewritten to spell out the billing rhythm. |
| **v1**  | 5 Jul 2026  | First live baseline: 8-slide deck, self-hosted Clash Display headings, mxp lockup on every slide, slide-4 add-ons ledger, slide-8 scrim tuning, default-dark theme with manual toggle. |

## Rollback

To put a previous version back live and redeploy:

```bash
./rollback.sh v1        # example: roll the live deck back to v1
```

Or do it manually:

```bash
git checkout v1 -- index.html media fonts robots.txt .nojekyll
git commit -am "Rollback deck to v1"
git push origin main
```

GitHub Pages refreshes the live URL within about a minute of the push.

## Cutting a new version

After editing and pushing new work:

```bash
git tag -a v3 -m "v3: <one-line summary>"
git push origin v3
```

Then add a row to the table above.
