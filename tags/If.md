# silk:If Tag
The *silk:If* component is use to encapsulate code which should be rendered in the server under a logic condition.

This tag executes at server time during the HTML generation of the application before delivering it to the client. This does not have an effect when the application is in the client using JavaScript.

## Tag Use
Used as a container:
```xml
<silk:If
  renderIf=""
  test=""
  negation=""
>
   Contains: Other HTML and/or Silk components.
</silk:If>
```

## Properties 
<sup>*</sup>Required property.
### renderIf
The logic statement use to restrict access to this code. The explanation on how to use the logic statement is found in <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.
### test
Default Value: *Empty*.
### negation
If set to true the logic statement result from the *renderIf* property will be negated. This is like saying "not renderIf".<br>Default Value: *Empty*.
