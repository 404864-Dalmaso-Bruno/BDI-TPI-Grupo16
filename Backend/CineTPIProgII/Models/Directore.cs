﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace CineTPIProgII.Models;

public partial class Directore
{
    public int IdDirector { get; set; }

    public string Nombre { get; set; }

    public string Apellido { get; set; }

    public DateTime? FechaNac { get; set; }

    public int? IdNacionalidad { get; set; }

    public virtual Nacionalidade IdNacionalidadNavigation { get; set; }

    public virtual ICollection<PeliculasDirectore> PeliculasDirectores { get; set; } = new List<PeliculasDirectore>();
}