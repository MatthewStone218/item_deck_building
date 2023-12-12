function browser_set_zoom(canvas_id,w,h)
{
    var el = document.getElementById(canvas_id);
    el.style.width = w + "px";
    el.style.height = h + "px";
}