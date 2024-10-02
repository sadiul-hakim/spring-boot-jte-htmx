@import xyz.sadiulhakim.todo.Todo
@import java.util.concurrent.CopyOnWriteArrayList

@param CopyOnWriteArrayList<Todo> list

<!doctype html>
<html lang="en">
@template.partials.head("Todo App")
<body>
<div class="container">
    <div class="row">
        <div class="col-md-5 mt-5 mx-auto">
            <form hx-post="/add" hx-target="#list" hx-swap="outerHTML">
                <input type="text" name="todo" class="form-control"/>
                <input type="hidden" value="0" name="id" class="form-control"/>
                <button type="submit" class="btn btn-primary mt-2">Add</button>
            </form>
        </div>
    </div>

    <ul class="list-group" id="list">
        @for(Todo t:list)
            <li class="list-group-item">${t.todo()}</li>
        @endfor
    </ul>
</div>
</body>
</html>