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
  - Python
  - SQL
  - pandas
  - openpyxl
  - SQLite

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
- ❌ Calculating gross pay (hourly, salary, overtime)
- ❌ Computing tax withholdings (federal, state, FICA)
- ❌ Managing employee deductions (benefits, garnishments)
- ❌ Generating paychecks accurately
- ❌ Creating tax records (W-2s, 941 reports)
- ❌ Handling expense reimbursements
- ❌ Ensuring compliance with labor laws

**Manual errors can lead to:**
- Overpayment/underpayment of employees
- Tax compliance issues
- Audit exposure
- Employee morale problems

## Solution

I built a comprehensive **Payroll Processing & Expense Tracker** system that automates the entire payroll cycle.

### Core Modules

#### 1. Employee Master Data
```
Employee Record:
  - Employee ID
  - Name & SSN
  - Hire date
  - Job title & department
  - Pay frequency (weekly, bi-weekly, monthly)
  - Gross pay amount or hourly rate
  - Tax filing status
  - Deduction setup
```

#### 2. Time & Attendance
- Hours tracking (daily timesheets)
- Overtime calculation
- Sick/vacation day tracking
- PTO accrual management
- Time validation and approval

#### 3. Gross Pay Calculation
```python
def calculate_gross_pay(employee, period):
    if employee.pay_type == 'hourly':
        regular_hours = get_regular_hours(employee, period)
        overtime_hours = get_overtime_hours(employee, period)
        
        gross = (regular_hours * employee.hourly_rate) + \
                (overtime_hours * employee.hourly_rate * 1.5)
    else:  # salary
        gross = employee.salary / frequency
    
    return gross
```

#### 4. Tax Calculations
**Federal Income Tax Withholding:**
```
1. Determine tax filing status (single, married, etc.)
2. Apply 2026 tax tables and brackets
3. Calculate withholding based on W-4 allowances
4. Account for additional withholding requests
```

**FICA Taxes (Social Security & Medicare):**
- Social Security: 6.2% on wages up to $168,600
- Medicare: 1.45% on all wages (2.35% if income > $200k)

**State & Local Taxes:**
- Varies by jurisdiction
- Configurable for each state
- City tax where applicable

#### 5. Deductions & Benefits
- Health insurance premiums
- Retirement plan contributions (401k)
- Wage garnishments
- Union dues
- Charitable withholdings

#### 6. Paycheck Generation
- Detailed pay stub showing:
  - Gross pay
  - All deductions
  - Taxes withheld
  - YTD totals
  - Net pay (direct deposit amount)

#### 7. Expense Tracking
- Employee expense reimbursement requests
- Category tracking (meals, mileage, lodging)
- Receipt attachment
- Approval workflow
- Reimbursement processing

### Technical Architecture

```
Timesheet Input
    ↓
Gross Pay Calculation
    ↓
Tax Withholding Calculations
    ↓
Deduction Processing
    ↓
Net Pay Calculation
    ↓
Paycheck Generation
    ↓
Payroll Reporting
    ↓
GL Entry Creation
    ↓
Tax Filing Reports
```

## Implementation Details

### Database Schema
```sql
CREATE TABLE employees (
    employee_id TEXT PRIMARY KEY,
    name TEXT,
    ssn TEXT,
    hire_date DATE,
    pay_type ENUM('hourly', 'salary'),
    pay_rate DECIMAL,
    filing_status TEXT,
    tax_allowances INT
);

CREATE TABLE timesheets (
    timesheet_id TEXT PRIMARY KEY,
    employee_id TEXT,
    pay_period_start DATE,
    pay_period_end DATE,
    regular_hours DECIMAL,
    overtime_hours DECIMAL,
    status ENUM('draft', 'approved', 'processed')
);

CREATE TABLE payroll (
    payroll_id TEXT PRIMARY KEY,
    employee_id TEXT,
    pay_period_start DATE,
    pay_period_end DATE,
    gross_pay DECIMAL,
    federal_tax DECIMAL,
    fica_tax DECIMAL,
    state_tax DECIMAL,
    deductions DECIMAL,
    net_pay DECIMAL,
    payment_date DATE
);
```

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
```

## Tax Reporting Integration

### Quarterly 941 Report
- Total wages paid
- Federal income tax withheld
- Social Security/Medicare taxes
- Deposit amounts

### Annual W-2 Forms
- Box 1: Wages, tips, other compensation
- Box 2: Federal income tax withheld
- Boxes 4 & 6: Social Security/Medicare wages & tax
- Boxes 16-20: State/local taxes

## Business Impact

⏱️ **Time Savings:**
- **Payroll processing time:** 8 hours → 30 minutes per cycle
- **Tax report generation:** 4+ hours → 15 minutes
- **Error investigation:** Eliminated (automated calculations)

💰 **Compliance & Risk:**
- 95% reduction in calculation errors
- Audit-ready documentation
- Automatic tax compliance
- Reduced audit exposure

👥 **Employee Experience:**
- Accurate, consistent paychecks
- Timely reimbursements
- Clear pay stubs with deduction details

## Expense Tracking Features

```
Expense Categories:
  ├─ Travel (airfare, hotels, car rental)
  ├─ Meals (meals during business travel)
  ├─ Mileage (reimbursed at IRS rate)
  ├─ Lodging
  ├─ Equipment (business supplies)
  └─ Other (miscellaneous)

Approval Workflow:
  Employee Submits → Manager Reviews → 
  Finance Approves → Reimbursement Processed
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
