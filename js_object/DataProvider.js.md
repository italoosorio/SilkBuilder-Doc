# DataProvider
The DataProvider Class provides properties, methods, and events to interface with JSON data retuned by external services. This is generated dby the ```<silk:DataProvider>``` tag.

**Kind**: global class  

* [DataProvider](#DataProvider)
    * [new DataProvider(id, options)](#new_DataProvider_new)
    * [.on](#DataProvider+on)
    * [.selectObject](#DataProvider+selectObject)
    * [.operationObject](#DataProvider+operationObject)
    * [.sourceType](#DataProvider+sourceType)
    * [.getService()](#DataProvider+getService)
    * [.getSelectName()](#DataProvider+getSelectName)
    * [.setSelectName(newSelectName)](#DataProvider+setSelectName)
    * [.getPkColumn()](#DataProvider+getPkColumn)
    * [.getPKValue()](#DataProvider+getPKValue)
    * [.getOperationItem()](#DataProvider+getOperationItem)
    * [.getSelectedItem(columnName)](#DataProvider+getSelectedItem)
    * [.isTreeData()](#DataProvider+isTreeData)
    * [.getIndex(pkValue)](#DataProvider+getIndex)
    * [.getIndexItem(pkValue)](#DataProvider+getIndexItem)
    * [.getIndexOf(columnName, value)](#DataProvider+getIndexOf)
    * [.getIndexItemOf(columnName, value)](#DataProvider+getIndexItemOf)
    * [.addComponent(component)](#DataProvider+addComponent)
    * [.getComponents()](#DataProvider+getComponents)
    * [.cleanParameters()](#DataProvider+cleanParameters)
    * [.setParameter(column, value, type, secure)](#DataProvider+setParameter)
    * [.cleanOperations(init)](#DataProvider+cleanOperations)
    * [.setOperationAction(action, operation)](#DataProvider+setOperationAction)
    * [.setOperationItem(column, value)](#DataProvider+setOperationItem)
    * [.select(newSelectName)](#DataProvider+select)
    * [.insert()](#DataProvider+insert)
    * [.update(recordIndex)](#DataProvider+update)
    * [.recordSync()](#DataProvider+recordSync)
    * [.delete(recordIndex)](#DataProvider+delete)
    * [.batch()](#DataProvider+batch)
    * [.exec(operation)](#DataProvider+exec)
    * [.getItemAt(index, column)](#DataProvider+getItemAt) ⇒ <code>Object</code>
    * [.getItem(column)](#DataProvider+getItem)
    * [.setItem(column, value)](#DataProvider+setItem)
    * [.setItemAt(index, column, value)](#DataProvider+setItemAt)
    * [.length()](#DataProvider+length)
    * [.size()](#DataProvider+size)
    * [.load(internalCall)](#DataProvider+load)
    * [.clean()](#DataProvider+clean)
    * ["Event:beforeLoad" ([action], [operation])](#DataProvider+Event_beforeLoad)
    * ["Event:beforeSelect" ([selectName])](#DataProvider+Event_beforeSelect)
    * ["Event:beforeRecordSync" ([selectName])](#DataProvider+Event_beforeRecordSync)
    * ["Event:beforeInsert"](#DataProvider+Event_beforeInsert)
    * ["Event:beforeUpdate"](#DataProvider+Event_beforeUpdate)
    * ["Event:beforeDelete"](#DataProvider+Event_beforeDelete)
    * ["Event:beforeBatch"](#DataProvider+Event_beforeBatch)
    * ["Event:beforeExec" ([operation])](#DataProvider+Event_beforeExec)
    * ["Event:afterLoad" ([action], [operation])](#DataProvider+Event_afterLoad)
    * ["Event:afterSelect" ([selectName])](#DataProvider+Event_afterSelect)
    * ["Event:afterInsert"](#DataProvider+Event_afterInsert)
    * ["Event:afterUpdate"](#DataProvider+Event_afterUpdate)
    * ["Event:afterDelete"](#DataProvider+Event_afterDelete)
    * ["Event:afterBatch"](#DataProvider+Event_afterBatch)
    * ["Event:afterExec" ([operation])](#DataProvider+Event_afterExec)
    * ["Event:processLoadedData" (returnObject)](#DataProvider+Event_processLoadedData) ⇒ <code>Object</code>
    * ["Event:error" (error)](#DataProvider+Event_error)

<a name="new_DataProvider_new"></a>

## new DataProvider(id, options)
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

<a name="DataProvider+on"></a>

## dataProvider.on
Extends the "on" method from the eventManager Class.

**Kind**: instance property of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| eventName | <code>String</code> | The event's name. |
| eventFunction | <code>function</code> | The function to be triggered. |

<a name="DataProvider+selectObject"></a>

## dataProvider.selectObject
The ReturnObject containing the returned data from the database after a SELECT.

**Kind**: instance property of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+operationObject"></a>

## dataProvider.operationObject
The ReturnObject contaiing the returned data after INSERT, UPDATE, DELETE, EXEC, BATCH.

**Kind**: instance property of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+sourceType"></a>

## dataProvider.sourceType
Source Type:<br>
SQL : From SQL database<br>
Local : loaded using laodJSON method. Data is provided as part of the data provider.<br>
JSON : data form a JSON file.

**Kind**: instance property of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+getService"></a>

## dataProvider.getService()
Gets the service path.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+getSelectName"></a>

## dataProvider.getSelectName()
Gets the selectedName used to load data.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+setSelectName"></a>

## dataProvider.setSelectName(newSelectName)
Set a new selectName value

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| newSelectName | <code>String</code> | The new select name. |

<a name="DataProvider+getPkColumn"></a>

## dataProvider.getPkColumn()
Gets the name of the primary key column.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+getPKValue"></a>

## dataProvider.getPKValue()
Gets the primary key value of the seleced data item.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+getOperationItem"></a>

## dataProvider.getOperationItem()
Gets the operation Item.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+getSelectedItem"></a>

## dataProvider.getSelectedItem(columnName)
Gets the selected item based on the selecteIndex property. By default return the firt item if exists.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| columnName | <code>String</code> | The column to return. If not provided return the item object. |

<a name="DataProvider+isTreeData"></a>

## dataProvider.isTreeData()
Return a boolean indicating if the data is set to be tree structured

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+getIndex"></a>

## dataProvider.getIndex(pkValue)
Returns the index position in the data array of the primay key provided

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| pkValue | <code>String</code> | The primary key value to search for. |

<a name="DataProvider+getIndexItem"></a>

## dataProvider.getIndexItem(pkValue)
Returns the item object of the primary key provided

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| pkValue | <code>String</code> | The primary key value to search for. |

<a name="DataProvider+getIndexOf"></a>

## dataProvider.getIndexOf(columnName, value)
Returns the index position in the data array of the item matching the columnName and the value.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| columnName | <code>String</code> | The column name use to filter |
| value | <code>Object</code> | The value use to filter. |

<a name="DataProvider+getIndexItemOf"></a>

## dataProvider.getIndexItemOf(columnName, value)
Returns the item object matching the columnName and the value.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| columnName | <code>String</code> | The column name use to filter |
| value | <code>Object</code> | The value use to filter. |

<a name="DataProvider+addComponent"></a>

## dataProvider.addComponent(component)
Adds a component to the components list.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Description |
| --- | --- |
| component | The component to be added |

<a name="DataProvider+getComponents"></a>

## dataProvider.getComponents()
Returns the array containing the components which will be notify of changes in the data provider.<br>
The component must have a load() function.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+cleanParameters"></a>

## dataProvider.cleanParameters()
Cleans the parameter list from the requestObject.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+setParameter"></a>

## dataProvider.setParameter(column, value, type, secure)
Sets a parameter. If the parameter already exist it gets updated.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| column | <code>String</code> | The column name |
| value | <code>Object</code> | The value |
| type | <code>String</code> | (optional) One character value (S,I,N,D,T) to force data convertion |
| secure | <code>booelan</code> | (optional) To inndicates if the value is encrypted. To overwrite what has been define in the ORM. |

<a name="DataProvider+cleanOperations"></a>

## dataProvider.cleanOperations(init)
Cleans the operation list and add a default select action

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| init | <code>boolean</code> | (optional) Defaul is false. If the init parameter is true it will initialize an empty select action. This is used to initialze the request object as "select". |

<a name="DataProvider+setOperationAction"></a>

## dataProvider.setOperationAction(action, operation)
Sets the action for the operation object

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| action | <code>String</code> | The action to execute: select, insert, update, delete, exec, batch. |
| operation | <code>String</code> | (optional) The name of the operation when action is set to exec. |

<a name="DataProvider+setOperationItem"></a>

## dataProvider.setOperationItem(column, value)
Sets a column items to the operation object

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Description |
| --- | --- |
| column | The column name |
| value | The value |

<a name="DataProvider+select"></a>

## dataProvider.select(newSelectName)
Executes a SELECT request. If required parameters should be added before calling this method.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| newSelectName | <code>String</code> | (optional) The name of the select to be used fro the ORM. |

<a name="DataProvider+insert"></a>

## dataProvider.insert()
Executes an INSERT request. Operation items should be added before calling this method.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+update"></a>

## dataProvider.update(recordIndex)
Executes an UPDATE request. Operation items should be added before calling this method.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| recordIndex | <code>ingeger</code> | (optional) The index of the item to be updated |

<a name="DataProvider+recordSync"></a>

## dataProvider.recordSync()
Executes the SELECT used to sync the loaded record with the new database record data. This will only affect the selected item.
If the SELECT requires parameters these should be added using the "beforeRecordSync" event.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+delete"></a>

## dataProvider.delete(recordIndex)
Executes a DELETE request. Operation items should be added before calling this method.<br>
if markDeleted is true it will execute a delete in the local data, but an update in the database.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| recordIndex | <code>ingeger</code> | (optional) The index of the item to be deleted |

<a name="DataProvider+batch"></a>

## dataProvider.batch()
Submits multiple operations loaded into the Operations array to perform a batch request.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+exec"></a>

## dataProvider.exec(operation)
Executes a ORM Operation. If this required parameters these should be added in the "beforeLoad" or "beforeExec" events.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| operation | <code>String</code> | The operation name in the ORM object to be executed. |

<a name="DataProvider+getItemAt"></a>

## dataProvider.getItemAt(index, column) ⇒ <code>Object</code>
Gets the column's value at the provided position.
If column is not provided returns the object a the provided position.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| index | <code>Integer</code> | Data index position to be returned |
| column | <code>String</code> | (optional) Column name which value will be returned |

<a name="DataProvider+getItem"></a>

## dataProvider.getItem(column)
Gets the column's value of the first item.
If column is not provided returns the object item of the first position.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| column | <code>String</code> | (optional) Column name which value will be returned |

<a name="DataProvider+setItem"></a>

## dataProvider.setItem(column, value)
Sets the column's value of the first item.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| column | <code>String</code> | The target column. |
| value | <code>Stting</code> | The value. |

<a name="DataProvider+setItemAt"></a>

## dataProvider.setItemAt(index, column, value)
Sets the column's value of the array item defind by the index position.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| index | <code>Integer</code> | Array index target. |
| column | <code>String</code> | The target column. |
| value | <code>Stting</code> | The value. |

<a name="DataProvider+length"></a>

## dataProvider.length()
Returns the number of records in the data array.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+size"></a>

## dataProvider.size()
Returns the number of records in the data array.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+load"></a>

## dataProvider.load(internalCall)
Submits operations and loads result from the ORM service.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| internalCall | <code>boolean</code> | True if call internally within the DataProvider |

<a name="DataProvider+clean"></a>

## dataProvider.clean()
Cleans the data from the returnObject.

**Kind**: instance method of [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+Event_beforeLoad"></a>

## "Event:beforeLoad" ([action], [operation])
Event triggered before the load action is executed. Created with the ```DataProvider.on("beforeLoad", function(action,operation){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| [action] | <code>String</code> | The action to be executed. |
| [operation] | <code>String</code> | The operation to be executed. |

<a name="DataProvider+Event_beforeSelect"></a>

## "Event:beforeSelect" ([selectName])
Event triggered before the select action is executed. Created with the ```DataProvider.on("beforeSelect", function(selectName){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| [selectName] | <code>String</code> | The name of the select with in the ORM to be executed. |

<a name="DataProvider+Event_beforeRecordSync"></a>

## "Event:beforeRecordSync" ([selectName])
Event triggered before the record sync action is executed. Created with the ```DataProvider.on("beforeRecordSync", function(selectName){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| [selectName] | <code>String</code> | The name of the select with in the ORM to be executed. |

<a name="DataProvider+Event_beforeInsert"></a>

## "Event:beforeInsert"
Event triggered before the insert action is executed. Created with the ```DataProvider.on("beforeInsert", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+Event_beforeUpdate"></a>

## "Event:beforeUpdate"
Event triggered before the update action is executed. Created with the ```DataProvider.on("beforeUpdate", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+Event_beforeDelete"></a>

## "Event:beforeDelete"
Event triggered before the delete action is executed. Created with the ```DataProvider.on("beforeDelete", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+Event_beforeBatch"></a>

## "Event:beforeBatch"
Event triggered before the batch action is executed. Created with the ```DataProvider.on("beforeBatch", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+Event_beforeExec"></a>

## "Event:beforeExec" ([operation])
Event triggered before the exec action is executed. Created with the ```DataProvider.on("beforeExec", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| [operation] | <code>String</code> | The operation to be executed. |

<a name="DataProvider+Event_afterLoad"></a>

## "Event:afterLoad" ([action], [operation])
Event triggered after the load action is executed. Created with the ```DataProvider.on("afterLoad", function(action,operation){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| [action] | <code>String</code> | The action to be executed. |
| [operation] | <code>String</code> | The operation to be executed. |

<a name="DataProvider+Event_afterSelect"></a>

## "Event:afterSelect" ([selectName])
Event triggered after the select action is executed. Created with the ```DataProvider.on("afterSelect", function(selectName){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| [selectName] | <code>String</code> | The name of the select with in the ORM to be executed. |

<a name="DataProvider+Event_afterInsert"></a>

## "Event:afterInsert"
Event triggered after the insert action is executed. Created with the ```DataProvider.on("afterInsert", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+Event_afterUpdate"></a>

## "Event:afterUpdate"
Event triggered after the update action is executed. Created with the ```DataProvider.on("afterUpdate", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+Event_afterDelete"></a>

## "Event:afterDelete"
Event triggered after the delete action is executed. Created with the ```DataProvider.on("afterDelete", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+Event_afterBatch"></a>

## "Event:afterBatch"
Event triggered after the batch action is executed. Created with the ```DataProvider.on("afterBatch", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  
<a name="DataProvider+Event_afterExec"></a>

## "Event:afterExec" ([operation])
Event triggered after the exec action is executed. Created with the ```DataProvider.on("afterExec", function(){})``` method.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| [operation] | <code>String</code> | The operation to be executed. |

<a name="DataProvider+Event_processLoadedData"></a>

## "Event:processLoadedData" (returnObject) ⇒ <code>Object</code>
Event triggered when the extracted data is being processed. Created with the ```DataProvider.on("processLoadedData", function(returnObject){})``` method.
If the event returns an object this will replaced the existing returnObject.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| returnObject | <code>Object</code> | The return objected to be operated. |

<a name="DataProvider+Event_error"></a>

## "Event:error" (error)
Event triggered when an error has occurred. Created with the ```DataProvider.on("error", function(errorObject){})``` method.
If the event returns an object this will replaced the existing returnObject.

**Kind**: event emitted by [<code>DataProvider</code>](#DataProvider)  

| Param | Type | Description |
| --- | --- | --- |
| error | <code>Object</code> | The returned error object. |

