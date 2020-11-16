for (let i = 0; i < 100; i++){
  window.addEventListener('load',function(){
  const pullDownButton = document.getElementsByClassName("message-image")
  const pullDownParents = document.getElementsByClassName("hover-lists")

    pullDownButton[i].addEventListener('mouseover', function(){
      pullDownParents[i].setAttribute("style", "display:block;")
    })
    pullDownButton[i].addEventListener('mouseout', function(){
    pullDownParents[i].removeAttribute("style", "display:none;")
  
    })
  })
  }