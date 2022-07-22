package pe.com.datatech.asistencia.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pe.com.datatech.asistencia.entity.Maestra;

@Transactional
@Repository
@CacheConfig(cacheNames = { "maestras" })
public class MaestraRepository {

	@Autowired
	private DataSource dataSource;

	private NamedParameterJdbcTemplate jdbcTemplate;

	@PostConstruct
	private void postConstruct() {
		jdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}

	@Cacheable
	public List<Maestra> getMaestra(int idTabla) throws DataAccessException {
		String sql = "SELECT * FROM TablaMaestra WHERE IdTabla = :idTabla";
		MapSqlParameterSource params= new MapSqlParameterSource();
		params.addValue("idTabla", idTabla);
		List<Maestra> maestras =jdbcTemplate.query(sql,params, new MaestraMapper());
		return maestras;
	}

	private static class MaestraMapper implements RowMapper<Maestra> {
		@Override
		public Maestra mapRow(ResultSet rs, int rowNum) throws SQLException {
			Maestra maestra = new Maestra();
			maestra.setIdTabla(rs.getInt("IdTabla"));
			maestra.setIdColumna(rs.getInt("IdColumna"));
			maestra.setValor(rs.getString("Valor"));
			maestra.setDescripcion(rs.getString("Descripcion"));
			return maestra;
		}
	}

}
