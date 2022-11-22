# Pagination

The pagination component is used communicate the pagination settings to the database, and to provide an interactive way to select which page to visualize. The component will create visual representation for each page.

## Implementation

Set pagination tag in the place the pagination icons will be showed. 

```xml
<div>
	<silk:Pagination id="paginationBox" size="20" pages="10" />
</div>
```

Set in the table's ORM the SELECTs which are going to be used by the pagination process.

Add to the SELECT used to extract the itesm to be display the pagination commands based on the database's specifications. 

```sql
-- MS SQL Server sample
select
	*
from listTable
offset $V{pageStartRow} rows fetch next $V{pageSize} rows only
```

Create a SELECT which will return the number rows and the total pages to be displayed. This SELECT should have the same criteria as the SELECT listing the items. 

```sql
select
	isNull(count(*),0) as totalRows,
	ceiling(convert(float,count(*))/$V{pageSize}) as totalPages
from listTable
```

Notice the use of the ```$V{}``` parameter method when setting the pagination parameters. The use to avoid setting the value's type in the ORM. If you wan tot use the ```$P{}``` then each parameter has to be setup in the ORM.

Set the DataProviders, one for the item's list and another for the pagination. The DataProvider used to display the items shoud be setup as ```autoload="false"```.

```xml
<silk:DataProvider id="listDP" servicePath="/--/--/" autoLoad="false" />
<silk:DataProvider id="pageDP" servicePath="/--/--/" />
```

Set the DataProvider *pageDP* events which will interact with the database.

The *beforeSelect* event has to clear the pagination component from any prevoiusly loaded data, and then send the *pageSize* parameter. The value for this is extracted from the pagination component attribute *pageSize*.

The *afterSelect* event received the *totalRows* and *totalPages* values from the database. These are use in the *load* method to initialize the pagination component. Then the dataProvider conainting the item's list is loaded.

```javascript
pageDP.on("beforeSelect", function(){
  paginationBox.clean();
	pagesDP.setParameter("pageSize", paginationBox.pageSize );
  // Add other paramaters required by the process
});

pageDP.on("afterSelect", function(){
  var totalRows = pageDP.getItemAt(0,"totalRows");
  var totalPages = pageDP.getItemAt(0,"totalPages");
  paginationBox.load(totalRows, totalPages)
  listDP.load();
});
```

Set the pagination component's click event. This event is triggered when the user clicks on each page icon. This shoud load the DataProvider containing the item's list which will return the requested page's items.

```javascript
paginationBox.on("click", function(){
	listDP.load();
});
```

Set the DataProvider *listDP* events. Create of modity the *beforeSelect* event to add parameters *pageSize* and *pageStartRow*. These values are extracted from the pagination component.

```javascript
listDP.on("beforeSelect", function(){
  listDP.setParameter("pageSize", paginationBox.pageSize);
  listDP.setParameter("pageStartRow", paginationBox.pageStartRow);
  // Add other paramaters required by the process
});
```

### Pagination and dpSearch

The Table property *dpSearch* determins how text will be search in the table. To use it with pagination the property *dpSearch* should received the name of the *DataProvider* extracting the number of pages.

```xml
<silk:Table id="" dpSearch="pageDP" />
```

