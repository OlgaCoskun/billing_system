# Ruby billing_system

Generate reports:


Show the total revenue to the company for the reporting period

`report = Report.new`

`report.total_revenue`

Show the total bill for a specific revenue source, e.g. 'ACompany'
Substitute in any other reseller or affiliate name in the argument

`report.total_bill('ACompany')`

Show the total profit for a specific revenue source, e.g. 'ACompany'
Substitute in any other reseller or affiliate name in the argument

`report.total_profit('ACompany')`
