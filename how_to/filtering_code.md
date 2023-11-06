# Filtering Code

There are cases in which, under certain conditions, some blocks of code or components should not be rendered and delivered to the client. The most common scenario is when particular application options should not displayed due to user role restrictions.

Some Silk Tags can be configured to include logic determining whether or not these will render the HTML and Javascript code at server time before delivering it to the user's navigator. The property used for this purpose is **renderIf** and should contain the filtering logic statement. The tags with this property are:

* silk:If
* silk:Button
* silk:App
* silk:Input
* silk:Table
* silk:Column
* silk:Form - Also uses **buttonTest** to define what form's buttons to be rendered.
* silk:Input
* silk:Modal
* silk:Chart

## The Logic

The basic logic could be a Java Boolean object with a "true" or "false" value;
```java
<%
	Boolean display = true; // Developer applies logic to arrive to this value.
%>
```

This could also work if the Java String object containg the "true" of "flase" string values.

```java
<%
	String display = "true"; // Developer applies logic to arrive to this value.
%> 
```

This Java String object can be used directly in the *renderIf* property.

```xml
<silk:If renderIf="<%= display %>" >
    HTML, components, or code.
</silk:If>

<silk:Button id="buttonEdit" label="Edit" renderIf="<%= display %>" />
```

The most common use for this code filtering logic is using Spring view variables.

```xml
<silk:If renderIf="12 = ${ageLimit}" >
    HTML, components, or code.
</silk:If>
```

## The Logic Statement

These are the logic options. The lists are comma separated values.

|Logic|Description|
|--|--|
|true *or* false|Direct logic value|
|value = ${variable}|Value equal to variable|
|value != ${variable}|Value is different than variable|
|value in ${variable-list}|Value exists in the variable-list|
|value not-in ${variable-list}|Value does not exists in the variable-list|
|value-list one-in ${variable-list}|At least one of the items in value-list exists in the variable-list|
|value-list all-in ${variable-list}|All the items in the value-list have to exist in the variable-list|