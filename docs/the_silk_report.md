# Report

The report tags are use to render _Data Provider_ data into a formatted multi-page report. These can be viewed, printed, or downloaded as PDF file. Developer decided where to show the rendered report.

The report tags should be the only component tags in side the _silk:App_ tag. The typical code for a report follow the following scheme.

```markup
<%@ taglib uri="/WEB-INF/report.tld" prefix="report" %>
<%@ taglib uri="/WEB-INF/silk.tld" prefix="silk" %>
<%@page contentType="text/html;charset=UTF-8"%>
<silk:App template="report" timeout="off" >
    <report:Report id="budget" dataSource="budgetDP" >
        ...
    </report:Report>
</silk:App>
```

The _template_ property of the _silk:App_ tag has to be set to "report" value.

## Report tag `<report:Report>`

## ReportHeader tag `<report:ReportHeader>`

## ReportFooter tag `<report:ReportFooter>`

## Page tag `<report:Page>`

## PageHeader tag `<report:PageHeader>`

## PageFooter tag `<report:PageFooter>`

## Group tag `<report:Group>`

## GroupHeader tag `<report:GroupHeader>`

## GroupContent tag `<report:GroupContent>`

## GroupFooter tag `<report:GroupFooter>`

## Data tag `<report:Data>`

## Variable tag `<report:Variable>`

