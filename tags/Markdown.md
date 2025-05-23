# silk:Markdown
The component **silk:Markdown** hosts text formatted using Markdown and renders it to the client as HTML.

## Tag Definition
Used as a container:
```xml
<silk:Markdown
  tag=""
  titleShift=""
  renderIf=""
>
   Contains: Markdown text.
</silk:Markdown>
```

## Properties 
### tag
Defines the HTML tag used to wrap the generated HTML. If not provided, the generated HTML will be placed without a wrapper.<br>Default Value: *Empty*.
### titleShift
Default Value: *Empty*.
### renderIf
It contains the logic sentence defining whether the component should be rendered.<br>The logic statement's explanation is in the  <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.
