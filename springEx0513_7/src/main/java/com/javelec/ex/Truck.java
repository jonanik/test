package com.javelec.ex;

public class Truck implements Car {

	public void run() {
		System.out.println("시속 200km!!!!!!!!");
		
	}

	public void stop() {
		System.out.println("늦게 멈춤.....");
		
	}

	public void use() {
		System.out.println("짐을 옮긴다!!!");
		System.out.println("덮개를 덮는다!!");
	}

}
