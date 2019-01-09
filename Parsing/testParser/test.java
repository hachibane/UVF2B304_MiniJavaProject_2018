public class AssertStatement {
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
}
