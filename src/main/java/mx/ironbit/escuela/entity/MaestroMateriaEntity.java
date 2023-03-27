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
@Table(name = "maestro_materia")
public class MaestroMateriaEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer idmaestro_materia;
    private Integer idmaestro;
    private Integer idmateria;
}
