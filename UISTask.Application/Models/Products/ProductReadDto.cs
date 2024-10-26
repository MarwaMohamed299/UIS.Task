using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UISTask.Domain.Entities;

namespace UISTask.Application.Models.Products;

public class ProductReadDto
{ 

public Guid Id { get; set; }
public string ProductName { get; set; } = string.Empty;
public string Unit { get; set; } = string.Empty;
public decimal Price { get; set; }
public int InitialQuantity { get; set; }
public int CurrentQuantity { get; set; }
}
