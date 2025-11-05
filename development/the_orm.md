# A New ORM Approach

SilkBuilder, as SQL's missing friend, provides a new approach ot ORM in which **SQL is the king**. If you have a SELECT query, SilkBilder will automatically map it to a table with minimal configuration—no complex OOP classes or attribute mappings are required.

## The old and complex ORM

Object-Relational Mappings (ORMs) are often touted as tools to simplify database interactions by abstracting SQL into object-oriented code; however, they can become a nightmare for developers in several ways, particularly when rapid development, performance, or flexibility are top priorities. Below are the key reasons why ORMs can be problematic, especially when contrasted with a framework like SilkBuilder that embraces direct SQL usage:

1. **Complicated Learning**: ORMs require learning new syntax and rules, which slows down development compared to using familiar SQL. For example, frameworks like Hibernate or Django ORM have complex configuration files, annotations, or query languages (e.g., HQL or QuerySets) that can be non-intuitive. 
2. **Limit SQL Power**: They restrict complex queries, forcing workarounds for advanced database features. Developers are forced to rely on the ORM’s generated queries, which may not support advanced SQL features or database-specific optimizations.
3. **Hurt Performance**: ORMs often generate inefficient queries (e.g., N+1 issues), resulting in multiple unnecessary database calls that require time-consuming optimization.

4. **Make Debugging Hard**: Cryptic errors and hidden logic make fixing the database interaction slow and frustrating.

5. **Lock You In**: ORMs tie you to specific frameworks or databases, making changes or migrations more complicated.

6. **Add Bloat**: They demand excessive setup and boilerplate code, overcomplicating simple projects.

7. **Clash with Databases**: ORMs struggle with existing database schemas, requiring awkward mappings.

## What SilkBuilder ORM Offers

1. **Effortless Learning**: SilkBuilder uses direct SQL, leveraging developers’ existing query knowledge for immediate productivity, with no complex ORM syntax to learn.

2. **Unrestricted SQL Power**: Harness the full capabilities of relational databases with unrestricted access to advanced SQL features like joins, CTEs, and window functions.

3. **Optimized Performance**: Write and execute hand-crafted SQL queries tailored for efficiency, avoiding the overhead of ORM-generated queries.

4. **Clear Debugging**: Benefit from familiar SQL error messages, making issues straightforward to identify and resolve.

5. **No Lock-In**: Use standard SQL queries portable across any JDBC-supported database, ensuring flexibility and easy migration.

6. **Minimal Setup**: Skip complex class definitions and property mappings, streamlining development with a lightweight, database-first approach.

7. **Database-Centric Design**: Prioritize the database for data management, aligning seamlessly with existing schemas for rapid, intuitive development.