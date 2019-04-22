# Data Tags and Objects

## The DataProvider tag `<silk:DataProvider>`

This tag is part of Silk Data Components.

This component serves as inteface betwen the client and the server. A DataProvider is linked to an ORM file in the server which defines the data interaction. The DataProvider is also the repository for the information extracted from the server. The tags DataGrid and Form are build to interact with the DataProviders.

This is the DataProvider Tag with its properties in their default value. These properties are used during the component intialization. The properties id and objectName are always required to connect to the server. The other properties should be used only when it is necesary to ovewrite their default value during the initialization process.

```xml
<silk:DataProvider
	id=""
	objectName=""
	targetList="null"
	targetForm="null"
	autoLoad="true"
	autoSelect="false"
	selectName="default"
	children="null"
	waitFor="null"
	debug="false"
	ormUrl="orm.jsp"
	hierarchical="false"
	loadCriteria="null"
	afterLoad="null"
	afterOperation="null"
	scriptLoader="null"
	operateDataSource="null"
/>
```

The DataProvider can also be used as a data container itself. In this case the DataProvider will host an array of Json objects which will be loaded during the initalization process. In this scenario the DataProvider will not interact with the server, so the objectName property is not necesary. The typical use for this scenario is to fill data into a ComboBox component.

```xml
<silk:DataProvider id="simpleList" >
	{"id":1, "label":"Single"},
	{"id":2, "label":"Married"}
</silk:DataProvider>
```

Even though the DataProvider component is built to use the DataGrid and Form components for data interaction, the DataProvider can be used as a stand alone component and it is possible to interact with the data it holds using JavaScript to access its methods and properties.

### Location

The DataProvider tag should be located as a child node of the layout tag Application, and must be located after the layout tag PageContainer.

### Tag Examples

```xml
... </silk:PageContainer>

    <silk:DataProvider id="directoryDP" objectName="directory" autoSelect="true" />

</silk:Application>
    ... </silk:PageContainer>

    <silk:DataProvider id="directoryDP" objectName="directory" autoSelect="true"
        targetList="directoryList" targetForm="directoryForm" />

</silk:Application>
```

### Tag Properties

- **id**: Unique component identifier.
- **objectName**: The local path to the .orm file without the file extension.
- **targetList**: The DataGrid ID value which is going to be used to display the information. If the data is going to be used by a component FormItem with the type=ComboBox, the value should be in the format: "FormID->FieldName".
- **targetForm**: The Form ID value wich is going to be used to edit the DataProvider information.
- **autoLoad**: if "true" the component will load the data from the server after being initialized. If "false" the component has to be triggered programatically to load data from the server. The default value is "true".
- **autoSelect**: If "true" the component will select the fist row after loading data and refresh the targetForm with the new information if necesary. The default value is "false".
- **selectName**: The name of the Select tag in the ORM file to be used to load the data from the server. This is only necesary if the ORM file has multiple Select tags.
- **Children**: A comma separated list of DataProvider names which their displayed information depends on the current selected row. When the selected row changes these DataProviders are triggered to reload their information.
- **waitFor**: A comma separated list of DataProvider which had to finish their data loading process before the waiting DataProvider loads its data. This is to be used when a DataProvider depends on the information loaded by another DataProvider. A common example is the use of ComboBoxes whose information should be loaded before the main data list.
- **debug**: If "true" it displays debugging messages to the server log and client log. The default value is "false". In the client the navigator should be capable of supporting the console.log javascript command.
- **ormUrl**: This is used to overwrite the default JSP-ORM  listener. This is an advance option which allows programers to extend the framework capabilities to interact with other kinds of data sources beyond SQL databases.
- **Hierarchical**: Activates the support for hierarchical information or trees with nodes, parents and children. This requires special fields in the table and ORM file.
- **loadCriteria**: A function to be executed before the loading process. The function will receive as parameter the calling DataProvider. This is usually used to load the criteria values using the criteriaAddItem() method. This has to a global a function.
- **afterLoad**: A function to be executed after the data has been loaded. This has to be a global function.
- **afterOperation**: A function to be executed after an insert, update or delete operation. It receives as parameters: the action executed and the operation name.
- **scriptLoader**: It contains a function name or a javascript to execute, this should return the data to be stored by the DataProvider. It could be used to linked the DataProvider with the information from another DataProvider.
	Example: `scriptLoader="targetDP.dataSource"`
