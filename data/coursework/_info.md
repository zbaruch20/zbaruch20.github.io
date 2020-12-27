# data.coursework

`data.coursework` is represented as a hash, with each key representing the id for a semester. Each value in this hash is another hash with two entries:

* `name`: The name of the semester.
* `courses`: An array of the courses in each semester. Each course is itself a hash with two entries:
*  * `number`: The course number.
*  * `name`: The name of the course.

Furthermore, the partial containing additional info for each course should be located at the path `layouts/coursework/[key]/_[course number, with letters in lowercase and without spaces].html[.md].erb`. For instance, the partial for CSE 1223, taken in Autumn 2018, should be located at `layouts/coursework/au18/_cse1223.html.md.erb`.