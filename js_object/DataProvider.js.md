# DataProvider
 The DataProvider Class provides properties, methods, and events to interface with JSON data retuned by external services. This is generated dby the ```<silk:DataProvider>``` tag.

**Kind**: global class  


## Methods and Event
 <a name="_new"></a>

### new DataProvider(id, options)
Returns a DataProvider instance.


| Param | Type | Default | Description |
| --- | --- | --- | --- |
| id | <code>String</code> |  | Unique identifier. |
| options | <code>Object</code> |  | Object containing the DataProvider configuration options. |
| [opsions.servicePath] | <code>String</code> |  | The url to the service providing the data. |
| [options.selectName] | <code>String</code> |  | The ORM's selectName used to extract the data. |
| [options.treeData] | <code>Boolean</code> | <code>false</code> | Indicates if the data will be treated as a hirargical structure. |
| [options.markDeleted] | <code>Boolean</code> | <code>flase</code> | Indicated that records will display like a deletion but marked deleted in the database. |
| [options.isPublic] | <code>Integer</code> | <code>0</code> | Indicates if the service is publicly available. |
| [options.debugLevel] | <code>Integer</code> | <code>0</code> | Define the debuging level. Currently only level 4 is avaialable. |
| [options.pkColumn] | <code>String</code> |  | The primary key column of the table accesed. |
| [option.detailDP] | <code>String</code> |  | The name of the DataProvider which contains the detail data of the selected record. |
| [option.recordSync] | <code>Boolan</code> |  | Indicates if the dataProvider will sync the records with the data from a recordsync data providers. The execution of a record sync triggers a second click event in the table. |
| [option.dpSort] | <code>Boolean</code> |  | Indicates if the sorting will happen in the data provider. |

<a name="DataProvider+addComponent"></a>

### addComponent(component)
Adds a component to the components list.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Description |
| --- | --- |
| component | The component to be added |

<a name="DataProvider+batch"></a>

### batch()
Submits multiple operations loaded into the Operations array to perform a batch request.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+clean"></a>

### clean()
Cleans the data from the returnObject.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+cleanOperations"></a>

### cleanOperations(init)
Cleans the operation list and add a default select action

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| init | <code>boolean</code> | (optional) Defaul is false. If the init parameter is true it will initialize an empty select action. This is used to initialze the request object as "select". |

<a name="DataProvider+cleanParameters"></a>

### cleanParameters()
Cleans the parameter list from the requestObject.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+delete"></a>

### delete(recordIndex)
Executes a DELETE request. Operation items should be added before calling this method.<br>
if markDeleted is true it will execute a delete in the local data, but an update in the database.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| recordIndex | <code>ingeger</code> | (optional) The index of the item to be deleted |

<a name="DataProvider+exec"></a>

### exec(operation)
Executes a ORM Operation. If this required parameters these should be added in the "beforeLoad" or "beforeExec" events.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| operation | <code>String</code> | The operation name in the ORM object to be executed. |

<a name="DataProvider+getComponents"></a>

### getComponents()
Returns the array containing the components which will be notify of changes in the data provider.<br>
The component must have a load() function.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+getIndex"></a>

### getIndex(pkValue)
Returns the index position in the data array of the primay key provided

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| pkValue | <code>String</code> | The primary key value to search for. |

<a name="DataProvider+getIndexItem"></a>

### getIndexItem(pkValue)
Returns the item object of the primary key provided

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| pkValue | <code>String</code> | The primary key value to search for. |

<a name="DataProvider+getIndexItemOf"></a>

### getIndexItemOf(columnName, value)
Returns the item object matching the columnName and the value.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| columnName | <code>String</code> | The column name use to filter |
| value | <code>Object</code> | The value use to filter. |

<a name="DataProvider+getIndexOf"></a>

### getIndexOf(columnName, value)
Returns the index position in the data array of the item matching the columnName and the value.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| columnName | <code>String</code> | The column name use to filter |
| value | <code>Object</code> | The value use to filter. |

<a name="DataProvider+getItem"></a>

### getItem(column)
Gets the column's value of the first item.
If column is not provided returns the object item of the first position.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| column | <code>String</code> | (optional) Column name which value will be returned |

<a name="DataProvider+getItemAt"></a>

### getItemAt(index, column) ⇒ <code>Object</code>
Gets the column's value at the provided position.
If column is not provided returns the object a the provided position.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| index | <code>Integer</code> | Data index position to be returned |
| column | <code>String</code> | (optional) Column name which value will be returned |

<a name="DataProvider+getOperationItem"></a>

### getOperationItem()
Gets the operation Item.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+getPkColumn"></a>

