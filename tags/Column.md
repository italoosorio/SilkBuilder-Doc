# silk:Column Tag
This component is a child of *silk:Table*. It is used to configure the columns displayed by the *silk:Table*. The *silk:Column* content is formatted based on the template contained in the component. The template can support any HTML tag and uses braces or curly brackets "{}" to enclose the name of data fields. The data fields will be replaced by values from the *silk:DataProvider* at a displayed time. The template can have as many data fields as necessary.

## Tag Use
Used as a container:
```xml
<silk:Column
    id=""
    title=""
    align="left"
    valign="middle"
    width=""
    wrap="false"
    renderer=""
    targetPage=""
    cssClass=""
    draggable="false"
    more="false"
    ordering="false"
    icon=""
    inputType=""
    valueColumn=""
    labelColumn=""
    sortColumn=""
    idColumn=""
    renderIf=""
>
   Contains: Template containing {fields} and HTML components.
</silk:Column>
```
## Properties
This tag has the following properties.
|Name|Description|
|--|--|
|id<sup>*</sup>|The Column's unique identifier.<br>Default Value: *Empty*.|
|title|The text to be displayed in the column header. The title will be displayed according to what is configured in the *header* property of the parent *silk:Table* component.<br>Default Value: *Empty*.|
|align|The column's content horizontal alignment: left, center, right.<br>Default Value: *left*.|
|valign|The column's content vertical alignment: top, middle, bottom.<br>Default Value: *middle*.|
|width|The column's predefine fixed width.<br>Default Value: *Empty*.|
|wrap|Defines if the column's content will the wrapped in narrow columns.<br>Default Value: *false*.|
|renderer|The JavaScript function which will be used to render the Column content. The function receives tree parameters. The row index, the record item, and the column's content. The function should return a text value.<br>Default Value: *Empty*.|
|targetPage|The *silk:Page*'s identifier which will be selected/show when the column is clicked.<br>Default Value: *Empty*.|
|cssClass|A CSS class to stylized the column.<br>Default Value: *Empty*.|
|draggable|Defines if the column will listen to drag events. This will also show the "drag" icon.<br>Default Value: *false*.|
|more|When set to "true" this will set the column to show the "menu" icon.<br>Default Value: *false*.|
|ordering|When set to "true" this will set the column to show the "menu" icon.<br>Default Value: *false*.|
|icon|Defines the Font Awesome icon class to show together with the column's content.<br>Default Value: *Empty*.|
|inputType|The input type use when the *silk:Table* is in "input" status. The values are: text, integer, decimal(x).<br>Default Value: *Empty*.|
|valueColumn|The name of the data column which will filled the input.<br>Default Value: *Empty*.|
|labelColumn|The name of the data column use as input label.<br>Default Value: *Empty*.|
|sortColumn|The column to sort the dataProvider. This does not work if the dataProvider is set to treeData="true".<br>Default Value: *Empty*.|
|idColumn|The input identifier which will be used to extract the entered data.<br>Default Value: *Empty*.|
|renderIf|A logic condition determining if the application should be executed. It accepted model variables. The explanation on how to use the logic statement is found in <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.|

<sup>*</sup>Required property.

## Location
The Column tag should be located as a child node of the *silk:Table* tag.
```xml
<silk:Table>
  <silk:Column title="Name" >
    {name}
  </silk:Column >
  <silk:Column title="Position" >
    <i>{position}</i>
  </silk:Column >
</silk:Table>
```
