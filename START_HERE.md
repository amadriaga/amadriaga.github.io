# 🚀 Ready to Deploy!

Your website is **ready to go**! Everything is committed to git and configured.

## ✅ What's Done
- ✓ Git repository initialized
- ✓ All files committed
- ✓ Remote configured with your GitHub credentials
- ✓ Ready to push

## 📋 Next Steps (5 minutes)

### Step 1: Create the GitHub Repository

1. **Go to:** https://github.com/new
2. **Repository name:** `amadriaga.github.io` (exactly this)
3. **Description:** Professional resume website
4. **Visibility:** ✓ **Public** (required for free GitHub Pages)
5. **Important:** ❌ **DO NOT** check "Add a README file"
6. **Important:** ❌ **DO NOT** add .gitignore or license
7. **Click:** "Create repository"

### Step 2: Push Your Website

**Option A: Run the deployment script** (Recommended)
```powershell
.\deploy.ps1
```

**Option B: Manual push**
```powershell
git push -u origin main
```

That's it! Your files will upload to GitHub.

### Step 3: Enable GitHub Pages

1. Go to: https://github.com/amadriaga/amadriaga.github.io/settings/pages
2. Under **Source**:
   - Branch: `main`
   - Folder: `/ (root)`
3. Click **Save**
4. Wait 30-60 seconds
5. You'll see: "Your site is published at https://amadriaga.github.io"

### Step 4: Connect Custom Domain (madriaga.info)

#### A. Configure DNS at Your Domain Registrar

**Login to where you registered madriaga.info** and add these DNS records:

**CNAME Record (for www):**
```
Type: CNAME
Host: www
Value: amadriaga.github.io
TTL: 3600
```

**A Records (for root domain - add all 4):**
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

#### B. Add Custom Domain in GitHub

1. Go to: https://github.com/amadriaga/amadriaga.github.io/settings/pages
2. Under **Custom domain**, enter: `madriaga.info`
3. Click **Save**
4. Wait for DNS check (green checkmark)
5. ✓ Check **Enforce HTTPS**

## 🌐 Your Live URLs

Once DNS propagates (15 minutes to 48 hours, usually ~1 hour):
- https://madriaga.info
- https://www.madriaga.info
- https://amadriaga.github.io

## 🔄 Future Updates

To update your resume:

1. Edit files in this folder
2. Commit changes:
   ```powershell
   git add .
   git commit -m "Update resume"
   git push
   ```
3. Changes appear in 1-2 minutes!

## ✨ Current Status

```
📁 Repository: Initialized locally ✓
🔧 Git config: Configured ✓
📝 Files: All committed ✓
🔗 Remote: Connected to GitHub ✓
🚀 Pushed: Waiting for you to create repo on GitHub
```

## ⚡ Quick Start

Just run:
```powershell
# 1. Create repo at https://github.com/new (name: amadriaga.github.io)
# 2. Then:
.\deploy.ps1
```

That's it!

---

**Need help?** Check:
- [README.md](README.md) - Full documentation
- [DEPLOYMENT_CHECKLIST.md](DEPLOYMENT_CHECKLIST.md) - Detailed checklist
- [QUICK_DEPLOY.md](QUICK_DEPLOY.md) - Quick reference

**Your credentials are configured and ready!** 🎉
