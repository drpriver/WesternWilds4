"use strict"
let rules;
let weapons;
let armor;
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

    function make_table_view(keys){
        const d = document.createElement("div");
        d.className = "center";
        for(let key of keys){
            const table = data_blob[key];
            d.innerHTML += table;
        }
        return d;
    }
    weapons = make_table_view(["Simple Melee Weapons", "Simple Ranged Weapons", "Martial Melee Weapons", "Martial Ranged Weapons", "Exotic Melee Weapons", "Ammunition"]);
    armor = make_table_view(["Light Armor", "Medium Armor", "Heavy Armor", "Shields"])
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
    const button_names = ["Rules", "Weapon Table", "Armor Table"];
    const button_funcs = [
        function(){document.getElementsByClassName("center")[0].replaceWith(rules);},
        function(){document.getElementsByClassName("center")[0].replaceWith(weapons);},
        function(){document.getElementsByClassName("center")[0].replaceWith(armor);},
    ];
    const top = document.getElementsByClassName("top")[0];
    for(let i = 0; i < button_names.length;i++){
        const link = document.createElement("a");
        link.innerText = button_names[i];
        link.onclick = button_funcs[i];
        top.appendChild(link);
    }
    }
    const hidden_ul = document.querySelectorAll("nav li");
    for(let i = 0; i < hidden_ul.length; i++){
        hidden_ul[i].addEventListener("click", function(e){
            const el = e.target.parentNode.getElementsByTagName("ul")
            if(!el.length)
                return;
            el[0].classList.toggle("expanded");
        });
    }
}
document.addEventListener("DOMContentLoaded", onload)