- **operateDataSource**: A function which executes before the DataGrid dataSource gets used by other components or the afterLoad event. It receives as a parameter the DataGrid dataSource and should returnd the transformed dataSource.

## DataProvider Object

The DataProvider tag also creates a global JavaScript object. This object's name is the same as the DataProvider ID. This object can be accessed by the programer to use the DataProvider properties, methods and events.

### Properties

- **jsonData**: Contains the Json string to populate the dataProvider as a stand alone data container.
- **dataSource**: An array containing the objects (records) loaded from the database or a Json string. It gets filled after the loadData() method is triggered.
- **criteria**: An array with the objects defining the criteria values to send to the server. These criteria values are configured in the ORM file during the SQL building process.

### Methods

- **countItem(fieldName,value)**: Return the number of records when the fieldName contains a specific value.
- **setCriteriaItem(fieldName,value,type)**: Adds an object to the criteria array. The value is always a string. They type by default is 'S'. The type values are the same as the types used in the ORM column.
- **criteriaClean()**: Cleans the criteria array.
- **findItem(fieldName,value)**: Returns the index position of a fieldName containing a specific value.
- **getItemAt(index,fieldName)**: Returns the fieldName value at a specific index position.
- **setItemAt(index,fieldName,value)**: Sets the value of the fieldName at a specific index position.
- **getSelectedItem(fieldName)**: Returns the fieldName's value of the DataGrid's selected row.
- **setSelectedItem(fieldName,value)**: Sets the fieldName's value of the DataGrid's selected row.
- **getTotal()**: Returns the total of records in the dataSource array.
- **loadData()**, **loadData(selectName)**: Triggers the loading data process. It could receive the selectName as a parameter to choose a different select from the ORM file.
- **puch(item)**: Push an item object into the dataSource array.
- **removeAll()**: Remove all elements from the dataSource array.
- **runOperation(operationName)**: Executes a sqlOperation defined in the ORM file. The operation will be selected using the provided name.
- **formClean()**: Cleans elements from formData object.
- **formSetAction(action)**: Define de action forms item action. The parameter is a string with one of the following values: insert, update, delete.
- **formSetValue(field,value)**: Defines the field's value in a form item. The first parameters is a string defining the target field. The second parameter is a string defining the fields' value.
- **formAddItem()**: Adds a new form item to the formData object. it also initializes a new form item to received new fields.
- **formSubmit()**: Submits the form items to the application server.

### Events

- **afterLoad**: A function to be executed after the data has been loaded. This has to be a global function.
- **afterOperation**: A function to be executed after the insert, update , delete or runOperation method. This has to be a global function. This is a . It receives as parameters the action executed and the operationName.
- **beforeActionHandler**: A function to be executed before the actions insert, update, delete or runOperation take visual efect in the cliente componets.
- **loadCriteria**: A function to be executed before the loading process. The function will receive as parameter the calling DataProvider. This is usually used to load the criteria values using the criteriaAddItem() method. This has to a global a function.
- **operateDataSource**: A function which executes before the DataGrid dataSource gets used by other components or the afterLoad event. It receives as a parameter the DataGrid dataSource and should returnd the transformed dataSource.

## The silk:DataGrid tag `<silk:DataGrid>`

The DataGrid component serves as a data visualizer and also to capture the user insteraction. The DataProvider uses the DataGrid to display  information loaded from the server.

This is the DataGrid Tag with its properties in their default value. These properties are used during the componet intialization. The property id is always required. The other properties should be used only when it is necessary to ovewrite their default value during the initialization process.

