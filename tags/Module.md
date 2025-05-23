# silk:Module
The component **silk:Module** is used to organize the code in different files. An application will later reference these files. Multiple applications could use a module. The module can hold other component tags.

In the SilkBuilder IDE, a module file that is only serving one application, and not others, does not require the **silk:Module** tag. In this case, the file will be called directly using the ```<%@include file="module_file"%>``` JSP tag.

Refer to the documentation for a detailed explanation on how to use modules.

## Tag Definition
Used as a container:
```xml
<silk:Module
  renderIf=""
>
   Contains: SilkBuilder components and HTML.
</silk:Module>
```
The module hold SilkBuilder components and HTML.
```xml
<%@ taglib uri="/WEB-INF/silk.tld" prefix="silk" %>
<%@page contentType="text/html;charset=UTF-8"%>
<silk:Module >

    ... silk:Page component

    ... silk:DataProvider components

  <silk:JScode>
    ... Java Script code here
  </silk:JScode>

  <silk:JQcode>
    ... JQuery code here
  </silk:JQcode>

</silk:Module >
```
The parent application will use the ```<jsp:include>``` tag to reference the module. This call may also include parameters. It can be combined with module files serving only one application.
```xml
<silk:App>

  <silk:Screen>
    <jsp:include page="moduleFile1.jsp" />
    <jsp:include page="index/moduleFile2.jsp" >
      <jsp:param name="id" value="15" />
      <jsp:param name="name" value="Peter" />
    </jsp:include>
    <%@include file="index/module_file3.jsp"%>
  </silk:Screen>

  <silk:JScode>
    ... Java Script code here
  </silk:JScode>

  <silk:JQcode>
    ... JQuery code here
  </silk:JQcode>

</silk:App>
```

## Properties 
### renderIf
It contains the logic sentence defining whether the component should be rendered.<br>The logic statement's explanation is in the  <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.