### getPkColumn()
Gets the name of the primary key column.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+getPKValue"></a>

### getPKValue()
Gets the primary key value of the seleced data item.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+getSelectedItem"></a>

### getSelectedItem(columnName)
Gets the selected item based on the selecteIndex property. By default return the firt item if exists.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| columnName | <code>String</code> | The column to return. If not provided return the item object. |

<a name="DataProvider+getSelectName"></a>

### getSelectName()
Gets the selectedName used to load data.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+getService"></a>

### getService()
Gets the service path.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+getSortColumn"></a>

### getSortColumn() ⇒ <code>String</code>
Returns the sorting column name.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
**Returns**: <code>String</code> - - Column name  
<a name="DataProvider+getSortDirection"></a>

### getSortDirection() ⇒ <code>Integer</code>
Gets the sorting direction. 1 is accedant, and -1 descendant.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
**Returns**: <code>Integer</code> - - Sorting Direction  
<a name="DataProvider+getSQLSortColumn"></a>

### getSQLSortColumn() ⇒ <code>String</code>
Returns the sorting column name with added SQL key words 'asc' or 'desc' based on the sorting direction.
If the sorting column is composite ("column, column") it will return the composite column without the SQL direction key words.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
**Returns**: <code>String</code> - - Column name  
<a name="DataProvider+insert"></a>

### insert()
Executes an INSERT request. Operation items should be added before calling this method.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+isTreeData"></a>

### isTreeData()
Return a boolean indicating if the data is set to be tree structured

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+langID"></a>

### langID
The langID is use to overwrite the session loaded langID.

**Kind**: instance property of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+length"></a>

### length()
Returns the number of records in the data array.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+load"></a>

### load(internalCall)
Submits operations and loads result from the ORM service.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| internalCall | <code>boolean</code> | True if call internally within the DataProvider |

<a name="DataProvider+on"></a>

### on
Extends the "on" method from the eventManager Class.

**Kind**: instance property of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| eventName | <code>String</code> | The event's name. |
| eventFunction | <code>function</code> | The function to be triggered. |

<a name="DataProvider+operationObject"></a>

### operationObject
The ReturnObject contaiing the returned data after INSERT, UPDATE, DELETE, EXEC, BATCH.

**Kind**: instance property of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+recordSync"></a>

### recordSync()
Executes the SELECT used to sync the loaded record with the new database record data. This will only affect the selected item.
If the SELECT requires parameters these should be added using the "beforeRecordSync" event.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+select"></a>

### select(newSelectName)
Executes a SELECT request. If required parameters should be added before calling this method.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| newSelectName | <code>String</code> | (optional) The name of the select to be used fro the ORM. |

<a name="DataProvider+selectObject"></a>

### selectObject
The ReturnObject containing the returned data from the database after a SELECT.

**Kind**: instance property of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+setItem"></a>

### setItem(column, value)
Sets the column's value of the first item.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| column | <code>String</code> | The target column. |
| value | <code>Stting</code> | The value. |

<a name="DataProvider+setItemAt"></a>

### setItemAt(index, column, value)
Sets the column's value of the array item defind by the index position.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| index | <code>Integer</code> | Array index target. |
| column | <code>String</code> | The target column. |
| value | <code>Stting</code> | The value. |

<a name="DataProvider+setOperationAction"></a>

### setOperationAction(action, operation)
Sets the action for the operation object

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| action | <code>String</code> | The action to execute: select, insert, update, delete, exec, batch. |
| operation | <code>String</code> | (optional) The name of the operation when action is set to exec. |

<a name="DataProvider+setOperationItem"></a>

### setOperationItem(column, value)
Sets a column items to the operation object

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Description |
| --- | --- |
| column | The column name |
| value | The value |

<a name="DataProvider+setParameter"></a>

### setParameter(column, value, type, secure)
Sets a parameter. If the parameter already exist it gets updated.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| column | <code>String</code> | The column name |
| value | <code>Object</code> | The value |
| type | <code>String</code> | (optional) One character value (S,I,N,D,T) to force data convertion |
| secure | <code>booelan</code> | (optional) To inndicates if the value is encrypted. To overwrite what has been define in the ORM. |

<a name="DataProvider+setSelectName"></a>

### setSelectName(newSelectName)
Set a new selectName value

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| newSelectName | <code>String</code> | The new select name. |

<a name="DataProvider+setSortColumn"></a>

### setSortColumn(column, direction)
Sets the sorting column and direction. The direction is optional.
If the sorting happens in the database then before execting a select the sort column has to be setup.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| column | <code>String</code> | Column name |
| direction | <code>Integer</code> | Sorting directionn. 1 - accedant, -1 is descendant |

