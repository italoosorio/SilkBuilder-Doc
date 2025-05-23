# silk:JQcode
This tag adds code using JavaScript, jQuery methods, and events in the application. SilkBuilder will collect the code in a JQcode component and put it together regardless of where it has been defined. This code will load after a ```$(document).ready()``` event, waiting for the JavaScript object to be initialized.

The Silk Components use jQuery to interact with HTML elements. The code interacting with the SILK Components should be specified under this tag.

## Tag Definition
Used standalone:
```xml
<silk:JQcode
  renderIf=""
  desc=""
/>
```
Used as a container:
```xml
<silk:JQcode
  renderIf=""
  desc=""
>
   Contains: JQuery and Silk component's object interaction code
</silk:JQcode>
```

## Properties 
### renderIf
It contains the logic sentence defining whether the component should be rendered.<br>The logic statement's explanation is in the  <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.
### desc
Defines a title of description used only for documentation or code categorization purposes.<br>Default Value: *Empty*.
