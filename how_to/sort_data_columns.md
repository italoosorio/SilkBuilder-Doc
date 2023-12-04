# Sort Data Columns

Making data sortable requires this configuration.

## Sorting Table's dataSource

To activate sorting in a *Table column* set the property *sortColumn property in* the *silk:Column* tag. This property should contain the DataProvider's column used to sort the column.

```xml
<silk:Table id="personList" dataSource="personDP" >
	<silk:Column sortColumn="name">{name}</silk:Column>
	<silk:Column sortColumn="address">{address}</silk:Column>
</silk:Table>
```

Setting the *sortColumn* will render the column' title as a link. Clicking on the column's title will sort the data ascendingly; clicking a second time will switch the sorting to descending, and so on.

This level of sorting affects only the *DatProvider*'s data locally stored after a *select* method execution. If the application uses [pagination](pagination.md) to display the *Table*'s data, the sorting will only affect the current *Table*'s page data.

## Sorting Database Query

Extra steps in the *DataProvider* and the *ORM*'s are required to use sorting in the database.

### The DataProvider

In the *DataProvider* set the *dpSort* property to *true*.

```xml
<silk:DataProvider id="personDP" servicePath="" dpSort="true" />
```

Use the *DataProvider*'s setSortColumn( ) method to set the initial sorting column submitted to the *DataProvider*. Then, using the *beforeSelect* event, set the sorting column as a parameter used by the *ORM's* select. The method *getSQLSortColumn()* returns the *sortColumn* selected by the user with the SQL sorting keywords "asc" or "desc" added depending on the sorting action. If that is not desirable, then the method *getSortColumn*() can be used.

```javascript
/*
 *Initial sorting column
 */
personDP.setSortColumn("name");

personDP.on("beforeSelect", function(){
	personDP.setParameter("sortColumn", personDP.getSQLSortColumn() );
});
```

### The ORM

In the ORM modify the SQL select to receive the sorting column using the $V{} parameter handler. 

```sql
select
	name,
	address
from person
order by $V{sortColumn}
```

After this, clicking on a *Table*'s column's label will trigger a *DataProvider*'s select method and reload the data sorted by the provided column.

***Any data processed by the $V{} parameter handler is reviewed and cleared of SQL injection content.** 

## Sort Programatically

If necessary, execute the sorting process programmatically; this will bypass the *Table*'s column interaction. Do this by using the *DataProvider*'s method *sort(column)*.

``` javascript
personDP.sort("name");
```

## Tree Data

Sorting capabilities are not available for tree structures due to their hierarchical nature.