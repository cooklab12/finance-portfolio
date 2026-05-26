---
layout: default
title: Contact
permalink: /pages/contact
---

<div class="row">
    <div class="col-md-8 offset-md-2">
        <div class="contact-form">
            <h1 class="mb-4">📧 Get In Touch</h1>
            <p class="text-muted mb-4">Interested in discussing finance solutions, automation, or collaboration? I'd love to hear from you!</p>

            <!-- Contact Form (Using Formspree) -->
            <form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
                <div class="form-group">
                    <label for="name" class="form-label">Your Name</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>

                <div class="form-group">
                    <label for="email" class="form-label">Email Address</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>

                <div class="form-group">
                    <label for="subject" class="form-label">Subject</label>
                    <input type="text" class="form-control" id="subject" name="subject" placeholder="e.g., Finance Automation, Project Inquiry">
                </div>

                <div class="form-group">
                    <label for="message" class="form-label">Message</label>
                    <textarea class="form-control" id="message" name="message" rows="5" required></textarea>
                </div>

                <button type="submit" class="btn btn-primary btn-lg w-100">Send Message</button>
            </form>

            <hr class="my-5">

            <!-- Alternative Contact Methods -->
            <h3>Other Ways to Connect</h3>
            <div class="row mt-4">
                <div class="col-md-6 mb-3">
                    <div class="card">
                        <div class="card-body text-center">
                            <h5 class="card-title">💼 LinkedIn</h5>
                            <p class="text-muted">Connect with me professionally</p>
                            <a href="https://linkedin.com/in/yourusername" class="btn btn-outline-primary btn-sm" target="_blank">Visit Profile</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-3">
                    <div class="card">
                        <div class="card-body text-center">
                            <h5 class="card-title">🐙 GitHub</h5>
                            <p class="text-muted">See code & project samples</p>
                            <a href="https://github.com/yourusername" class="btn btn-outline-primary btn-sm" target="_blank">Visit Profile</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-3">
                    <div class="card">
                        <div class="card-body text-center">
                            <h5 class="card-title">📧 Email</h5>
                            <p class="text-muted">Direct email inquiry</p>
                            <a href="mailto:your.email@example.com" class="btn btn-outline-primary btn-sm">Send Email</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-3">
                    <div class="card">
                        <div class="card-body text-center">
                            <h5 class="card-title">📱 Resume</h5>
                            <p class="text-muted">Download my resume</p>
                            <a href="/finance_portfolio/assets/files/resume.pdf" class="btn btn-outline-primary btn-sm">Download PDF</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- FAQ Section -->
        <div class="mt-5">
            <h2>❓ Frequently Asked Questions</h2>
            
            <div class="accordion" id="faqAccordion">
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#faq1">
                            What services do you offer?
                        </button>
                    </h2>
                    <div id="faq1" class="accordion-collapse collapse show" data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                            I offer expertise in bookkeeping, accounting, financial reporting, and AI-powered automation solutions. This includes invoice management, reconciliation, payroll, tax optimization, and intelligent process automation.
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq2">
                            Do you work with small businesses?
                        </button>
                    </h2>
                    <div id="faq2" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                            Yes! My expertise is specifically tailored for small business finance. I understand the unique challenges small businesses face and create practical, scalable solutions.
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq3">
                            Can you automate my accounting processes?
                        </button>
                    </h2>
                    <div id="faq3" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                            Absolutely! I specialize in automation using AI and intelligent agents. From receipt classification to expense categorization and tax optimization, I can streamline your financial operations.
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq4">
                            What accounting software do you work with?
                        </button>
                    </h2>
                    <div id="faq4" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                            I'm experienced with QuickBooks, Xero, and various spreadsheet-based solutions. I also build custom tools using Python, SQL, and other technologies tailored to specific needs.
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq5">
                            How long do projects typically take?
                        </button>
                    </h2>
                    <div id="faq5" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                            Timeline varies based on project scope. Simple solutions might take a few days, while comprehensive automation projects could take weeks. I'll provide a clear timeline during the consultation.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
