var AmUsList = [];
var playerNum;
var ImpoNum;
var JesterNum;
var SherNum;

setup = function() {
    size(300,300);
  // playerNum = prompt("Number of players");
  // ImpoNum = prompt("Number of imposters");
  // JesterNum = prompt("Number of Jesters");
  // SherNum = prompt("Number of Sherrifs");

  playerNum = 6;
  ImpoNum = 1;
  JesterNum = 1;
  SherNum = 1;

  for(var i = 0; i < ImpoNum; i++){
    AmUsList.push("Impostor");
  }

  for(var i = 0; i < JesterNum; i++){
    AmUsList.push("Jester");
  }

  for(var i = 0; i < SherNum; i++){
    AmUsList.push("Sheriff");
  }

  for(var i = AmUsList.length; i < playerNum; i++){
    AmUsList.push("Crewmate");
  }

  // const array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // const shuffledArray = array.sort((a, b) => 0.5 - Math.random());
  
  AmUsList = AmUsList.sort((a,b)=> 0.5 - Math.random());

  console.log(AmUsList);

  
    
};

draw = function() {
  background(255,255,255);
  fill(0,0,0);
  textSize(40);
  if(AUindex > -1){
    textSize(20);
    text("Player Number " + (AUindex + 1), 10, 50);
    textSize(40);
    text(AmUsList[AUindex], 10, 100);
  }
  else{
    text("GO PLAY",10,100);
  }

  textSize(10);
  text(AmUsList,0, 200);
}

var AUindex = 0;

mouseReleased = function(){
  if(AUindex < AmUsList.length-1){
    AUindex++;
  } 
  else{
    AUindex=-100;
  }
 

};
