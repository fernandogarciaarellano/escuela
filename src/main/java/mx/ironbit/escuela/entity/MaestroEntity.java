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
@Table(name = "maestro")
public class MaestroEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer idmaestro;

    private String nombre;
    private String apellido_paterno;
    private String apellido_materno;
}
