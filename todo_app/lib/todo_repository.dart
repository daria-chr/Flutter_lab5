import 'todo.dart';

class TodoRepository{
    final List<Todo> _todos=[];

    List<Todo> getAll(){
        return _todos;
    }

    void add(String titile){
        if(titile.trim().isEmpty){
            throw ArgumentErrot('Задача не может быть пустой');
        }
        Todo todo=Todo(titile.trim());
        _todos.add(todo);
    }
    void complete(int id){
        for(var todo in _todos){
            if(todo.id==id){
                todo.isDone=true;
                return;
            }
        }
        throw ArgumentErrot('Задача с $id не найдена');
    }

    void delete(int id){
        for(int i=0;i<_todos.lendth;i++){
            if(_todos[i].id==id){
                _todos.removeAt(i);
                return;
            }
        }
        throw ArgumentErrot('Задача с $id удалена');
    }

}