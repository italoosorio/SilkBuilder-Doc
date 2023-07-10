# silk:Form Tag
The *silk:Form* component serves as a data visualizer and also adds the typical form to manipulate the information. It provides the interface for the user to operate tasks like add, edit and delete records using the *silk:Table* and the *silk:DataProvider*.

The information collected by the Form it is sent to the server using the *silk:DataProvider* component.

## Tag Use
Used as a container:
```xml
<silk:Form
    id=""
    dataSource=""
    parentForm=""
    dialogTitle=""
    insertBt=""
    updateBt=""
    deleteBt=""
    cancelBt=""
    submitBt=""
    mode="false"
    dialog="true"
    buttonTarget=""
    buttonTest=""
    insertTitle="Adding"
    updateTitle="Editing"
    deleteTitle="Deleting"
    insertMessage="Created"
    updateMessage="Edited"
    deleteMessage="Deleted"
    renderIf=""
    init="true"
    cssClass=""
>
   Contains: silk:Input and HTML components.
</silk:Form>
```
## Properties
This tag has the following properties.
|Name|Description|
|--|--|
|id<sup>*</sup>|The Form's unique identifier.<br>Default Value: *Empty*.|
|dataSource|The component's identifier providing the record's columns used by the form's inputs. This can be a *silk:Table* or a *silk:DataProvider*.<br>In the case of *silk:Table* the Form will use the selected row record.<br>In the case of a *silk:DataProvider* the form will use the the first record.<br>If not provided it is expected for the form's inputs to be initialize programmatically.<br>Default Value: *Empty*.|
|parentForm|The identifier of a Form which the *dataSource* will used to initialized its children input.<br>Default Value: *Empty*.|
|dialogTitle|Sets a title for the editing dialog when form is editable mode.<br>Default Value: *Empty*.|
|insertBt|The name of the button which will be use to trigger an insert action.<br>Default Value: *Empty*.|
|updateBt|The name of the button which will be use to trigger an update action.<br>Default Value: *Empty*.|
|deleteBt|The name of the button which will be use to trigger a delete action.<br>Default Value: *Empty*.|
|cancelBt|The name of the button which will be use to trigger a cancel action.<br>Default Value: *Empty*.|
|submitBt|The name of the button which will be use to trigger a submit action.<br>Default Value: *Empty*.|
|mode|Defines the initial status of the Form. If *true* it will initialize as editable.<br>Default Value: *false*.|
|dialog|If property is false it activates the inputs mode and cancel the process to avoid showing the dialog bar.<br>Default Value: *true*.|
|buttonTarget|A comma separated list of page use to place the auto generated action buttons. These button will be placed in the page's header.<br>The order is the following: page for the insert button, page for the edit button, and page for the delete button.<br>Only including the insert page will default this page for the other buttons.<br>Including the insert and edit page will default the edit page as the target for the delete button.<br>Sending the value *none* or *null* for any page will not generate that button.<br>This example will only generate the edit button: *buttonTarget="none,formPage,none"*.<br>Default Value: *Empty*.|
|buttonTest|The logical sentences defining if the actions buttons will be added. The explanation on how to use the logic statement is found in <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>These follows the same order as the *buttonTarget* property but separated by a pipe symbol: "|".<br>Default Value: *Empty*.|
|insertTitle|The text to show in the dialog bar when operating an insert.<br>Default Value: *Adding*.|
|updateTitle|The text to show in the dialog bar when operating an update.<br>Default Value: *Editing*.|
|deleteTitle|The text to show in the dialog bar when operating a delete.<br>Default Value: *Deleting*.|
|insertMessage|The message to show after operating an insert.<br>Default Value: *Created*.|
|updateMessage|The message to show after operating an update.<br>Default Value: *Edited*.|
|deleteMessage|The message to show after operating a delete.<br>Default Value: *Deleted*.|
|renderIf|A logic condition determining if the application should be executed. It accepted model variables. The explanation on how to use the logic statement is found in <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.|
|init|Defines if the component will be initialized after being created.<br>Default Value: *true*.|
|cssClass|The CSS class or classes to be added to the Form.<br>Default Value: *Empty*.|

<sup>*</sup>Required property.
