import { LightningElement } from 'lwc';

export default class Day14Playerslist extends LightningElement {

  
    players = [
        {
            Id:1,
            Name: 'Player 1',
            ImageUrl:"https://bcciplayerimages.s3.ap-south-1.amazonaws.com/playerheadshot/bcci/1000x1280/164.png",
            Description: 'VIRAT Kohli Role :Batter DOB :Nov 05, 1988',
        },
        {
            Id:2,
            Name: 'Player 2',
            ImageUrl:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1xkRA9yO9zo0okYCVeOV9wCs4Cm8vRIMCj9OLC_0VaNzjrWYkK6MtKU-6VT1LnCXtPCY&usqp=CAU",
            Description:"HARDIK Pandya Role :All-Rounder DOB :  Oct 11, 1993",
        },
        {
            Id:3,
            Name: 'Player 3',
            ImageUrl:"https://bcciplayerimages.s3.ap-south-1.amazonaws.com/playerheadshot/bcci/1000x1280/1124.png",
            Description: "JASPRIT Bumrah Role :Bowler DOB :Dec 06, 1993",

        }
    ];

       
}


