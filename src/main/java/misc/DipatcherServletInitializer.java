package misc;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class DipatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		System.out.println("ContextLoaderListener");
		return new Class[] {SpringHibernateConfiguration.class};
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		System.out.println("DispatcherServlet");
		return new Class[] {SpringMVCJavaConfiguration.class};
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] {"/"};
	}

}
