Future<String> downloadFile() async {
  await Future.delayed(Duration(seconds: 2));

  // Simuler une erreur
  bool hasError = true;
  if (hasError) {
    throw Exception("Erreur: Le fichier est introuvable!");
  }

  return "Fichier downloaded!";
}

void main() async {
  print("Start download...");

  try {
    String result = await downloadFile();
    print("Succès: $result");
  } catch (error) {
    print("Waqa3 mochkil: $error");
  } finally {
    print("Had l-bloc kay-t-executa dima (Success aw Error)");
  }
}