```xml
<silk:DataGrid
	id=""
	headerTarget="tablet,desktop"
	arrow="true"
	arrowTarget="phone"
	insetMode="false"
	insetHeader="false"
	searchable="false"
	dpSearch="false"
	staticSearchBar="false"
	highlightRowsTarget="tablet,desktop"
	collapsible="true"
	collapsedLevel="100"
	emptyMessage="-- No Records Available --"
	editable="false"
	debug="false"
/>
```

### Location

The DataGrid tag should be located as a child node of the layout tag silk:Content.

### Tag Example

```xml
... </silk:Content> ...
    <silk:DataGrid id="directoryList" headerTarget="phone,tablet,desktop" >
 <silk:Columns ... /> <silk:columns ... />
    </silk:DataGrid >
 ... </silk:Content> ...
```

### Properties

- **id**: Unique component identifier.
- **headerTarget**: A comma separated list of devices in which the column's header would be displayed. The default value is: "tablet,desktop".
- **arrow**: If "true" is shows an arrow at the row's right side. The default value is "true".
- **arrowTarget**: A comma separated list of devices in which the row's arrow would be displayed. The default values i: "phone". 
- **insetMode**: If "true" and the DataProvider is linked to a Form, an icon is added to the row's right side to access the Form component. This property frees the row selection action for other purposes. The default value is "false". By default, if the DataProvider is linked to a Form, taping in a DataGrid row will focus the page in which the Form componet has been placed.
- **insetHeader**: If "true" the DataGrid header will appear a the top of the table wherever it is located. By default the  header is placed as part of the Page header.
- **searchable**: If "true" this will add a text input component at the top of the list and below the headers. Typing on it will visually filter the DataGrid information.
- **dpSearch**: If "true" entering characters in the search field will trigger the DataProvider.loadData() method. The DataProvider.loadCriteria function should be prepare to send the right parameters to the ORM. The method DataGrid.getSearchValue() return the string entered in the search field.
- **staticSearchBar**: If "true" the search bar will not scroll together with the DataGrid content.
- **highlightRowsTarget**: A comma separated list of devices which will highlight the row. The default value is: "tablet,desktop".
- **collapsible**: It works when the DataProvider has the propertly hierarchical = "true". If collapse is "true" the nodes can be collapsed if they have children. The default value is "true".
- **collapsedLevel**: It works when the DataProvider has the propertly hierarchical = "true". It will initialized the parent nodes collapsed. The value indicates from what level the nodes should be displayed collapsed.
- **emptyMessage**: The message to be displayed when no records are returned. The default text is – No Records Available –.
- **editable**: This properly defines the rendering of editable columns. Its default value is "false". If set to "true" the column set as editable will be rendered showing an input control.
- **debug**: If "true" it activates messages to the client log. The default value is "false".

## DataGrid Object

The DataGrid tag also creates a global JavaScript object. This object's name is the same as the DataGrid ID. This object can be accessed by the programer to use the DataGrid properties, methods and events.

### Properties

- **cancelClickAction**:  If set to "true" clicking in the rows will not trigger the defaul click row action.
- **selectedIndex**: The index position of the selected row. If not selected the value is -1.
- **editable**: This properly defines the rendering of editable columns. Its default value is "false". If set to "true" the column set as editable will be rendered showing an input control.

### Methods

- **getSearchValue()**: Retuns the text in the search field. This value can be used to filter the DataProvider when the DataGrid's property dpSearch is "true".
- **hide()**: Hides the DataGrid.
- **loadData()**: A function that extracts data from the DataProvider dataSource array and renders the dataGrid rows.
- **show()**: Show a DataGrid that has been hidden.
- **selectRow(index)**: Equivalent to click in a row. Receives the row index as parameter.
- **setSearchValue(value)**: Sets the value in the search field and triggers the searching process.
- **toggleEditable(editable)**: A function which activates of deactivates the editable columns. If not parameter is send the editable mode is reverse. The parameter should be true of false.

