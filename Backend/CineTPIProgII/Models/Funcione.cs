﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace CineTPIProgII.Models;

public partial class Funcione
{
    public int IdFuncion { get; set; }

    public int? IdSala { get; set; }

    public int? IdHorario { get; set; }

    public int? IdFormato { get; set; }

    public bool? Estado { get; set; }

    public int? IdPelicula { get; set; }

    public decimal? Precio { get; set; }

    public DateTime? FechaDesde { get; set; }

    public DateTime? FechaHasta { get; set; }

    public virtual ICollection<DetallesTicket> DetallesTickets { get; set; } = new List<DetallesTicket>();

    public virtual Formato IdFormatoNavigation { get; set; }

    public virtual Horario IdHorarioNavigation { get; set; }

    public virtual Pelicula IdPeliculaNavigation { get; set; }

    public virtual Sala IdSalaNavigation { get; set; }

    public virtual ICollection<Reservada> Reservada { get; set; } = new List<Reservada>();
}