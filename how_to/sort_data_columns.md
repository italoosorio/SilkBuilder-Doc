# Sort Data Columns

Making data sortable required these configuration.

## Sorting Table's dataSource

To make a *Table* sortable the *silk:Column* provides the *sortColumn* property which shoud contain the column use to apply sorting.

```xml
<silk:Table id="personList" dataSource="personDP" >
	<silk:Column sortColumn="name">{name}</silk:Column>
	<silk:Column sortColumn="address">{address}</silk:Column>
</silk:Table>
```

After adding the *sortColumn* the *Table* column's title will be render as a link. Clicking on the column's title will sort the data ascendingly, clicking a sencod time will switch the sorting to descending and so on.

This level of sorting affects only the *DatProvider*'s data locally stored after a *select* method execution. If the application is using [pagination](pagination.md) to display the *Table*'s data the sorting will only affect the current *Table*'s page data.

## Sorting Database Query

The sorting capabilities can be extended to the database. This requires extra steps in the *DataProvider* and the *ORM*'s.

In the *DataProvider* set the *dbSort* property to *true*.

```xml
<silk:DataProvider id="personDP" servicePath="" dbSort="true" />
```

In the application use the *DataProvider*'s setSortColumn( ) method to set the initial sorting column to be submited to the *DataProvider*. Then using the *beforeSelect* event set the sorting column as a parameter which will used by the *ORM's* select. The method *getSQLSortColumn()* returns the sortColumn with the SQL sorting keywords "asc" or "desc" added depending on the sorting action. If that is not desirable then the method *getSortColumn*() can be used.

```javascript
personDP.setSortColumn("name");
personDP.on("beforeSelect", function(){
	personDP.setParameter("sortColumn", personDP.getSQLSortColumn() );
});
```

The *ORM*'s select has to be modify to received the sorting column. This is done by using the **$V{}** parameter handler in the select statement. 

```sql
select
	name,
	address
from person
order by $V{sortColumn}
```

After this has been setup clicking on a *Table*'s column's label will trigger a *DataProvider*'s select method and reload the data sorted by the provided column.

***Any data processed by the $V{} parameter handler is review and cleared of any  SQL injection content.** 

## Programatically

The sorting capabilities can be executed programatically without using the *Table*'s columns'. This is done by using the *DataProvider*'s method *sort(column)*.

``` xml
personDP.sort("name");
```

## Tree Data

The sorting capabilities are not available for tree structures due to their hierargical nature.