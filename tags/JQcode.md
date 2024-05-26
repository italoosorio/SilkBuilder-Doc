# silk:JQcode Tag
This tag is use to add code using JQuery methods and events in the application. SilkBuilder will collect all the JQuery code and put them together regardless of where these had been defined. The Silk Components uses JQuery to interact with HTML elements. Code to interact with the SILK Components should be define under this tag.

## Tag Use
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
<sup>*</sup>Required property.
### renderIf
The logic sentence which will define if the button should be rendered. The explanation on how to use the logic statement is found in <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.
### desc
Default Value: *Empty*.
