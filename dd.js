"use strict"
let rules;
let weapons;
function onload(){
    {
    const chapters = document.getElementsByClassName("chapter");
    for(let i = 0; i < chapters.length; i++){
        const chapter = chapters[i];
        const el = document.createElement("hr");
        chapter.parentNode.insertBefore(el, chapter.nextSibling);
    }
    }
    {
    rules = document.getElementsByClassName("center")[0];
    }
    {
    const keys = ["Simple Melee Weapons", "Simple Ranged Weapons", "Martial Melee Weapons", "Martial Ranged Weapons", "Exotic Melee Weapons"];
    const d = document.createElement("div");
    d.className = "center";
    for(let key of keys){
        const weapon_table = data_blob[key];
        d.innerHTML += weapon_table;
    }
    weapons = d;
    }
    function restorify(el){
        const links = el.getElementsByTagName("a");
        function restore(){
            document.getElementsByClassName("center")[0].replaceWith(rules);
        }
        for(let i = 0; i < links.length; i++){
            links[i].addEventListener("click", restore);
        }
    }
    restorify(document);
    restorify(weapons);
    {
    const button_names = ["Rules", "Weapon Table"];
    const button_funcs = [
        function(){document.getElementsByClassName("center")[0].replaceWith(rules);},
        function(){document.getElementsByClassName("center")[0].replaceWith(weapons);},
    ];
    const top = document.getElementsByClassName("top")[0];
    for(let i = 0; i < button_names.length;i++){
        const link = document.createElement("a");
        link.innerText = button_names[i];
        link.onclick = button_funcs[i];
        top.appendChild(link);
    }
    }
}
//document.addEventListener("DOMContentLoaded", onload)

