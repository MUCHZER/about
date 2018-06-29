import 'bulma';
import './resume.css';

console.log('Nothing to see here :)');

document.addEventListener("DOMContentLoaded", function() {
    let toggleable = document.getElementsByClassName('toggleable');                
    window.easteregg = function() {
        for(var i=0, len=toggleable.length; i<len; i++)
        {
            toggleable[i].style["display"] = 'block';
        }
    }
});