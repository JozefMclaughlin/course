console.log("Loaded");


// $(function(){
//  Content will load after page
// })

var interval;
var progRunning = false;
var score = $("#score");
// Target the ball object
var ball = $("#ball");
var paddle = $("#paddle")

//Target container
var container = $("#container");

var lose = false;
//Set initial position of the ball
var ballposx = 0;
var ballposy = 0;

//Set ball direction
var directionx = "+"
var directiony = "+"

// var gravity = 0.1;
var ballspeed = 1;
var time = 0
// var random = Math.random()*10
clock();

$("#btn").click(function(){
  if (lose == false) {
    if (progRunning) {
      //stopthe ball
      progRunning = false;
      clearInterval(interval);
    }
    else {
      //start the ball
      progRunning = true;
      interval = setInterval(function(){

        //find co-ordinates of the balland container edges.
        var ball_left = ball.offset().left
        var ball_right= ball_left + ball.width();
        var ball_top = ball.offset().top
        var ball_bottom = ball_top + ball.height();

        var paddle_left = paddle.offset().left;
        var paddle_right = paddle_left + paddle.width();
        var paddle_top = paddle.offset().top;
        var paddle_bottom = paddle_top + paddle.height();

        var container_left = container.offset().left;
        var container_right= container_left + container.width();
        var container_top = container.offset().top;
        var container_bottom = container_top + container.height();
        //ball movement

        ball.css({
          "left": ballposx + "px",
          "top": ballposy + "px"
        })

        //x speed
        if (directionx === "+") {
          ballposx+= ballspeed;
        }
        else {
          ballposx-= ballspeed;
        }
        //y speed
        if (directiony === "+") {
          // ballposy+= 0;
          // ballspeed += gravity
          ballposy += ballspeed
        }
        else {
          ballposy -= ballspeed;
        }

        if (ball_right>=container_right) {
          directionx = "-"
        }
        else if (ball_left<=container_left){
          directionx = "+"
        }

        if (ball_bottom>=paddle_top && ball_right>= paddle_left && ball_left <= paddle_right) {
          directiony = "-"
          ballspeed = ballspeed + 0.1

        }
        else if (ball_top<=container_top){
          directiony = "+"
        }
        else  if (ball_bottom >= container_bottom){
          ballspeed = 0;
          progRunning = false;
          clearInterval(interval);
          time == 0;
          lose == true;
          $("#btn")[0].innerHTML = "Reset"
        }
      }, 10);
    }
  }
  else{
    // reset button
  }
})



function  clock(){


  setInterval(function(){
    switch (progRunning) {
      case true:
        time++;
        score[0].innerHTML = (time +" Seconds")
        break;
      default:
        score[0].innerHTML = (time +" Seconds")
    }
  }, 1000);
}
