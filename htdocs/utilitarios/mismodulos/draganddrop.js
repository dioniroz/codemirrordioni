function draganddrop(obj,e){
  if(obj.style.left=="")obj.style.left='0px';
  if(obj.style.top=="")obj.style.top='0px';
  if(obj.style.position=="")obj.style.position=='relative';
  Recuadro(obj)
}


function Recuadro(div)
{
    tX=0;
    tY=0;
    difX=0;
    difY=0;
    div.addEventListener('mousedown',inicioDrag,false)


    function coordenadaX(e)
    {
      if (window.event)
        return event.clientX+document.body.scrollTop;
      else
        return e.pageX;
    }

    function coordenadaY(e)
    {
      if (window.event)
        return event.clientY+document.body.scrollTop;
      else
        return e.pageY;
    }

    function inicioDrag(e) 
    {
      if (window.event)
        e=window.event;
      var eX=coordenadaX(e);
      var eY=coordenadaY(e);
      var oX=parseInt(div.style.left);
      var oY=parseInt(div.style.top);
      difX=oX-eX;
      difY=oY-eY;
      document.addEventListener('mousemove',drag,false)
      document.addEventListener('mouseup',drop,false)

    }

    function drag(e) 
    { 
      if (window.event)e=window.event;
        
      tX=coordenadaY(e)+difY+'px';
      tY=coordenadaX(e)+difX+'px'
      div.style.top=tX; 
      div.style.left=tY; 
    }
  

    function drop(e)
    { 
        let cor = {tX,tY,difX,difY}
        document.removeEventListener('mousemove',drag,false);
        document.removeEventListener('mouseup',drop,false);
        div.removeEventListener('mousedown',inicioDrag,false)

    }
}