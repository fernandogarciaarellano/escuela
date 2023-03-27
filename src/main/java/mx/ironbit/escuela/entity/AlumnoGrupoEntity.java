package mx.ironbit.escuela.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "alumno_grupo")
public class AlumnoGrupoEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer idalumno_grupo;
    private Integer idalumno;
    private Integer idgrupo;
}
