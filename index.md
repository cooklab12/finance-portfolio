---
layout: default
title: Shweta - Home
permalink: /
---

<!-- Hero Section -->
<div class="hero-section">
    <h1>💼 Shweta's Finance Portfolio</h1>
    <p>Transforming Small Business Finance with Bookkeeping, Accounting & AI-Driven Solutions</p>
    <p style="opacity: 0.9; margin-top: 10px; font-weight: 500;">Passionate about modernizing financial operations through intelligent automation and innovative problem-solving</p>
    <a href="{{ '/pages/projects' | relative_url }}" class="btn btn-light btn-lg mt-4">Explore Projects →</a>
</div>

<!-- Quick Stats -->
<div class="row mb-5">
    <div class="col-md-4 text-center">
        <div class="card">
            <div class="card-body">
                <h3 class="text-primary">7+</h3>
                <p class="text-muted font-weight-bold">Hands-on Projects</p>
                <small class="text-secondary">Real-world solutions delivered</small>
            </div>
        </div>
    </div>
    <div class="col-md-4 text-center">
        <div class="card">
            <div class="card-body">
                <h3 class="text-success">2</h3>
                <p class="text-muted font-weight-bold">AI/Agent Innovations</p>
                <small class="text-secondary">Cutting-edge automation built</small>
            </div>
        </div>
    </div>
    <div class="col-md-4 text-center">
        <div class="card">
            <div class="card-body">
                <h3 class="text-info">5+</h3>
                <p class="text-muted font-weight-bold">Core Skills Mastered</p>
                <small class="text-secondary">Finance & technology expertise</small>
            </div>
        </div>
    </div>
</div>

<!-- Introduction Section -->
<div class="mb-5">
    <div class="card">
        <div class="card-body p-4">
            <h2 class="mb-3" style="font-weight: 800;">🚀 Why Hire Me?</h2>
            <p class="lead mb-3">I'm Shweta, an ambitious finance professional ready to bring energy, fresh perspectives, and hands-on expertise to your team.</p>
            <p class="mb-3">With a strong foundation in bookkeeping and accounting, combined with cutting-edge AI/automation skills, I bridge the gap between traditional finance and modern technology. My projects demonstrate not just technical ability, but a genuine passion for solving real business problems.</p>
            <p class="mb-0">I'm eager to contribute, learn, and grow with a forward-thinking organization that values innovation, accuracy, and continuous improvement. Whether you need help with day-to-day financial operations, process automation, or building intelligent financial systems – I'm ready to hit the ground running!</p>
        </div>
    </div>
</div>

<!-- Featured Projects Section -->
<div class="mt-5 mb-5">
    <h2 class="mb-4" style="font-weight: 800;">Featured Projects</h2>
    <p class="lead text-muted mb-4">Real solutions. Tangible results. Ready-to-deploy expertise.</p>

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
                        <span class="badge" style="background-color: {% if post.category == 'Bookkeeping' %}#667eea{% elsif post.category == 'Accounting' %}#764ba2{% endif %}">
                            {{ post.category }}
                        </span>
                    {% endif %}
                    {% if post.ai_project %}
                        <span class="badge bg-success">🤖 AI-Powered</span>
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
        <h2 style="color: white; font-weight: 800;">Ready to Work Together?</h2>
        <p class="fs-5 mt-3" style="color: rgba(255, 255, 255, 0.95);">I'm actively seeking opportunities in finance, accounting, or financial technology. Let's discuss how my skills and enthusiasm can add value to your team!</p>
        <div class="mt-4 d-flex justify-content-center gap-3 flex-wrap">
            <a href="{{ '/pages/projects' | relative_url }}" class="btn btn-light btn-lg">View All Projects</a>
            <a href="{{ '/pages/contact' | relative_url }}" class="btn btn-primary btn-lg">Get in Touch</a>
        </div>
    </div>
</div>

<!-- Skills Highlight -->
<div class="mt-5">
    <h2 class="mb-4" style="font-weight: 800;">Core Competencies</h2>
    <p class="lead text-muted mb-4">A powerful combination of traditional finance expertise and modern technical skills.</p>
    <div class="row">
        <div class="col-md-6 mb-3">
            <div class="skill-category">
                <h4>📊 Bookkeeping & Accounting</h4>
                <p>General Ledger Management • Bank Reconciliation • Financial Statements (P&L, Balance Sheet) • Invoice/Bill Management • Payroll Processing • Tax Preparation</p>
            </div>
        </div>
        <div class="col-md-6 mb-3">
            <div class="skill-category">
                <h4>🤖 AI & Automation</h4>
                <p>Intelligent Process Automation • Receipt Classification (OCR + AI) • AI-Powered Financial Analysis • Tax Optimization Agents • Anomaly Detection</p>
            </div>
        </div>
        <div class="col-md-6 mb-3">
            <div class="skill-category">
                <h4>💻 Technical Skills</h4>
                <p>Python • SQL • Excel Advanced • Data Analysis & Visualization • Web Automation • API Integration • Scripting for Finance</p>
            </div>
        </div>
        <div class="col-md-6 mb-3">
            <div class="skill-category">
                <h4>📈 Tools & Platforms</h4>
                <p>QuickBooks • Xero • Google Sheets • Database Management • Cloud Platforms • Automation Tools • Financial Software</p>
            </div>
        </div>
    </div>
</div>

<!-- Value Proposition -->
<div class="mt-5 mb-5">
    <div class="card">
        <div class="card-body p-4">
            <h2 class="mb-3" style="font-weight: 800;">💡 What I Bring to the Table</h2>
            <div class="row">
                <div class="col-md-6">
                    <ul class="list-unstyled">
                        <li class="mb-3"><strong>✅ Fresh Perspective:</strong> Eager to learn, adapt, and bring innovative ideas to traditional processes</li>
                        <li class="mb-3"><strong>✅ Dual Expertise:</strong> Rare combination of finance knowledge AND technical automation skills</li>
                        <li class="mb-3"><strong>✅ Proven Track Record:</strong> 7+ completed projects demonstrating practical problem-solving</li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <ul class="list-unstyled">
                        <li class="mb-3"><strong>✅ Fast Learner:</strong> Quick to master new tools, systems, and business requirements</li>
                        <li class="mb-3"><strong>✅ Detail-Oriented:</strong> Meticulous attention to accuracy – crucial in finance</li>
                        <li class="mb-3"><strong>✅ Tech-Forward:</strong> Ready to leverage AI/automation to improve efficiency and reduce errors</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>