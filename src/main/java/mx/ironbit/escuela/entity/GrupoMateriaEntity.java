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
@Table(name = "grupo_materia")
public class GrupoMateriaEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer idgrupo_materia;
    private Integer idgrupo;
    private Integer idmateria;

}
