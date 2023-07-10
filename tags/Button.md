# silk:Button Tag
The *silk:Button* tag generates a button stylized with Bootstrap.

## Tag Use
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
    cssStyle=""
    renderIf=""
    extraProperties=""
    group="false"
/>
```
Used as a container:
```xml
<silk:Button
    id=""
    label=""
    targetPage=""
    icon=""
    dock=""
    width=""
    cssClass="btn-primary"
    cssStyle=""
    renderIf=""
    extraProperties=""
    group="false"
>
   Contains: Silk:ButtonItems
</silk:Button>
```
## Properties
This tag has the following properties.
|Name|Description|
|--|--|
|id|The button's unique identifier.<br>If the button's events are not going to be used the id is not required.<br>Default Value: *Empty*.|
|label|The text used as the button's label. Not require if the button will only show an icon.<br>Default Value: *Empty*.|
|targetPage|The page's identifier which will be selected/show when the button is clicked. This also works with *silk:Modals*.<br>If opening a page/modal is the only button's functionality then an id is not necessary.<br>Default Value: *Empty*.|
|icon|The icon class from a Font Awesome icon.<br>Default Value: *Empty*.|
|dock|The button's location if contained in a *silk:header* component. The values are: left, center, right.<br>Default Value: *Empty*.|
|width|Sets the button's fixed width. By default the button's width will changed based on their content.<br>Default Value: *Empty*.|
|cssClass|The classes to stylized the button. It expects Bootstrap classes. The button already has the "btn" class and is initialized with "btn-primary".<br>Default Value: *btn-primary*.|
|cssStyle|To add extra styling using CSS styling elements.<br>Default Value: *Empty*.|
|renderIf|The logic sentence which will define if the button should be rendered. The explanation on how to use the logic statement is found in <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.|
|extraProperties|To add extra HTML properties not defined by the *silk:Button* component.<br>Default Value: *Empty*.|
|group|Adds Bootstrap classes to group the button.<br>Default Value: *false*.|

<sup>*</sup>Required property.
