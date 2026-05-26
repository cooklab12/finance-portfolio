# Local Testing Guide - Finance Portfolio

## 🚀 Quick Start (Copy & Paste)

### Option 1: Using Docker (Easiest - No Installation)
```bash
cd /home/ravi/wsl_cooklab/finance_portfolio

# Run Jekyll in Docker
docker run --rm -v "$(pwd)":/srv/jekyll -p 4000:4000 jekyll/jekyll:latest \
  jekyll serve --watch

# Then visit: http://localhost:4000/finance_portfolio/
```

### Option 2: Install Ruby & Jekyll (2-5 minutes)
```bash
# Step 1: Install Ruby
sudo apt update
sudo apt install -y ruby ruby-dev build-essential

# Step 2: Install Jekyll & Bundler
sudo gem install jekyll bundler

# Step 3: Install dependencies
cd /home/ravi/wsl_cooklab/finance_portfolio
bundle install

# Step 4: Run local server
bundle exec jekyll serve

# Then visit: http://localhost:4000/finance_portfolio/
```

---

## 📋 Detailed Instructions

### STEP 1: Install Ruby (if not installed)

**Check if Ruby is installed:**
```bash
ruby --version
```

**If not installed, install it:**
```bash
# For Ubuntu/Debian:
sudo apt update
sudo apt install -y ruby ruby-dev build-essential

# For macOS (with Homebrew):
brew install ruby

# For Windows:
# Download from: https://rubyinstaller.org/
# Run installer and select "Add Ruby executables to your PATH"
```

### STEP 2: Install Jekyll & Bundler

```bash
# Install Jekyll globally
sudo gem install jekyll bundler

# Verify installation
jekyll --version
bundler --version
```

**Expected output:**
```
jekyll 4.3.x
bundler 2.x.x
```

### STEP 3: Install Project Dependencies

```bash
cd /home/ravi/wsl_cooklab/finance_portfolio

# Install gems from Gemfile
bundle install

# This installs:
# - jekyll (~> 4.3)
# - minima theme
# - jekyll-feed
# - jekyll-seo-tag
# - jekyll-paginate
```

**First time only** - May take 1-2 minutes

### STEP 4: Start Local Development Server

```bash
cd /home/ravi/wsl_cooklab/finance_portfolio

# Start Jekyll server
bundle exec jekyll serve

# Or with more verbose output:
bundle exec jekyll serve --verbose
```

**Expected output:**
```
Configuration file: .../finance_portfolio/_config.yml
            Source: .../finance_portfolio
       Destination: .../finance_portfolio/_site
 Incremental build: disabled. Enable with --incremental
      Generating... 
                    done in X.XXs.
 Auto-regeneration: enabled for '.../finance_portfolio'
    Server address: http://127.0.0.1:4000/finance_portfolio/
  Server running...
Press ctrl-c to stop the server.
```

### STEP 5: View in Browser

**Open your browser and visit:**
```
http://localhost:4000/finance_portfolio/
```

You should see:
- ✅ Navigation bar with Home, About, Projects, Contact
- ✅ Hero section with "Finance Portfolio" heading
- ✅ Featured projects cards
- ✅ Skills section
- ✅ Professional styling with blue color scheme

---

## 🔄 Making Changes & Testing

### Real-Time Changes

Jekyll **automatically rebuilds** when you make changes:

1. **Open project file:**
   ```bash
   nano /home/ravi/wsl_cooklab/finance_portfolio/index.md
   ```

2. **Make a change** (e.g., update hero section text)

3. **Save** (Ctrl+X, then Y for nano)

4. **Refresh browser** - Changes appear instantly! 🎉

### Testing Different Pages

| Page | URL |
|------|-----|
| Home | http://localhost:4000/finance_portfolio/ |
| About | http://localhost:4000/finance_portfolio/pages/about |
| Projects | http://localhost:4000/finance_portfolio/pages/projects |
| Contact | http://localhost:4000/finance_portfolio/pages/contact |
| Project Details | http://localhost:4000/finance_portfolio/2026/01/15/invoice-bill-management |

### Testing Responsive Design

**In Chrome/Firefox DevTools:**
1. Press `F12` to open Developer Tools
2. Click phone icon (toggle device toolbar) or press `Ctrl+Shift+M`
3. Select different devices:
   - iPhone 12
   - iPad
   - Android phone
   - Desktop

**You should see:**
✅ Mobile: Single-column layout, hamburger menu
✅ Tablet: Two-column, readable
✅ Desktop: Full width, optimal spacing

---

## 🛠️ Common Testing Tasks

### 1. Test Homepage
```bash
# Visit: http://localhost:4000/finance_portfolio/
# Check:
# ✓ Hero section displays correctly
# ✓ Stats (7+, 2, 5+) show
# ✓ Featured projects cards visible
# ✓ Skills section displays
# ✓ CTA button works
```

### 2. Test Project Pages
```bash
# Visit any project:
# http://localhost:4000/finance_portfolio/2026/01/15/invoice-bill-management
# Check:
# ✓ Project title displays
# ✓ Problem statement shows
# ✓ Tools/technologies listed
# ✓ Features appear
# ✓ Results/impact visible
# ✓ Sidebar info box shows
```

### 3. Test Projects Filtering
```bash
# Visit: http://localhost:4000/finance_portfolio/pages/projects
# Check:
# ✓ All 7 projects visible
# ✓ Filter buttons work (Bookkeeping, Accounting, AI)
# ✓ Click filters, projects hide/show correctly
```

