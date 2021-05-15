package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Model.Tooling;



public interface ToolingRepository extends JpaRepository<Tooling,String>
{

}
