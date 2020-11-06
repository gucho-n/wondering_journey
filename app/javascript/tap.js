for (let i = 0; i < 6; i++){
window.addEventListener('load',function(){
const pullDownButton = document.getElementsByClassName("link-btn")

  pullDownButton[i].addEventListener('mouseover', function(){
  pullDownButton[i].setAttribute("style", "background-color:#FFBEDA;")
  })
pullDownButton[i].addEventListener('mouseout', function(){
  pullDownButton[i].removeAttribute("style", "background-color:#FFBEDA;")

  })
})
}