### 4. Test Contact Page
```bash
# Visit: http://localhost:4000/finance_portfolio/pages/contact
# Check:
# ✓ Contact form displays
# ✓ FAQ accordion works
# ✓ Alternative contact methods visible
# ✓ Links work
```

### 5. Test Navigation
```bash
# Click each nav item:
# ✓ Home → homepage
# ✓ About → about page
# ✓ Projects → projects page
# ✓ Contact → contact page
# ✓ Logo → homepage
```

### 6. Test Styling/CSS
```bash
# Check visual elements:
# ✓ Colors are consistent (blue theme)
# ✓ Fonts are readable
# ✓ Spacing looks good
# ✓ Cards have shadows/hover effects
# ✓ Buttons have proper styling
# ✓ No overlapping text
```

---

## 🐛 Troubleshooting

### Problem: "Command not found: bundle"
**Solution:**
```bash
# Install bundler
sudo gem install bundler

# Verify
bundler --version
```

### Problem: "Errno::EACCES: Permission denied"
**Solution:**
```bash
# Try with sudo
sudo bundle install
sudo bundle exec jekyll serve

# Or install Ruby without sudo:
# https://jekyllrb.com/docs/installation/ubuntu/
```

### Problem: Port 4000 already in use
**Solution 1 - Use different port:**
```bash
bundle exec jekyll serve --port 5000
# Then visit: http://localhost:5000/finance_portfolio/
```

**Solution 2 - Kill process using port:**
```bash
# Find process using port 4000
lsof -i :4000

# Kill it
kill -9 <PID>
```

### Problem: Site not showing changes
**Solution:**
```bash
# Stop server (Ctrl+C)
# Clear Jekyll cache
rm -rf _site .jekyll-cache

# Restart
bundle exec jekyll serve
```

### Problem: "Could not find gem 'jekyll'"
**Solution:**
```bash
# Reinstall dependencies
cd /home/ravi/wsl_cooklab/finance_portfolio
bundle install --redownload
bundle exec jekyll serve
```

### Problem: CSS/Images not loading
**Possible causes:**
- Check browser console (F12) for errors
- Verify baseurl in _config.yml: `baseurl: "/finance_portfolio"`
- Hard refresh: Ctrl+Shift+R (or Cmd+Shift+R on Mac)
- Clear browser cache

---

## ✅ Testing Checklist

```
SETUP:
☐ Ruby installed (ruby --version)
☐ Jekyll installed (jekyll --version)
☐ Dependencies installed (bundle install)
☐ Local server running (bundle exec jekyll serve)
☐ Browser accessing: http://localhost:4000/finance_portfolio/

HOMEPAGE:
☐ Hero section displays
☐ Featured projects show
☐ Stats display correctly
☐ Skills section visible
☐ CTA buttons work

NAVIGATION:
☐ All nav links work
☐ Mobile menu works
☐ Logo links to home
☐ Active page highlighted

PAGES:
☐ About page loads
☐ Projects page loads with filtering
☐ Contact page displays
☐ All project detail pages work

RESPONSIVE:
☐ Mobile view looks good
☐ Tablet view looks good
☐ Desktop view looks good
☐ Images scale properly
☐ Text is readable

STYLING:
☐ Colors are correct (blue theme)
☐ Fonts load properly
☐ Spacing is consistent
☐ Cards have proper shadows
☐ Buttons have hover effects

PERFORMANCE:
☐ Site loads quickly (<2 seconds)
☐ No console errors
☐ Links work correctly
☐ Forms display properly
```

---

## 🎯 Before Deploying to GitHub

Make sure to test:

1. **All pages accessible:**
   - [ ] Homepage
   - [ ] About
   - [ ] Projects list
   - [ ] Each project detail page
   - [ ] Contact

2. **All interactive elements:**
   - [ ] Project filter buttons
   - [ ] FAQ accordion
   - [ ] Navigation links
   - [ ] Responsive menu (mobile)

3. **Content accuracy:**
   - [ ] No typos
   - [ ] Links work
   - [ ] Images display
   - [ ] Data is correct

4. **Visual consistency:**
   - [ ] Colors match design
   - [ ] Fonts render correctly
   - [ ] Spacing is consistent
   - [ ] Mobile view works

---

## 💡 Pro Tips

### Tip 1: Use Drafts
Add to project frontmatter to hide:
```yaml
published: false
```

### Tip 2: Quick CSS Testing
Edit `assets/css/main.css` and refresh browser - changes appear instantly!

### Tip 3: View Site Locally on Mobile
```bash
# Find your machine's IP
ifconfig | grep "inet "

# Then on mobile browser, visit:
http://<YOUR_IP>:4000/finance_portfolio/
```

### Tip 4: Use Jekyll's Verbose Mode
```bash
bundle exec jekyll serve --verbose

# Shows detailed build information for debugging
```

### Tip 5: Incremental Build (Faster)
```bash
bundle exec jekyll serve --incremental

# Only rebuilds changed files (faster!)
```

---

## 📞 Quick Reference

| Task | Command |
|------|---------|
| Install dependencies | `bundle install` |
| Start server | `bundle exec jekyll serve` |
| Start with different port | `bundle exec jekyll serve --port 5000` |
| Build site | `bundle exec jekyll build` |
| Clear cache | `rm -rf _site .jekyll-cache` |
| Check Jekyll version | `jekyll --version` |
| Check Ruby version | `ruby --version` |
| Stop server | `Ctrl+C` |

---

## 🚀 Next Steps

1. ✅ Follow setup steps above
2. ✅ Run local server
3. ✅ Test all pages
4. ✅ Make customizations
5. ✅ Verify everything works
6. ✅ Deploy to GitHub Pages!

---

**All set! Happy testing! 🎉**
