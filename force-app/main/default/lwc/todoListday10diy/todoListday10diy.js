import { LightningElement,track } from 'lwc';

export default class TodoListday10diy extends LightningElement {
    @track todos = [{
        Id:1,
        task:'hello'
        },
        {
            Id:2,
            task:'welcome'

        }
    ];
    @track newTodo = '';

    handleInputChange(event) {
        this.newTodo = event.target.value;
    }

    handleClick() {
        if (this.newTodo) {
            this.todos.push({task:this.newTodo,Id:this.todos.length+1});
            this.newTodo = '';
        }
    }

    handleDeleteClick(event) {
        const index = event.target.value;
        this.todos.splice(index, 1);
        this.todos = [...this.todoList];
    }
    
}