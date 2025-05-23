# silk:Content
The *silk:Content* tag determines the area where the silk components will be located, allowing for data visualization and user interaction.

## Tag Definition
Used standalone:
```xml
<silk:Content/>
```
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
