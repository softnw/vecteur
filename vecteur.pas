unit vecteur;

interface


type Vect = record
			posY:integer;
			posX:integer;
end;
procedure setVectPosX ( var position: Vect;x:INTEGER);   

procedure setVectPosY ( var position: Vect;y:INTEGER) ; 

function getVectPosX (position:Vect): INTEGER;

function getVectPosY (position:Vect): INTEGER;

function addvecteur(vect1,vect2:Vect):Vect;

function sousvecteur(vect1,vect2:Vect):Vect;

function multiplivecteur(vect1:Vect;alpha:INTEGER):Vect;

function prodsca (vect1,vect2:Vect):INTEGER;

function prodvect (vect1,vect2:Vect):Vect;





implementation 
//BUT recuperer la valeur de la position x d'un vecteur
//ENTREE vecteur
//SORTIE position x
procedure setVectPosX(var position : Vect;x:INTEGER);
	begin
	position.posX := x ;
	end;
//BUT 
//ENTREE 
//SORTIE 
procedure setVectPosY(var position : Vect;y:INTEGER);
	begin
	position.posY := y ;
	end;
//BUT donne une valeur a la coordonée x d'un vecteur
//ENTREE un vecteur x et une position donné par l'utilisateur
//SORTIE la position du vecteur en x
function getVectPosX(position: Vect) : INTEGER;
	begin
	getVectPosX := position.posX;
	end;
//BUT donne une valeur a la coordonée y d'un vecteur
//ENTREE un vecteur y et une position donné par l'utilisateur
//SORTIE la position du vecteur en y

function getVectPosY(position:Vect) : INTEGER;
		begin
		getVectPosY := position.posY;
		end;
//BUT : faire une addiction vectoriel 
//ENTREE deux vecteur
//SORTIE la somme des deux vecteurs 

function addvecteur(vect1,vect2:Vect):Vect;
var addvect : Vect;
begin
addvect.posX := vect1.posX+vect2.posX;
addvect.posY := vect1.posY+vect2.posY;
addvecteur := addvect;
end;
//BUT: faire une soustraction vectoriel 
//ENTREE deux vecteur
//SORTIE la difference des deux vecteurs
function sousvecteur(vect1,vect2:Vect):Vect;
var sousvect : Vect;
begin
sousvect.posX := vect1.posX-vect2.posX;
sousvect.posY := vect1.posY-vect2.posY;
sousvecteur := sousvect;
end;
//BUT: obtenir un produit de vecteur par un scalaire 
//ENTREE: un entier et un vecteur
//SORTIE: un produit 

function multiplivecteur(vect1:Vect;alpha:INTEGER):Vect;
var multivecteur : Vect;
begin
	multivecteur.posX := vect1.posX*alpha;
	multivecteur.posY := vect1.posY*alpha;
	multiplivecteur:= multivecteur;
end;
//BUT: obtenir un scalaire avec deux vecteur
//ENTREE: deux vecteur
//SORTIE: un scalaire
function prodsca (vect1,vect2:Vect):INTEGER;
	begin
	prodsca := (vect1.posX*vect2.posX) + (vect1.posY*vect2.posY);
	end;
//BUT: obtenir un produit de deux vecteur 
//ENTREE: deux vecteur 
//SORTIE: un vecteur
function prodvect (vect1,vect2:Vect):Vect;
		var produitvect : Vect;
		begin
		produitvect.posX:=vect1.posY-vect2.posY;
		produitvect.posY:=vect2.posX-vect1.posX;
		prodvect:=produitvect;
		end;

		
end.





















