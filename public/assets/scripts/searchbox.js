      function mountSearch(search) {
          var input = search.children('.input');
          var form = search.children('form');
          var query = form.children('[name=q]');
          var lastHtml = input.html();

          function copyInput () {
              query.val(input.html());
              return true;
          }
          function filterInput (){
              var html = input.html();
              if (html !== lastHtml) {
                  input.html(html.replace(/(<([^>]+)>)/ig,""))
              }
              lastHtml = html;
          };    
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
