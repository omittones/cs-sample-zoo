﻿using System;
using System.Data.Entity;
using Educ.Entity.Log;
using Educ.Entity.Model;
using Xunit.Abstractions;

namespace Educ.Entity
{
    public class Given_database_context : IDisposable
    {
        protected readonly ILogger log;
        protected readonly Context context;
        protected readonly DbContextTransaction transaction;
        protected readonly CountingDatabaseLogger databaseTracker;

        public Given_database_context(
            ITestOutputHelper testoutput = null,
            bool recreate = false)
        {
            if (recreate)
            {
                Database.SetInitializer(new DropCreateDatabaseAlways<Context>());
            }
            else
            {
                Database.SetInitializer<Context>(null);
            }

            if (testoutput != null)
                this.log = new XUnitLogger(testoutput);
            else
                this.log = Logger.Root();

            this.context = Context.Connect("EducEntity");
            this.transaction = this.context.Database.BeginTransaction(isolationLevel: System.Data.IsolationLevel.Serializable);
            this.databaseTracker = new CountingDatabaseLogger(this.context, this.log.ToDebug());
        }

        public void Dispose()
        {
            this.databaseTracker.Dispose();
            this.transaction.Rollback();
            this.transaction.Dispose();
            this.context.Dispose();
        }
    }
}