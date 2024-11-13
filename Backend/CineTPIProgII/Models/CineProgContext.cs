﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace CineTPIProgII.Models;

public partial class CineProgContext : DbContext
{
    public CineProgContext(DbContextOptions<CineProgContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Actore> Actores { get; set; }

    public virtual DbSet<Barrio> Barrios { get; set; }

    public virtual DbSet<Butaca> Butacas { get; set; }

    public virtual DbSet<Cargo> Cargos { get; set; }

    public virtual DbSet<Clasificacione> Clasificaciones { get; set; }

    public virtual DbSet<Cliente> Clientes { get; set; }

    public virtual DbSet<DetallesTicket> DetallesTickets { get; set; }

    public virtual DbSet<Directore> Directores { get; set; }

    public virtual DbSet<Empleado> Empleados { get; set; }

    public virtual DbSet<FormasPago> FormasPagos { get; set; }

    public virtual DbSet<Formato> Formatos { get; set; }

    public virtual DbSet<Funcione> Funciones { get; set; }

    public virtual DbSet<Genero> Generos { get; set; }

    public virtual DbSet<Horario> Horarios { get; set; }

    public virtual DbSet<Idioma> Idiomas { get; set; }

    public virtual DbSet<Login> Logins { get; set; }

    public virtual DbSet<MediosPedido> MediosPedidos { get; set; }

    public virtual DbSet<Nacionalidade> Nacionalidades { get; set; }

    public virtual DbSet<Pelicula> Peliculas { get; set; }

    public virtual DbSet<PeliculasActore> PeliculasActores { get; set; }

    public virtual DbSet<PeliculasDirectore> PeliculasDirectores { get; set; }

    public virtual DbSet<Promocione> Promociones { get; set; }

    public virtual DbSet<Reservada> Reservadas { get; set; }

    public virtual DbSet<Sala> Salas { get; set; }

    public virtual DbSet<Ticket> Tickets { get; set; }

    public virtual DbSet<TiposDoc> TiposDocs { get; set; }

    public virtual DbSet<TiposSala> TiposSalas { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Actore>(entity =>
        {
            entity.HasKey(e => e.IdActor);

            entity.ToTable("ACTORES");

            entity.Property(e => e.IdActor).HasColumnName("id_actor");
            entity.Property(e => e.Apellido)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("apellido");
            entity.Property(e => e.FechaNac)
                .HasColumnType("date")
                .HasColumnName("fecha_nac");
            entity.Property(e => e.IdNacionalidad).HasColumnName("id_nacionalidad");
            entity.Property(e => e.Nombre)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("nombre");

            entity.HasOne(d => d.IdNacionalidadNavigation).WithMany(p => p.Actores)
                .HasForeignKey(d => d.IdNacionalidad)
                .HasConstraintName("FK_ACTORES_NACIONALIDADES");
        });

        modelBuilder.Entity<Barrio>(entity =>
        {
            entity.HasKey(e => e.IdBarrio);

            entity.ToTable("BARRIOS");

            entity.Property(e => e.IdBarrio).HasColumnName("id_barrio");
            entity.Property(e => e.Barrio1)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("barrio");
        });

        modelBuilder.Entity<Butaca>(entity =>
        {
            entity.HasKey(e => e.IdButaca);

            entity.ToTable("BUTACAS");

            entity.Property(e => e.IdButaca).HasColumnName("id_butaca");
            entity.Property(e => e.Numero)
                .HasMaxLength(4)
                .IsUnicode(false)
                .HasColumnName("numero");
        });

        modelBuilder.Entity<Cargo>(entity =>
        {
            entity.HasKey(e => e.IdCargo);

            entity.ToTable("CARGOS");

            entity.Property(e => e.IdCargo).HasColumnName("id_cargo");
            entity.Property(e => e.Descripcion)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("descripcion");
        });

        modelBuilder.Entity<Clasificacione>(entity =>
        {
            entity.HasKey(e => e.IdClasificacion);

            entity.ToTable("CLASIFICACIONES");

            entity.Property(e => e.IdClasificacion).HasColumnName("id_clasificacion");
            entity.Property(e => e.Clasificacion)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("clasificacion");
        });

        modelBuilder.Entity<Cliente>(entity =>
        {
            entity.HasKey(e => e.IdCliente);

            entity.ToTable("CLIENTES");

            entity.Property(e => e.IdCliente).HasColumnName("id_cliente");
            entity.Property(e => e.Apellido)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("apellido");
            entity.Property(e => e.Documento).HasColumnName("documento");
            entity.Property(e => e.Email)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("email");
            entity.Property(e => e.FechaNac)
                .HasColumnType("date")
                .HasColumnName("fecha_nac");
            entity.Property(e => e.Nombre)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("nombre");
        });

        modelBuilder.Entity<DetallesTicket>(entity =>
        {
            entity.HasKey(e => new { e.IdDetalle, e.IdTicket });

            entity.ToTable("DETALLES_TICKET");

            entity.Property(e => e.IdDetalle).HasColumnName("id_detalle");
            entity.Property(e => e.IdTicket).HasColumnName("id_ticket");
            entity.Property(e => e.IdButaca).HasColumnName("id_butaca");
            entity.Property(e => e.IdFuncion).HasColumnName("id_funcion");
            entity.Property(e => e.PrecioVenta)
                .HasColumnType("decimal(18, 0)")
                .HasColumnName("precio_venta");

            entity.HasOne(d => d.IdButacaNavigation).WithMany(p => p.DetallesTickets)
                .HasForeignKey(d => d.IdButaca)
                .HasConstraintName("fk_butacas");

            entity.HasOne(d => d.IdFuncionNavigation).WithMany(p => p.DetallesTickets)
                .HasForeignKey(d => d.IdFuncion)
                .HasConstraintName("FK_DETALLES_TICKET_FUNCIONES");
        });

        modelBuilder.Entity<Directore>(entity =>
        {
            entity.HasKey(e => e.IdDirector);

            entity.ToTable("DIRECTORES");

            entity.Property(e => e.IdDirector).HasColumnName("id_director");
            entity.Property(e => e.Apellido)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("apellido");
            entity.Property(e => e.FechaNac)
                .HasColumnType("date")
                .HasColumnName("fecha_nac");
            entity.Property(e => e.IdNacionalidad).HasColumnName("id_nacionalidad");
            entity.Property(e => e.Nombre)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("nombre");

            entity.HasOne(d => d.IdNacionalidadNavigation).WithMany(p => p.Directores)
                .HasForeignKey(d => d.IdNacionalidad)
                .HasConstraintName("FK_DIRECTORES_NACIONALIDADES");
        });

        modelBuilder.Entity<Empleado>(entity =>
        {
            entity.HasKey(e => e.IdEmpleado);

            entity.ToTable("EMPLEADOS");

            entity.Property(e => e.IdEmpleado).HasColumnName("id_empleado");
            entity.Property(e => e.Apellido)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("apellido");
            entity.Property(e => e.Documento).HasColumnName("documento");
            entity.Property(e => e.Email)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("email");
            entity.Property(e => e.FechaAlta)
                .HasColumnType("date")
                .HasColumnName("fecha_alta");
            entity.Property(e => e.FechaNac)
                .HasColumnType("date")
                .HasColumnName("fecha_nac");
            entity.Property(e => e.IdBarrio).HasColumnName("id_barrio");
            entity.Property(e => e.IdCargo).HasColumnName("id_cargo");
            entity.Property(e => e.IdTipoDoc).HasColumnName("id_tipo_doc");
            entity.Property(e => e.Nombre)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("nombre");
            entity.Property(e => e.Telefono)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("telefono");

            entity.HasOne(d => d.IdBarrioNavigation).WithMany(p => p.Empleados)
                .HasForeignKey(d => d.IdBarrio)
                .HasConstraintName("FK_EMPLEADOS_BARRIOS");

            entity.HasOne(d => d.IdCargoNavigation).WithMany(p => p.Empleados)
                .HasForeignKey(d => d.IdCargo)
                .HasConstraintName("FK_EMPLEADOS_CARGOS");

            entity.HasOne(d => d.IdTipoDocNavigation).WithMany(p => p.Empleados)
                .HasForeignKey(d => d.IdTipoDoc)
                .HasConstraintName("FK_EMPLEADOS_TIPOS_DOC");
        });

        modelBuilder.Entity<FormasPago>(entity =>
        {
            entity.HasKey(e => e.IdFormaPago);

            entity.ToTable("FORMAS_PAGO");

            entity.Property(e => e.IdFormaPago).HasColumnName("id_forma_pago");
            entity.Property(e => e.Descripcion)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("descripcion");
            entity.Property(e => e.PorcentajeRecargo).HasColumnName("porcentaje_recargo");
        });

        modelBuilder.Entity<Formato>(entity =>
        {
            entity.HasKey(e => e.IdFormato).HasName("pk_formato");

            entity.ToTable("FORMATOS");

            entity.Property(e => e.IdFormato).HasColumnName("id_formato");
            entity.Property(e => e.Formato1)
                .HasMaxLength(200)
                .IsUnicode(false)
                .HasColumnName("formato");
        });

        modelBuilder.Entity<Funcione>(entity =>
        {
            entity.HasKey(e => e.IdFuncion);

            entity.ToTable("FUNCIONES");

            entity.Property(e => e.IdFuncion).HasColumnName("id_funcion");
            entity.Property(e => e.Estado).HasColumnName("estado");
            entity.Property(e => e.FechaDesde)
                .HasColumnType("datetime")
                .HasColumnName("fecha_desde");
            entity.Property(e => e.FechaHasta)
                .HasColumnType("datetime")
                .HasColumnName("fecha_hasta");
            entity.Property(e => e.IdFormato).HasColumnName("id_formato");
            entity.Property(e => e.IdHorario).HasColumnName("id_horario");
            entity.Property(e => e.IdPelicula).HasColumnName("id_pelicula");
            entity.Property(e => e.IdSala).HasColumnName("id_sala");
            entity.Property(e => e.Precio)
                .HasColumnType("decimal(18, 0)")
                .HasColumnName("precio");

            entity.HasOne(d => d.IdFormatoNavigation).WithMany(p => p.Funciones)
                .HasForeignKey(d => d.IdFormato)
                .HasConstraintName("fk_formato");

            entity.HasOne(d => d.IdHorarioNavigation).WithMany(p => p.Funciones)
                .HasForeignKey(d => d.IdHorario)
                .HasConstraintName("FK_FUNCIONES_HORARIOS");

            entity.HasOne(d => d.IdPeliculaNavigation).WithMany(p => p.Funciones)
                .HasForeignKey(d => d.IdPelicula)
                .HasConstraintName("FK_FUNCIONES_PELICULAS");

            entity.HasOne(d => d.IdSalaNavigation).WithMany(p => p.Funciones)
                .HasForeignKey(d => d.IdSala)
                .HasConstraintName("FK_FUNCIONES_SALAS");
        });

        modelBuilder.Entity<Genero>(entity =>
        {
            entity.HasKey(e => e.IdGenero);

            entity.ToTable("GENEROS");

            entity.Property(e => e.IdGenero).HasColumnName("id_genero");
            entity.Property(e => e.Genero1)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("genero");
        });

        modelBuilder.Entity<Horario>(entity =>
        {
            entity.HasKey(e => e.IdHorario);

            entity.ToTable("HORARIOS");

            entity.Property(e => e.IdHorario).HasColumnName("id_horario");
            entity.Property(e => e.Horario1)
                .HasColumnType("datetime")
                .HasColumnName("horario");
        });

        modelBuilder.Entity<Idioma>(entity =>
        {
            entity.HasKey(e => e.IdIdioma).HasName("pk_idioma");

            entity.ToTable("IDIOMAS");

            entity.Property(e => e.IdIdioma).HasColumnName("id_idioma");
            entity.Property(e => e.Idioma1)
                .HasMaxLength(200)
                .IsUnicode(false)
                .HasColumnName("idioma");
        });

        modelBuilder.Entity<Login>(entity =>
        {
            entity.HasKey(e => e.IdLogins);

            entity.ToTable("LOGINS");

            entity.Property(e => e.IdLogins).HasColumnName("id_logins");
            entity.Property(e => e.Contraseña)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("contraseña");
            entity.Property(e => e.Usuario)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("usuario");
        });

        modelBuilder.Entity<MediosPedido>(entity =>
        {
            entity.HasKey(e => e.IdMedioPedido);

            entity.ToTable("MEDIOS_PEDIDO");

            entity.Property(e => e.IdMedioPedido).HasColumnName("id_medio_pedido");
            entity.Property(e => e.Descripcion)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("descripcion");
        });

        modelBuilder.Entity<Nacionalidade>(entity =>
        {
            entity.HasKey(e => e.IdNacionalidad);

            entity.ToTable("NACIONALIDADES");

            entity.Property(e => e.IdNacionalidad).HasColumnName("id_nacionalidad");
            entity.Property(e => e.Nacionalidad)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("nacionalidad");
        });

        modelBuilder.Entity<Pelicula>(entity =>
        {
            entity.HasKey(e => e.IdPelicula);

            entity.ToTable("PELICULAS");

            entity.Property(e => e.IdPelicula).HasColumnName("id_pelicula");
            entity.Property(e => e.Duracion).HasColumnName("duracion");
            entity.Property(e => e.Estado).HasColumnName("estado");
            entity.Property(e => e.IdClasificacion).HasColumnName("id_clasificacion");
            entity.Property(e => e.IdGenero).HasColumnName("id_genero");
            entity.Property(e => e.IdIdioma).HasColumnName("id_idioma");
            entity.Property(e => e.Sinopsis)
                .HasMaxLength(300)
                .IsUnicode(false)
                .HasColumnName("sinopsis");
            entity.Property(e => e.Titulo)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("titulo");

            entity.HasOne(d => d.IdClasificacionNavigation).WithMany(p => p.Peliculas)
                .HasForeignKey(d => d.IdClasificacion)
                .HasConstraintName("FK_PELICULAS_CLASIFICACIONES");

            entity.HasOne(d => d.IdGeneroNavigation).WithMany(p => p.Peliculas)
                .HasForeignKey(d => d.IdGenero)
                .HasConstraintName("FK_PELICULAS_GENEROS");

            entity.HasOne(d => d.IdIdiomaNavigation).WithMany(p => p.Peliculas)
                .HasForeignKey(d => d.IdIdioma)
                .HasConstraintName("fk_idiomas");
        });

        modelBuilder.Entity<PeliculasActore>(entity =>
        {
            entity.HasKey(e => e.IdPeliculaAct);

            entity.ToTable("PELICULAS_ACTORES");

            entity.Property(e => e.IdPeliculaAct).HasColumnName("id_pelicula_act");
            entity.Property(e => e.IdActor).HasColumnName("id_actor");
            entity.Property(e => e.IdPelicula).HasColumnName("id_pelicula");

            entity.HasOne(d => d.IdActorNavigation).WithMany(p => p.PeliculasActores)
                .HasForeignKey(d => d.IdActor)
                .HasConstraintName("FK_PELICULAS_ACTORES_ACTORES");

            entity.HasOne(d => d.IdPeliculaNavigation).WithMany(p => p.PeliculasActores)
                .HasForeignKey(d => d.IdPelicula)
                .HasConstraintName("FK_PELICULAS_ACTORES_PELICULAS");
        });

        modelBuilder.Entity<PeliculasDirectore>(entity =>
        {
            entity.HasKey(e => e.IdPeliculaDirect);

            entity.ToTable("PELICULAS_DIRECTORES");

            entity.Property(e => e.IdPeliculaDirect).HasColumnName("id_pelicula_direct");
            entity.Property(e => e.IdDirector).HasColumnName("id_director");
            entity.Property(e => e.IdPelicula).HasColumnName("id_pelicula");

            entity.HasOne(d => d.IdDirectorNavigation).WithMany(p => p.PeliculasDirectores)
                .HasForeignKey(d => d.IdDirector)
                .HasConstraintName("FK_PELICULAS_DIRECTORES_DIRECTORES");

            entity.HasOne(d => d.IdPeliculaNavigation).WithMany(p => p.PeliculasDirectores)
                .HasForeignKey(d => d.IdPelicula)
                .HasConstraintName("FK_PELICULAS_DIRECTORES_PELICULAS");
        });

        modelBuilder.Entity<Promocione>(entity =>
        {
            entity.HasKey(e => e.IdPromocion);

            entity.ToTable("PROMOCIONES");

            entity.Property(e => e.IdPromocion).HasColumnName("id_promocion");
            entity.Property(e => e.FechaDesde)
                .HasColumnType("datetime")
                .HasColumnName("fecha_desde");
            entity.Property(e => e.FechaHasta)
                .HasColumnType("datetime")
                .HasColumnName("fecha_hasta");
            entity.Property(e => e.ProcentajeDescuento).HasColumnName("procentaje_descuento");
        });

        modelBuilder.Entity<Reservada>(entity =>
        {
            entity.HasKey(e => e.IdReserva).HasName("pk_Reservadas");

            entity.ToTable("RESERVADAS");

            entity.Property(e => e.IdReserva).HasColumnName("id_reserva");
            entity.Property(e => e.IdButaca).HasColumnName("id_butaca");
            entity.Property(e => e.IdFuncion).HasColumnName("id_funcion");

            entity.HasOne(d => d.IdButacaNavigation).WithMany(p => p.Reservada)
                .HasForeignKey(d => d.IdButaca)
                .HasConstraintName("fk_butaca");

            entity.HasOne(d => d.IdFuncionNavigation).WithMany(p => p.Reservada)
                .HasForeignKey(d => d.IdFuncion)
                .HasConstraintName("fk_funcion");
        });

        modelBuilder.Entity<Sala>(entity =>
        {
            entity.HasKey(e => e.IdSala);

            entity.ToTable("SALAS");

            entity.Property(e => e.IdSala).HasColumnName("id_sala");
            entity.Property(e => e.IdTipoSala).HasColumnName("id_tipo_sala");
            entity.Property(e => e.NroSala).HasColumnName("nro_sala");

            entity.HasOne(d => d.IdTipoSalaNavigation).WithMany(p => p.Salas)
                .HasForeignKey(d => d.IdTipoSala)
                .HasConstraintName("FK_SALAS_TIPOS_SALAS");
        });

        modelBuilder.Entity<Ticket>(entity =>
        {
            entity.HasKey(e => e.IdTicket);

            entity.ToTable("TICKETS");

            entity.Property(e => e.IdTicket).HasColumnName("id_ticket");
            entity.Property(e => e.Estado).HasColumnName("estado");
            entity.Property(e => e.Fecha)
                .HasColumnType("date")
                .HasColumnName("fecha");
            entity.Property(e => e.IdCliente).HasColumnName("id_cliente");
            entity.Property(e => e.IdEmpleado).HasColumnName("id_empleado");
            entity.Property(e => e.IdFormaPago).HasColumnName("id_forma_pago");
            entity.Property(e => e.IdMedioPedido).HasColumnName("id_medio_pedido");
            entity.Property(e => e.IdPromocion).HasColumnName("id_promocion");
            entity.Property(e => e.Total)
                .HasColumnType("decimal(18, 0)")
                .HasColumnName("total");

            entity.HasOne(d => d.IdClienteNavigation).WithMany(p => p.Tickets)
                .HasForeignKey(d => d.IdCliente)
                .HasConstraintName("FK_TICKETS_CLIENTES");

            entity.HasOne(d => d.IdEmpleadoNavigation).WithMany(p => p.Tickets)
                .HasForeignKey(d => d.IdEmpleado)
                .HasConstraintName("FK_TICKETS_EMPLEADOS");

            entity.HasOne(d => d.IdFormaPagoNavigation).WithMany(p => p.Tickets)
                .HasForeignKey(d => d.IdFormaPago)
                .HasConstraintName("FK_TICKETS_FORMASP");

            entity.HasOne(d => d.IdMedioPedidoNavigation).WithMany(p => p.Tickets)
                .HasForeignKey(d => d.IdMedioPedido)
                .HasConstraintName("FK_TICKETS_MEDIOS_PEDIDO");

            entity.HasOne(d => d.IdPromocionNavigation).WithMany(p => p.Tickets)
                .HasForeignKey(d => d.IdPromocion)
                .HasConstraintName("FK_TICKETS_PROMOCIONES");
        });

        modelBuilder.Entity<TiposDoc>(entity =>
        {
            entity.HasKey(e => e.IdTipoDoc);

            entity.ToTable("TIPOS_DOC");

            entity.Property(e => e.IdTipoDoc).HasColumnName("id_tipo_doc");
            entity.Property(e => e.Tipo)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("tipo");
        });

        modelBuilder.Entity<TiposSala>(entity =>
        {
            entity.HasKey(e => e.IdTipoSala);

            entity.ToTable("TIPOS_SALAS");

            entity.Property(e => e.IdTipoSala).HasColumnName("id_tipo_sala");
            entity.Property(e => e.Tipo)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("tipo");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}