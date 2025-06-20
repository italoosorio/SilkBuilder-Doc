# Table
 The Table Class provides properties, methods, and events to interface with the HTML generated by the ```<silk:Table>``` tag.

**Kind**: global class  
## Properties

| Name | Type | Description |
| --- | --- | --- |
| $table | <code>Object</code> | jQuery object referencing the table HTML tag container. |
| $tableSearchInput | <code>Object</code> | jQuery object referencing the search text input element. Get the parameters `index` and `item`. |



## Constructor
 <a name="_new"></a>

### new Table(id, option)
Returns a Table instance.


| Param | Type | Default | Description |
| --- | --- | --- | --- |
| id | <code>String</code> |  | Unique identifier. |
| option | <code>Object</code> |  | Object containing the configuration. |
| [option.dataSource] | <code>String</code> |  | Unique identifier of the dataProvider used to fill the  |
| [option.autoSelect] | <code>Boolean</code> | <code>true</code> | If true, the table will automatically load the data from the dataProvider. If false, it will wait for the select command. |
| [option. targetPage] | <code>String</code> |  | Unique identifier of the page which will become active when a row is selected. |
| [option.header] | <code>String</code> | <code>fixed</code> | Defines the header location: `fixed` Attaches the header to the top of the page. `inline` Attaches the header to the top of the table location. `none` No header. |
| [option.treeData] | <code>Boolean</code> | <code>false</code> | Indicates if the data should be treated as a tree structure. If the dataProvider is set as *treeData=true*, then the table inherits the value. |
| [option.rootLabel] | <code>String</code> |  | The label used to display in the root row. |
| [option.noRoot] | <code>Boolean</code> | <code>false</code> | Defines if the Root will be an editable row. The default is NO. |
| [option.multiRoot] | <code>Boolean</code> | <code>false</code> | Defines if the tree will support multiple root branches. The default is NO, just one root. |
| [option.iconOpen] | <code>String</code> |  | The icon showing an open branch if treeData is true. The default value is `fa-regular fa-folder-open fa-lg` from Fontawesome. |
| [option.iconClose] | <code>String</code> |  | The icon showing a close branch if treeData is true. The default value is `fa-solid fa-folder-closed fa-lg` from Fontawesome. |
| [option.iconEmpy] | <code>String</code> |  | The icon showing an end branch if treeData if true. Empty by default. |
| [option.collapsable] | <code>Integer</code> |  | Indicates the tree can collapse. |
| [option.collapsedLevel] | <code>Integer</code> |  | Indicates the number of open levels. Other levels will remain closed. |
| [option.selectable] | <code>Boolean</code> | <code>true</code> | If true, the row will change color when selected. |
| [option.dpSearch] | <code>Boolean</code> | <code>false</code> | If false, the search is done in the loaded data. If true, the search leads to a dataProvider select call. It can also receive the name of the DataProvider to be loaded. |
| [option.input] | <code>Boolean</code> | <code>false</code> | If true, it will create input fields for the configured columns. |
| [option.toggleList] | <code>String</code> |  | The list of comma-separated elements that will be toggled together with the component. |

## Methods
 <a name="+addColumn"></a>

### addColumn(column)
Adds a column object to the columns array. This also adds the header.

