class Todo{
    final int id;
    String titile;
    bool isDone;
    static int _counter=0;
    Todo(this.titile):
    id=++_counter,
    isDone=false;

    @override
    String toString(){
        String status;
        if(isDone){
            status='[x]';
        } else{
            status='[ ]';
        }
        return '$status $id. $titile';
    }
}