# silk:JScode Tag
This tag is used to add JavaScript code in the application.  SilkBuilder will collect all the JavaScript code and put them together regardless of where these had been defined. This is the code which has to be executed  before JQuery is active and accessible by the application. These can be setting global variables and/or functions.

## Tag Use
Used as a container:
```xml
<silk:JScode
  renderIf=""
  desc=""
>
   Contains: JavaScript code.
</silk:JScode>
```

## Properties 
<sup>*</sup>Required property.
### renderIf
The logic sentence which will define if the button should be rendered. The explanation on how to use the logic statement is found in <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.
### desc
Default Value: *Empty*.
