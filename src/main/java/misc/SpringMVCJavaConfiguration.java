package misc;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.support.ServletContextResource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.XmlViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "controller")
public class SpringMVCJavaConfiguration implements WebMvcConfigurer {
	@Autowired
	private ServletContext application;

	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		System.out.println("haha");
		XmlViewResolver xvr = new XmlViewResolver();
		xvr.setLocation(new ServletContextResource(application, "/WEB-INF/spring-views.xml"));
		registry.viewResolver(xvr);
		System.out.println("gogogo!!");
	}

}
