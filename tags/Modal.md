# silk:Modal
The *silk:Modal* component helps to create a manageable Bootstrap modal element.

## Tag Definition
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
   Contains: SilkBbuilder components and HTML, or the silk:ModalBody and silk:ModalFooter
</silk:Modal>
```
## Modal Implementation
The silk:Modal can be implemented in these ways.

### Basic Modal with no footer.

For this scenario, the component can directly host HTML and SilkBuilder components. If the **silk:ModalFooter** will not be used, then the **silk:ModalBody** tag is not necessary; it will be added automatically.

```xml
<silk:Modal id="myModal" title="Some Title" closeButton="true" >
  Contains: SilkBbuilder components and HTML.
</silk:Modal>
```
## Modal with footer

If the **silk:ModalFooter** will be used, then it has to be added together with the **silk:Body** tag.

```xml
<silk:Modal id="myModal" title="Some Title" closeButton="true" >
  <silk:ModalBody>
    Contains: SilkBbuilder components and HTML.
  </silk:ModalBody>
  <silk:ModalFooter>
    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
    <button type="button" class="btn btn-primary">Save changes</button>
  </silk:ModalFooter>
</silk:Modal>
```

### Modal with no header.

For this case, the *title* property should not be provided. The property *limitClose* is set to *true*, allowing the modal to close when clicked outside the dialog.

```xml
<silk:Modal id="myModal" >
  Contains: SilkBbuilder components and HTML.
</silk:Modal>
```

## Properties 
<sup>*</sup>Required property.
### id<sup>*</sup>
The modal's unique identifier.<br>Default Value: *Empty*.
### title
The text that will be used as the modal's title. If not included, the modal is displayed without the top header bar.<br>Default Value: *Empty*.
### closeButton
Defines if the modal will be closed when the user clicks outside the modal dialog.<br>By default, the modal only closes when the "X" icon is clicked or when a close modal button is added.<br>Default Value: *false*.
### helpButton
Will disable the help icon used to display interface explanations.<br>Default Value: *false*.
### size
Defines the modal size. The values are: small, large, extra, width, and full.<br>The "width" value will create a model contained within the width of the page.<br>The "full" modal will completely cover the screen width and height.<br>Any other value will be used as the class name defining the modal size.<br>Default Value: *Empty*.
### centered
Centers the modal in the navigator screen.<br>Default Value: *true*.
### limitedClose
Define if the modal will not close when the user clicks outside the modal dialog.<br>By default the modal only closes when click on the "X" icon or when a close modal button is added.<br>Default Value: *true*.
### bodyMargin
Removes the modal's body margin. This is particularly helpful when components like a silk:Table or images are part of a modal.<br>Default Value: *true*.
### renderIf
It contains the logic sentence defining whether the component should be rendered.<br>The logic statement's explanation is in the  <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.
