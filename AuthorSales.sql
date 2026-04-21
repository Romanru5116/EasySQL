SELECT au.author_id--author_id, au.author_name, au.author_name -- author_name, --total_revenue
from authors au 
JOIN books bo, books_authors ba 
JOIN books bs
on au.author_id, books_authors ba on bo.book_id=
GROUP BY
au.authors_id, author_id
