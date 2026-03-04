var app = {};

var callback = function (dades) {
    console.log(dades);
    app.offices = dades;
    let html = "";

    app.offices.map(office => {
        const extraAddress = office.addressLine2 === null ? "" : office.addressLine2
        const direccio = office.addressLine1 + ", " + extraAddress;
        const pais = office.country + " - " + office.territory;

        html += `
        <section class="oficina">
            <div class="heading-oficina"><h2>${office.city}</h2></div>
            <table class="office-table">
                <tr>
                    <td class="img-oficina" rowspan="4" >
                        <img class="office-img" src="${office.picture}" alt="Imatge ${office.city}">
                    </td>
                    <td>
                        <strong>Telèfon: </strong>${office.phone}
                    </td>
                </tr>
                <tr>
                    <td><strong>Direcció: </strong>${direccio}</td>
                </tr>
                <tr>
                    <td><strong>Estat: </strong>${office.state}</td>
                </tr>
                <tr>
                    <td><strong>País: </strong>${pais}</td>
                </tr>
            </table>
        </section>
        `;

    });

    document.getElementById("results").innerHTML = html;

}
const results = document.getElementById("results");
