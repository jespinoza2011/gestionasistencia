package pe.com.datatech.asistencia.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pe.com.datatech.asistencia.entity.Horario;

public interface HorarioRepository extends JpaRepository<Horario, Integer> {

}
