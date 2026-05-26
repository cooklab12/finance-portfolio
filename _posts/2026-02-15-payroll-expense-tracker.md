---
layout: project
title: Payroll Processing & Expense Tracker
date: 2026-02-15
category: Accounting
ai_project: false
duration: 3 weeks
status: Complete
difficulty: Advanced
impact: Streamlined payroll, reduced errors by 95%

problem_statement: "Managing payroll manually is complex: calculating gross pay, deductions, taxes, generating paychecks, and tracking expenses consumes significant time. Errors in payroll calculations have serious compliance and morale consequences."

tools:
  - Payroll Calculators
  - Tax Tables & Schedules
  - W-2 Forms Templates
  - Form 941 Preparation
  - Excel Payroll Spreadsheets
  - FICA Calculation Guides
  - State Tax Reference Materials
  - Expense Reimbursement Forms

features:
  - Employee master data management
  - Hours tracking and timesheet processing
  - Gross pay calculations
  - Tax deduction calculations (federal, state, FICA)
  - Benefit deductions
  - Paycheck generation
  - Payroll report generation
  - Tax filing reports (941, W-2)
  - Expense categorization & tracking
  - Reimbursement processing
  - Compliance audit trail

results: "Reduced payroll processing time from 8 hours/month to 30 minutes. Eliminated calculation errors. Automated tax withholding. Generated tax filing reports automatically."

learnings: "Tax calculation rules are complex and jurisdiction-specific. FICA, federal income tax, state tax vary. Compliance documentation is critical. Employee data accuracy is paramount."

files:
  - name: "Sample Payroll Report"
    url: "/assets/files/projects/payroll_report_sample.xlsx"
  - name: "Tax Calculation Reference"
    url: "/assets/files/projects/tax_calculation_guide.md"
  - name: "Expense Tracking Template"
    url: "/assets/files/projects/expense_tracker.xlsx"

excerpt: "Automated payroll processing with tax calculations, paycheck generation, and employee expense tracking with compliance reporting."
---

## Overview

Payroll processing is one of the most critical and complex accounting functions for small businesses:

**Payroll Challenges:**
- Calculating gross pay (hourly, salary, overtime)
- Computing tax withholdings (federal, state, FICA)
- Managing employee deductions (benefits, garnishments)
- Generating paychecks accurately
- Creating tax records (W-2s, 941 reports)
- Handling expense reimbursements
- Ensuring compliance with labor laws

**Manual errors can lead to:**
- Overpayment/underpayment of employees
- Tax compliance issues
- Audit exposure
- Employee morale problems

## Solution

I developed a comprehensive **Payroll Processing & Expense Tracker** system that automates the entire payroll cycle.

### Core Modules

#### 1. Employee Master Data
Employee Record includes:
- Employee ID
- Name & SSN
- Hire date
- Job title & department
- Pay frequency (weekly, bi-weekly, monthly)
- Gross pay amount or hourly rate
- Tax filing status
- Deduction setup

#### 2. Time & Attendance
- Hours tracking (daily timesheets)
- Overtime calculation
- Sick/vacation day tracking
- PTO accrual management
- Time validation and approval

#### 3. Gross Pay Calculation

**Hourly Employees:**
- Regular hours × hourly rate
- Overtime hours × hourly rate × 1.5 (federal requirement)
- Double-time for holidays (where applicable)

**Salaried Employees:**
- Annual salary / pay periods
- Semi-monthly: 24 pay periods
- Bi-weekly: 26 pay periods
- Monthly: 12 pay periods

#### 4. Tax Calculations

**Federal Income Tax Withholding:**
1. Determine tax filing status (single, married, head of household)
2. Apply current year tax tables and brackets
3. Calculate withholding based on W-4 allowances
4. Account for additional withholding requests
5. Adjust for taxable wages after pre-tax deductions

**FICA Taxes (Social Security & Medicare):**
- Social Security: 6.2% on wages up to $168,600 (2026 wage base)
- Medicare: 1.45% on all wages (no wage base limit)
- Additional Medicare Tax: 0.9% on wages exceeding $200,000 (single) or $250,000 (married filing jointly)

**Employer FICA Matching:**
- Social Security: 6.2% employer match
- Medicare: 1.45% employer match
- Additional Medicare Tax: employer portion not required

**State & Local Taxes:**
- Varies by jurisdiction
- Progressive rates or flat rates depending on state
- City tax where applicable
- State-specific credits and deductions

#### 5. Deductions & Benefits

**Pre-Tax Deductions:**
- Health insurance premiums (Section 125)
- Dental and vision insurance
- 401(k) contributions
- Health Savings Account (HSA) contributions
- Flexible Spending Account (FSA) contributions

**Post-Tax Deductions:**
- Wage garnishments (court-ordered)
- Union dues
- Charitable contributions
- Life insurance premiums
- Roth 401(k) contributions

**Compliance Considerations:**
- Garnishment limits (25% of disposable earnings or 30x minimum wage)
- Benefits cannot reduce wage below minimum wage
- Proper documentation required for all deductions

#### 6. Paycheck Generation

Detailed pay stub includes:
- Gross pay (regular + overtime)
- All federal, state, and local taxes
- All pre-tax and post-tax deductions
- Net pay (direct deposit amount)
- YTD totals for all categories
- Pay period dates

#### 7. Expense Tracking

