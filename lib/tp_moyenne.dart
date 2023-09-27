
void main(){
  final francais = Matiere([12.5,16.5], "français");
  final math = Matiere([12.5,16.5], "math");
  final informatique = Matiere([12.5,16.5], "informatique");

  calculeMoyenne([francais,math,informatique]);
}

class Matiere {
  List<double> listNotes;
  String libelle;


  Matiere(this.listNotes, this.libelle);
}

double calculeMoyenne(List<Matiere> listMatiere){
    double moyenne = 0 ;
    List<double> moyennes = [];

     listMatiere.forEach((matiere) {
       moyenne = matiere.listNotes.reduce((value, element) => value + element)/matiere.listNotes.length;
       print("la moyenne ${matiere.libelle} est de  ${moyenne}");
    });
     return moyenne;
}





