# silk:Group
The *silk:Group* component is used to group elements under a title.

## Tag Definition
Used standalone:
```xml
<silk:Group
  id=""
  title=""
  renderIf=""
/>
```
Used as a container:
```xml
<silk:Group
  id=""
  title=""
  renderIf=""
>
   Contains: Other HTML and/or Silk components.
</silk:Group>
```

## Properties 
### id
An optional group's unique identifier.<br>Default Value: *Empty*.
### title
Defines the group title.<br>Default Value: *Empty*.
### renderIf
It contains the logic sentence defining whether the component should be rendered.<br>The logic statement's explanation is in the <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.
