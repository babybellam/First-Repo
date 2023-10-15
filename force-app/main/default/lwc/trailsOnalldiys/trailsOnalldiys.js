import { LightningElement, track } from 'lwc';

export default class TrailsOnalldiys extends LightningElement {
    @track nameToSearch = '';
    @track newstd1 = [];
    @track students = [
        {
            name: 'Karun',
            age: 20,
            dep: 'Electrical',
        },
        {
            name: 'Bob',
            age: 21,
            dep: 'Computers',

        },
        {
            name: 'BoCharles',
            age: 22,
            dep: 'commerce',
        },
        {
            name: 'Daiyana',
            age: 24,
            dep: 'journal'
        }
    ]
    handleChange(event) {
        this.nameToSearch = event.target.value;

    }
    handleClick() {
        this.students.forEach(std => {
            if (std.name.toLowerCase().startsWith(this.nameToSearch.toLowerCase())) {

                this.newstd1.push({ name: std.name, id: Date.now() });
                console.log(this.newstd1)
            }
        }
        )
        if (this.newstd1.length === 0) {
         this.newstd1 = [{ name: "NOt found", id: 1 }];
        }
    }
}