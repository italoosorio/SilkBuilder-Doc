# Form Input File

Each upload file is aparticular case.

## Database Table

The table connected to the file has to containg a column in which the file's name will be stored. This could stored be the uploaded file's name or a modified file's name based on the application storage requirements. In the table below the column *profileImage* will store the file's name.

```sql
create table person (
	personID int,
  fullName varchar(100),
  profileImage varchar(20) -- Column to store the file's name.
)
```

## ORM Select

When configuring the ORM the column storing the file's name shoud be sest as *String*. And the select should return the particular column.

## Application Form

In the application the *silkForm* a *silk:Input* tag will be setup to handle the column storing the file's name. The property **type** will be set as *"file"*. The property **uploadURL** should contain the URL to service which will operate the uploading process.

```xml
<silk:Input id="profileImage" type="file" label="Profile Image"
  uploadURL="{contextPath}/service/Person/Profile/UploadImage"
/>
```

The *silk:Input* tag has other properties related to uploading files which can help filtering the files. The property **fileTypeList** containg a comma separted list of accepted extensions. The property **fileSizeLimit** contains the number of MB allowed to be uploaded.  These properties are processed in the client side, for precautiong these validations should be also be done in the application excuting the uploading process if consider necessary.

```xml
<silk:Input id="profileImage" type="file" label="Profile Image"
  uploadURL="{contextPath}/service/Person/Profile/UploadImage"
  fileTypeList="jpg,png"
  fileSizeLimit="5"
/>
```

In the application the form item will show in this way.

![Form Input File](../.gitbook/assets/form_file_empty.png)

The user can drag a file into the drop area or click the area to open the file browers and the file will be uploaded.

### Auto file upload Issue

Once a file is selected into a file input it is automatically uploaded. **If the form's insert process is canceled the file will remain in the file storage.** This is very critical to consider if the name of the uploaded file or the folder location will change based on the data generated after an insert. As an example, if the name of the uploaded file will be change to follow the record's ID then uploaded the file during an insert operation will fail considering that the file is automatica and the record  has not been created yet.

To avoidd desynchronization it is adviced to enable the the upload input only buring an "update" operation. Setting the property **editable** helps on this functionality.

```xml
<silk:Form id="personForm" >
		<silk:Input id="fullName" type="text" label="Full Name" />
		<silk:Input id="profileImage" type="file" label="Profile Image"
			editable="personForm.getAction()=='update'"
			uploadURL="{contextPath}/service/Person/Profile/UploadImage"
			fileTypeList="jpg"
			fileSizeLimit="5"
		/>
		<silk:Input id="personID" type="hidden" />
</silk:Form>
```

asdfd

## Upload Service

asdfads

```java
<%@ page import="com.oopsclick.silk.file.*" %>
<%
	Uploaded uploaded = new Uploaded(request);
	FormField formField = uploaded.get("profileImage");
	int result = formField.saveFile("/folder/goes/here/");
%>
```

asdfsadf

## Hello

adsdsaf

```javascript
personForm.userImage.beforeUpload = function(input,form){
	form.append("personID", personDP.getSelectedItem().personID);
};
        
personForm.userImage.afterUpload = function(input,result,data){
	if( result ){
		var dataObject = JSON.parse(data.responseText);
		input.setValue(dataObject.value);
		input.setPreviousValue("");
	}
};
```

asdfasdf

```java
<%@ page import="com.oopsclick.silk.file.*" %>
<%
	Uploaded uploaded = new Uploaded(request);
	FormField formField = uploaded.get("profileImage");
	int result = formField.saveFile("/folder/goes/here/");
%>
```

asdfsadf