### Events

- **clickAction**: A function to execute when the user clicks or taps in a row.
- **insetAction**: A function to execute when the user clicks or taps in the inset button.

## The silk:Column tag `<silk:Column>`

This component is a child of DataGrid. It is used to configure the columns displayed by the DataGrid. The Column content is formatted based on the template host by the component. The template can support any HTML tag and uses braces or curly brackets "{}" to enclose the name of data fields. The data fields will be replaced by values, from the DataProvider, at a displayed time. The template can have as many data fields as necessary. 

Usually in phone devices the DataGrid will display only one column with a template contaning mulptile data fields. While in a desktop device each column will display only one data field. This behaivior is configured with the target property.

This is the Column Tag with its properties and their default values. 

```xml
<silk:Column
	headerText=""
	align="left"
	target="phone,tablet,desktop"
	renderer="null"
	privilegTag=""
	editable="true"
	editField = ""
	editGroup = ""
	editCriteria = ""
>
		{dataField}
</Silk:Column>
```

## Location

The Column tag should be located as a child node of the tag DataGrid.

###  Tag example

```xml
<silk:DataGrid >
	<silk:Column headerText="Name" target="desktop" >
		{name}
	</silk:Column >
	<silk:Column headerText="Position" target="desktop" >
		{position}
	</silk:Column >
	<silk:Column target="phone,tablet" >
		Name: <b>{name}</b><br>
		Position: {position}
	</silk:Column >
</silk:DataGrid >
```

### Property

- headerText: The text to be displayed in the column header. The headerText will be displayed according to what is configured in the headerTarget property of the parent DataGrid component. 
- align: The column content align: left, center, right. The default value is "left".
- target: A comma separated list of devices in which the column will be displayed. By defult the column is displayed in all devices.
- renderer: The Javascript function which will be used to render the Column content. The function receives two parameters. The row index and the Column content to be replaced.
- privilegeTag: Contains the privileg tag which will grant access to display this column.
- editable: This property sets the column to be render as an Input control when the DataGrid property editable is set to "True".
- editGroup: sets the common group name for the column editable Inputs. In the HTML5 code it adds a class property to the Input control which can be use to set the inputs style or be used by JQuery.
- editField: The DataProvider field value which is going to be edited by the Input component.
- editCriteria: A function name which is use to decided if the specific row in the column should be rendered editable. The function has to return true or false. The function will received as a parameter the DataGrid selectedIndex value of the rendered row.

## The silk:Form tab `<silk:Form>`

The Form component serves as a data visualizer and also adds the typical form to manipulate the informaion. It provides to the user the interface to acomplish task like add, edit and delete records using the DataGrid and the DataProvider. The DataProvider uses the Form to collect information entered by the user and send it to the server.

In the code below is the Form Tag with its properties with their default values. These properties are used during the componet intialization. The property id is always required. To interact with the user the Form component uses buttons which the programer has to create in the appropiated places and link them to the Form using the right properties. This is only necessary if the button will be used to manipulate data.  The other properties should be used only when it is necessary to ovewrite their default value during the initialization process.

```xml
<Silk:Form
	id=""
	addBt="null"
	editBt="null"
	delBt="null"
	acceptBt="null"
	cancelBt="null"
	backBt="null"
	direction="horizontal"
	dataEntry="false"
	markDeleted="false"
	forceVisualUpdate="false"
	debug="false"
/>
```

Even though the Form component has been built to work integrated with the DataGrid and DataProvider components, it can be used as stand alone using Javascript to access its methods and properties.

### Location

The Form tag should be located as a child node of the layout tag silk:Content.

### Tag Example

```xml
...
</silk:Content>
    ...
    <silk:Form id="directoryForm"
        addBt="addFormBt"
        editBt="editFormBt"
        delBt="delFormBt"
        acceptBt="acceptFormBt"
        cancelBt="cancelFormBt"
        backBt="backFormBt" >
           <silk:Columns ... />
           <silk:columns ... />
    </silk:DataGrid >
    ...
</silk:Content>
...
```

