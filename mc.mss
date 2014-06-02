#loader:start{
    rotateY:90deg;
    duration:1000;
    opacity:0;
}


.logo:start{

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