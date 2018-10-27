package misc;

import java.util.Properties;

import javax.naming.NamingException;
import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jndi.JndiObjectFactoryBean;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;

import model.test.TestBean;


@Configuration
@ComponentScan(basePackages={"model"})
public class SpringHibernateConfiguration {
	@Bean
	public DataSource dataSource() {
		JndiObjectFactoryBean factory = new JndiObjectFactoryBean();
		factory.setJndiName("java:comp/env/jdbc/travel");
		factory.setProxyInterface(javax.sql.DataSource.class);
		try {
			factory.afterPropertiesSet();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (NamingException e) {
			e.printStackTrace();
		}
		return (DataSource) factory.getObject();
	}

	@Bean
	public SessionFactory sessionFactory() {
		LocalSessionFactoryBuilder builder = new LocalSessionFactoryBuilder(dataSource());
		Properties props = new Properties();
		props.put("hibernate.dialect", "org.hibernate.dialect.SQLServerDialect");
		props.put("hibernate.current_session_context_class", "thread");
		props.put("hibernate.show_sql", "true");
		
		builder.addProperties(props);
		 builder.addAnnotatedClasses(TestBean.class);
		return builder.buildSessionFactory();
	}

}
