xquery version "3.1";
<escuderias>
{   
    for $main in doc("motogp.xml")//motogp/escuderias return <nombre> {$main} </nombre> 
    }        
</escuderias>