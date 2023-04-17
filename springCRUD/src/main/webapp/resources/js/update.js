/**
 * 
 */
console.log("update.js connect");

function upDate(member){
	    let f = document.createElement('form');
        //폼태그로 감쌀 필요 없다.. 그냥 a태그 해도 됨..
	    f.setAttribute('method', 'get');
	    f.setAttribute('action', '/up');
	    let memData = document.getElementById('password');
	    let memData2 = document.getElementById('name');
	    memData.setAttribute('type', 'hidden');
	    memData.setAttribute('name', 'password');
	    memData.setAttribute('value', password);
	    memData2.setAttribute('type', 'hidden');
	    memData2.setAttribute('name', 'name');
	    memData2.setAttribute('value', name);
	    console.log(memData);
	    console.log(memData2);
	    f.submit();
	}