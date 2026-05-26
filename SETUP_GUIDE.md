# Finance Portfolio - Setup & Deployment Guide

## ✅ What's Been Created

Your complete Jekyll-based finance portfolio site with:
- ✓ Homepage with hero section and featured projects
- ✓ 7 detailed project pages (5 bookkeeping/accounting + 2 AI projects)
- ✓ About page highlighting your expertise
- ✓ Projects listing with filtering
- ✓ Contact page with FAQ section
- ✓ Professional styling with Bootstrap 5
- ✓ Sample data files
- ✓ Responsive mobile-friendly design

## 🚀 Local Development Setup

### Step 1: Install Ruby & Jekyll

**On Linux (Ubuntu/Debian):**
```bash
sudo apt-get install ruby ruby-dev
sudo gem install jekyll bundler
```

**On macOS (with Homebrew):**
```bash
brew install ruby
sudo gem install jekyll bundler
```

**On Windows:**
Download and install [Ruby](https://rubyinstaller.org/) with devkit

### Step 2: Run Locally

```bash
cd /home/ravi/wsl_cooklab/finance_portfolio
bundle install
bundle exec jekyll serve
```

Then open: http://localhost:4000/finance_portfolio

## 🌐 Deploy to GitHub Pages

### Step 1: Create GitHub Repository

1. Go to [github.com/new](https://github.com/new)
2. Create repository named: `finance_portfolio`
3. Make it Public (required for free GitHub Pages)

### Step 2: Push to GitHub

```bash
cd /home/ravi/wsl_cooklab/finance_portfolio

# Initialize Git (if not already done)
git init
git add .
git commit -m "Initial portfolio commit

Co-authored-by: Copilot <223556219+Copilot@users.noreply.github.com>"

# Add remote and push
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/finance_portfolio.git
git push -u origin main
```

### Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Settings → Pages
3. Select "main" branch as source
4. Click Save
5. Site will be live at: `https://YOUR_USERNAME.github.io/finance_portfolio/`

## 📝 Customization Checklist

### High Priority (Before Going Live)

```markdown
[ ] Update _config.yml:
    - Change title to your name/brand
    - Update GitHub username
    - Update LinkedIn username
    - Update repository name if different

[ ] Update pages/contact.md:
    - Replace email address
    - Update LinkedIn URL
    - Update GitHub URL
    - Update resume PDF link (if applicable)

[ ] Update pages/about.md:
    - Replace with your bio
    - Update technical skills
    - Replace professional background

[ ] Add profile photo/logo:
    - Create assets/images/profile.jpg
    - Link in homepage or about page
```

### Medium Priority (Nice to Have)

```markdown
[ ] Update project files:
    - Replace sample CSV files with real data
    - Update project dates to match your timeline
    - Adjust tools & technologies lists
    - Verify results/impact numbers

[ ] Set up contact form:
    - Sign up for Formspree: https://formspree.io/
    - Get your form ID
    - Update form action in pages/contact.md

[ ] Add custom domain (optional):
    - Buy domain (e.g., myfineance.com)
    - Update GitHub Pages custom domain settings
    - Update _config.yml URL
```

### Low Priority (Polish)

```markdown
[ ] Add project screenshots:
    - Create assets/images/projects/
    - Add dashboard screenshots
    - Update project markdown files

[ ] Add Google Analytics:
    - Create Google Analytics account
    - Add tracking code to _config.yml

[ ] Customize colors:
    - Edit assets/css/main.css
    - Update color variables
```

## 📂 Directory Structure Reference

```
finance_portfolio/
├── _config.yml                 # Site config - UPDATE THIS
├── _layouts/
│   ├── default.html           # Main layout
│   └── project.html           # Project layout
├── _posts/                     # 7 project markdown files
├── assets/
│   ├── css/main.css          # Custom styling
│   ├── images/               # Add your photos here
│   └── files/projects/       # Sample data files
├── pages/
│   ├── about.md              # UPDATE THIS
│   ├── projects.md           # Projects listing
│   └── contact.md            # UPDATE THIS
├── index.md                   # Homepage (UPDATE THIS)
├── Gemfile                    # Ruby dependencies
├── Gemfile.lock              # (Auto-generated)
├── README.md                 # Project README
└── .gitignore               # Git ignore rules
```

## 🔑 Key Files to Update

### 1. _config.yml (MOST IMPORTANT)
```yaml
title: YOUR_NAME - Finance Portfolio
author: YOUR_NAME
url: "https://yourusername.github.io"
baseurl: "/finance_portfolio"
repository: yourusername/finance_portfolio
social_links:
  github: yourusername
  linkedin: yourusername
```

### 2. index.md (Homepage)
- Update hero section heading and description
- Update skills/competencies section
- Update call-to-action buttons

### 3. pages/about.md
- Write your professional bio
- List your skills and expertise
- Update professional background

### 4. pages/contact.md
- Replace email addresses
- Update form action (Formspree)
- Update LinkedIn/GitHub links

### 5. Project Files (_posts/*.md)
- Update dates to match your timeline
- Change tools/technologies as needed
- Verify results/impact statements
- Update client/company names if needed

## 🛠️ Common Customizations

### Change Site Colors
Edit `assets/css/main.css`:
```css
:root {
    --primary-color: #2c3e50;      /* Dark blue */
    --accent-color: #3498db;       /* Light blue */
    --success-color: #27ae60;      /* Green */
}
```

### Add Your Logo
1. Save logo image to `assets/images/logo.png`
2. Edit `_layouts/default.html`:
```html
<a class="navbar-brand" href="{{ '/' | relative_url }}">
    <img src="/finance_portfolio/assets/images/logo.png" alt="Logo">
    Finance Portfolio
</a>
```

### Update Footer
Edit `_layouts/default.html` footer section with your info

## 🚨 Troubleshooting

### "Bundle not found"
```bash
# Install bundler
gem install bundler

# Then try again
bundle install
```

### "Permission denied" on `gem install`
```bash
# Use sudo (may need password)
sudo gem install jekyll bundler
```

### Site not updating on GitHub
1. Check GitHub Actions tab for build errors
2. Wait 5-10 minutes for deployment
3. Force refresh browser (Ctrl+F5)
4. Clear browser cache

### Local site not showing content
```bash
# Make sure you're in the right directory
cd /home/ravi/wsl_cooklab/finance_portfolio

# Kill any running Jekyll
# Press Ctrl+C in terminal

# Try again
bundle exec jekyll serve --trace
```

## 📚 Useful Resources

- **Jekyll Docs**: https://jekyllrb.com/docs/
- **GitHub Pages Docs**: https://docs.github.com/en/pages
- **Bootstrap 5**: https://getbootstrap.com/docs/
- **Markdown Guide**: https://www.markdownguide.org/

## ✨ Pro Tips

1. **Test locally first**: Always run `bundle exec jekyll serve` before pushing
2. **Keep Git commits clean**: Use meaningful commit messages
3. **Version control projects**: Update dates when you refine projects
4. **Backup important data**: Keep sample files in sync with real data
5. **Update regularly**: Add new projects as you complete them
6. **Monitor analytics**: Add Google Analytics to track visitors

## 📞 Next Steps

1. ✅ Install Jekyll and Ruby (see above)
2. ✅ Test locally: `bundle exec jekyll serve`
3. ✅ Update _config.yml with your info
4. ✅ Customize about.md and contact.md
5. ✅ Create GitHub repository
6. ✅ Push to GitHub
7. ✅ Enable GitHub Pages
8. ✅ Share your portfolio URL!

## 🎉 You're All Set!

Your finance portfolio is ready to showcase your expertise in bookkeeping, accounting, and AI-driven financial solutions.

**Happy deploying! 🚀**

---
For questions or issues, refer to the Jekyll documentation or GitHub Pages documentation linked above.
