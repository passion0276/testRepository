package model.test;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TestService {
	@Autowired
	private TestDao test;

	public TestBean insert(TestBean bean) {
		TestBean result = null;
		if (bean != null) {
			result = test.insert(bean);
		}
		return result;
	}
	
	public List<TestBean> select(TestBean bean) {
		List<TestBean> result = null;
		if(bean!=null && bean.getId()!=0) {
			TestBean temp = test.select(bean.getId());
			if(temp!=null) {
				result = new ArrayList<TestBean>();
				result.add(temp);
			}
		} else {
			result = test.select();
		}
		return result;
	}
}
