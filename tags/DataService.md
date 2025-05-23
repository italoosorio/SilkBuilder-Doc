# silk:DataService
The **silk:DataService** is an optional element of a **Data Provider** that allows different Data Outlets to be set depending on the logical criteria set in the **renderIf** property. The logic should ensure that only one **silk:DataServie** is active.

Operates standalone.

## Tag Definition
Used standalone:
```xml
<silk:DataService
  servicePath=""
  selectName=""
  renderIf=""
/>
```

## Properties 
### servicePath
Sets the path to the outlet service providing access to the data.<br>If the value is "silkVariable" it will load the flag variables as a JSON string. The selectName should indicate the variable group.<br>If the value is silkLang" it will load the languages list as a JSON string.<br>Default Value: *Empty*.
### selectName
The name of the Select tag in the ORM file.<br>Default Value: *Empty*.
### renderIf
It contains the logic sentence defining whether the component should be rendered.<br>The logic statement's explanation is in the <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.
