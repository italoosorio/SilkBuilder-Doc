# silk:DataProvider
The *silk:DataProvider* component extracts data from a database using a **Data Outlet**, which is linked to an Object Relational Mapping (ORM) file that defines the data interaction.

The DataProvider is also the repository of the information loaded from the database. Other components can access the stored data.

Operates as a standalone when connecting to an external service.

## Tag Definition
Used standalone:
```xml
<silk:DataProvider
  id=""
  servicePath=""
  selectName=""
  autoLoad="true"
  loadingOrder="000"
  treeData="false"
  markDeleted="false"
  debugLevel="0"
  isPublic="false"
  pkColumn=""
  detailDP=""
  recordSync=""
  dpSort=""
  timeout=""
  renderIf=""
/>
```
Used as a container:
```xml
<silk:DataProvider
  id=""
  servicePath=""
  selectName=""
  autoLoad="true"
  loadingOrder="000"
  treeData="false"
  markDeleted="false"
  debugLevel="0"
  isPublic="false"
  pkColumn=""
  detailDP=""
  recordSync=""
  dpSort=""
  timeout=""
  renderIf=""
>
   Contains: optional a JSON Object array string, or a silk:DataService element.
</silk:DataProvider>
```

### JSON String
 
The **silk:DataProvider** can also be used with pre-defined data. In this case, the DataProvider will host an array of JSON objects, which will be loaded during the initialization process. The DataProvider will not interact with the server in this scenario, so the servicePath property is unnecessary. The typical use for this scenario is to store data that is only valid in the application domain.

```xml
<silk:DataProvider id="conditionDP" pkColumn="id" >
  {"id":"0", "label":"Single", "icon":""},
  {"id":"1", "label":"Married", "icon":""},
  {"id":"2", "label":"Divorce", "icon":""}
</silk:DataProvider>
```

If the property *pkColumn* is not provided, it defaults to the name "value".

The data provided can also be received as pre-defined data in the format of "value:label" to facilitate building a simple list.

```xml
<silk:DataProvider id="conditionDP" >
  0:Single,
  1:Married
</silk:DataProvider>
```

This format will generate a JSON array with value and label attributes.

### DataSevice

In cases when a **silk:DataProvider** has to access different Data Outlets based on runtime logic, the element **silk:DataService** provides the logic property **renderIf** to choose the appropriate service path and/or select name.

```xml
<silk:DataProvider id="peopleList" >
  <silk:DataService servicePath="/clients/data/peopleOutlet" selectName="allClients"
    renderIf="manager in ${silkRoleList}" />
  <silk:DataService servicePath="/clients/data/peopleOutlet" selectName="activeClients"
    renderIf="sales in ${silkRoleList}" />
</silk:DataProvider>
```

## Properties 
<sup>*</sup>Required property.
### id<sup>*</sup>
Unique component identifier.<br>Default Value: *Empty*.
### servicePath
Sets the path to the outlet service providing access to the data.<br>If the value is "silkVariable" it will load the flag variables as a JSON string. The selectName should indicate the variable group.<br>If the value is silkLang" it will load the languages list as a JSON string.<br>Default Value: *Empty*.
### selectName
The name of the Select tag in the ORM file.<br>Default Value: *Empty*.
### autoLoad
If true, the component will load the data from the server after being initialized. If _false_, the loading method will be triggered externally. The default value is "true".<br>Default Value: *true*.
### loadingOrder
Defines the numeric value used to order the loading process of multiple DataProviders when the application starts. This does not affect loading programmatically triggered.<br>Determining the loading order is essential to compensate for data dependency while displaying data.<br>Default Value: *000*.
### treeData
If _true_, it activates the support for hierarchical information or trees nodes. This requires the fields root, parent, and level in the tags column in the ORM file.<br>Default Value: *false*.
### markDeleted
If _true_, the delete action will change to update the field. The records will be visually removed from the list.<br>Default Value: *false*.
### debugLevel
A numeric value indicating the level of debugging to be displayed.<br>Default Value: *0*.
### isPublic
If true the data will be served from a public outlet service. *This is only necessary when a private application will use a public data outlet.*<br>Default Value: *false*.
### pkColumn
Sets the name of the columns used as the primary key when different from the DataProvider.  Should be used when the DataProvider has been created using static JSON data.<br>Default Value: *Empty*.
### detailDP
Defines a *DataProvider* that will be loaded when clicking on an associated *silk:Table* row.<br>Default Value: *Empty*.
### recordSync
If _true_, it will load an ORM select containing extra columns for the selected record.<br>This will trigger a second click event in the connected component after the synchronization process is completed.<br>Default Value: *Empty*.
### dpSort
Determines if the sorting process will run in the database. This does not work if the dataProvider property treeData is set to "true".<br>Default Value: *Empty*.
### timeout
Set the time, in milliseconds, for the Ajax request to timeout if it does not receive an answer.<br>Default Value: *Empty*.
### renderIf
It contains the logic sentence defining whether the component should be rendered.<br>The logic statement's explanation is in the <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.
