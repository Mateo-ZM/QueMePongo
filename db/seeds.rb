guardarropa_1 = Guardarropa.create! Nombre: "Prueba 1", link_imagen: "https://lh3.googleusercontent.com/proxy/aham7mF2hTalORrgCuIBUpqK3vEAtyy8SUjnWrdT3NztEfyvjfn7I4QbnnUYaUMK_kPUxYPfCf_mCwnSnsjelKEpfd1GCguCEocejIf1HVGrTeZ4ILI7TrJliLo69as"
guardarropa_2 = Guardarropa.create! Nombre: "Prueba 2", link_imagen: "https://lh3.googleusercontent.com/proxy/aham7mF2hTalORrgCuIBUpqK3vEAtyy8SUjnWrdT3NztEfyvjfn7I4QbnnUYaUMK_kPUxYPfCf_mCwnSnsjelKEpfd1GCguCEocejIf1HVGrTeZ4ILI7TrJliLo69as"
guardarropa_3 = Guardarropa.create! Nombre: "Prueba 3", link_imagen: "https://lh3.googleusercontent.com/proxy/aham7mF2hTalORrgCuIBUpqK3vEAtyy8SUjnWrdT3NztEfyvjfn7I4QbnnUYaUMK_kPUxYPfCf_mCwnSnsjelKEpfd1GCguCEocejIf1HVGrTeZ4ILI7TrJliLo69as"

