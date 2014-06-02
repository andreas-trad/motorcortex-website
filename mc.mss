#loader:start{
    rotateY:90deg;
    duration:1000;
    opacity:0;
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
    -.:x-active;
    duration:300;
    delay:@domel.data-delay;
    opacity:0.5;
    scale:0.8;
    easingeaseOutBack;
    backgroundColorRed:245;
    backgroundColorGreen:245;
    backgroundColorBlue:245;
    translateX:-@rand(240, 290)px;
    boxShadowBlur:0em;
}


.listContainer .listitem:triggeringElement:click{
    +.:x-active;
    duration:300;
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
    -.:x-active;
    duration:300;
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