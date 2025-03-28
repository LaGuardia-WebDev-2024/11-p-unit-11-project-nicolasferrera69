var snowX = [100, 120, 160, 200, 250, 300, 350, 400];
var snowY = [50, 70, 40, 20, 60, 80, 30, 10];
var snowSizes = [20, 25, 30, 15, 18, 22, 28, 24]; //  array for snowflake sizes
var treeX = [50, 150, 300, 450, 550]; //  array for tree X positions
var treeY = [320, 310, 330, 300, 340]; //  array for tree Y positions
var cloudX = [80, 200, 350, 500]; //  array for cloud X positions
var cloudY = [50, 80, 60, 40]; //  array for cloud Y positions
var deerX = [100, 300, 500]; //  array for deer X positions
var deerY = [350, 360, 355]; //  array for deer Y positions
var starX = [50, 150, 250, 350, 450, 550]; //  array for star X positions
var starY = [30, 40, 35, 25, 45, 20]; //  array for star Y positions

setup = function() {
   size(600, 450); 
   background(164, 212, 255);
   
   // Using .push to add new snowflakes
   snowX.push(450, 500);
   snowY.push(30, 60);
   snowSizes.push(26, 22);
   
   textSize(40);
   for (var i = 0; i < snowX.length; i++) {
     textSize(snowSizes[i]); // Use different snowflake sizes
     text("❆", snowX[i], snowY[i]);
   }
   
   fill(255,255,255);
   rect(-10, 300, 610, 150);

   // Loop to draw trees
   for (var i = 0; i < treeX.length; i++) {
      drawTree(treeX[i], treeY[i]);
   }

   // Loop to draw clouds
   for (var i = 0; i < cloudX.length; i++) {
      drawCloud(cloudX[i], cloudY[i]);
   }

   // Loop to draw deer
   for (var i = 0; i < deerX.length; i++) {
      text("🦌", deerX[i], deerY[i]);
   }

   // Loop to draw stars
   for (var i = 0; i < starX.length; i++) {
      text("🌟", starX[i], starY[i]);
   }
};

// Custom function to draw the tree
var drawTree = function(x, y) {
   stroke(0); // Add an outline to make the tree more visible
   fill(139, 69, 19);
   rect(x - 5, y + 30, 10, 30); // Tree trunk (moved down slightly)

   fill(34, 139, 34);
   triangle(x - 20, y + 30, x + 20, y + 30, x, y - 10); // Tree top (adjusted position)
};

// Custom function to draw a cloud
var drawCloud = function(x, y) {
   noStroke();
   fill(255);
   ellipse(x, y, 40, 30);
   ellipse(x + 20, y - 10, 50, 35);
   ellipse(x + 40, y, 40, 30);
};
