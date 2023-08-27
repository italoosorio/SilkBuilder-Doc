# silk:Page Tag
In a multi page format application the *silk:Page* tag is used to define the panels (columns) the application will use to place the Silk Components. This tag is part of the Silk Components but is being listed here because of its importance on the application layout and interaction.

## Tag Use
Used as a container:
```xml
<silk:Page
  id=""
  stage=""
  returnPage=""
  tabsNav=""
  smLayout=""
  mdLayout=""
  rgLayout=""
  lgLayout=""
  xlLayout=""
  xxLayout=""
>
   Contains: Silk and HTML components.
</silk:Page>
```

## Properties 
<sup>*</sup>Required property.
### id<sup>*</sup>
The unique page identifier. No other component should use this name. A JavaScript object will be created with the same id name for code interaction.<br>Default Value: *Empty*.
### stage<sup>*</sup>
A short name (A, B, A1, B1) which will be used with the layout properties to define pages behavior.<br>Default Value: *Empty*.
### returnPage
The id of the page to-go when the user clicks on the return "<" icon. This is only necessary if the return page is not the immediate left-located page.<br>Default Value: *Empty*.
### tabsNav
The name of the tabVar if the page will be organized in tabs.<br>Default Value: *Empty*.
### smLayout<sup>*</sup>
The page layout distribution for small size screens.<br>Default Value: *Empty*.
### mdLayout<sup>*</sup>
The page layout distribution for mid size screens.<br>Default Value: *Empty*.
### rgLayout<sup>*</sup>
The page layout distribution for regular size screens.<br>Default Value: *Empty*.
### lgLayout<sup>*</sup>
The page layout distribution for long size screens.<br>Default Value: *Empty*.
### xlLayout<sup>*</sup>
The page layout distribution for extra long size screens.<br>Default Value: *Empty*.
### xxLayout<sup>*</sup>
The page layout distribution for extra extra long size screens.<br>Default Value: *Empty*.