### Properties

- id: Unique component identifier.
- addBt: The ID of the button which will activate the form to the insert mode. This is usually a HeadItem component.
- editBt: The ID of the button which will activate the form to the edit mode. This is usually a HeadItem component.
- delBt: The ID of the button which will activate the form to the delete mode. This is usually a HeadItem component.
- acceptBt: The ID of the button which will activate the submit server action. This is usually a HeadItem component.
- cancelBt: The ID of the button which will cancel the editing process. This is usually a HeadItem component.
- backBt: The ID of the button to return to the previous Page. This will be used when the device is a phone, or in other devices when the DataGrid and the Form shared the same Stage.
- direction: Defines the FormItem label position. The values are "horizontal" or "vertical". The default value is "horizontal".
- dataEntry: If "true" the form initialized for data entry. If "false" the form initialized in read only mode. The default value is "false".
- markDeleted: If "true" an update operation is executed instead of a delete one. However the record gets deleted from the DataProvider. The programer should send the right field value  during the deleting process which marks the record as deleted in the database structure. The defaul value is "false".
- forceVisualUpdate: If "true" any action will visually work as an update. This does not affect the database action. This is used when the information updated belongs to a join table and not to the table being primary listed.
- debug: If "true" it activates the report of debugging messages to the client log. The default value is "false".

## Form Object

The Form tag also creates a global JavaScript object. This object's name is the same as the Form ID. This object can be accessed by the programer to use the Form properties, methods and events.

### Properties

- **acceptBt**: The accept button ID linked to the Form.
- **action**: Contains the form action status: select, insert, update, delete.
- **addBt**: The add button ID linked to the Form.
- **backBt**: The back button ID linked to the Form.
- **cancelBt**: The cancel button ID linked to the Form.
- **delBt**: The delete button ID linked to the Form.
- **editBt**: The edit button ID linked to the Form.
- **dataEntry**: Contains the form status. If true the form is in editable status, if false it is view status. 
- **ignoreInteraction**: If true any visual interaction with the DataProvider and/or DataGrid will be ingnored. At this point the visual result is the developer responsability.

### Methods

- **acceptAction()**: Executes the Form's accept process.
- **addAction()**: Executes the Form's insert process.
- **cancelAction()**: Executes the Form's cancel process.
- **cleanForm()**: Cleans the Form's Items values.
- **delAction()**: Executes the Form's delete process.
- **editAction()**: Executes the Form's update process.
- **getInputID(fieldName)**: Returns the Form's Item input element ID of the specified fieldName.
- **getItemValue(fieldName)**: Returns the Form's Item value of the specified fieldName.
- **getLabelID(fieldName)**: Returns the Form's Item label ID of the specified fieldName
- **getReadBoxID(fieldName)**: Returns the Form's Item view element ID of the specified fieldName. This is the item used during view mode.
- **isValidData()**: Evaluates the Form's Items for requied="true" values and returns true or false. This function is executed when the user clicks or taps the add button.
- **refreshForm()**: Updates the form information with data from the DataGrid selected row.
- **setDataEntry(mode)**: A method to manually set Form date entry mode. If true the form changes to entry data mode. If false the form changes to view mode. This method is called when the user clicks or taps the buttons add, edit, del.
- **setEditable(fieldName,value)**: Sets the form item to become editable or not when entry mode changes. An editable="true" item changes to an input element, otherwise it remanins in view mode.
- **setItemValue(fieldName,value)**: Sets the value of the specify fieldName with the provided value.
- **setVisible(fieldName,value)**: Sets the form item to become visible or hidden. This affects the Form's Item at the next data entry mode change.
- **submitForm()**: Executes the form submission to the database.
- **getButtonID(dataField)**: This method is used in conjunction with the FormItem's property button="true". Returns the form item button identifier to be used with JQuery to bind the click event to a function.

