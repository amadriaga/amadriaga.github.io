# Quick Deployment Guide

## 1️⃣ Create Repository (2 minutes)
```
Repository name: amadriaga.github.io
Visibility: Public
✓ Initialize with README
```

## 2️⃣ Upload Files (1 minute)
Upload these files to your repository:
- `index.html` - Main website
- `styles.css` - Styling
- `CNAME` - Custom domain config (contains: madriaga.info)

## 3️⃣ Enable GitHub Pages (30 seconds)
**Settings** → **Pages**
- Source: main branch
- Folder: / (root)
- Save

Site live at: `https://amadriaga.github.io` (within 1 minute)

## 4️⃣ Configure DNS at Domain Registrar (5 minutes)

**Where you bought madriaga.info** (GoDaddy/Namecheap/etc.):

### Add These DNS Records:

**For www subdomain:**
```
Type: CNAME
Name/Host: www
Value: amadriaga.github.io
TTL: 3600
```

**For root domain (recommended - add all 4):**
```
Type: A
Name/Host: @
Value: 185.199.108.153
TTL: 3600
```
```
Type: A
Name/Host: @
Value: 185.199.109.153
TTL: 3600
```
```
Type: A
Name/Host: @
Value: 185.199.110.153
TTL: 3600
```
```
Type: A
Name/Host: @
Value: 185.199.111.153
TTL: 3600
```

## 5️⃣ Configure Custom Domain in GitHub (1 minute)
**Settings** → **Pages** → **Custom domain**
- Enter: `madriaga.info`
- Save
- Wait for DNS check ✓
- Enable "Enforce HTTPS" ✓

## 6️⃣ Wait for DNS Propagation (0-48 hours)
Usually takes 15 minutes to 2 hours, max 48 hours.

Check status: https://dnschecker.org

---

## ✅ Done!
Your site will be live at:
- https://madriaga.info
- https://www.madriaga.info
- https://amadriaga.github.io

---

## Common DNS Provider Instructions

### GoDaddy
1. My Products → Domain → Manage DNS
2. Add records in the Records section
3. Save

### Namecheap
1. Domain List → Manage → Advanced DNS
2. Add New Record
3. Save All Changes

### Google Domains
1. DNS → Custom records
2. Create new record
3. Save

### Cloudflare
1. DNS → Records
2. Add record
3. Save

---

## Quick Update Process
```bash
# Edit your files locally
# Then:
git add .
git commit -m "Update resume"
git push origin main
```

Changes appear in 1-2 minutes!
