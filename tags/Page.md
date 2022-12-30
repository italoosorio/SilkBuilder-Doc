# silk:Page Tag
In a multi page format application the *silk:Page* tag is used to define the panels (columns) the application will use to place the Silk Components. This tag is part of the Silk Components but is being listed here because of its importance on the application layout and interaction.


## Tag Use
Used as a container:
```xml
<silk:Page id="" stage="" returnPage="" tabsNav="" smLayout="" mdLayout="" rgLayout="" lgLayout="" xlLayout="" xxLayout="" >
   Contains: Silk and HTML components.
</silk:Page>
```
The list below shows the required properties.

## Properties
This tag has the following properties.
|Name|Description|Default|Required|
|--|--|--|--|
|id|The unique page identifier. No other component should use this name. A JavaScript object will be created with the same id name for code interaction.|Empty|Yes|
|stage|A short name (A, B, A1, B1) which will be used with the layout properties to define pages behavior.|Empty|Yes|
|returnPage|The id of the page to-go when the user clicks on the return "<" icon. This is only necessary if the return page is not the immediate left-located page.|Empty|No|
|tabsNav|The name of the tabVar if the page will be organized in tabs.|Empty|No|
|smLayout|The page layout distribution for small size screens.|Empty|Yes|
|mdLayout|The page layout distribution for mid size screens.|Empty|Yes|
|rgLayout|The page layout distribution for regular size screens.|Empty|Yes|
|lgLayout|The page layout distribution for long size screens.|Empty|Yes|
|xlLayout|The page layout distribution for extra long size screens.|Empty|Yes|
|xxLayout|The page layout distribution for extra extra long size screens.|Empty|Yes|
