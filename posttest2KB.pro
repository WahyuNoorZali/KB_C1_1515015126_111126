domains
  tambah = integer

  brand,color = symbol
  price = ulong
  
  orang = symbol
  
predicates
  
  pertambahan(tambah,tambah,tambah,tambah) - procedure (i,i,i,o)
  
  motor(brand,color,price) - nondeterm (o,o,o)
  
  pemilikmotor(symbol,symbol,symbol) - nondeterm (i,o,o)
  
  listmotor(char) - nondeterm (i)
  
  sipemilik(orang) - nondeterm (o)
  sipemilik(orang) - nondeterm (o)
  
  run - nondeterm ()

clauses
  pertambahan(X,Y,Z,Hasil):-
	Hasil=X+Y+Z.
	
  motor( supra,hitam,10000000).
  motor( satria,merah,15000000).
  motor( ninja,hijau,24000000).
  
  pemilikmotor("Rudi","supra"," 2943").
  sipemilik("Rudi").

  
  listmotor(Ch):-
	's' = Ch,'u' = Ch,'p' = Ch,'r' = Ch,'a' = Ch,
	's' = Ch,'a' = Ch,'t' = Ch,'r' = Ch,'i' = Ch,'a' = Ch,
	'n' = Ch,'i' = Ch,'n' = Ch,'j' = Ch,'a' = Ch.

  
  run:-
  write(),nl,
  write("Exit . . ."),nl,
  readchar(_).


goal
  
  listmotor('s'); listmotor('u'); listmotor('p'); listmotor('r'); listmotor('a');
  listmotor('s'); listmotor('a'); listmotor('t'); listmotor('r'); listmotor('i'); listmotor('a');
  listmotor('n'); listmotor('i'); listmotor('n'); listmotor('j'); listmotor('a');

  motor( Merek, Warna, Harga);
  write(),nl,
  
  pertambahan(10000000,15000000,24000000,Jumlah_Biaya_Dari_Harga_Motor);
  write(),nl,
  
  pemilikmotor("Rudi",Motor,KT);
  
  sipemilik(Pemilik_Motor);
  
  run.