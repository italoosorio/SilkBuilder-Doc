# silk:Modal Tag
The *silk:Modal* component helps to create a manageable Bootstrap modal element.

## Tag Use
Used as a container:
```xml
<silk:Modal
    id=""
    title=""
    closeButton="false"
    helpButton="false"
    size=""
    centered="true"
    limitedClose="true"
    bodyMargin="true"
    renderIf=""
>
   Contains: silk:ModalBody and silk:ModalFooter
</silk:Modal>
```
## Properties
This tag has the following properties.
|Name|Description|
|--|--|
|id|The modal's unique identifier.<br>Default Value: *Empty*.|
|title|The text which will be used as the modal's title. if not included the modal is displayed without the top header bar.<br>Default Value: *Empty*.|
|closeButton|Set the "X" icon in the top right corner of the modal's header bar. The modal is rendered without the "X" close icon, it is expected that the close action will be programmed.<br>Default Value: *false*.|
|helpButton|Sets an "?" icon which the user can click to get extra help. It uses a Font Awesome "fas fa-question-circle fa-sm" icon class.<br>Default Value: *false*.|
|size|Defines the modal size. The values are: small, large, width, and full.<br>The "width" value will create a model contained in the width of the page.<br>The "full" modal will complete cover the screen width and height.<br>Default Value: *Empty*.|
|centered|Centers the modal in the navigator screen.<br>Default Value: *true*.|
|limitedClose|Define if the modal will not close when the user clicks outside the modal dialog.<br>By default the modal only closes when click on the "X" icon or when a close modal button is added.<br>Default Value: *true*.|
|bodyMargin|Removes the modal's body margin. This helps when a table is embedded in a modal.<br>Default Value: *true*.|
|renderIf|A logic condition determining if the application should be executed. It accepted model variables. The explanation on how to use the logic statement is found in <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.|

<sup>*</sup>Required property.
## Modal Implementation
The silk:Modal can be implemented in these ways.

### Basic Modal with not footer.

If the *silk:ModalFooter* will not be used then the *silk:MoboBody* tag is not necessary, it will be added automatically.

```xml
<silk:Modal id="myModal" title="Some Title" closeButton="true" >
  <p>Modal content goes here.</p> 
</silk:Modal>
```
## Modal with footer

If the *silk:ModalFooter* will be used then it has to be added together with the *silk:Body* tag.

```xml
<silk:Modal id="myModal" title="Some Title" closeButton="true" >
  <silk:ModalBody>
    <p>Modal body text goes here.</p> 
  </silk:ModalBody>
  <silk:ModalFooter>
    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
    <button type="button" class="btn btn-primary">Save changes</button>
  </silk:ModalFooter>
</silk:Modal>
```

### Modal with not header.

For this case the *title* property has not been added. The property *limitClose* is set to *true* to allow closing the modal when clicking outside the dialog.

```xml
<silk:Modal id="myModal" limitedClose="false" >
  <p>Some text here</p>
</silk:Modal>
