# silk:DataProvider Tag
The *silk:DataProvider* component is use to extract data from a database. A DataProvider interfaces with a **Data Outlet** which is linked to an **Object Relational Mapping** (ORM) file which defines the data interaction. The DataProvider is also the repository of the information loaded from the database. The stored data can be access by other components.

## Tag Use
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
>
   Contains: JSON Object Array.
</silk:DataProvider>
```

## Properties 
<sup>*</sup>Required property.
### id<sup>*</sup>
Unique component identifier.<br>Default Value: *Empty*.
### servicePath
The path of the service providing the access to the data.<br>Default Value: *Empty*.
### selectName
The name of the Select tag in the ORM file to be used to load the data from the server. This is only necessary if the ORM file has multiple Select tags.<br>Default Value: *Empty*.
### autoLoad
if _true_ the component will load the data from the server after being initialized. If _false_ the loading method will be trigger externally. The default value is _true_.<br>Default Value: *true*.
### loadingOrder
A numeric value which is used to order the loading process off multiple DataProviders when the application starts. This does not affect loading programmatically triggered.<br>Default Value: *000*.
### treeData
If _true_ it activates the support for hierarchical information or trees nodes. This requires the fields root, parent, and level in the tags column in theORM file.<br>Default Value: *false*.
### markDeleted
If _true_ the delete action will change to update the field making the records as deleted. The records will be visually removed from the list.<br>Default Value: *false*.
### debugLevel
A numeric value indicating the level of debugging to be displayed.<br>Default Value: *0*.
### isPublic
If true the data will be served from a public servicePath service. *This is only necessary when a private application is going to use a public service.*<br>Default Value: *false*.
### pkColumn
The name of the columns used as primary key if the DataProvider has been created using static JSON data.<br>Default Value: *Empty*.
### detailDP
The *DataProvider* which will be loaded when clicking on an associated *silk:Table* row.<br>Default Value: *Empty*.
### recordSync
If _true_ if will load a ORM select containing extra columns for the selected record.<br>Default Value: *Empty*.
### dpSort
Determines if the sorting process will run in the database. This does not work if the dataProvider is set to treeData="true".<br>Default Value: *Empty*.
### timeout
Set the time the Ajax request will timeout if it does not receives an asnwer.<br>Default Value: *Empty*.
## JSON container
The **silk:DataProvider** can also be used with pre-define data. In this case the DataProvider will host an array of JSON objects which will be loaded during the initialization process. In this scenario the DataProvider will not interact with the server, so the servicePath property is not necessary. The typical use for this scenario is to store data which is only valid in the application domain.
```xml
<silk:DataProvider id="genderDP" pkColumn="id" >
  {"id":"0", "label":"Single"},
  {"id":"1", "label":"Married"}
</silk:DataProvider>
```
