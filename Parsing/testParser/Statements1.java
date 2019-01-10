public class Statement1 {
	int i;
	int a;
	int b;

	void assertStatement() {
		assert i == 0;
		assert a == 1 : b == 2;
	}

	void breakStatement() {
		break;
		break i;
	}

	void continueStatement() {
		continue;
		continue i;
	}
	void doStatement() {

		do
			i++;
		while
			(i!=0)
	}
	
	void emptyStatement() {
		;
	}

	void expressionStatement() {
		i = 0;
		i++;
		++i;
		i--;
		--i;
	}
}
