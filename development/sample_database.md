# Sample Database

The sample applications included on this documentation uses the tables *Person* and *Category*. The tables structure are configured using the ORM Element which you can check [here](project_data_model.md).

For the sample the tables are configured for the MSQL database server data types. You can modify these to other databases data types. The structures below is for referential purposes.

```sql
create table Category (
    categoryID int primary key auto_increment,
    categoryName varchar(100) 
)
```

```sql
create table Person (
    personID int primary key auto_increment,
    name varchar(100),
    address varchar(250),
    phone varchar(20),
    email varchar(50),
    categoryID int,
    married tinyint default 0,
    birthdate date,
    monthlyIncome decimal(10,2),
    comments text,
    foreign key (categoryID) references Category (categoryID) on delete Set Null 
)

create index Person_categoryID on Person(categoryID)
```

## MySQL Database Dump

Click on this [link](https://raw.githubusercontent.com/italoosorio/SilkBuilder-Doc/master/development/sample-tables.sql) to download a MySQL dump file which you can use to create and pre-populate these tables.

## ORMs JSON String

If you wan to pre-populate the ORMs for the tables Category and Person use the "Imp" option with these JSON strings.

**Category ORM JSON String**

```json
{
  "table": {
    "remoteService": "",
    "tableName": "Category",
    "pkMode": "Auto",
    "insertAuthorization1": "",
    "updateAuthorization1": "",
    "deleteAuthorization1": "",
    "pkSql1": "",
    "_recordIndex": 0,
    "dbSchema2": "`SampleDB'",
    "description": "<p>This table stores the person&#39;s employment&nbsp;categories.</p>\n"
  },
  "column": [
    {
      "columnName": "categoryID",
      "type": "I",
      "columnTypeLabel": "Integer",
      "pk": 1,
      "role": "X",
      "columnRoleLabel": "None",
      "sqlType2": "int",
      "description": "<p>Category&#39;s&nbsp;unique identifier.</p>\n",
      "fkMatch": "0",
      "fkMatchLabel": "Simple",
      "fkOnUpdate": "0",
      "fkOnLabel": "No Action",
      "fkOnDelete": "0",
      "translation": "0",
      "columnTranslationLabel": "None",
      "id": "43bd1e51-6aa3-44f1-9aff-379560a40f7d",
      "_recordIndex": 0
    },
    {
      "columnName": "categoryName",
      "type": "S",
      "columnTypeLabel": "String",
      "role": "X",
      "columnRoleLabel": "None",
      "sqlType2": "varchar(100)",
      "fkMatch": "0",
      "fkMatchLabel": "Simple",
      "fkOnUpdate": "0",
      "fkOnLabel": "No Action",
      "fkOnDelete": "0",
      "translation": "0",
      "columnTranslationLabel": "None",
      "id": "697f3525-65ec-4f89-bd39-8624ba2ae013",
      "_recordIndex": 1,
      "description": "<p>The category&#39;s name.</p>\n"
    }
  ],
  "select": [
    {
      "selectName": "default",
      "origin": "0",
      "description": "<p>The list of categories stored in the database.</p>\n",
      "sql2": "select\n\tcategoryID,\n\tcategoryName\nfrom `SampleDB`.Category\norder by categoryName",
      "id": "ddfc2e8d-64c5-439c-b326-dbdb8c9c0485",
      "_recordIndex": 0
    }
  ],
  "operation": [],
  "authorization": [],
  "queryType": "SQL",
  "fk": []
}
```

**Person ORM JSON String**

```json
{
  "table": {
    "remoteService": "",
    "tableName": "Person",
    "pkMode": "Auto",
    "insertAuthorization1": "",
    "updateAuthorization1": "",
    "deleteAuthorization1": "",
    "pkSql1": "",
    "_recordIndex": 0,
    "dbSchema2": "`SampleDB`",
    "description": "<p>The Person table stores data about people.</p>\n"
  },
  "column": [
    {
      "columnName": "personID",
      "type": "I",
      "columnTypeLabel": "Integer",
      "pk": 1,
      "role": "X",
      "columnRoleLabel": "None",
      "sqlType2": "int",
      "fkMatch": "0",
      "fkMatchLabel": "Simple",
      "fkOnUpdate": "0",
      "fkOnLabel": "No Action",
      "fkOnDelete": "0",
      "translation": "0",
      "columnTranslationLabel": "None",
      "id": "8fb8bbfd-cbcd-479c-9270-45a77992f114",
      "_recordIndex": 0,
      "description": "<p>Person unique indentifier</p>\n"
    },
    {
      "columnName": "name",
      "type": "S",
      "columnTypeLabel": "String",
      "role": "X",
      "columnRoleLabel": "None",
      "sqlType2": "varchar(100)",
      "fkMatch": "0",
      "fkMatchLabel": "Simple",
      "fkOnUpdate": "0",
      "fkOnLabel": "No Action",
      "fkOnDelete": "0",
      "translation": "0",
      "columnTranslationLabel": "None",
      "id": "e73631e0-47dc-4301-bcbc-94b6276832ad",
      "_recordIndex": 1,
      "description": "<p>The person&#39;s name</p>\n"
    },
    {
      "columnName": "address",
      "type": "S",
      "columnTypeLabel": "String",
      "role": "X",
      "columnRoleLabel": "None",
      "sqlType2": "varchar(250)",
      "fkMatch": "0",
      "fkMatchLabel": "Simple",
      "fkOnUpdate": "0",
      "fkOnLabel": "No Action",
      "fkOnDelete": "0",
      "translation": "0",
      "columnTranslationLabel": "None",
      "id": "7556ebd1-4738-434c-bd6d-6c576501fb44",
      "_recordIndex": 2,
      "description": "<p>The person&#39;s address</p>\n"
    },
    {
      "columnName": "phone",
      "type": "S",
      "columnTypeLabel": "String",
      "role": "X",
      "columnRoleLabel": "None",
      "sqlType2": "varchar(20)",
      "fkMatch": "0",
      "fkMatchLabel": "Simple",
      "fkOnUpdate": "0",
      "fkOnLabel": "No Action",
      "fkOnDelete": "0",
      "translation": "0",
      "columnTranslationLabel": "None",
      "id": "5dc69e9a-ea3d-42a1-be5f-85faffe340c6",
      "_recordIndex": 3,
      "description": "<p>The person&#39;s phone</p>\n"
    },
    {
      "columnName": "email",
      "type": "S",
      "columnTypeLabel": "String",
      "role": "X",
      "columnRoleLabel": "None",
      "sqlType2": "varchar(50)",
      "fkMatch": "0",
      "fkMatchLabel": "Simple",
      "fkOnUpdate": "0",
      "fkOnLabel": "No Action",
      "fkOnDelete": "0",
      "translation": "0",
      "columnTranslationLabel": "None",
      "id": "f75f1342-f3d6-4452-a496-987af8b0dd12",
      "_recordIndex": 4,
      "description": "<p>The person&#39;s email address</p>\n"
    },
    {
      "columnName": "categoryID",
      "type": "I",
      "columnTypeLabel": "Integer",
      "secure": 1,
      "role": "X",
      "columnRoleLabel": "None",
      "sqlType2": "int",
      "fkMatch": "0",
      "fkMatchLabel": "Simple",
      "fkOnUpdate": "0",
      "fkOnLabel": "Set Null",
      "fkOnDelete": "2",
      "translation": "0",
      "columnTranslationLabel": "None",
      "id": "77e18bde-b7ef-420f-9e4e-777338d51c0b",
      "_recordIndex": 5,
      "description": "<p>The work category</p>\n",
      "fkTable": "Category",
      "fkColumn": "categoryID",
      "unique": 0,
      "indexColumn": 1
    },
    {
      "columnName": "married",
      "type": "I",
      "columnTypeLabel": "Integer",
      "role": "X",
      "columnRoleLabel": "None",
      "sqlType2": "tinyint",
      "defaultValue2": "0",
      "fkMatch": "0",
      "fkMatchLabel": "Simple",
      "fkOnUpdate": "0",
      "fkOnLabel": "No Action",
      "fkOnDelete": "0",
      "translation": "0",
      "columnTranslationLabel": "None",
      "id": "a5c78276-f3c3-4fb4-9baf-8c75d80af4d8",
      "_recordIndex": 6,
      "description": "<p>The person&#39;s married condition</p>\n"
    },
    {
      "columnName": "birthdate",
      "type": "D",
      "columnTypeLabel": "Date/Time",
      "role": "X",
      "columnRoleLabel": "None",
      "sqlType2": "date",
      "fkMatch": "0",
      "fkMatchLabel": "Simple",
      "fkOnUpdate": "0",
      "fkOnLabel": "No Action",
      "fkOnDelete": "0",
      "translation": "0",
      "columnTranslationLabel": "None",
      "id": "63e606f1-666f-4add-95fd-d041cb6a432a",
      "_recordIndex": 7,
      "description": "<p>The persons birthdate</p>\n"
    },
    {
      "columnName": "monthlyIncome",
      "type": "N",
      "columnTypeLabel": "Numeric",
      "role": "X",
      "columnRoleLabel": "None",
      "sqlType2": "decimal(10,2)",
      "fkMatch": "0",
      "fkMatchLabel": "Simple",
      "fkOnUpdate": "0",
      "fkOnLabel": "No Action",
      "fkOnDelete": "0",
      "translation": "0",
      "columnTranslationLabel": "None",
      "id": "eb8726dd-1207-471c-88c4-831eb6c61d59",
      "_recordIndex": 8,
      "description": "<p>The person&#39;s salary montly income</p>\n"
    },
    {
      "columnName": "comments",
      "type": "S",
      "columnTypeLabel": "String",
      "role": "X",
      "columnRoleLabel": "None",
      "sqlType2": "text",
      "fkMatch": "0",
      "fkMatchLabel": "Simple",
      "fkOnUpdate": "0",
      "fkOnLabel": "No Action",
      "fkOnDelete": "0",
      "translation": "0",
      "columnTranslationLabel": "None",
      "id": "17495239-9cd5-4822-a2a1-f6aca25c5346",
      "_recordIndex": 9,
      "description": "<p>Any comment applied to this person</p>\n"
    }
  ],
  "select": [
    {
      "selectName": "default",
      "origin": "0",
      "description": "<p>List the records from the table Person</p>\n",
      "sql2": "select\n\tp.personID,\n\tp.name,\n\tp.address,\n\tp.phone,\n\tp.email,\n\tp.categoryID,\n\tc.categoryName,\n\tp.married,\n\tp.birthdate,\n\tp.monthlyIncome,\n\tp.comments\nfrom `SampleDB`.Person p\njoin `SampleDB`.Category c on p.categoryID=c.categoryID",
      "id": "03096c8a-b0c2-4ee3-9c9b-83ab52ea45db",
      "_recordIndex": 0
    }
  ],
  "operation": [],
  "authorization": [],
  "queryType": "SQL",
  "fk": []
}
```

