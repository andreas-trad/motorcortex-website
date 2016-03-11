.banner:scaleBanner{
    duration:0;
    scale:@params.by;
    left:@params.left;
}

#loader:start{
    rotateY:90deg;
    duration:1000;
    opacity:0;
    complete{
        +.:hdn;
    }
}

.side-about:start{
    bottom:10px;
    duration:2000;
}

.menuItem:start{
    delay:500;
    scale:0;
    duration:0;
    complete{
        delay:@domel.data-delay;
        duration:800;
        scale:1;
        opacity: 1;
    }
}

.mainContent:start{
    delay:1200;
    opacity:1;
    duration:400;
}

.menuItem:triggeringElement:aclick{
    boxShadowBlur:1.6em;
    duration:400;
    +.:selected;
}

.menuItem:not(triggeringElement):aclick{
    -.:selected;
    boxShadowBlur:0em;
    duration:400;
}

.page:fadeContentsOut{
    opacity: 0;
    duration:0;
}

.page:fadeContentsIn{
    opacity: 1;
    duration:300;
    easing:easeOutElastic;
}

.contentLoader:fadeContentsOut{
    -.:hdn;
    opacity: 1;
    duration:0;
    img{
        opacity:1;
    }
}

.contentLoader:fadeContentsIn{
    delay:250;
    duration:350;
    opacity: 0;
    complete{
        +.:hdn;
    }
}

.bar:showBars{
    .percentage{
        delay:@domel.data-duration;
        duration:1000;
        backgroundColorBlue:@domel.data-percentage;
        backgroundColorGreen:@domel.data-percentage;
        height: @domel.data-percentage;
    }
    .number{
        rotateX:180deg;
        duration:0;
        complete{
            delay:@domel.data-duration;
            duration:1000;
            opacity:1;
            rotateX:360deg;
        }
    }
}

.biggest.number:highlight{
    boxShadowBlur:2em;

    backgroundColorRed:100%;
    backgroundColorBlue:100%;
    backgroundColorGreen:100%;

    duration:100;
    complete{
        backgroundColorRed:0;
        backgroundColorBlue:63;
        backgroundColorGreen:63;

        colorRed:100%;
        colorGreen:100%;
        colorBlue:100%;

        duration:100;
    }

    loop:6;
}

.listContainer .listitem:not(triggeringElement):click{
    duration:3000;
    delay:@domel.data-delay;
    opacity:0.5;
    scale:0.8;
    easingeaseOutBack;
    backgroundColorRed:245;
    backgroundColorGreen:245;
    backgroundColorBlue:245;
    translateX:-@rand(220, 240)px;
    boxShadowBlur:0em;
}


.listContainer .listitem:triggeringElement:click{
    duration:3000;
    scale:1;
    opacity:1;
    easing:easeOutBack;
    backgroundColorRed:245;
    backgroundColorGreen:245;
    backgroundColorBlue:245;
    translateX:100px;
    complete{
        duration:1000;
        boxShadowBlur:1em;
    }
}

.listContainer .listitem:unclick{
    duration:3000;
    scale:1;
    opacity:1;
    delay:@domel.data-delay;
    easing:easeOutBack;
    backgroundColorRed:255;
    backgroundColorGreen:255;
    backgroundColorBlue:255;
    translateX:0px;
    boxShadowBlur:0em;
}

.listContainer .listitem:stop{
    stop:true;
}

.listContainer .listitem:stop-and-reverse{
    stop:true;
}

.listContainer .listitem:reverse{
    reverse:true;
    duration:3000;
    delay:@domel.data-delay;
}

stop-and-reverse:callback{
    eventName:reverse;
}

.listContainer .listitem:reverse-loop{
    stop:true;
    complete{
        reverse:true;
        duration:3000;
        loop:100;
    }
}

.banner:animate{
    .st1{
        delay:1500;
        left:100px;
        duration:150;
        textShadowBlur: 10px;
        complete{
            delay:0;
            left:0px;
            textShadowBlur: 0px;
            duration:2000;
            complete{
                top:50px;
                duration:150;
            }
        }
    }
}

.banner:animate2{
    .st2{
       left:100px;
        duration:150;
        textShadowBlur: 10px;
        complete{
            delay:0;
            left:0px;
            textShadowBlur: 0px;
            duration:2000;
            complete{
                top:100px;
                duration:150;
            }
        }
    }

    .st1{
        left:100px;
        duration:2200;
        complete{
            left:800px;
            duration:300;
            opacity:0;
        }
    }
}

.banner:animate3{
    backgroundColorRed:128;
    backgroundColorBlue:0;
    backgroundColorGreen:0;
    duration:1000;

    .st2{
        opacity:0;
        delay:250;
        duration:600;
    }

    .st3{
        scale:0.6;
        duration:0;
        complete{
            scale:0.8;
            duration:3000;
            opacity: 1;
            complete{
                textShadowBlur: 10px;
                delay:200;
                scale:1.2;
                opacity: 0;
                duration:1000;
            }
        }
    }
}

.banner:animate4{
    .st4{
        opacity: 1;
        duration:0;
    }

    .actualWhite{
        width:45px;
        duration:@rand(100,2000);
    }
}

.banner:animate5{
    .slight{
        opacity: 1;
        duration:0;
    }

    .actualWhite{
        backgroundColorRed:128;
        backgroundColorBlue:0;
        backgroundColorGreen:0;
        duration:0;
        delay:50;
        complete{
            duration:0;
            backgroundColorRed:255;
            backgroundColorBlue:255;
            backgroundColorGreen:255;
            delay:50;
        }
        loop:8;
    }
}

.banner:animate6{
    .divsContainer{
        left:800;
        duration:200;
    }
}

.banner:animate7{
    delay:1000;
    .one{
        delay:0;
        colorRed:255;
        colorGreen:255;
        colorBlue:255;
        duration:300;
        complete{
            delay:350;
            opacity:0;
            duration:1000;
        }
    }
    .slight{
        delay:1400;
        opacity: 0;
        duration:1000;
    }

    .difference{
        delay:300;
        colorRed:255;
        colorGreen:255;
        colorBlue:255;
        duration:300;
        complete{
            delay:1250;
            opacity:0;
            duration:1000;
        }
    }
}

.banner:animate8{
    colorRed:255;
    colorGreen:255;
    colorBlue:255;
    duration:0;

    .st5{
        opacity:1;
        scale:1.2;
        duration:300;
        easing:easeOutBack;
    }
    .st6{
        delay:1100;
        opacity:1;
        scale:1.2;
        duration:600;
        easing:easeOutBack;
    }
}


animate:callback{
    eventName:animate2;
}

animate2:callback{
    eventName:animate3;
}

animate3:callback{
    eventName:animate4;
}

animate4:callback{
    eventName:animate5;
}

animate5:callback{
    eventName:animate6;
}

animate6:callback{
    eventName:animate7;
}

animate7:callback{
    eventName:animate8;
}
