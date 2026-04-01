<!--
	var main_path="img/";
	var misc_path=main_path+"misc/";
	var button_path=main_path+"buttons/";
	var dir_path=main_path+"dir/";
	var key_path=main_path+"keys/";
	var alt="";

	function cmd (command) {
		document.write(command);
	}

	function button(key) {
		alt=key;
		key=button_path+key;
		return('<img src="'+key+'.gif" alt="'+alt+'&nbsp;">');
	}
	
	function dir(arrow) {
		alt=arrow;
		arrow=dir_path+arrow;
		return('<img src="'+arrow+'.gif" alt="'+alt+'&nbsp;">');
	}

	function key(key) {
		alt=key;
		key=key_path+key;
		return('<img src="'+key+'.gif" alt="'+alt+'&nbsp;">');
	}

	function or() {
		return('<img src="'+misc_path+'or.gif" alt="+&nbsp;">');
	}
	
	function plus() {
		return('<img src="'+misc_path+'and.gif" alt="+&nbsp;">');
	}

	// Demi cercle avant	
	function hcf() {
		return dir("B")+dir("DB")+dir("D")+dir("DF")+dir("F");
	}

	// Demi cercle arrière
	function hcb() {
		return dir("F")+dir("DF")+dir("D")+dir("DB")+dir("B");
	}

	// Quart de cercle avant	
	function qcf() {
		return dir("D")+dir("DF")+dir("F");
	}
	// Quart de cercle arrière
	function qcb() {
		return dir("D")+dir("DB")+dir("B");
	}

	// Dragon Punch avant	
	function dpf() {
		return dir("F")+dir("D")+dir("DF");
	}

	// Dragon Punch arrière
	function dpb() {
		return dir("B")+dir("D")+dir("DB");
	}
//-->