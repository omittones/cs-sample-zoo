using System.Data.Entity.ModelConfiguration;

namespace Zoo.Entity.Model.Maps.BirdHierarchy
{
    public class HawkMouseHunterMap : EntityTypeConfiguration<HawkMouseHunter>
    {
        public HawkMouseHunterMap()
        {
            Map(m =>
            {
                m.ToTable("Birds");
                m.Requires("Type").HasValue("HawkMouseHunter");
                m.PropertiesWithFixedNullMembers(e => new { });
            });

            HasRequired(e => e.Details)
                .WithRequiredPrincipal();
        }
    }
}