```javascript
demoForm.getButtonID('countryID').click(function(){
	countryPageList.show();
});
```

The programer has to include a code to return to the form's page once the FormItem value has been setup.

### Events

- **afterRefresh**: A function to execute after the Form content has been refreshed with the DataProvider information.
- **beforeRefresh**: A function to execute before the Form content gets refreshed with the DataProvider information.
- **customAcceptAction**: An optional function to execute when the user press the Accept button. If included it overwrites the default Accept button functionality. The programer has to program a call to the acceptAction() method.
- **externalValidation**: A function to execute a custom validation process. The function must return true or false. This event is called during the execution of the isValid() method.
- **dataEntryChange**: A function to execute when the Data Entry mode changes. It receives the parameter mode which is true when the form accepts data entry and false when is in view only mode.
- **onClickAccept**: A function to execute before the acceptAction method is called.
- **onClickAdd**: A function to execute before the addAction method is called.
- **onClickButton**: A function to execute before the any button action-method gets called.
- **onClickCancel**: A function to execute before the cancelAction method is called.
- **onClickDel**: A function to execute before the delAction method is called.
- **onClickEdit**: A function to execute before the editAction method is called.

## The silk:FormItem tag `<silk:FormItem>`

This component is a child of the Form component. It is used to configure the fields displayed by the Form. It has two statuses: View Only and Editable. During Editable status the user can manipulate data which the DataProvider will collect and send to the server. 

The code below shows the FormItem Tag with its properties and their defauld values. The properties dataField, and type are required. The other properties should be used only when it is necesary to ovewrite their defaul value during the initialization process.

```xml
<silk:FormItem
	type=""
	label=""
	dataField=""
	direction="horizontal"
	height="50px"
	richEditor="false"
	staticValue="null"
	scriptValue="null"
	size="null"
	maxlength="null"
	required="false"
	restricted="null"
	prefix=""
	postfix=""
	editable="true"
	readOnly="false;"
	visible="true"
	visibleCriteria="null;"
	ignore="false"
	ignoreIfValue="null;"
	labelField="null"
	valueField="null"
	columnField="null"
	prompt="null"
	promptValue="null"
	button="false"
/>
```

The FormItem component also works as a data holder. This can contain any text or HTML tags. This extra information will be displayed when the Form is in Editable status only. This option allows the programer to add extra information or components to help the user to interact with the form information.

```xml
<silk:FormItem type="text" label="User Name" datafield="userName" >
    <input type="button" id="validateUsername" value="Validate" />
</silk:FormItem >
```

The FormItem methods and properties are accesible using Javascript by interacting with the Form component.

### Location

The FormItem tag should be located as a child node of the tag Form. 

### Tag Example

```xml
<silk:Form ... >
    <silk:FormItem type="text" label="Name" dataField="name" size="50" />
    <silk:FormItem type="checkBox" label="Married" dataField="married" />
    ....
</silk:Form />
```

### Properties
- **type**: Defines the type of data entry component. The values can be:
	
	- text
	-	textArea
	- checkBox
	- comboBox
	- hidden
	- date
	- time 
	
- **label**: A descriptive text.

- **dataField**: The data field name from the DataProvider, to be displayed and edited.

- **direction**: Defines the label position. The values are "horizontal" or "vertical". The default value is inherited by the Form. This property is used to overwrite the defult direction set in Form when it is necesary.

- **height**: Defines the textArea height in pixels. The default value is 50px.

- **richEditor**: If "true" it activates a rich editor in the component if it has its property type="textArea". Default value is "false".

- **staticValue**: Defines the static value of the component. If setup the component will not be dinamically refreshed with data from the DataProvider but always return the value set.

- **scriptValue**: Defines the JavaScript code which will return the value for the component. If setup this script will be executed each time the Form is refreshed with new values.

- **size**: Defines the size of the Text component in characters.

- **maxlength**: Define the maximus number of characters for the Text component.

