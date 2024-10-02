@import xyz.sadiulhakim.todo.Todo
@import java.util.concurrent.CopyOnWriteArrayList

@param CopyOnWriteArrayList<Todo> list

<ul class="list-group" id="list">
    @for(Todo t:list)
        <li class="list-group-item">${t.todo()}</li>
    @endfor
</ul>