function no_cache()
{
	var meta = document.createElement('meta');
	meta.httpEquiv = "Pragma";
	meta.content = "no-cache";
	document.getElementsByTagName('head')[0].appendChild(meta);
}