
/*console.log('Welcome');
var x=100;
x=200;
 x=500;
console.log(x);
 x='Welcome Jsworld';
 console.log('x');
 var x=78;
 console.log(x);
 let y=99;
 console.log(y);
 y=100;
 console.log(y);
 var x;
 var str='AjSkill';
 console.log(`Name=${x} ${str}`);
 
 function sum(x,y)
 {
    return(x+y);

 }
 var r=sum(10,20);
 console.log(r);
 function display()
 {
    console.log('hai');

 }
 */

 /*
function EvenorOdd(x){
   return x;
}
function listnumbers(x,y,z)
{
   return x,y,z;
}
function Identify(callback)
{
   if(callback(7)  % 2==0 || callback(2,3,4) % 2==0) 
   {
      console.log('The given number is EVEN');
   }
   else{
      console.log('The given Number is ODD');
   }
 
}
Identify(EvenorOdd);
Identify(listnumbers);*/


function EvenorOdd(x){
   if(x % 2==0)
   {
      return `The number is Even ${x}`
   }
   else{
      return `The number is ODD ${x}`;
   }
   
}
function listnumbers(aEvenOdd)
{
   aEvenOdd.forEach(num=>{
      if(num % 2==0)
   {
     // return 'The number is Even '+num ;
      console.log('The number is Even '+num);
   }
   else{
      //return 'The number is Odd '+ num  ;
      console.log('The number is Odd '+num);
   }});
   
   
}
function Identify(callback)
{
    
   
  //console.log(callback(2));
   callback([2,3,5,6]);
 
}
//Identify(EvenorOdd);
Identify(listnumbers);

/* day-6:2 */
let listN=[5,9,-2,4,-5,10,5,6];
let PositiveList=listN.filter(x=>x>0);
console.log(PositiveList);

/* Day:6-3  */
let data=[10,20,true,'abc',false,60];
let numbers=data.filter(Number.isInteger);
console.log(numbers);

/* Day:6-4 */
let a=[2,5,6,7];
let b=[2,5,6,7];
let c=[1,2,3,4,5];
function verify()
{
   if(a.length==b.length && JSON.stringify(a)==JSON.stringify(b))
   console.log('True');
else
 console.log('False');

}
verify();

function falsed()
{
   if(a.length==c.length && JSON.stringify(a)==JSON.stringify(c))
   console.log('True');
else
 console.log('False');

}
falsed();
// we can do this using for loop and string comparision using.join operator which converts arrays to strings and then compares the strings.


/* Day :7-1  */
 let Leadobj=[
   {
      Name:'vinay',
      City:'NY',
      LeadSource:'Web',
   },
   {
      Name:'rama',
      City:'FL',
      LeadSource:'Web',
   },
   {
      Name:'rama',
      City:'CALI',
      LeadSource:'Phone',
   }
 ]
 let count=0;
 Leadobj.forEach(L=>{

   if(L.LeadSource=='Web'){
      count++;
      
   }
   
 });console.log(count);
 console.log("Using filter method");
 const leadnew=Leadobj.filter(Ls=>Ls.LeadSource==='Web');
 console.log(`Lead source Lenght ${leadnew.length}`);
 console.log(`Lead source Lenght ${Leadobj.filter(Ls=>Ls.LeadSource==='Web').length}`);

/* Leadobj.forEach(Ob=>{
   if(Ob.City=='NY')
   console.log(Ob);
 })*/


 /* Day :7-2  */
 
  class std{
   students=[
      {
         Name:'std1',
         Total:300,
         Result:'Pass',
      },
      {
         Name:'std2',
         Total:450,
         Result:'Pass',
      },
      {
         Name:'std3',
         Total:190,
         Result:'Fail',
      },
      {
         Name:'std5',
         Total:490,
         Result:'Pass',
      }]
      display_studentdetails(){
         this.students.sort(function(a,b){
            return b.Total-a.Total;
         });
         
      
      }

 }
 let objs=new std();
 objs.display_studentdetails();
 objs.students.forEach(St=>console.log(St.Name));



 //example sample doubt(cleared)//
 class person
 {
   firstname;
   lastname;
   position;
   constructor()
   {
      this.firstname='John';
     // console.log(this.firstname);

   }
   display()
   {
      console.log(this.firstname);
   }
 }
 let obj=new person();
 obj.display();

 const crypto = require('crypto');

// Function to base64url encode a string
const base64UrlEncode = str => {
  return Buffer.from(str)
    .toString('base64')
    .replace(/\+/g, '-')
    .replace(/\//g, '_')
    .replace(/=/g, '');
};

// Generate a random code verifier (32 bytes) and convert it to a hex string
const codeVerifier = crypto.randomBytes(32).toString('hex');

console.log(`Client-generated , codeVerifier ${codeVerifier}`);

// Function to calculate the SHA-256 hash of a string
const sha256 = buffer => {
  return crypto.createHash('sha256').update(buffer).digest();
};

// Calculate the code challenge by hashing the code verifier and encoding it
const codeChallenge = base64UrlEncode(sha256(codeVerifier));

console.log(`Client-generated, codeChallenge ${codeChallenge}`);

 
 

 

