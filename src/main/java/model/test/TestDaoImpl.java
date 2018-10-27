package model.test;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TestDaoImpl implements TestDao {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	@Override
	public TestBean insert(TestBean bean) {
		if (bean != null) {
			TestBean temp = this.getSession().get(TestBean.class, bean.getId());
			if (temp == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}
	@Override
	public List<TestBean> select() {
		return this.getSession().createQuery(
				"from model.test.TestBean", TestBean.class).setMaxResults(50).list();
	}
	@Override
	public TestBean select(int id) {
		return this.getSession().get(TestBean.class, id);
	}
}
