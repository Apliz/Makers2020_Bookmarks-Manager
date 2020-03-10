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