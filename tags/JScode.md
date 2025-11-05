# silk:JScode
This tag adds code using JavaScript events in the application. SilkBuilder will collect the code in a JScode component and put it together regardless of where it has been defined.

The code in JScode is executed immediately after being loaded and is usually used to define JavaScript objects.  When this code is executed, Silk Components may not be available or initialized.

## Tag Definition
Used standalone:
```xml
<silk:JScode
  renderIf=""
  id=""
  group=""
  desc=""
/>
```
Used as a container:
```xml
<silk:JScode
  renderIf=""
  id=""
  group=""
  desc=""
>
   Contains: JavaScript code.
</silk:JScode>
```

## Properties 
### renderIf
It contains the logic sentence defining whether the component should be rendered.<br>The logic statement's explanation is in the  <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.
### id
Defines an id used only for documentation or code categorization purposes.<br>Default Value: *Empty*.
### group
Defines an group used only for documentation or code categorization purposes.<br>Default Value: *Empty*.
### desc
Defines a title of description used only for documentation or code categorization purposes.<br>Default Value: *Empty*.
