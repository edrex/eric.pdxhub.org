function mountSearch(search) {
    var input = search.children('.input');
    var i = input.get(0);
    var form = search.children('form');
    var query = form.children('[name=q]');

    function copyInput () {
        query.val(input.html());
        return true;
    }
    function filterInput (){
        var outHtml = i.innerHTML.replace(/(<([^>]+)>)/ig,"");
        if (outHtml !== i.innerHTML) {
            i.innerHTML = outHtml;
        }
    }
    function handleKeypress (e) {
        var code = e.keyCode || e.which;
        if(code == 13) {
            form.submit();
            e.preventDefault();
        }
    }
    form.submit(copyInput);
    input.blur(filterInput);
    input.on('input', filterInput);
    input.keypress(handleKeypress);
}
