# GitHub Pages Setup - madriaga.info

This repository contains the professional resume website for Alex Madriaga.

## 🚀 Setup Instructions

### Step 1: Create GitHub Repository

1. Go to [GitHub](https://github.com) and create a new repository
2. Name it: `amadriaga.github.io` (use your GitHub username)
3. Make it **Public**
4. Initialize with this README

### Step 2: Upload Website Files

**Option A: Using Git (Recommended)**
```bash
# Clone the repository
git clone https://github.com/amadriaga/amadriaga.github.io.git
cd amadriaga.github.io

# Copy your files
cp index.html .
cp styles.css .

# Commit and push
git add .
git commit -m "Initial website setup"
git push origin main
```

**Option B: Using GitHub Web Interface**
1. In your repository, click "Add file" → "Upload files"
2. Drag and drop `index.html` and `styles.css`
3. Click "Commit changes"

### Step 3: Enable GitHub Pages

1. Go to repository **Settings**
2. Navigate to **Pages** (left sidebar)
3. Under **Source**, select:
   - Branch: `main`
   - Folder: `/ (root)`
4. Click **Save**
5. Your site will be live at: `https://amadriaga.github.io`

### Step 4: Connect Custom Domain (madriaga.info)

#### A. Configure DNS Settings (at your domain registrar)

You need to add DNS records for your domain. Log in to where you registered `madriaga.info` (e.g., GoDaddy, Namecheap, Google Domains, etc.).

**Option 1: Using CNAME (Recommended for www subdomain)**
```
Type: CNAME
Host: www
Value: amadriaga.github.io
TTL: 3600 or automatic
```

**Option 2: Using A Records (for apex domain)**
Add these 4 A records:
```
Type: A
Host: @
Value: 185.199.108.153
TTL: 3600

Type: A
Host: @
Value: 185.199.109.153
TTL: 3600

Type: A
Host: @
Value: 185.199.110.153
TTL: 3600

Type: A
Host: @
Value: 185.199.111.153
TTL: 3600
```

**Recommended Setup (Both)**
- Add CNAME for `www.madriaga.info` → `amadriaga.github.io`
- Add A records for `madriaga.info` (apex domain) using the 4 IPs above

#### B. Configure Custom Domain in GitHub

1. In repository **Settings** → **Pages**
2. Under **Custom domain**, enter: `madriaga.info`
3. Click **Save**
4. Wait for DNS check to complete (may take a few minutes)
5. Once verified, check **Enforce HTTPS** (recommended)

#### C. DNS Verification (Wait 24-48 hours)

DNS propagation can take time. Check status using:
- [DNS Checker](https://dnschecker.org)
- Command line: `nslookup madriaga.info`

### Step 5: Test Your Site

After DNS propagates, your site will be accessible at:
- `https://madriaga.info`
- `https://www.madriaga.info`
- `https://amadriaga.github.io`

## 📝 Updating Content

To update your resume:

1. Edit `index.html` locally
2. Commit and push changes:
```bash
git add index.html
git commit -m "Update resume content"
git push origin main
```

Changes will appear within 1-2 minutes.

## 🎨 Customization

### Colors
Edit CSS variables in `styles.css`:
```css
:root {
    --primary-color: #2563eb;  /* Blue - change to your preferred color */
    --secondary-color: #1e40af;
    --text-color: #1f2937;
}
```

### Fonts
Current font: Inter from Google Fonts. To change:
1. Update the Google Fonts link in `index.html`
2. Update `font-family` in `styles.css`

### Layout
- Modify sections in `index.html`
- Adjust spacing/sizing in `styles.css`

## ✅ Content Safety

The current content includes:
- ✅ General technology skills (publicly safe)
- ✅ High-level job responsibilities (no proprietary details)
- ✅ Standard development practices (industry-wide)
- ❌ NO company-specific internal systems
- ❌ NO proprietary code or algorithms
- ❌ NO confidential project details

All information is based on publicly available data and general industry practices.

## 🔒 Privacy & Professional Considerations

**Safe to include:**
- Technologies used (Java, Python, Docker, etc.)
- General architectural patterns (microservices, REST APIs)
- Industry-standard tools (Jenkins, Git, New Relic)
- Your role and general responsibilities

**Avoid mentioning:**
- Specific internal system names or codenames
- Proprietary algorithms or business logic
- Client/customer names without permission
- Security vulnerabilities or internal processes
- Revenue numbers or business metrics

## 📱 Mobile Responsive

This site is fully responsive and works on:
- Desktop browsers
- Tablets
- Mobile phones

## 🆘 Troubleshooting

**Site not loading after 24 hours:**
- Check DNS propagation: `nslookup madriaga.info`
- Verify DNS records are correct
- Clear browser cache
- Try accessing in incognito mode

**HTTPS certificate error:**
- Ensure "Enforce HTTPS" is enabled
- Wait up to 24 hours for certificate provisioning
- Check that DNS is properly configured

**404 Error:**
- Verify files are in repository root (not in a subfolder)
- Check that `index.html` exists and is spelled correctly
- Ensure GitHub Pages is enabled in Settings → Pages

## 📧 Contact

- LinkedIn: [alex-madriaga-7891b870](https://www.linkedin.com/in/alex-madriaga-7891b870/)
- GitHub: [amadriaga](https://github.com/amadriaga)

---

**Last Updated:** April 2026
