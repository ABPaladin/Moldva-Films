/*First Container slider*/

const parentSlider = document.getElementById("parent-slider"),
firstImg = parentSlider.querySelectorAll("img")[0];
const arrowLeft = document.getElementById("icon-left");
const arrowRight = document.getElementById("icon-right");


arrowLeft.addEventListener("click", () => {
    parentSlider.scrollLeft -= 225;
});

arrowRight.addEventListener("click", () => {
    parentSlider.scrollLeft += 225;
});



/*Second Container Slider*/


var count = 1;
setInterval(function(){
    document.getElementById('radio' + count).checked = true;
    count++;
    if(count > 7) {
        count = 1;
    }
}, 5000);