**Kind**: instance method of [<code>Table</code>](#Table)  

| Param | Type | Description |
| --- | --- | --- |
| column | <code>Object</code> | The column object |

<a name="Table+addComponent"></a>

### addComponent(component)
Adds a new component to the components array.

**Kind**: instance method of [<code>Table</code>](#Table)  

| Param | Type | Description |
| --- | --- | --- |
| component | <code>Object</code> | The component object. |

<a name="Table+buildHeaders"></a>

### buildHeaders()
Generates the table's columns using the loaded Column objects.

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+cleanColumns"></a>

### cleanColumns()
Clean the columns array.

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+cleanHeaders"></a>

### cleanHeaders()
Clean the headers from 

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+clearSearchText"></a>

### clearSearchText()
Clears the content of the search text input.

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+filterData"></a>

### filterData(searchText)
Filters the table's rows based on the provided text. In the case of `dpSearch="true"`, a select method will be called, and the dataProvider should receive the search text in a parameter. The search input functionality activated by `searchable="true"` uses this method.

**Kind**: instance method of [<code>Table</code>](#Table)  

| Param | Type | Description |
| --- | --- | --- |
| searchText | <code>String</code> | The text used to filter the table rows |

<a name="Table+getColumns"></a>

### getColumns() ⇒ <code>Array</code>
Gets the columns array

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+getComponents"></a>

### getComponents() ⇒ <code>Array</code>
Gets the loaded component array.

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+getDataSource"></a>

### getDataSource() ⇒ <code>Object</code>
Gets a reference to the dataSource.

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+getDeleteBranch"></a>

### getDeleteBranch() ⇒ <code>Boolean</code>
Returns if the tree will allow a branch to be deleted. By default, only leaves are to be deleted. It is the developer's responsibility to program the deletion of children's branches or leaves.

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+getID"></a>

### getID() ⇒ <code>String</code>
Returns the component's unique identifier.

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+getInputs"></a>

### getInputs({Function)) ⇒
Returns an array containing an array of input objects. If a function is provided, this will be executed for each row. The function will receive an object containing the inputs as a parameter.

**Kind**: instance method of [<code>Table</code>](#Table)  
**Returns**: Array  

| Param | Description |
| --- | --- |
| {Function) | inputProcessor - An optional function, will be called for each input processed. |

<a name="Table+getNoRoot"></a>

### getNoRoot() ⇒ <code>Boolean</code>
Returns if the table should limit the root.

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+getPkColumn"></a>

### getPkColumn() ⇒ <code>String</code>
Gets the data primary key.

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+getPkValue"></a>

### getPkValue() ⇒ <code>String</code>
Gets the primary key's value of the selected row.

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+getSearchText"></a>

### getSearchText() ⇒ <code>String</code>
Get the text typed in the search text input.

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+getSelectedItem"></a>

### getSelectedItem(columnName) ⇒ <code>Object</code> \| <code>String</code>
Returns the selected item object, or the column's value if a columnName is provided.

**Kind**: instance method of [<code>Table</code>](#Table)  

| Param | Type | Description |
| --- | --- | --- |
| columnName | <code>String</code> | The column's value to return. Optional. |

<a name="Table+hide"></a>

### hide()
Hides the table component.

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+isTreeData"></a>

### isTreeData() ⇒ <code>Boolean</code>
Returns if the table is set to evaluate a tree data structure.

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+length"></a>

### length() ⇒ <code>Integer</code>
Returns the number of rows loaded in the 

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+load"></a>

### load(action, index)
The method retrieves data from the data provider and generates the table's rows.

**Kind**: instance method of [<code>Table</code>](#Table)  

| Param | Type | Description |
| --- | --- | --- |
| action | <code>String</code> | Indicating what action to load: insert, update, delete. |
| index | <code>Integer</code> | The position where the data will be loaded. |

<a name="Table+on"></a>

### on
Load events to respond to the tables's interactions. To set an event, use this code: ```Table.on(<eventName>, function(){<code>})```.

**Kind**: instance property of [<code>Table</code>](#Table)  

| Param | Type | Description |
| --- | --- | --- |
| eventName | <code>String</code> | The event's name. |
| eventFunction | <code>function</code> | The function to be triggered. |

<a name="Table+refreshRow"></a>

### refreshRow(trIndex, dpIndex)
Reload the data for the selected row by default, or the indicated row.

**Kind**: instance method of [<code>Table</code>](#Table)  

| Param | Type | Description |
| --- | --- | --- |
| trIndex | <code>Integer</code> | The row index within the table row. |
| dpIndex | <code>Integer</code> | The row index in the dataProvider. |

<a name="Table+removeColumn"></a>

### removeColumn(column)
Removes a column object to the columns array. This also removes the header.

**Kind**: instance method of [<code>Table</code>](#Table)  

| Param | Type | Description |
| --- | --- | --- |
| column | <code>Object</code> | The column object |

<a name="Table+selectDown"></a>

### selectDown()
Selects the row below the currently selected row.

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+selectRow"></a>

### selectRow(index)
Selects the row in the table using the provided index. If the property *selectedIndex* is manually changed, this method can be called without the parameter for visual synchronization.

**Kind**: instance method of [<code>Table</code>](#Table)  

| Param | Description |
| --- | --- |
| index | The table row index |

<a name="Table+selectUp"></a>

### selectUp()
Selects the row above the currently selected row.

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+setInputs"></a>

### setInputs(inputStatus)
Switch the column's input status, or set the input to the provided status. If *true* is provided, it activates the inputs. If *false* is provided, it deactivates the inputs. This only works in columns set as input holders.

**Kind**: instance method of [<code>Table</code>](#Table)  

| Param | Description |
| --- | --- |
| inputStatus | The input status. |

<a name="Table+setRootLabel"></a>

### setRootLabel()
Sets the root label if treeData is true;

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+setSearchText"></a>

### setSearchText(text)
Sets the text of the search text input.

**Kind**: instance method of [<code>Table</code>](#Table)  

| Param | Type | Description |
| --- | --- | --- |
| text | <code>String</code> | The new input text. |

<a name="Table+setSelectedItem"></a>

### setSelectedItem(columnName, value)
Sets the value of the provided column in the selected row.

**Kind**: instance method of [<code>Table</code>](#Table)  

| Param | Type | Description |
| --- | --- | --- |
| columnName | <code>String</code> | The column to be updated |
| value | <code>String</code> | The new value |

<a name="Table+setTreeIcons"></a>

### setTreeIcons(open, close, empty)
Sets the tree icons programmatically. This overwrites the default icons.

**Kind**: instance method of [<code>Table</code>](#Table)  

| Param | Type | Description |
| --- | --- | --- |
| open | <code>String</code> | The icon representing the open status. |
| close | <code>String</code> | The icon representing the close status. |
| empty | <code>String</code> | The icon representing a final branch. |

<a name="Table+show"></a>

### show()
Shows or unhides the table component.

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+size"></a>

### size() ⇒ <code>Integer</code>
Returns the number of rows in the 

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+sort"></a>

### sort(column)
Sorts the data by the provided column

**Kind**: instance method of [<code>Table</code>](#Table)  

| Param | Type | Description |
| --- | --- | --- |
| column | <code>String</code> | Column to sort |

<a name="Table+syncHeader"></a>

### syncHeader()
Syncronizes the tables header with the columns width.

**Kind**: instance method of [<code>Table</code>](#Table)  
<a name="Table+toggle"></a>

### toggle(status)
Toggles the component between hidden and showing.  If the parameter is *true*, the component will be shown. If the *false*, the component will be hidden.

**Kind**: instance method of [<code>Table</code>](#Table)  

| Param | Type | Description |
| --- | --- | --- |
| status | <code>boolean</code> | (Optional) True shows and false hides. |

<a name="Table+toggleSearch"></a>

### toggleSearch(mode, reload)
Toggle the search input from visible to hidden. It requires the property `searchable="true"`.

**Kind**: instance method of [<code>Table</code>](#Table)  

| Param | Type | Description |
| --- | --- | --- |
| mode | <code>Boolean</code> | The logic condition. True shows and false hides. |
| reload | <code>Boolean</code> | (Optional) If true, it clears filtering if the search input is hidden. |

<a name="Table+Event_afterLoad"></a>

## Events
### on:afterLoad
This event is triggered after the table content has been loaded and its content displayed. Created with the ```Table.on("afterLoad", function(){})``` method.

**Kind**: event emitted by [<code>Table</code>](#Table)  
<a name="Table+Event_beforeLoad"></a>

### on:beforeLoad
This event is triggered before the table content is loaded. Created with the ```Table.on("beforeLoad", function(){})``` method.

**Kind**: event emitted by [<code>Table</code>](#Table)  
<a name="Table+Event_click"></a>

### on:click (coldIndex, dbIndex, realClick, mouseEvent)
This event is triggered when a row is clicked. Created with the ```Table.on("click", function(colIndex, dpIndex, mouseEvent){})``` method.

**Kind**: event emitted by [<code>Table</code>](#Table)  

| Param | Type | Description |
| --- | --- | --- |
| coldIndex | <code>Integer</code> | The column clicked. The first one is 0. |
| dbIndex | <code>Integer</code> | The dataProvider index of the selected row. |
| realClick | <code>Boolean</code> | Returns true if the "click" has been triggered by a physical click. |
| mouseEvent | <code>Object</code> | The mouse click even object. |

<a name="Table+Event_dataInput"></a>

### on:dataInput
This event is triggered while the input is being generated. If the event's function returns an object, it will be saved as a JSON String in the input's property 'data-json' for use in post operations. Created with the ```Table.on("dataInput", function(dpIndex,pdItem,inputType){})``` method.

**Kind**: event emitted by [<code>Table</code>](#Table)  
<a name="Table+Event_dragDrop"></a>

### on:dragDrop
This event is triggered when a dragged row is dropped over a row area. The event function provides the column index, row index, data provider item, and the mouse event. Created with the ```Table.on("dragStart", function(columnIndex, rowIndex, dpItem, event ){})``` method.
Created with the ```Table.on("dragStart", function(columnIndex, rowIndex, dpItem, event ){})``` method.

**Kind**: event emitted by [<code>Table</code>](#Table)  
<a name="Table+Event_dragEnter"></a>

### on:dragEnter
This event is triggered when a dragged row enters another row area. The event function provides the column index, row index, data provider item, and the mouse event. Created with the ```Table.on("dragStart", function(columnIndex, rowIndex, dpItem, event ){})``` method.

**Kind**: event emitted by [<code>Table</code>](#Table)  
<a name="Table+Event_dragLeave"></a>

### on:dragLeave
This event is triggered when a dragged row leaves a row area. The event function provides the column index, row index, data provider item, and the mouse event. Created with the ```Table.on("dragStart", function(columnIndex, rowIndex, dpItem, event ){})``` method.

**Kind**: event emitted by [<code>Table</code>](#Table)  
<a name="Table+Event_dragOver"></a>

### on:dragOver
This event is triggered when a dragged row is over another row area.  The event function provides the column index, row index, data provider item, and the mouse event. Created with the ```Table.on("dragStart", function(columnIndex, rowIndex, dpItem, event ){})``` method.

**Kind**: event emitted by [<code>Table</code>](#Table)  
<a name="Table+Event_dragStart"></a>

### on:dragStart
This event is triggered when a row begins to be dragged. The event function provides the column index, row index, data provider item, and the mouse event. Created with the ```Table.on("dragStart", function(columnIndex, rowIndex, dpItem, event ){})``` method.

**Kind**: event emitted by [<code>Table</code>](#Table)  
<a name="Table+Event_error"></a>

### on:error
Event triggered after an error. Created with the ```Table.on("error", function(){})``` method.

**Kind**: event emitted by [<code>Table</code>](#Table)  
<a name="Table+Event_filterLoad"></a>

### on:filterLoad
This event is triggered before a row item is added to the table content.  If the event function returns *false*, the item is ignored and not added. Created with the ```Table.on("filterLoad", function(index,item){})``` method.

**Kind**: event emitted by [<code>Table</code>](#Table)  
<a name="Table+Event_renderInput"></a>

### on:renderInput
This event is triggered before each input is generated. If the event function returns *true*, the input will be created. If it returns *false*, it will not render an input.
If the event returns a text value, the input will be generated, and the provided text is used to define the input's type. The text can contain an added mask separated by a pipe symbol.
If the event returns undefined, the input is also generated.
Created with the ```Table.on("renderInput", function(value,pdIndex,dpItem){})``` method.

**Kind**: event emitted by [<code>Table</code>](#Table)  
<a name="Table+Event_searchText"></a>

### on:searchText (text)
This event is triggered when the search input text changes.  It is used to evaluate the text entered in the search input. If the event function returns a value, it will be used to replace the original search value. Created with the ```DataProvider.on("searchText", function(){})``` method.

**Kind**: event emitted by [<code>Table</code>](#Table)  

| Param | Type | Description |
| --- | --- | --- |
| text | <code>String</code> | The entered text. |

<a name="Table+Event_toggle"></a>

### on:toggle
This event is triggered when the table's visibility changes. Created with the ```Table.on("toggle", function(toogleStatus){})``` method. This event is triggered when the methods show, hide, and toggle are used. If the event function returns true or false, it will overwrite the toggle requested. Not returning a value preserves the original requested status.

**Kind**: event emitted by [<code>Table</code>](#Table)  

