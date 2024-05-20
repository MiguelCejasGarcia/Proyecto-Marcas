xquery version "3.1";

    let $id := request:get-parameter("id",0)
    let $piloto := doc("motogp.xml")//pilotos/piloto[@id=$id]
    return $piloto
