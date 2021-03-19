using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PrintServer.Controllers
{
	[Route("api/v4/[controller]")]
	[ApiController]
	public class PrintController : ControllerBase
	{
		[HttpPost]
		public async Task<IActionResult> Print(printRequest request)
		{
			if(request.request.UserName != "test")
			{
				ModelState.AddModelError("UserName", "Invalid username");
				return ValidationProblem();
			}

			var b64Str = request.request.Document;
			var path = System.IO.Path.Combine(AppContext.BaseDirectory, "Result", request.request.FileName);
			Byte[] bytes = Convert.FromBase64String(b64Str);
			System.IO.File.WriteAllBytes(path, bytes);

			return Ok();
		}
	}
}
