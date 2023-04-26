/**
 * 
 */
function del(id){
		alert('작동되는거니?');
	    let f = document.createElement('form');
        //폼태그로 감쌀 필요 없다.. 그냥 a태그 해도 됨..
	    f.setAttribute('method', 'get');
	    f.setAttribute('action', '/del');
	    let idInput = document.createElement('input');
	    idInput.setAttribute('type', 'hidden');
	    idInput.setAttribute('name', 'id');
	    idInput.setAttribute('value', id);
	    f.appendChild(idInput);
	    document.body.appendChild(f);
	    f.submit();
	}