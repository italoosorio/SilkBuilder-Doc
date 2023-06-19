# silk:App Tag
This tag defines a Silk Application and its used is required. This tag loads the application's environment which is necessary for the other Silk Components to operate.

If it does not contains the the tag *silk:Screen* the application will work as one page layout.

## Tag Use
Used as a container:
```xml
<silk:App
    title=""
    template="default"
    timeout="true"
    role=""
    ipFilter=""
    loader="true"
    renderIf=""
    tagService=""
>
   Contains: Other HTML and/or Silk components.
</silk:App>
```
## Properties
This tag has the following properties.
|Name|Description|
|--|--|
|title|Used to define the web page title which will be displayed by the navigator.<br>Default Value: *Empty*.|
|template|The name of the template defining the styles use by the components. This property is only necessary if the application will use a different template from the "default" one which define globally and automatically loaded by the application.<br>Default Value: *default*.|
|timeout|Defines if the application will timeout and request for authentication. The default value is "true" and it can be disable by setting property to "false". It is only required if the value will be set to "false".<br>Default Value: *true*.|
|role|Set the roles which are authorize to run the application. It should contain a list of string values separated by commas. These roles will be checked against the user's roles loaded at authentication time. By default it is empty which allows access to anyone log in. The validation process only happens if a value is provided.<br>Default Value: *Empty*.|
|ipFilter|Will restrict the application use to the provided IP filter.<br>Default Value: *Empty*.|
|loader|Defines if the loader .gif image will be displayed. By default it is set to true.<br>Default Value: *true*.|
|renderIf|A logic condition determining if the application should be executed. It accepted model variables.<br>Default Value: *Empty*.|
|tagService|Sets the service id use on the translation process.<br>Default Value: *Empty*.|

<sup>*</sup>Required property.
