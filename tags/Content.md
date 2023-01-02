# silk:Content Tag
The *silk:Content* tag determine the area in which the silk components are going to be located to provide data visualization and  user interaction.

## Tag Use
Used as a container:
```xml
<silk:Content>
   Contains: Silk and HTML components.
</silk:Content>
```

The *silk:Content* is located inside the silk:Page and below the *silk:Head* if used as showed in the code below.

```xml
<silk:Page id="" stage="" returnPage=""
  smLayout=""
  mdLayout=""
  rgLayout=""
  lgLayout=""
  xlLayout=""
  xxLayout=""
>
  <silk:Head >
    ... Header Title
  </silk:Head>
  <silk:Content >
    ... Silk and HTML with Bootstrap styling.
  </silk:Content >
</silk:Page>
```
