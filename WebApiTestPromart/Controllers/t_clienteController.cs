using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebApiTestPromart.Data;
using WebApiTestPromart.Models;

namespace WebApiTestPromart.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class t_clienteController : ControllerBase
    {
        private readonly TestPromartContext _context;

        public t_clienteController(TestPromartContext context)
        {
            _context = context;
        }

        // GET: api/t_cliente
        [HttpGet]
        public IEnumerable<t_cliente> Getcliente()
        {
            return _context.t_cliente;
        }

        // GET: api/t_cliente/5
        [HttpGet("{id}")]
        public async Task<IActionResult> Gett_cliente([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var t_cliente = await _context.t_cliente.FindAsync(id);

            if (t_cliente == null)
            {
                return NotFound();
            }

            return Ok(t_cliente);
        }

        // PUT: api/t_cliente/5
        [HttpPut("{id}")]
        public async Task<IActionResult> Putt_cliente([FromRoute] int id, [FromBody] t_cliente t_cliente)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != t_cliente.id)
            {
                return BadRequest();
            }

            _context.Entry(t_cliente).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!t_clienteExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/t_cliente
        [HttpPost]
        public async Task<IActionResult> Postt_cliente([FromBody] t_cliente t_cliente)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _context.t_cliente.Add(t_cliente);
            await _context.SaveChangesAsync();

            return CreatedAtAction("Gett_cliente", new { id = t_cliente.id }, t_cliente);
        }

        // DELETE: api/t_cliente/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> Deletet_cliente([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var t_cliente = await _context.t_cliente.FindAsync(id);
            if (t_cliente == null)
            {
                return NotFound();
            }

            _context.t_cliente.Remove(t_cliente);
            await _context.SaveChangesAsync();

            return Ok(t_cliente);
        }

        private bool t_clienteExists(int id)
        {
            return _context.t_cliente.Any(e => e.id == id);
        }
    }
}