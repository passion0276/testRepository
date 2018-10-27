package model.test;

import java.util.List;

public interface TestDao {
	public TestBean insert(TestBean bean);

	public TestBean select(int id);

	public List<TestBean> select();
}
