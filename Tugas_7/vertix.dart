// Representasi graf menggunakan matriks ketetanggaan berdasarkan jarak yang Anda berikan
const Map<String, Map<String, int>> graph = {
  'A': {'B': 8, 'C': 3, 'D': 4, 'E': 10},
  'B': {'A': 8, 'C': 5, 'D': 2, 'E': 7},
  'C': {'A': 3, 'B': 5, 'D': 1, 'E': 6},
  'D': {'A': 4, 'B': 2, 'C': 1, 'E': 3},
  'E': {'A': 10, 'B': 7, 'C': 6, 'D': 3},
};

// Fungsi untuk menghitung jarak dari suatu rute
int calculateDistance(List<String> route) {
  int totalDistance = 0;

  for (int i = 0; i < route.length - 1; i++) {
    String from = route[i];
    String to = route[i + 1];
    totalDistance += graph[from]![to]!;
  }

  return totalDistance;
}

// Fungsi untuk mencari semua permutasi dari simpul-simpul selain 'A'
List<List<String>> findPermutations(List<String> vertices) {
  if (vertices.length == 1) {
    return [vertices];
  }

  List<List<String>> permutations = [];
  for (int i = 0; i < vertices.length; i++) {
    List<String> remaining = List.from(vertices)..removeAt(i);
    for (var perm in findPermutations(remaining)) {
      permutations.add([vertices[i]] + perm);
    }
  }

  return permutations;
}

// Fungsi utama untuk mencari rute terpendek
void findShortestRoute() {
  String start = 'A';
  List<String> vertices = ['B', 'C', 'D', 'E'];  // Semua simpul selain A
  List<List<String>> permutations = findPermutations(vertices);  // Semua kemungkinan rute

  List<String> shortestRoute = [];
  int shortestDistance = double.maxFinite.toInt();  // Nilai maksimum

  for (var perm in permutations) {
    // Buat rute yang mulai dari A dan berakhir di A
    List<String> route = [start] + perm + [start];
    int distance = calculateDistance(route);

    // Cek apakah jarak ini lebih pendek dari jarak sebelumnya
    if (distance < shortestDistance) {
      shortestDistance = distance;
      shortestRoute = route;
    }
  }

  print('Rute terpendek: ${shortestRoute.join(' -> ')}');
  print('Total jarak yang ditempuh: $shortestDistance');
}

void main() {
  findShortestRoute();
}
