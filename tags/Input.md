# silk:Input Tag
The *silk:Input* tag generate an input component use to show and edit data columns.

This can be contained in a *silk:Form* component to edit a series for columns in a record, or be used alone.

## Tag Use
Used standalone:
```xml
<silk:Input
  id=""
  type=""
  name=""
  form=""
  label=""
  description=""
  width=""
  height="200px"
  scrollHeight=""
  block="false"
  placeholder=""
  maxLength=""
  dataSource=""
  valueColumn=""
  labelColumn=""
  linkedColumns=""
  required="false"
  editable="true"
  visible="true"
  scope="1"
  mask=""
  value=""
  mode="false"
  cssClass=""
  extraProperties=""
  htmlConfigFile="/ckeditor-conf/bar-simple.js"
  target=""
  prompt=""
  promptValue=""
  template=""
  filePreview="false"
  fileDownload="false"
  filePreviewLabel="Preview"
  fileDownloadLabel="Download"
  fileUploadLabel="Drag and drop file here, or click to select file."
  filePreviewClass="btn-primary"
  fileDownloadClass="btn-primary"
  filePreviewIcon="fas fa-file"
  fileDownloadIcon="fas fa-file-download"
  uploadURL=""
  fileTypeList=""
  fileSizeLimit=""
  renderIf=""
  targetPage=""
  timer=""
/>
```

## Properties 
<sup>*</sup>Required property.
### id<sup>*</sup>
If used with a *silk:Form* the unique identifier is the name of the data column to be view or edited.<br>Default Value: *Empty*.
### type<sup>*</sup>
The input type: text, textarea, code, html, date, time, datetime, select, numeric, integer, decimal, checkbox, button, options, radio, password, file, email, hidden.<br>Default Value: *Empty*.
### name
The "name" of the input if used under a regular form HTML tag.<br>Default Value: *Empty*.
### form
The *silk:Form* the input will operate with.<br>Default Value: *Empty*.
### label
The text used as input's label.<br>Default Value: *Empty*.
### description
The input's description only show at editing mode.<br>Default Value: *Empty*.
### width
The width of the component in pixels or percentage.<br>Default Value: *Empty*.
### height
THe height of the component in case of the types: textarea, code, and html.<br>Default Value: *200px*.
### scrollHeight
The height limit of the component in read mode before the content needs scrolling.<br>Default Value: *Empty*.
### block
If the component is the end of a block. Next Inputs will start in a new line. A "block" is activate when using the *width* property.<br>Default Value: *false*.
### placeholder
The input's place holder or helping text showed inside the input if supported.<br>Default Value: *Empty*.
### maxLength
The number of characters the input will allow.<br>Default Value: *Empty*.
### dataSource
The *silk:DataProvider* id which will provide the label and value list for inputs "select", "options", and "radio".<br>Default Value: *Empty*.
### valueColumn
The name of the column from the *DataSource* which will be used as the item's value.<br>Only necessary if different than the inputs's id if used under the *silk:Form*. To use in select, options,and radio.<br>Default Value: *Empty*.
### labelColumn
The name of the column from the *DataSource* which will be used as the item's label.<br>Default Value: *Empty*.
### linkedColumns
Indicates the dataProvider's columns which will be updated in the dataSource.<br>To use in select, options,and radio.<br>Default Value: *Empty*.
### required
The logic value or JavaScript expression to determine  if the component should be required before data submission.<br>Default Value: *false*.
### editable
The logic value or JavaScript expression to determine if the component should be editable.<br>Default Value: *true*.
### visible
The logic value or JavaScript expression to determine if the component should be visible.<br>Default Value: *true*.
### scope
The component end target. The values can be.<br>  0 : Force send even if not changed.<br>  1 : If changed go to DataProvider and DB (default).<br>  2 : If changed go to DataProvider only.<br>  3 : Stay only in the input/Form.<br>Default Value: *1*.
### mask
The input's entry mask or character filter. Mask values can be found [here](http://igorescobar.github.io/jQuery-Mask-Plugin/).<br>Default Value: *Empty*.
### value
To set the input value at initialization time.<br>Default Value: *Empty*.
### mode
To set the input mode at initialization time. If *true* it starts in data entry mode. If *false* it starts as view mode. Only valid if operating alone. The *silk:Form* overwrites this setting.<br>Default Value: *false*.
### cssClass
The extra CSS classes to use with the input element.<br>Default Value: *Empty*.
### extraProperties
To add extra HTML properties to the input not available using the *silk:Input* properties.<br>Default Value: *Empty*.
### htmlConfigFile
The JavaScript file containing the custom configuration for CKEditor. To be used with type "html".<br>Default Value: */ckeditor-conf/bar-simple.js*.
### target
To indicate the HTML element in which inputs will be renderer to. Not necessary if used with *silk:Form*.<br>Default Value: *Empty*.
### prompt
Adds an extra options to the select usually use to request a value selection.<br>Default Value: *Empty*.
### promptValue
The value return by the select "prompt" if the user selects it.<br>Default Value: *Empty*.
### template
A HTML schema defining the component read view. Contains data columns encapsulated in {} and also HTML elements.<br>Default Value: *Empty*.
### filePreview
If the component will show a button to preview an uploaded file. To use with type file.<br>Default Value: *false*.
### fileDownload
If the component will show a button to download an uploaded file. To use with type file.<br>Default Value: *false*.
### filePreviewLabel
The label of the preview button. To use with type file.<br>Default Value: *Preview*.
### fileDownloadLabel
The label of the download button. To use with type file.<br>Default Value: *Download*.
### fileUploadLabel
The label of the download button. To use with type file.<br>Default Value: *Drag and drop file here, or click to select file.*.
### filePreviewClass
The preview button Bootstrap class. To use with type file.<br>Default Value: *btn-primary*.
### fileDownloadClass
The download button Bootstrap class. To use with type file.<br>Default Value: *btn-primary*.
### filePreviewIcon
The preview button Font Awesome icon class. To use with type file.<br>Default Value: *fas fa-file*.
### fileDownloadIcon
The download button Font Awesome icon class. To use with type file.<br>Default Value: *fas fa-file-download*.
### uploadURL
The URL of the service uploading the file. To use with type file.<br>Default Value: *Empty*.
### fileTypeList
String containing the comma separated list of accepted file extension to be uploaded. To use with type file.<br>Default Value: *Empty*.
### fileSizeLimit
The number of MB allowed to be uploaded. To use with type file.<br>Default Value: *Empty*.
### renderIf
The logic expression to determine if the input will be rendered in the server side. The explanation on how to use the logic statement is found in <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.
### targetPage
The *silk:Page*'s identifier which will be selected/show when the input is clicked when type is 'button'.<br>Default Value: *Empty*.
### timer
Sets data entry timer which will trigger the "timer" event.<br>Default Value: *Empty*.
