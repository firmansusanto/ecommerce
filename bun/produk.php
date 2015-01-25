<?php

$jsonnya= array(
    "product"=>[array(
        
    "nama"=>"MotherBoard",
    "deskripsi"=>"MotherBoard Canggih"
    ),
      
    array(
    "nama"=>"CPU Paket 1",
    "deskripsi"=>"Processor tipe menengah"
    ),
    
    array(
    "nama"=>"ASUS XII ",
    "deskripsi"=>"Dual Channel 1333mb speed"
    ),
    
    array(
    "nama"=>"PROCESSOR Intel i5",
    "deskripsi"=>"Processor tipe atas"
    )
        
              ]);
    
    $kuarin = json_encode($jsonnya);
    echo $kuarin;
    
            
                    
?>