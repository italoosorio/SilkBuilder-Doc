# Server Code Logic

Some Silk Tags can be configured to include logic which will determine if the generated HTML and Javascript should be rendered at server time. Any logic included does not have any effect once the code has been delivered to the client.

The property used for this purpose is called **renderIf** and should contain the logic stament. The tags with this property are:

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

## The Logic Use

The test logic is operated at server runtime and it defines if the contained element will be rendered or not.

The test value could be a Java string object with true or false value;
```java
String display = "true";
```

This can be used directly in the test property.

```xml
<silk:If renderIf="<%= display %>" >
    HTML, components, or code.
</silk:If>
```

The most common use is when testing against view variables.

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