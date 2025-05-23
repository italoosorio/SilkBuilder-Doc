# silk:ScreenHeader
The component **silk:ScreenHeader** defines a fixed-located header area at the top of the page. It is an alternative option.

## Tag Definition
Used as a container:
```xml
<silk:ScreenHeader
  title=""
  homeButton="false"
  logoutButton="false"
>
   Contains: SilkBuilder components and HTML.
</silk:ScreenHeader>
```

## Properties 
### title
Define the title shown in the header. This is not required.<br>Default Value: *Empty*.
### homeButton
If set to *true,* a "home" icon button will be added to the top left of the header. This is not required.<br>Default Value: *false*.
### logoutButton
If set to *true,* a "lock" icon button will be added to the top left of the header. This is not required.<br>Default Value: *false*.