<a name="DataProvider+setTimeout"></a>

### setTimeout()
The number of milliseconds beore triggering a timeout error.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+size"></a>

### size()
Returns the number of records in the data array.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+sort"></a>

### sort(column)
Sorts the data by the provided column. This does not work if the dataProvider is set to treeData="true".

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| column | <code>String</code> | Column to sort |

<a name="DataProvider+sourceType"></a>

### sourceType
Source Type:<br>
SQL : From SQL database<br>
Local : loaded using laodJSON method. Data is provided as part of the data provider.<br>
JSON : data form a JSON file.

**Kind**: instance property of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+update"></a>

### update(recordIndex)
Executes an UPDATE request. Operation items should be added before calling this method.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| recordIndex | <code>ingeger</code> | (optional) The index of the item to be updated |

<a name="DataProvider+Event_afterBatch"></a>

### on:afterBatch
Event triggered after the batch action is executed. Created with the ```DataProvider.on("afterBatch", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+Event_afterDelete"></a>

### on:afterDelete
Event triggered after the delete action is executed. Created with the ```DataProvider.on("afterDelete", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+Event_afterExec"></a>

### on:afterExec ([operation])
Event triggered after the exec action is executed. Created with the ```DataProvider.on("afterExec", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| [operation] | <code>String</code> | The operation to be executed. |

<a name="DataProvider+Event_afterInsert"></a>

### on:afterInsert
Event triggered after the insert action is executed. Created with the ```DataProvider.on("afterInsert", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+Event_afterLoad"></a>

### on:afterLoad ([action], [operation])
Event triggered after the load action is executed. Created with the ```DataProvider.on("afterLoad", function(action,operation){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| [action] | <code>String</code> | The action to be executed. |
| [operation] | <code>String</code> | The operation to be executed. |

<a name="DataProvider+Event_afterSelect"></a>

### on:afterSelect ([selectName])
Event triggered after the select action is executed. Created with the ```DataProvider.on("afterSelect", function(selectName){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| [selectName] | <code>String</code> | The name of the select with in the ORM to be executed. |

<a name="DataProvider+Event_afterUpdate"></a>

### on:afterUpdate
Event triggered after the update action is executed. Created with the ```DataProvider.on("afterUpdate", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+Event_beforeBatch"></a>

### on:beforeBatch
Event triggered before the batch action is executed. Created with the ```DataProvider.on("beforeBatch", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+Event_beforeDelete"></a>

### on:beforeDelete
Event triggered before the delete action is executed. Created with the ```DataProvider.on("beforeDelete", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+Event_beforeExec"></a>

### on:beforeExec ([operation])
Event triggered before the exec action is executed. Created with the ```DataProvider.on("beforeExec", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| [operation] | <code>String</code> | The operation to be executed. |

<a name="DataProvider+Event_beforeInsert"></a>

### on:beforeInsert
Event triggered before the insert action is executed. Created with the ```DataProvider.on("beforeInsert", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+Event_beforeLoad"></a>

### on:beforeLoad ([action], [operation])
Event triggered before the load action is executed. Created with the ```DataProvider.on("beforeLoad", function(action,operation){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| [action] | <code>String</code> | The action to be executed. |
| [operation] | <code>String</code> | The operation to be executed. |

<a name="DataProvider+Event_beforeRecordSync"></a>

### on:beforeRecordSync ([selectName])
Event triggered before the record sync action is executed. Created with the ```DataProvider.on("beforeRecordSync", function(selectName){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| [selectName] | <code>String</code> | The name of the select with in the ORM to be executed. |

<a name="DataProvider+Event_beforeSelect"></a>

### on:beforeSelect ([selectName])
Event triggered before the select action is executed. Created with the ```DataProvider.on("beforeSelect", function(selectName){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| [selectName] | <code>String</code> | The name of the select with in the ORM to be executed. |

<a name="DataProvider+Event_beforeUpdate"></a>

### on:beforeUpdate
Event triggered before the update action is executed. Created with the ```DataProvider.on("beforeUpdate", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+Event_error"></a>

### on:error (error)
Event triggered when an error has occurred. Created with the ```DataProvider.on("error", function(errorObject){})``` method.
If the event returns an object this will replaced the existing returnObject.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| error | <code>Object</code> | The returned error object. |

<a name="DataProvider+Event_processLoadedData"></a>

### on:processLoadedData (returnObject) ⇒ <code>Object</code>
Event triggered when the extracted data is being processed. Created with the ```DataProvider.on("processLoadedData", function(returnObject){})``` method.
If the event returns an object this will replaced the existing returnObject.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| returnObject | <code>Object</code> | The return objected to be operated. |


