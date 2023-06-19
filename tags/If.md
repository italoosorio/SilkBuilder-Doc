# silk:If Tag
The *silk:If* component is use to encapsulate code which should be rendered in the server under a logic condition.

## Tag Use
Used as a container:
```xml
<silk:If
    test=""
    negation=""
>
   Contains: Other HTML and/or Silk components.
</silk:If>
```
## Properties
This tag has the following properties.
|Name|Description|
|--|--|
|test|The logic statement use to restrict access to this code.<br>Default Value: *Empty*.|
|negation|If set to true the logic statement result from the *test* property will be negated. This is like saying "not test".<br>Default Value: *Empty*.|

<sup>*</sup>Required property.
## Test Property

The test logic is operated at server runtime and it defines if the contained element will be rendered or not.

The test value could be a Java string object with true or false value;
```java
String display = "true";
```

This can be used directly in the test property.

```xml
<silk:If test="<%= display %>" >
    HTML, components, or code.
</silk:If>
```

The most common use is when testing against view variables.

```xml
<silk:If test="12 = ${ageLimit}" >
    HTML, components, or code.
</silk:If>
```

## Logic

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

