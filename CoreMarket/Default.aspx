<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CoreMarket._Default" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <link rel="stylesheet" href="Content/Home.css" />
    </head>
    <body>
        <div>
            <h2>Product Log</h2>
            <asp:Literal ID="litProductLog" runat="server"></asp:Literal>
        </div>
        <div id="carouselExampleIndicators" class="carousel slide mb-4">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="Images/Cikolata.jpg" class="d-block w-100" alt="Fotoğraf bulunamadı.">
                </div>
                <div class="carousel-item">
                    <img src="Images/Soda.jpg" class="d-block w-100" alt="Fotoğraf bulunamadı.">
                </div>
                <div class="carousel-item">
                    <img src="Images/Cips.jpg" class="d-block w-100" alt="Fotoğraf bulunamadı.">
                </div>
                <div class="carousel-item">
                    <img src="Images/Dondurma.jpg" class="d-block w-100" alt="Fotoğraf bulunamadı.">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <div class="row row-cols-1 row-cols-md-2 g-4">
            <div class="col">
                <div class="card mt-4">
                    <img src="Images/Dondurma.jpg" class="card-img-top" alt="Fotoğraf Bulunamadı.">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card mt-4">
                    <img src="Images/Soda.jpg" class="card-img-top" alt="Fotoğraf Bulunamadı.">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card mt-4">
                    <img src="Images/Cikolata.jpg" class="card-img-top" alt="Fotoğraf Bulunamadı.">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card mt-4">
                    <img src="Images/Cips.jpg" class="card-img-top" alt="Fotoğraf Bulunamadı.">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
                <div class="col-md-4 d-flex align-items-center">
                    <a href="/" class="mb-3 me-2 mb-md-0 text-body-secondary text-decoration-none lh-1">
                        <svg class="bi" width="30" height="24">
                            <use xlink:href="#bootstrap"></use></svg>
                    </a>
                    <span class="mb-3 mb-md-0 text-body-secondary">© 2023 Company, Inc</span>
                </div>

                <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
                    <li class="ms-3"><a class="text-body-secondary" href="#">
                        <svg class="bi" width="24" height="24">
                            <use xlink:href="#twitter"></use></svg></a></li>
                    <li class="ms-3"><a class="text-body-secondary" href="#">
                        <svg class="bi" width="24" height="24">
                            <use xlink:href="#instagram"></use></svg></a></li>
                    <li class="ms-3"><a class="text-body-secondary" href="#">
                        <svg class="bi" width="24" height="24">
                            <use xlink:href="#facebook"></use></svg></a></li>
                </ul>
            </footer>
        </div>
    </body>
    </html>
</asp:Content>
