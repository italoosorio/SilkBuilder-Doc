# Button with Confirmation

To *silk:Button* component provides the option to display a comfirmation button before triggering the "click" event. Using this dialog the user can is asked to provide conformation about the button's action.

The confirmation process uses the library [sweetalert2](https://sweetalert2.github.io) to display a dialog window with a button to click. By defaul the button shows "OK". The tag using the properties will look the tag below.

```xml
<silk:Button id="bt1" label="Click me"
	confirmTitle=""
	confirmMessage=""
	confirmLabel=""
	confirmIcon=""
/>
```

** It is not necessary to use all the properties at once.** To activate the confirmation dialog it is enough to use one properties or more if required. 

## Properties

| Property       | Description                        | Default Value         |
| -------------- | ---------------------------------- | --------------------- |
| confirmTitle   | The confirmation's dialog title.   | The text  "Continue?" |
| confirmMessage | The confirmation's dialog message. | Empty                 |
| confirmLabel   | The confirmation's button's label. | The test "OK".        |
| confirmIcon    | The confirmation's dialog icon     | The value "question". |

## Example 1

Example setting the confirm title as  "Delete the client?" and leaving the other properties as default.

```xml
<silk:Button id="bt1" label="Delete"
	confirmTitle="Delete the client?"
	confirmMessage="This operations will delete the selected client."
/>
```

![Bottom dialog sample 1](../.gitbook/assets/button_dialog01.png)

## Example 2

Example setting the confirm title as  "Delete the client?", the message as "This operations will delete the selected client." and leaving the other properties as default.

```xml
<silk:Button id="bt1" label="Delete"
	confirmTitle="Delete the client?"
	confirmMessage="This operations will delete the selected client."
/>
```

![Bottom dialog sample 2](../.gitbook/assets/button_dialog02.png)

## Example 3

Example setting the confirm title as  "Delete the client?", the message as "This operations will delete the selected client.", the confirmation button's label to "Yes, delete it!" and leaving the other properties as default.

```xml
<silk:Button id="bt1" label="Delete"
	confirmTitle="Delete the client?"
	confirmMessage="This operations will delete the selected client."
	confirmButton="Yes, delete it!"
/>
```

![Bottom dialog sample 3](../.gitbook/assets/button_dialog03.png)

## Example 4

Example setting the confirm title as  "Delete the client?", the message as "This operations will delete the selected client.", the confirmation button's label to "Yes, delete it!" and the icon as "info".

```xml
<silk:Button id="bt1" label="Delete"
	confirmTitle="Delete the client?"
	confirmMessage="This operations will delete the selected client."
	confirmButton="Yes, delete it!"
  confirmIcon="info"
/>
```

![Bottom dialog sample 4](../.gitbook/assets/button_dialog04.png)
