"use strict"

function create_floater(){
    let div = document.createElement('div')
    div.className = 'floater'
    let x = 0
    let y = 0
    let mouse_x = -1000
    let mouse_y = -1000
    function mousedown(e){
        const rect = div.getBoundingClientRect()
        x = rect.x
        y = rect.y
        mouse_x = e.clientX
        mouse_y = e.clientY
        div.style.cursor = 'move'
        e.stopPropagation()
    }
    function mousemove(e){
        if(mouse_x != -1000 && mouse_y != -1000){
            let diff_x = e.clientX - mouse_x
            let diff_y = e.clientY - mouse_y
            x = x + diff_x
            y = y + diff_y
            if (x < 0)
                x = 0
            if (y < 0)
                y = 0
            const rect = div.getBoundingClientRect()
            if (x + rect.width > window.innerWidth)
                x = window.innerWidth - rect.width
            if (y + rect.height > window.innerHeight)
                y = window.innerHeight - rect.height
            div.style.left = x + "px"
            div.style.top = y + "px"
            mouse_x = e.clientX
            mouse_y = e.clientY
            e.stopPropagation()
        }
    }
    function mouseup(e){
        if(mouse_x != -1000 && mouse_y != -1000){
            let diff_x = e.clientX - mouse_x
            let diff_y = e.clientY - mouse_y
            div.style.left = x + diff_x + "px"
            div.style.top = y + diff_y + "px"
            mouse_x = -1000
            mouse_y = -1000
            div.style.cursor = 'auto'
            e.stopPropagation()
        }
    }
    div.addEventListener('mousedown', mousedown)
    window.addEventListener('mousemove', mousemove)
    window.addEventListener('mouseup', mouseup)
    let button_container = document.createElement('div')
    button_container.className = 'buttonContainer'
    div.appendChild(button_container)
    let old_width = 0
    function make_button(content, func){
        let button = document.createElement('span')
        button.className = 'button close'
        button.innerHTML = content
        button_container.appendChild(button)
        button.addEventListener('click', func)
    }
    make_button('X', function(){
        document.body.removeChild(div)
        window.removeEventListener('mousemove', mousemove)
        window.removeEventListener('mouseup', mouseup)
    })
    make_button('—', function(){
        const rect = div.getBoundingClientRect()
        if(! old_width)
            old_width = rect.width
        div.style.width = rect.width - 25 + "px"
        div.style.maxWidth = "100%"
    })
    make_button('+', function(){
        const rect = div.getBoundingClientRect()
        if(! old_width)
            old_width = rect.width
        div.style.width = rect.width + 25 + "px"
        div.style.maxWidth = "100%"
    })
    make_button('=', function(){
        if(old_width)
            div.style.width = old_width + "px"
    })
    make_button('M', function(){
        const rect = div.getBoundingClientRect()
        if(! old_width)
            old_width = rect.width
        div.style.width = "100%"
        div.style.maxWidth = "100%"
        div.style.left = "0px"
        div.style.maxHeight = "100%"
    })
    make_button('L', function(){
        const rect = div.getBoundingClientRect()
        if(! old_width)
            old_width = rect.width
        div.style.width = "50%"
        div.style.left = "0px"
        div.style.maxHeight = "100%"
    })
    make_button('R', function(){
        const rect = div.getBoundingClientRect()
        if(! old_width)
            old_width = rect.width
        div.style.width = "50%"
        div.style.left = "50%"
        div.style.maxHeight = "100%"
    })
    make_button('F',function(){
        let old_z = +window.document.defaultView.getComputedStyle(div).getPropertyValue('z-index')
        div.style.zIndex = (old_z+1)+""
    })
    make_button('B', function(){
        let old_z = +window.document.defaultView.getComputedStyle(div).getPropertyValue('z-index')
        div.style.zIndex = (old_z-1)+""
    })
    
    return div
}

function create_object(element, e){
    e.preventDefault()
    const obj = document.createElement('object')
    obj.data = element.href
    obj.width = "100%"
    obj.height = "100%"
    const floater = create_floater()
    floater.appendChild(obj)
    floater.style.height = "80%"
    floater.style.width = "80%"
    document.body.appendChild(floater)
    e.stopPropagation()
}

function linkify(){
    const as = document.getElementsByTagName('a')
    for (let i = 0; i < as.length; i++){
        const a = as[i]
        let is_srd = a.href.includes('d20srd.org')
        let is_monsters = a.href.includes('monsters.html') && a.href.includes('#')
        if (!is_srd && !is_monsters)
                continue
        a.addEventListener('click', create_object.bind({}, a))
    }
}
document.addEventListener("DOMContentLoaded", linkify)


function show_data_element(element, e){
    const text = data_blob[element.innerText]
    let template = document.createElement('template')
    template.innerHTML = text;
    const div = create_floater()
    div.appendChild(template.content.firstChild)
    document.body.appendChild(div)
    e.stopPropagation()
}
