# Deployment Checklist for madriaga.info

## Pre-Deployment ✓
- [x] Content reviewed - no proprietary information
- [x] No company-specific internal system names
- [x] No confidential project details
- [x] General technologies and skills only
- [x] Professional tone maintained
- [x] Contact links verified

## GitHub Repository Setup
- [ ] Create repository: `amadriaga.github.io`
- [ ] Set visibility to Public
- [ ] Upload all files from `github-pages-site/` folder:
  - [ ] index.html
  - [ ] styles.css
  - [ ] CNAME
  - [ ] README.md
  - [ ] .gitignore
- [ ] Verify files appear in repository

## GitHub Pages Configuration
- [ ] Go to Settings → Pages
- [ ] Set Source to: `main` branch, `/ (root)` folder
- [ ] Click Save
- [ ] Wait for "Your site is live at..." message
- [ ] Test site at: https://amadriaga.github.io

## DNS Configuration (at your domain registrar)
**Login to where you registered madriaga.info**

### CNAME Record (for www)
- [ ] Type: CNAME
- [ ] Host/Name: www
- [ ] Value: amadriaga.github.io
- [ ] TTL: 3600 (or automatic)

### A Records (for root domain - add all 4)
- [ ] A record 1: @ → 185.199.108.153
- [ ] A record 2: @ → 185.199.109.153
- [ ] A record 3: @ → 185.199.110.153
- [ ] A record 4: @ → 185.199.111.153

### Save DNS Changes
- [ ] Save/Apply changes at registrar
- [ ] Note current time: ___________

## Custom Domain Setup in GitHub
- [ ] Settings → Pages → Custom domain
- [ ] Enter: madriaga.info
- [ ] Click Save
- [ ] Wait for DNS check to pass (green checkmark)
- [ ] Enable "Enforce HTTPS" checkbox
- [ ] Save

## Verification & Testing
- [ ] Wait 15-60 minutes for DNS propagation
- [ ] Check DNS status: https://dnschecker.org
  - [ ] Search for: madriaga.info
  - [ ] Verify A records point to GitHub IPs
- [ ] Check www DNS: www.madriaga.info
  - [ ] Verify CNAME points to amadriaga.github.io
- [ ] Test URLs:
  - [ ] https://amadriaga.github.io (should work immediately)
  - [ ] http://madriaga.info (redirects to https)
  - [ ] https://madriaga.info (works)
  - [ ] http://www.madriaga.info (redirects to https)
  - [ ] https://www.madriaga.info (works)
- [ ] Test mobile responsiveness
- [ ] Test all links (LinkedIn, GitHub)
- [ ] Check HTTPS certificate (padlock icon)

## Post-Deployment
- [ ] Share link with trusted colleague for review
- [ ] Verify no confidential information exposed
- [ ] Update LinkedIn profile with website link
- [ ] Add to email signature (optional)
- [ ] Bookmark for future updates

## Maintenance
- [ ] Save git repository locally for future edits
- [ ] Document update process for yourself
- [ ] Set reminder to review content quarterly

## Troubleshooting Reference

**If site shows 404:**
- Verify index.html is in repository root
- Check GitHub Pages is enabled
- Wait 2-3 minutes after enabling

**If custom domain doesn't work:**
- Verify DNS records are correct
- Check https://dnschecker.org for propagation
- Wait up to 48 hours (usually much faster)
- Clear browser cache

**If HTTPS not working:**
- Ensure "Enforce HTTPS" is checked
- Wait up to 24 hours for certificate
- Verify DNS is properly configured

**If content looks broken:**
- Verify styles.css is in same folder as index.html
- Check browser console for errors (F12)
- Try hard refresh (Ctrl+Shift+R or Cmd+Shift+R)

---

## Quick Command Reference

**Check DNS:**
```bash
nslookup madriaga.info
nslookup www.madriaga.info
```

**Update site content:**
```bash
cd amadriaga.github.io
# Edit files
git add .
git commit -m "Update content"
git push origin main
```

---

**Estimated Time:**
- Repository creation: 5 minutes
- DNS configuration: 5 minutes
- DNS propagation: 15 minutes - 48 hours (usually ~1 hour)
- **Total active time: ~10 minutes**
