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
@Table(name = "grupo")
public class GrupoEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer idgrupo;
    private String descripcion;
}
