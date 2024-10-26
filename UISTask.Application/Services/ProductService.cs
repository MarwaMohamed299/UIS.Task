using UISTask.Application.Contracts.Services;
using UISTask.Application.Contracts.UnitOfWork;
using UISTask.Application.Models.Products;
using UISTask.Domain.Entities;

public class ProductService : IProductService
{
    private readonly IUnitOfWork _unitOfWork;

    public ProductService(IUnitOfWork unitOfWork)
    {
        _unitOfWork = unitOfWork;
    }

    public async Task<Guid> CreateProductAsync(ProductAddDto productAddDto)
    {
        var product = new Product
        {
            ProductName = productAddDto.ProductName,
            Unit = productAddDto.Unit,
            Price = productAddDto.Price,
            InitialQuantity = productAddDto.Quantity,
            CurrentQuantity = productAddDto.Quantity 
        };

        await _unitOfWork.ProductRepo.AddProductAsync(product);
        return product.Id;
    }

    public async Task<ProductReadDto> GetProductByIdAsync(Guid id)
    {
        var product = await _unitOfWork.ProductRepo.GetProductByIdAsync(id);

        return new ProductReadDto
        {
            Id = product.Id,
            ProductName = product.ProductName,
            Unit = product.Unit,
            Price = product.Price,
            InitialQuantity = product.InitialQuantity,
            CurrentQuantity = product.CurrentQuantity
        };
    }

    public async Task<(IEnumerable<ProductReadDto> Products, int TotalCount)> GetAllProductsAsync(int pageNumber, int pageSize)
    {
        var (products, totalCount) = await _unitOfWork.ProductRepo.GetAllProductsAsync(pageNumber, pageSize);

        var productDtos = products.Select(p => new ProductReadDto
        {
            Id = p.Id,
            ProductName = p.ProductName,
            Unit = p.Unit,
            Price = p.Price,
            InitialQuantity = p.InitialQuantity,
            CurrentQuantity = p.CurrentQuantity
        }).ToList();

        return (productDtos, totalCount);
    }

    public async Task UpdateProductAsync(Guid id, ProductUpdateDto productUpdateDto)
    {
        var product = await _unitOfWork.ProductRepo.GetProductByIdAsync(id);

        product.ProductName = productUpdateDto.ProductName;
        product.Unit = productUpdateDto.Unit;
        product.Price = productUpdateDto.Price;
        product.InitialQuantity = productUpdateDto.InitialQuantity;

        await _unitOfWork.ProductRepo.UpdateProductAsync(product);
    }

    public async Task DeleteProductAsync(Guid id)
    {
        await _unitOfWork.ProductRepo.DeleteProductAsync(id);
    }
}
