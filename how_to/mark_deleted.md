# Mark Records as Deleted

Deleting a records does not necessarely mean to phisically remove it from the table. There are cases in which records have to be marked as deleted to be "removed" from the users "view" but it will still exist in the database for other kind of access, or for archiving/log purposes. To accomplished this kind of scenario the *silk:DataProvider* tag provides the property *markDeleted*.

### The markDeleted Property

By default, when not added, the *markDeleted* property values **false**. In this case the *DataProvider* will execute a regular *delete* sql command.

```xml
<silk:DataProvider id="dataDP" servicePath="" markDeleted="true" />
```

If the property *markDelete* value is set to **true** then the  *DataProvider* will execute a **"delete"** in the client side, for visual feedback, and an **"update"** in the server side.

To complete this process the *DataProvider* has to be "informed" of which column's, or columns, value defines a record as removed. There are multiple way to provide this. One way is using the *DataProvider* event **markDeleted** which received the *requestObject* as parameter. This event is triggered before the *delete* method is executed.

```javascript
dataDP.on("markDeleted",function(requestObject){
	/*
	 * In this example the column 'archiveStatus' defines
	 * in the table the 'deleted' condition.
	 */
	dataDP.setOperationItem("archiveStatus",1);
});
```

Another way to send the "deletion marker" is to use a hidden *silk:Input* tag in the *silk:Form* which will set the column value to its "deleted" status. In this case the column defining the deleted status will be sent to the database everytime the form is used for an insert, update, and delete action. This situation may not be desirable considering that this column shoud only be update when a deletion is requested.

```xml
<silk:Input id="archiveStatus" type="hidden" value="(form.getAction()=='delete') ? 1 : 0" />
```

### ORM Triggers

Even though the *markDeleted="true"* property will executed an *update* in the database the ORM will still execute a **before delete** and/or **after delete** triggers if these had been configured.

