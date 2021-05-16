package fr.formation.afpa.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;

import fr.formation.afpa.interceptor.LogInterceptor;

@Configuration
@EnableWebMvc
public class WebMvcConfig extends WebMvcConfigurerAdapter{
	
	  @Override
	   public void addResourceHandlers(ResourceHandlerRegistry registry) {
	    
	       // Css resource.
	       registry.addResourceHandler("/style/**") //
	                 .addResourceLocations("/WEB-INF/resources/css/");
	       registry.addResourceHandler("/fonts/**") //
           .addResourceLocations("/WEB-INF/resources/fonts/");
	       registry.addResourceHandler("/js/**") //
           .addResourceLocations("/WEB-INF/resources/js/");
	       registry.addResourceHandler("/img/**") //
           .addResourceLocations("/WEB-INF/resources/images/");

	   }
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		  registry.addInterceptor(new LogInterceptor()).addPathPatterns("/*");
		  LocaleChangeInterceptor localInterceptor = new LocaleChangeInterceptor();
		  localInterceptor.setParamName("lang");
		  
		  registry.addInterceptor(localInterceptor).addPathPatterns("/*");
	}
	
	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}
	
}