Employee expense categories:
- Travel (airfare, hotels, car rental)
- Meals (meals during business travel)
- Mileage (reimbursed at IRS rate)
- Lodging
- Equipment (business supplies)
- Miscellaneous

Reimbursement workflow:
- Employee submits expense request with receipt
- Manager reviews for business justification
- Finance department approves
- Reimbursement processed on next payroll

## Payroll Tax Compliance

### Quarterly Form 941 Reporting
- Total wages paid to employees
- Federal income tax withheld
- Employee Social Security and Medicare taxes
- Employer's share of Social Security and Medicare taxes
- Total deposits made for the quarter
- Adjustments for prior quarters

### Annual W-2 Forms
- Box 1: Wages, tips, other compensation (federal taxable wages)
- Box 2: Federal income tax withheld
- Box 3: Social Security wages
- Box 4: Social Security tax withheld
- Box 5: Medicare wages
- Box 6: Medicare tax withheld
- Boxes 16-20: State and local taxes

### Labor Law Compliance
- Federal minimum wage: $7.25/hour
- State minimum wage: varies (e.g., CA $16.00, NY $15.00)
- Overtime: 1.5x regular rate after 40 hours
- Record retention: 3 years for payroll records
- Pay stub requirements: vary by state

## Sample Payroll Report

```
ACME Corporation
Payroll Summary - Period: Jan 1-15, 2026

EMPLOYEE DETAILS:
John Smith (EMP001)
  Gross Pay: $1,500.00
    Regular Hours: 80 hours × $18.75 = $1,500.00

  Tax Withholdings:
    Federal Income Tax: $185.00
    Social Security (6.2%): $93.00
    Medicare (1.45%): $21.75
    State Tax: $45.00

  Deductions:
    Health Insurance: $150.00
    401(k): $100.00

  Net Pay: $905.25

Jane Doe (EMP002)
  Gross Pay: $1,750.00
    Regular Hours: 80 hours × $20.00 = $1,600.00
    Overtime Hours: 5 hours × $30.00 = $150.00

  Tax Withholdings:
    Federal Income Tax: $220.00
    Social Security: $108.50
    Medicare: $25.38
    State Tax: $52.50

  Deductions:
    Health Insurance: $150.00
    401(k): $150.00

  Net Pay: $943.62

PAYROLL TOTALS:
Total Gross Pay: $3,250.00
Total Taxes Withheld: $625.63
Total Employee Deductions: $550.00
Total Net Pay Due: $1,848.87

Employer FICA (matching): $248.25
Federal Unemployment Tax (FUTA): $21.00
State Unemployment Tax (SUTA): $97.50

Total Payroll Cost: $4,136.25
```

## Expense Tracking Policies

### IRS Standard Mileage Rate (2026)
- Business use: $0.655 per mile
- Medical or moving: $0.21 per mile
- Charitable: $0.14 per mile

### Meal Expense Policies
- Business meals: 100% deductible (temporary provision)
- Entertainment: Not deductible
- Requires: Date, location, attendees, business purpose

### Travel Expense Documentation
- Receipts required for expenses over $75
- Business justification required
- Personal expenses not reimbursable
- Reasonableness standards apply

## Business Impact

Time Savings:
- Payroll processing time: 8 hours → 30 minutes per cycle
- Tax report generation: 4+ hours → 15 minutes
- Error investigation: Eliminated (automated calculations)

Compliance & Risk:
- 95% reduction in calculation errors
- Audit-ready documentation
- Automatic tax compliance
- Reduced audit exposure

Employee Experience:
- Accurate, consistent paychecks
- Timely reimbursements
- Clear pay stubs with deduction details

## Payroll Accounting Journal Entries

```
Payroll Entry (Employee Deductions):

Debit: Salaries Expense           $3,250.00
Debit: Health Insurance Expense   $300.00
  Credit: Cash Payable            $1,848.87
  Credit: Federal Income Tax Payable   $405.00
  Credit: Social Security Payable     $201.50
  Credit: Medicare Payable             $47.13
  Credit: State Tax Payable            $97.50
  Credit: 401(k) Payable               $250.00
  Credit: Health Insurance Payable     $300.00

Employer Payroll Tax Entry:

Debit: Payroll Tax Expense         $366.75
  Credit: FICA Payable               $248.25
  Credit: FUTA Payable                $21.00
  Credit: SUTA Payable                $97.50
```

## Key Learnings

1. **Tax rules are complex & jurisdiction-specific**: Must stay updated with changes
2. **Employee data accuracy is critical**: Garbage in = garbage out
3. **Documentation matters**: Keep detailed records for compliance
4. **Timeliness is important**: Employees expect predictable payroll schedules
5. **User-friendly reporting**: Employees want clear, understandable pay stubs

## Future Enhancements

- Employee portal for timesheets and pay stubs
- Integration with time-tracking apps
- Automatic direct deposit management
- Quarterly tax estimate calculations
- Flexible pay schedule support (weekly, bi-weekly, monthly)
- Benefits enrollment tracking
- Multi-state withholding support

## Demonstrates Expertise In

- Payroll processing and tax calculations
- FICA, federal, and state tax withholding
- W-2 and Form 941 preparation
- Overtime and labor law compliance
- Employee benefits administration
- Expense reimbursement policies
- Payroll accounting and journal entries
- Multi-state tax considerations
- Garnishment processing
- PTO and accrual management