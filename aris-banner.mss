
#banner-1 .layer-1:anim{
    scale:2;
    duration:0;
    opacity:0;

complete{
    opacity:1;
    scale:1;
    duration:3000;
    left: -110px;
    easing:easeOutQuad;
    rotateY:-8deg;
complete{
    translateY:0px;
    scale:1.03;
    left:0px;
    rotateY:10deg;
    duration:3000;
    easing:easeInOutQuad;
}
}

}

#banner-1 .layer-1:step2{
    translateY:0;
    rotateY:0deg;
    scale: 0.75;
    duration:9000;
    top:0;
    left:0;
    easing:linear;
}

#banner-1 .howmany:step2{
    rotateY:90deg;
    duration:0;
}


#banner-1 .info-row:step2{
    delay:@domel.data-delay;
    duration:3000;
    left:0;
}

#banner-1 .text:step2-a{
    duration:8000;
    left:0px;
}

#banner-1 .yellow .text:step2-b{
    left:100px;
    duration:1000;
}

#banner-1 .black .text:step2-b{
    left:-100px;
    duration:1000;
}

#banner-1 .text.no-thess:step3{
    left:0;
    duration:500;
}

#banner-1 .thess:step3{
    left:-48px;
    duration:500;
}

#banner-1 .info-rows:step3{
    duration:1500;
    height:768px;
    rotateZ:90deg;
    top:-203px;
}


#banner-1 .text:step3{
    padding-top:0;
    delay:1000;
    duration:500;
}


#banner-1 .trophies:step3{
    -.:hdn;
}

#banner-1 .what:step3{
    delay:@domel.data-delay;
    duration:3000;
    top:0;
    textShadowBlur:10px;
}

#banner-1 .howmany:step3{
    -.:hdn;
    delay:@domel.data-delay;
    rotateY:0deg;
    duration:3000;
complete{
    opacity:1;
    duration:1500;
    textShadowBlur:15px;
}
}

#banner-1 .info-row:step3{
    opacity:0.35;
    duration:3000;
}


#banner-1 .info-row.not-contains-thess:step4{
    delay:@domel.data-delay;
    duration:1250;
    height:63px;
    opacity:0.6;
    padding-top:15px;
}

#banner-1 .info-row.contains-thess:step4{
    delay:@domel.data-delay;
    duration:1250;
    height:642px;
    opacity:0.3;
    padding-top:15px;
}

#banner-1 .logo:step4{
    left:16px;
    rotateZ:-6deg;
    duration:2000;
}


#banner-1 .player:step4{
    opacity:1;
    duration:1250;
}

#banner-1 .trophies:step4{
    opacity:1;
    duration:1000;
}

#banner-1 .trophy:step4{
    delay:@domel.data-delay;
    rotateY:-90deg;
    duration:1250;
    opacity:0.5;
}

#banner-1 .player:step5{
    opacity:0.8;
    duration:1500;
}



#banner-1 .to-be-shown:step5{
    rotateX:90deg;
    duration:0;
complete{
    delay:1500;
    opacity:1;
    duration:0;
}
}


#banner-1 .follow:step6{
    -.:hdn;
}

#banner-1 .to-be-shown:step6{
    delay:@domel.data-delay;
    rotateX:0deg;
    duration:1000;
}

#banner-1 .player:step7{
    opacity:0;
    duration:9000;
complete{
+.:hdn;
}
}

#banner-1 .info-row:step6{
    opacity:0.6;
    duration:3000;
}


anim:callback{
    eventName:step2;
    eventName:step2-a;
}

step2:callback{
    eventName:step3;
}

step3:callback{
    eventName:step4;
}

step2-a:callback{
    eventName:step2-b;
}

step4:callback{
    eventName:step5;
}

step5:callback{
    eventName:step6;
}

step6:callback{
    eventName:step7;
}