- **required**: If "true" the componet must be filled before submitting informatin to the server. If it remains empty a message will be displayed after pressing the Accept button to remind to fill the required fields.

- **restricted**: This sets the kind of information accepted by the component. It can be a combination of the following:
	
	- 'A-Z" – Only uppercase characters.
	- "a-z" – Only lowercase characters.
	- "0-9" – Only numeric characters.
	
	If other characters become necesary these shoud be added to the set. Example: "0-9." or "a-z@."
	
- **prefix**: Any text to be added as prefix value.
	
- **postfix**: Any text to be added as postfix value.
	
- **editable**: If "false" the component will not transition to editable mode. The defult value is "true".
	
- **readOnly**: If "true" the input component will not accept user interaction. The default value is "false".
	
- **visible**: If "false" the component will not show in the form. The defult value is "true".
	
- **visibleCriteria**: A Javascript code which will determine the visible condition of the element. This code should return true or false.
	
- **ignore**: If "true" the field will not be sent to the database. However the value will be updated in the dataProvider. The default value is "false";
	
- **ignoreIfValue**: A value which will determine if the field gets ignored or not.
	
- **labelField**: This defines the field to be used as the ComboBox text.  The ComboBox has to be linked to a DataProvider.
	
- **valueField**: This defines the field to be used as the ComboBox option value. The ComboBox has to be linked to a DataProvider.
	
- **columnField**: The DataGrid field or fields to be updated with the ComboBox label or its DataProvider. The ComboBox has to be linked to a DataProvider. If the information is only one field the ComboBox label will be used. If the information is in the format sourceField1:targetField2, sourcefield2:targetField2, … data will be copy from the ComboBox's DataProvider to the DataGrid's DataProvider.
	
- **prompt**: Defines the text which will be added at the top of the select options. Useful to display messages like: "Choose…" or "Not selected".
	
- **promptValue**: Defines the value of the option added at the top of the select. Usually use with the property nullValue in the ORM file.
	
- **button**: Defines if the FormItem will behave as a button. The default values if "false". If it  is set to "true" the FormItem becomes not editable and clickable. This is use when the FormItem value is determine  using another page or process. This property is used combine with the Form's method getButtonID(dataField) to bind it to the event click using JQuery.

## The silk:ConfirmButton `<silk:ConfirmButton>`

This component generates a button which after being pressed displays to extra buttons: one to cancel the request and another to confirm it. This component helps the programer to have a two step confirmation  process. Below is a visual representation of the component two statuses. 
￼
### Tag Example

```xml
<silk:ConfirmButton
	id=""
label="Submit"
	cancelLabel="Cancel"
acceptLabel=Click to confirm submission""
	privilegeTag="" />
```

### Tag Properties

- **id**: The component unique identifier. This is required.
- **label**: The primary text displayed in the component. The default value is "Submit".
- **cancelLabel**: The text displayed in the cancel button. The default value is "Cancel".
- **acceptLabel**: Te text displayed in the final submit button. The default value is "Click to confirm submission".
- **privilegeTag**: Contains the privileg tag which will grant access to display this component.

## ConfirmButton Object

The `<silk:ConfirmButton>` tag also creates a global JavaScript object. This object's name is the same as the ConfirmButton's ID. This object can be accessed by the programer to use the DataGrid properties, methods and events.

### Methods

- **preClick()**: Executes the action of pressing the primary button.
- **cancel()**: Executes the action of pressing the cancel button.
- **click()**: Executes the action of pressing the accept button.
- **reset()**: Return the buttons to their initial status.

### Events

- **onPreClick**: Trigger a function when the primary button is pressed.
- **onCancel**: Trigger a function when the cancel button is pressed.
- **onClick**: Triggers a function when the accept button is pressed.
- **onReset**: Triggers a function when the component gets reset.
- **validation**: Triggers a function which is used to validated if the component should operate. If the function returns "false" the component will ignore the user interaction. If the component returns "true" the process will run as normal.