import { LightningElement,track } from 'lwc';

export default class EmployeeDay9diy3 extends LightningElement {
    employee=[
        {
            name:'shree',
            salary:2000,
            position:'Associate',
        },
        {
            name:'tarun',
            salary:5000,
            postion:'Developer',
        },
        {
            name:'kiran',
            salary:'7500',
            position:'Manager',
        }
    ]
  @track  inputsalary='';
    
    handleChange(event)
    {
       
       this.inputsalary=event.target.value;
       console.log('checking1'+this.ans);
       console.log(this.employee.salary);
       
        
    }
    get filteredEmployees()
    {
        return this.employee.filter(emp=>emp.salary>=this.inputsalary);
    }
}