document.addEventListener("DOMContentLoaded", function(){
  let canvasId = document.getElementById("mycanvas");
  canvasId.width = 500;
  canvasId.height = 500;
  let ctx = canvasId.getContext('2d');
  ctx.fillStyle = 'black';
  ctx.fillRect(5, 5, 250, 150);


  //Circle
  ctx.beginPath();
  ctx.arc(100, 75, 50, 0, 2 * Math.PI);
  ctx.strokeStyle = "green";
  ctx.lineWidth = 10;
  ctx.stroke();
  ctx.fillStyle = "red";
  ctx.fill();

  //FavShape
  ctx.beginPath();
  ctx.strokeStyle = "blue";
  ctx.lineWidth = 10;
  ctx.stroke();
  ctx.moveTo(65, 50);
  ctx.lineTo(80, 75);
  ctx.lineTo(80, 25);
  ctx.fillStyle = "white";
  ctx.fill();

});
