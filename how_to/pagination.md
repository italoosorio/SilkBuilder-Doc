# Pagination

The pagination component is used to communicate the pagination settings to the database and to provide an interactive way to select which page to visualize. The component will generate the Bootstrap pagination component to interact with each generated page.

## The Tag

To start by placing the *silk:Pagination* tag in the place in which the page's icons will be shown. The tag has the property "size," which indicates the number of rows each page will have, and the property "pages," which indicates how many pages will show in the pages selector before scrolling.

```xml
<div>
	<silk:Pagination id="paginationBox" size="20" pages="10" />
</div>
```

## The ORM Selects

In the ORM,  set the SQL selects which are going to be used by the pagination process.

### The Page Select

Add the SELECT used to extract the items to display on the selected page. Use the database's specifications to apply pagination filters. The provided parameters are "pageStartRow" and "pageSize."

```sql
-- MS SQL Server sample
select
	*
from listTable
offset $V{pageStartRow} rows fetch next $V{pageSize} rows only
```

### The Pages List Select

Create a SELECT returning the table's total number of rows and the total number of pages to be listed. This SELECT should have the same criteria as the SELECT listing the items. 

```sql
select
	isNull(count(*),0) as totalRows,
	ceiling(convert(float,count(*))/$V{pageSize}) as totalPages
from listTable
```

### The $V{} parameter holder

Notice using the $V{} parameter holder when setting the pagination parameters. This method avoids adding related columns in the ORM, but these are added directly to the SQL string. Any value processed by $V{} gets validated against SQL injection threats. If a threat is found, then the provided value will be discarded. If you want to use $P{}, then each parameter has to be set up in the ORM as related columns.

## The Data Provider

Set two DataProviders, one for the items listed on the page and another for the pages to be listed. Set the *autoload* property to "false" for the DataProvider displaying the selected page items.

```xml
<silk:DataProvider id="listDP" servicePath="/--/--/" autoLoad="false" />
<silk:DataProvider id="pageDP" servicePath="/--/--/" />
```

### The pageDP

Set the DataProvider *pageDP* events, which will interact with the database.

The *beforeSelect* event has to clear the pagination component from any previously loaded data and then send the *pageSize* parameter. The value for this gets extracted from the pagination component attribute *pageSize*.

```javascript
pageDP.on("beforeSelect", function(){
  paginationBox.clean();
	pagesDP.setParameter("pageSize", paginationBox.pageSize );
  // Add other paramaters required by the process
});
```

The *afterSelect* event received the *totalRows* and *totalPages* values from the database. These are used in the *load* method to initialize the pagination component. Then the dataProvider conainting the item's list is loaded.

```javascript
pageDP.on("afterSelect", function(){
  var totalRows = pageDP.getItemAt(0,"totalRows");
  var totalPages = pageDP.getItemAt(0,"totalPages");
  paginationBox.load(totalRows, totalPages)
  listDP.load();
});
```

### Click on Page Icon

Set the pagination component's **click** event. This event is triggered when the user clicks on a page icon. This event should load the DataProvider containing the item list, which will return the requested page's items.

```javascript
paginationBox.on("click", function(){
	listDP.load();
});
```

### The listDP

Set the DataProvider listDP events. Create of modify the beforeSelect event to add parameters pageSize and pageStartRow. These values get extracted from the pagination component.

```javascript
listDP.on("beforeSelect", function(){
  listDP.setParameter("pageSize", paginationBox.pageSize);
  listDP.setParameter("pageStartRow", paginationBox.pageStartRow);
  // Add other paramaters required by the process
});
```

### Text Search

In a pagination setup,  if the Table's property *searchable* is "true," then the text search will only happen in the loaded items and not in the not-loaded pages.

```xml
<silk:Table id="myTable" searchable="true" />
```

If the search should affect the loaded page items and the non-loaded pages, then the *dpSearch* property has to be used.

### Pagination and dpSearch

The Table property *dpSearch* determines whether the text search execution is in the database. If this property is "true," after entering a search text, the *select()* method will be called to get the new data from the database filtered by the provided text. 

By default, the *dpSearch* executes the *select() method* in the DataProvider connected to the table listing the page's items, **listDP** in our example. However, when using pagination, the DataProvider needed to be called is the one holding the pages list, the **pageDP** in our sample.

The *dpSearch* property can also receive the name of a *DataProvider* to call when executing a search. And this is the case for pagination; the *dpSearch* property should receive the *DataProvider* containing the pagination information, the **pageDP** in our example, which, after execution, will call **listDP**.

```xml
<silk:Table id="myTable" searchable="true" dpSearch="pageDP" />
```

