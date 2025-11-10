package com.sat.tmf.movietkt;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(exclude = {org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration.class})

public class TmfMovieTicketApplication {

	public static void main(String[] args) {
		SpringApplication.run(TmfMovieTicketApplication.class, args);
	}

}
