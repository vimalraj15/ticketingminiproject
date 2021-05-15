package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.Model.Ticket;



@Repository
public interface TicketRepository extends JpaRepository<Ticket,String>
{

}