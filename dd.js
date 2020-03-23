"use strict"
function onload(){
    const chapters = document.getElementsByClassName("chapter");
    for(let i = 0; i < chapters.length; i++){
        const chapter = chapters[i];
        const el = document.createElement("hr");
        chapter.parentNode.insertBefore(el, chapter.nextSibling);
        console.log(i);
    }
}
document.addEventListener("DOMContentLoaded", onload)

