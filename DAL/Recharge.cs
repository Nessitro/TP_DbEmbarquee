//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Recharge
    {
        public int Id { get; set; }
        public string Numero { get; set; }
        public System.DateTime DataRecharge { get; set; }
        public int Montant { get; set; }
        public int Solde { get; set; }
        public int Internet { get; set; }
        public int Duree { get; set; }
    
        public virtual Ligne_Telephonique Ligne_Telephonique { get; set; }
    }
}