# data.projects

`data.projects` is represented as a hash, with each key representing the id for a category. Each value in this hash is another hash with three entries:

* `name`: The name of the category.
* `idx`: Essentially, the position where the category appears in the tab list. The lower the number, the earlier it appears.
* `projects`: An array of the projects in each category. Each entry is itself a hash with two entries:
*  * `id`: The project ID.
*  * `name`: The name of the course.

Furthermore, the partial containing additional info for each project should be located at the path `layouts/projects/[id].html[.md].erb`, where `id` is the ID for that project.