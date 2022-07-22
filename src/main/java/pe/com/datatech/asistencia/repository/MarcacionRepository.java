package pe.com.datatech.asistencia.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pe.com.datatech.asistencia.entity.Marcacion;

public interface MarcacionRepository extends JpaRepository<Marcacion, Integer> {
	
}