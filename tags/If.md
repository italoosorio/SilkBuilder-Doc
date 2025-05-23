# silk:If
The **silk:If** the component encapsulates code. Using the **renderIf** property logic, the code would be included or excluded at run time.

## Tag Definition
Used standalone:
```xml
<silk:If
  renderIf=""
  negation=""
  debug=""
/>
```
Used as a container:
```xml
<silk:If
  renderIf=""
  negation=""
  debug=""
>
   Contains: Other HTML and/or Silk components.
</silk:If>
```

## Properties 
### renderIf
It contains the logic sentence defining whether the component should be rendered.<br>The logic statement's explanation is in the <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.
### negation
If set to true, the logic statement result from the *renderIf* property will be negated. This is like saying "not renderIf".<br>Default Value: *Empty*.
### debug
Activates debug messages<br>Default Value: *Empty*.
