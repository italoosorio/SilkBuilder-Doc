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

SilkBuilder does not submit the form's inputs in the regular POST or GET method. These are processed differently by the framework. When a file input is sumitted by SilkBuilder it goes like a text file and stores the file's name in the selected table's column.

## Upload Service

SilkBuilder provides a library to help building the service receiving the uploaded file: [com.oopsclick.silk.file](https://silkbuilder.com/javadoc/com/oopsclick/silk/file/package-summary.html). 

The code below is a service which gets the file and saves it in a folder with not data return.

```java
<%@ page import="com.oopsclick.silk.file.*" %>
<%
	Uploaded uploaded = new Uploaded(request);
	FormField profileImage = uploaded.get("profileImage");
	int result = profileImage.saveFile("/folder/goes/here/");
%>
```

## Extra Processing

adsdsaf

### Submit Extra Data

The input's method *beforeUpload* is to be used to submit extra data to the upload service. The method receives the parameters input and the JavaScript **DataForm** object which will be submited to the upload service. The **DataForm**'s method *append* is used to add extra data to be submited.

In the example below the *fullName* input's value is added to DataForm.

```javascript
personForm.profileImage.beforeUpload = function(input,DataForm){
	form.append("fullName", personDP.getSelectedItem().fullName);
};
```
## Service with Extra Processing

The service receives the *fulName* in the *request* and it is added to the file's name before saving it. The event *getSavedFileName()* returns the name use to fave the file. The service returns a JSON structure containing new name in the property *fileName*.

```java
<%@ page import="com.oopsclick.silk.file.*" %>
<%
	Uploaded uploaded = new Uploaded(request);

	FormField fullName = uploaded.get("fullName");
	fullName = fullName.toLowerCase().replaceAll(" ","_");

	FormField profileImage = uploaded.get("profileImage");
	String newFileName = fullName+"_"+profileImage.getValue();
	int result = profileImage.saveFile(newFileName, "/folder/goes/here/");
%>
{"fileName":"<%= profileImage.getSavedFileName() %>"}
```

If SilkBuilder finds the property *fileName* it automatically applies it to the input's value. 

### Receiving Upload Service Data

If other data are returned by the upload service these can be access an operated using the *afterUpload* event. This event receives as paramter the input, the result of the opeation: *true* if succesfull or *false* if failure, and the data object containing the parsed JSON data. 

```javascript
personForm.profileImage.afterUpload = function(input,result,data){
	if( result ){
		console.log( data.fileName );
	}
};
```

