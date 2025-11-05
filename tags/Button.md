# silk:Button
The <silk:Button> component generates an HTML button element styled with Bootstrap classes.

The button primarily operates standalone

## Tag Definition
Used standalone:
```xml
<silk:Button
  id=""
  label=""
  targetPage=""
  icon=""
  dock=""
  width=""
  cssClass="btn-primary"
  groupClass=""
  cssStyle=""
  renderIf=""
  extraProperties=""
  group="false"
  disabled="false"
  hidden="false"
  singleClick="true"
  autoEnable="true"
  confirmTitle=""
  confirmMessage=""
  confirmLabel=""
  confirmIcon=""
  toggleList=""
  logicGrid=""
  criteria=""
/>
```
### JavaScript Object
SilkBuilder also creates a companion JavaScript object using the [Button](..\js_object\Button.js.md) class to provide JavaScript programmatic interaction. This object will have the same name as the component's ID.
```xml
<silk:Button id="bt1" label="Click Me" />
<silk:JQcode>
  bt1.on("click", function(){
    silk.alert("I have been clicked!");
  });
</silk:JQcode>
```

### Dropdown Button
The component can host **silk:ButtonItem** components to be used as a dropdown button. The host button and the button items are treated like separate button entities.

```xml
<silk:Button id="parentBt" label="Options">
  <silk:ButtonItem id="bt1" label="Save" />
  <silk:ButtonItem id="bt2" label="Delete" />
</silk:Button>
```


## Properties 
### id
The button's unique identifier.<br>If the button's events are not going to be used, the id is not required.<br>Default Value: *Empty*.
### label
The value is used as the button's label. It is not required if the button only shows an icon.<br>Default Value: *Empty*.
### targetPage
The ID of the page to be shown when the button is clicked. This also works with *silk:Modal*.<br>If opening a page/modal is the only button's functionality, then an ID is not necessary.<br>Default Value: *Empty*.
### icon
The icon value is a class from a Font Awesome icon or the HTML containing the icon.<br>Also these values can be used to add icons:<br>- The value "insert" adds a plus icon.<br>- The value "update" adds a pencil icon.<br>- The value  "delete" adds a trash can icon.<br>- The value "cancel" adds an x-mark icon.<br>- The value "submit" adds a check icon.<br>Default Value: *Empty*.
### dock
Defines the button's location if it is contained in a *silk:header* component. The values are: left, center, right.<br>Default Value: *Empty*.
### width
Sets the button's fixed width. By default, the button's width will be changed based on its content.<br>Default Value: *Empty*.
### cssClass
The classes to stylize the button. It expects Bootstrap classes. The button already has the "btn" class and is initialized with "btn-primary".<br>Default Value: *btn-primary*.
### groupClass
The classes to stylize the button group. It expects Bootstrap classes."<br>Default Value: *Empty*.
### cssStyle
To add extra styling using CSS styling elements.<br>Default Value: *Empty*.
### renderIf
It contains the logic sentence defining whether the component should be rendered.<br>The logic statement's explanation is in the <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.
### extraProperties
To add extra HTML properties not defined by the *silk:Button* component.<br>Default Value: *Empty*.
### group
Adds Bootstrap classes to group the button.<br>Default Value: *false*.
### disabled
Adds Bootstrap classes to group the button.<br>Default Value: *false*.
### hidden
Initializes the button as hidden. Uses the CSS style ```display: none;```.<br>Default Value: *false*.
### singleClick
Initializes the button as single click if set to true. False will allow multiple consecutive clicks.<br>Default Value: *true*.
### autoEnable
Sets the button to auto enable after a click. Only valid if singleClick is **true**.<br>Default Value: *true*.
### confirmTitle
Sets the title of the confirmation dialog.<br>Default Value: *Empty*.
### confirmMessage
Sets the message to show in the confirmation dialog.<br>Default Value: *Empty*.
### confirmLabel
Sets the label for the accept button in the confirmation dialog.<br>Default Value: *Empty*.
### confirmIcon
Sets the confirmation dialog icon.<br>Default Value: *Empty*.
### toggleList
The list of comma-separated elements that will be toggled together with the component.<br>The value "parent" toggles the immediate parent element.<br>The value "grandpa" toggles the grandparent element.<br>Default Value: *Empty*.
### logicGrid
Default Value: *Empty*.
### criteria
Default Value: *Empty*.
