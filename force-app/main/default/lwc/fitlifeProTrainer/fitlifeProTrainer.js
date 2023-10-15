import { LightningElement,track,api,wire } from 'lwc';
import getTrainerListHandler from '@salesforce/apex/TrainerController.getTrainerListHandler';

export default class FitlifeProTrainer extends LightningElement {
     @track trainerlst=[];
     @track jsonData=[];
    @wire (getTrainerListHandler)
    getTrainerList(data,error)
    {
      
        this.jsonData=JSON.parse(JSON.stringify(Object.values(data)) );
        this.trainerlst=Object.values(data)[0];
         console.log("to identify trainerlst" + this.trainerlst);
         console.log("to identify new" , JSON.stringify(this.trainerlst));
       
    }

       
}