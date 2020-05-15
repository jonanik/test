package com.javalec.ex;

import java.io.IOException;

import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.core.env.ConfigurableEnvironment;
import org.springframework.core.env.MutablePropertySources;
import org.springframework.core.io.support.ResourcePropertySource;

public class MainClass {

 public static void main(String[] args) {
	ConfigurableApplicationContext ctx=new GenericXmlApplicationContext();
	ConfigurableEnvironment env=ctx.getEnvironment();
	
	MutablePropertySources propertySource=env.getPropertySources();
	try {
		propertySource.addLast(new ResourcePropertySource("classpath:admin.properties"));
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
	
}
