using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;

namespace CpmPedidos.API.Controllers
{
    public class AppBaseController : ControllerBase
    {
        protected readonly IServiceProvider serviceProvider;
        protected T GetService<T>()
        {
            return serviceProvider.GetService<T>();
        }

        public AppBaseController(IServiceProvider serviceProvider)
        {
            this.serviceProvider = serviceProvider;
        }
    }
}
