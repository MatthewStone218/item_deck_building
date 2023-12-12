function kr_en_add_event()
{
    document.addEventListener('keydown', (event) => {
        if(event.keyCode == 21)
        {
            gml_Script_gmcallback_kr_en_pressed();
        }
    });
}