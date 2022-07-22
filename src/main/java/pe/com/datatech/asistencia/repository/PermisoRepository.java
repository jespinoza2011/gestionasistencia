package pe.com.datatech.asistencia.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pe.com.datatech.asistencia.entity.Permiso;

public interface PermisoRepository extends JpaRepository<Permiso, Integer> {

}