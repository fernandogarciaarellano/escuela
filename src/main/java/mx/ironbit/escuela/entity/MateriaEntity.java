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
@Table(name = "materia")
public class MateriaEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer idmateria;
    private String descripcion;
}
