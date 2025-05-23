# silk:TabsNav
This tag defines a Silk TabsNav component. This tag groups the  silk Pages which will share a single location and provide tab navigation. This tag will be referenced in the "tabsNav" property of the Silk Page tag.

This class operates standalone.

## Tag Definition
Used standalone:
```xml
<silk:TabsNav
  id=""
/>
```
In the application, the ID of the **silk:TabNav** will be referenced in the *"tabsNav"* property of the grouped pages. 

```xml
<silk:TabsNav id="personNav" />

<silk:Page id="personFormPage" tabsNav="personNav" >
</silk:Page>

<silk:Page id="personChildrenPage" tabsNav="personNav" >
</silk:Page>

<silk:Page id="personLocationPage" tabsNav="personNav" >
</silk:Page>
```

## Properties 
<sup>*</sup>Required property.
### id<sup>*</sup>
The pagination's unique identifier.<br>Default Value: *Empty*.
