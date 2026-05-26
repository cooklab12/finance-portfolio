---
layout: default
title: Home
permalink: /
---

<!-- Hero Section -->
<div class="hero-section">
    <h1>💼 Finance Portfolio</h1>
    <p>Small Business Bookkeeping, Accounting & AI-Driven Financial Solutions</p>
    <p style="opacity: 0.85; margin-top: 15px;">Showcasing expertise in financial reporting, reconciliation, automation and intelligent agents</p>
    <a href="/finance_portfolio/pages/projects" class="btn btn-light btn-lg mt-4">Explore Projects →</a>
</div>

<!-- Quick Stats -->
<div class="row mb-5">
    <div class="col-md-4 text-center">
        <div class="card">
            <div class="card-body">
                <h3 class="text-primary">7+</h3>
                <p class="text-muted">Projects Completed</p>
            </div>
        </div>
    </div>
    <div class="col-md-4 text-center">
        <div class="card">
            <div class="card-body">
                <h3 class="text-success">2</h3>
                <p class="text-muted">AI/Agent Solutions</p>
            </div>
        </div>
    </div>
    <div class="col-md-4 text-center">
        <div class="card">
            <div class="card-body">
                <h3 class="text-info">5+</h3>
                <p class="text-muted">Technical Skills</p>
            </div>
        </div>
    </div>
</div>

<!-- Featured Projects Section -->
<div class="mt-5 mb-5">
    <h2 class="mb-4" style="color: #2c3e50; font-weight: 700;">Featured Projects</h2>
    
    <div class="projects-grid">
        {% assign sorted_posts = site.posts | sort: 'date' | reverse %}
        {% for post in sorted_posts limit: 3 %}
        <div class="project-card">
            <div class="project-card-header">
                <h3>{{ post.title }}</h3>
            </div>
            <div class="project-card-body">
                <p>{{ post.excerpt | strip_html | truncatewords: 20 }}</p>
                <div class="project-badges">
                    {% if post.category %}
                        <span class="badge" style="background-color: {% if post.category == 'Bookkeeping' %}#3498db{% elsif post.category == 'Accounting' %}#9b59b6{% endif %}">
                            {{ post.category }}
                        </span>
                    {% endif %}
                    {% if post.ai_project %}
                        <span class="badge bg-success">🤖 AI</span>
                    {% endif %}
                </div>
            </div>
            <div class="project-card-footer">
                <a href="{{ post.url | relative_url }}">View Project →</a>
            </div>
        </div>
        {% endfor %}
    </div>
</div>

<!-- CTA Section -->
<div class="bg-light-primary p-5 rounded my-5">
    <div class="text-center">
        <h2 style="color: #2c3e50;">Ready to see more?</h2>
        <p class="fs-5 text-muted mt-3">Browse all projects and learn how I solve real business finance challenges.</p>
        <a href="/finance_portfolio/pages/projects" class="btn btn-primary btn-lg mt-3">View All Projects</a>
    </div>
</div>

<!-- Skills Highlight -->
<div class="mt-5">
    <h2 class="mb-4" style="color: #2c3e50; font-weight: 700;">Core Competencies</h2>
    <div class="row">
        <div class="col-md-6 mb-3">
            <div class="skill-category">
                <h4>📊 Bookkeeping & Accounting</h4>
                <p>General Ledger, Reconciliation, Financial Reporting, Invoice Management, Payroll Processing</p>
            </div>
        </div>
        <div class="col-md-6 mb-3">
            <div class="skill-category">
                <h4>🤖 AI & Automation</h4>
                <p>Intelligent Process Automation, AI Agents, Receipt Classification, Tax Optimization</p>
            </div>
        </div>
        <div class="col-md-6 mb-3">
            <div class="skill-category">
                <h4>💻 Technical Skills</h4>
                <p>Python, SQL, Excel, Data Analysis, Web Automation, API Integration</p>
            </div>
        </div>
        <div class="col-md-6 mb-3">
            <div class="skill-category">
                <h4>📈 Tools & Platforms</h4>
                <p>QuickBooks, Xero, Spreadsheet Tools, Databases, Cloud Platforms</p>
            </div>
        </div>
    </div>
</div>
