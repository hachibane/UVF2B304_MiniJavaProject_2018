class Statement2 {

	void forStatement(){
		for(;;)
			;
		for(i=0;;)
			;
		for(i = 0 , j = 0;;)
			;
		for(;i=0;)
			;
		for(;;i=0)
			;
		for(;;i=0,j=0)
			;
		for(i=0,j=0;i==0;i=0,j=0)
			;
	}

	void labeledStatement() {
		i: ;
	}

	void returnStatement() {
		return ;
		return i;
		return i==0;
	}

	void throwStatement() {
		throw e;
	}

	void localVariableStatement() {
		final int a;
	}

	void whileStatement() {
		while(true);
}


}