guardarropa_1.prendas << (Prenda.create! tipo: "Remera manga corta", categoria: :Torso, tela: :Algodon, color_primario: "rojo", link_imagen:"https://cdyc.com.ar/wp-content/uploads/2018/09/remeraroja.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Remera manga larga", categoria: :Torso, tela: :Mohair, color_primario: "azul", link_imagen: "https://www.remerasya.com/pub/media/catalog/product/cache/e4d64343b1bc593f1c5348fe05efa4a6/r/e/remera_azul_lisa_manga_larga_op1_.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Botas militares", categoria: :Pies, tela: :Cuero, color_primario: "negro", color_secundario: "gris", link_imagen: "https://i.pinimg.com/originals/fb/d6/26/fbd6266766a20e6ce09f053b915409bc.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Pantalon de Jean", categoria: :Piernas, tela: :Denim, color_primario: "azul", color_secundario: "celeste", link_imagen:"https://http2.mlstatic.com/D_NQ_NP_803806-MLA31232938787_062019-O.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Camisa negra", categoria: :Torso, tela: :Seda, color_primario: "negro", color_secundario:"blanco", link_imagen: "https://microcamisa.files.wordpress.com/2012/10/cropped-camisa22.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Bandana Azul", categoria: :Accesorio, tela: :Seda, color_primario: "azul", color_secundario: "blanco", link_imagen: "http://d3ugyf2ht6aenh.cloudfront.net/stores/001/174/214/products/bandana-azul1-63efeb039c7b541ed015902549162990-640-0.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Pollera amarilla", categoria: :Piernas, tela: :Mohair, color_primario: "amarillo", link_imagen: "https://cdn.renovatuvestidor.com/wp-content/uploads/8f54c66cd6181f4e98f9786bb2b98227-600x600.jpg")
guardarropa_2.prendas << (Prenda.create! tipo: "Remera de ACDC", categoria: :Torso, tela: :Lana, color_primario: "negro", color_secundario: "blanco", link_imagen: "http://d3ugyf2ht6aenh.cloudfront.net/stores/001/333/138/products/hombre31-6b9de400e6fe8d2b1516024655782837-640-0.jpg")
guardarropa_2.prendas << (Prenda.create! tipo: "Remera sol naciente", categoria: :Torso, tela: :Lino, color_primario: "blanco", color_secundario: "rojo", link_imagen: "https://www.remerasweb.com/675-home_default/remera-japon-sol-naciente.jpg")
guardarropa_2.prendas << (Prenda.create! tipo: "Botas facheras", categoria: :Pies, tela: :Cuero, color_primario: "naranja", color_secundario: "blanco", link_imagen: "https://www.digitalsport.com.ar/files/products/5ec2f5747a201-488282-500x500.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Remera manga corta", categoria: :Torso, tela: :Algodon, color_primario: "rojo", link_imagen:"https://cdyc.com.ar/wp-content/uploads/2018/09/remeraroja.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Remera manga larga", categoria: :Torso, tela: :Mohair, color_primario: "azul", link_imagen: "https://www.remerasya.com/pub/media/catalog/product/cache/e4d64343b1bc593f1c5348fe05efa4a6/r/e/remera_azul_lisa_manga_larga_op1_.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Botas militares", categoria: :Pies, tela: :Cuero, color_primario: "negro", color_secundario: "gris", link_imagen: "https://i.pinimg.com/originals/fb/d6/26/fbd6266766a20e6ce09f053b915409bc.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Pantalon de Jean", categoria: :Piernas, tela: :Denim, color_primario: "azul", color_secundario: "celeste", link_imagen:"https://http2.mlstatic.com/D_NQ_NP_803806-MLA31232938787_062019-O.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Camisa negra", categoria: :Torso, tela: :Seda, color_primario: "negro", color_secundario:"blanco", link_imagen: "https://microcamisa.files.wordpress.com/2012/10/cropped-camisa22.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Bandana Azul", categoria: :Accesorio, tela: :Seda, color_primario: "azul", color_secundario: "blanco", link_imagen: "http://d3ugyf2ht6aenh.cloudfront.net/stores/001/174/214/products/bandana-azul1-63efeb039c7b541ed015902549162990-640-0.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Pollera amarilla", categoria: :Piernas, tela: :Mohair, color_primario: "amarillo", link_imagen: "https://cdn.renovatuvestidor.com/wp-content/uploads/8f54c66cd6181f4e98f9786bb2b98227-600x600.jpg")
guardarropa_2.prendas << (Prenda.create! tipo: "Remera de ACDC", categoria: :Torso, tela: :Lana, color_primario: "negro", color_secundario: "blanco", link_imagen: "http://d3ugyf2ht6aenh.cloudfront.net/stores/001/333/138/products/hombre31-6b9de400e6fe8d2b1516024655782837-640-0.jpg")
guardarropa_2.prendas << (Prenda.create! tipo: "Remera sol naciente", categoria: :Torso, tela: :Lino, color_primario: "blanco", color_secundario: "rojo", link_imagen: "https://www.remerasweb.com/675-home_default/remera-japon-sol-naciente.jpg")
guardarropa_2.prendas << (Prenda.create! tipo: "Botas facheras", categoria: :Pies, tela: :Cuero, color_primario: "naranja", color_secundario: "blanco", link_imagen: "https://www.digitalsport.com.ar/files/products/5ec2f5747a201-488282-500x500.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Remera manga corta", categoria: :Torso, tela: :Algodon, color_primario: "rojo", link_imagen:"https://cdyc.com.ar/wp-content/uploads/2018/09/remeraroja.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Remera manga larga", categoria: :Torso, tela: :Mohair, color_primario: "azul", link_imagen: "https://www.remerasya.com/pub/media/catalog/product/cache/e4d64343b1bc593f1c5348fe05efa4a6/r/e/remera_azul_lisa_manga_larga_op1_.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Botas militares", categoria: :Pies, tela: :Cuero, color_primario: "negro", color_secundario: "gris", link_imagen: "https://i.pinimg.com/originals/fb/d6/26/fbd6266766a20e6ce09f053b915409bc.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Pantalon de Jean", categoria: :Piernas, tela: :Denim, color_primario: "azul", color_secundario: "celeste", link_imagen:"https://http2.mlstatic.com/D_NQ_NP_803806-MLA31232938787_062019-O.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Camisa negra", categoria: :Torso, tela: :Seda, color_primario: "negro", color_secundario:"blanco", link_imagen: "https://microcamisa.files.wordpress.com/2012/10/cropped-camisa22.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Bandana Azul", categoria: :Accesorio, tela: :Seda, color_primario: "azul", color_secundario: "blanco", link_imagen: "http://d3ugyf2ht6aenh.cloudfront.net/stores/001/174/214/products/bandana-azul1-63efeb039c7b541ed015902549162990-640-0.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Pollera amarilla", categoria: :Piernas, tela: :Mohair, color_primario: "amarillo", link_imagen: "https://cdn.renovatuvestidor.com/wp-content/uploads/8f54c66cd6181f4e98f9786bb2b98227-600x600.jpg")
guardarropa_2.prendas << (Prenda.create! tipo: "Remera de ACDC", categoria: :Torso, tela: :Lana, color_primario: "negro", color_secundario: "blanco", link_imagen: "http://d3ugyf2ht6aenh.cloudfront.net/stores/001/333/138/products/hombre31-6b9de400e6fe8d2b1516024655782837-640-0.jpg")
guardarropa_2.prendas << (Prenda.create! tipo: "Remera sol naciente", categoria: :Torso, tela: :Lino, color_primario: "blanco", color_secundario: "rojo", link_imagen: "https://www.remerasweb.com/675-home_default/remera-japon-sol-naciente.jpg")
guardarropa_2.prendas << (Prenda.create! tipo: "Botas facheras", categoria: :Pies, tela: :Cuero, color_primario: "naranja", color_secundario: "blanco", link_imagen: "https://www.digitalsport.com.ar/files/products/5ec2f5747a201-488282-500x500.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Remera manga corta", categoria: :Torso, tela: :Algodon, color_primario: "rojo", link_imagen:"https://cdyc.com.ar/wp-content/uploads/2018/09/remeraroja.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Remera manga larga", categoria: :Torso, tela: :Mohair, color_primario: "azul", link_imagen: "https://www.remerasya.com/pub/media/catalog/product/cache/e4d64343b1bc593f1c5348fe05efa4a6/r/e/remera_azul_lisa_manga_larga_op1_.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Botas militares", categoria: :Pies, tela: :Cuero, color_primario: "negro", color_secundario: "gris", link_imagen: "https://i.pinimg.com/originals/fb/d6/26/fbd6266766a20e6ce09f053b915409bc.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Pantalon de Jean", categoria: :Piernas, tela: :Denim, color_primario: "azul", color_secundario: "celeste", link_imagen:"https://http2.mlstatic.com/D_NQ_NP_803806-MLA31232938787_062019-O.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Camisa negra", categoria: :Torso, tela: :Seda, color_primario: "negro", color_secundario:"blanco", link_imagen: "https://microcamisa.files.wordpress.com/2012/10/cropped-camisa22.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Bandana Azul", categoria: :Accesorio, tela: :Seda, color_primario: "azul", color_secundario: "blanco", link_imagen: "http://d3ugyf2ht6aenh.cloudfront.net/stores/001/174/214/products/bandana-azul1-63efeb039c7b541ed015902549162990-640-0.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Pollera amarilla", categoria: :Piernas, tela: :Mohair, color_primario: "amarillo", link_imagen: "https://cdn.renovatuvestidor.com/wp-content/uploads/8f54c66cd6181f4e98f9786bb2b98227-600x600.jpg")
guardarropa_2.prendas << (Prenda.create! tipo: "Remera de ACDC", categoria: :Torso, tela: :Lana, color_primario: "negro", color_secundario: "blanco", link_imagen: "http://d3ugyf2ht6aenh.cloudfront.net/stores/001/333/138/products/hombre31-6b9de400e6fe8d2b1516024655782837-640-0.jpg")
guardarropa_2.prendas << (Prenda.create! tipo: "Remera sol naciente", categoria: :Torso, tela: :Lino, color_primario: "blanco", color_secundario: "rojo", link_imagen: "https://www.remerasweb.com/675-home_default/remera-japon-sol-naciente.jpg")
guardarropa_2.prendas << (Prenda.create! tipo: "Botas facheras", categoria: :Pies, tela: :Cuero, color_primario: "naranja", color_secundario: "blanco", link_imagen: "https://www.digitalsport.com.ar/files/products/5ec2f5747a201-488282-500x500.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Remera manga corta", categoria: :Torso, tela: :Algodon, color_primario: "rojo", link_imagen:"https://cdyc.com.ar/wp-content/uploads/2018/09/remeraroja.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Remera manga larga", categoria: :Torso, tela: :Mohair, color_primario: "azul", link_imagen: "https://www.remerasya.com/pub/media/catalog/product/cache/e4d64343b1bc593f1c5348fe05efa4a6/r/e/remera_azul_lisa_manga_larga_op1_.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Botas militares", categoria: :Pies, tela: :Cuero, color_primario: "negro", color_secundario: "gris", link_imagen: "https://i.pinimg.com/originals/fb/d6/26/fbd6266766a20e6ce09f053b915409bc.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Pantalon de Jean", categoria: :Piernas, tela: :Denim, color_primario: "azul", color_secundario: "celeste", link_imagen:"https://http2.mlstatic.com/D_NQ_NP_803806-MLA31232938787_062019-O.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Camisa negra", categoria: :Torso, tela: :Seda, color_primario: "negro", color_secundario:"blanco", link_imagen: "https://microcamisa.files.wordpress.com/2012/10/cropped-camisa22.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Bandana Azul", categoria: :Accesorio, tela: :Seda, color_primario: "azul", color_secundario: "blanco", link_imagen: "http://d3ugyf2ht6aenh.cloudfront.net/stores/001/174/214/products/bandana-azul1-63efeb039c7b541ed015902549162990-640-0.jpg")
guardarropa_1.prendas << (Prenda.create! tipo: "Pollera amarilla", categoria: :Piernas, tela: :Mohair, color_primario: "amarillo", link_imagen: "https://cdn.renovatuvestidor.com/wp-content/uploads/8f54c66cd6181f4e98f9786bb2b98227-600x600.jpg")
guardarropa_2.prendas << (Prenda.create! tipo: "Remera de ACDC", categoria: :Torso, tela: :Lana, color_primario: "negro", color_secundario: "blanco", link_imagen: "http://d3ugyf2ht6aenh.cloudfront.net/stores/001/333/138/products/hombre31-6b9de400e6fe8d2b1516024655782837-640-0.jpg")
guardarropa_2.prendas << (Prenda.create! tipo: "Remera sol naciente", categoria: :Torso, tela: :Lino, color_primario: "blanco", color_secundario: "rojo", link_imagen: "https://www.remerasweb.com/675-home_default/remera-japon-sol-naciente.jpg")
guardarropa_2.prendas << (Prenda.create! tipo: "Botas facheras", categoria: :Pies, tela: :Cuero, color_primario: "naranja", color_secundario: "blanco", link_imagen: "https://www.digitalsport.com.ar/files/products/5ec2f5747a201-488282-500x500.jpg")



