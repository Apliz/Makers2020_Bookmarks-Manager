As a User,
So that I can save pages of interest to me,
I'd like to be able to add a URL to a new bookmark. 

As a User,
So that I can view the bookmarks I have saved
I would like to be able to list all saved bookmarks. 

#Adding new bookmarks

 |      Library         |     |   Bookmarks   |
 |----------------------|     |---------------|
 |  + saved_books: HASH |     |               |
 |----------------------|     |---------------|
 |  + list()            |     |               |
 |  + add(Bookmark.add) | <-- | + add()       |
 |----------------------|     |---------------|

  ~ Visit '/home'
  ~ Select or Interface to add a new bookmark


As a time-pressed user
So that I can save a website
I would like to **add** the **site's address** and **title** to bookmark manager


As a user,
So that I can keep track of my websites,
I would lke to add a site's URL address to my bookmark manager


### SQL

*Usage*

1. Connect to `psql`

2. Create the database using the psql command `CREATE DATABASE bookmark_manager;`

3. Connect to the database using the `pqsl` command `\c bookmark_manager;`

4. Run the query we have saved in the file `01_create_bookmarks_table.sql`

