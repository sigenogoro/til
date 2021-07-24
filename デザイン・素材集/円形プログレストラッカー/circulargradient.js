function setup(){
    createCanvas(windowWidth, windowHeight);
    noStroke();
    let num = 400
    let c1 = color(172, 64, 208)
    let c2 = color(0, 0, 0)
    for(i = num;i >= 300; i -=　1){
        c = lerpColor(c1, c2, i / num)
        fill(c)
        ellipse(windowWidth / 2, windowHeight / 2, i, i);
    }
    num = 300
    for(i = num;i >= 100; i -=　1){
        c = lerpColor(c1, c2, i / num)
        fill(c)
        ellipse(windowWidth / 2, windowHeight / 2, i, i);
    }
}

function draw(){
}