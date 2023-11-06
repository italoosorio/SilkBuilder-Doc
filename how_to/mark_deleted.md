# Mark Records as Deleted

When SilkBuilder receives a request to remove a record from the database, it executes the SQL command "delete," which physically removes it. However, there are cases in which a record has to be "removed" from the application operations but still exists in the database for archiving or log purposes. To accomplish this kind of scenario, the *silk:DataProvider* tag provides the property *markDeleted*.

### The markDeleted Property

By default, when not added, the *markDeleted* property value is "**false."** In this case, the *DataProvider* will execute a regular *delete* SQL command. If the property *markDelete* value is set to "**true,"** then the *DataProvider* will execute a **"delete"** on the client side for visual feedback and an **"update"** in the server side.

```xml
<silk:DataProvider id="dataDP" servicePath="" markDeleted="true" />
```

To complete this process, the DataProvider has to be "informed" of which column, or columns, defines the removal of the record. To do this SilkBuilder provides the DataProvider event markDeleted. This event is triggered before the delete method is executed. Using the method setOperationsItem, the column, or columns, defining the record deletion can be set up.

```javascript
dataDP.on("markDeleted",function(){
	/*
	 * In this example the column 'archiveStatus' defines
	 * in the table the 'deleted' condition.
	 * The value 0 is not-deleted, and 1 is deleted.
	 */
	dataDP.setOperationItem("archiveStatus",1);
});
```

### ORM Triggers

Even though the *markDeleted="true"* property will execute an *update* in the database, the ORM will still execute a **before delete** and/or **after delete** triggers if these had been configured.

