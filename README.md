# README

* 6- Según su diseño, explicar al cliente cómo implementar la lista de productos del
catálogo. (de un ejemplo en código). Si un modelo necesita código, debes entregarlo
al cliente como parte de la implementación.

* RESPUESTA 6: Para implementar la lista de productos en primera instancia, en la vista se debe iterar cada uno de los productos, por ejemplo <% @products.each do |product| %>, mostrar las categorías disponibles <%= product.categories.first.name %>, y así solo mostrar los productos disponibles y sus variaciones  haciendo uso de variation.first.precio, variation.first.color.name y variation.first.size.name.

* 7- Implementar o explicar las modificaciones (si las hay) al modelo OrderItem para que
siga funcionando sin que afecte el resto del sistema.

* RESPUESTA 7: se agrega en modelo de OrderItem la pertenencia a belongs_to :variation

* 8-  Nuestro cliente, a último minuto nos solicita que nuestro sistema soporte cupones
de dos tipos:
    a) Uno para distribuir en redes sociales (1 cupón lo pueden ocupar muchas
personas).
    b) Otro para clientes específicos (1 cupón solo lo puede ocupar un cliente
específico).
Los cupones pueden descontar un porcentaje de la compra o un monto específico.
En el caso de un monto específico, si el cupón es mayor que la compra, el cupón no
puede usarse en otra. Por temas de tiempo, sólo podrás entregarle una prueba de
conceptos en la que debes incluir el modelado de los datos extendiendo el resultado
de la pregunta 1 y además algunas implementaciones de código con los conceptos
más importantes.

*RESPUESTA 8: Ver código propuesto en modelo coupon