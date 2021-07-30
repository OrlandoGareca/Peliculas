class Cast {
  List<Actor> actores = [];
  Cast.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;
    jsonList.forEach((item) {
      final actor = Actor.fromJsonMap(item);
      actores.add(actor);
    });
  }
}

class Actor {
  bool adult = true;
  int gender = 0;
  int id = 0;
  String name = "";
  String originalName = "";
  double popularity = 0.0;
  String profilePath = "";
  int castId = 0;
  String character = "";
  String creditId = "";
  int order = 0;
  String job = "";

  Actor({
    required this.adult,
    required this.gender,
    required this.id,
    required this.name,
    required this.originalName,
    required this.popularity,
    required this.profilePath,
    required this.castId,
    required this.character,
    required this.creditId,
    required this.order,
    required this.job,
  });

  Actor.fromJsonMap(Map<String, dynamic> json) {
    adult = json['adult'];
    gender = json['gender'];
    id = json['id'];
    name = json['name'];
    originalName = json['original_name'];
    popularity = json['popularity'];
    profilePath = json['profile_path'];
    castId = json['cast_id'];
    character = json['character'];
    creditId = json['credit_id'];
    order = json['order'];
    job = json['job'];
  }
  getFoto() {
    if (profilePath == null) {
      return 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADgCAMAAADCMfHtAAAAMFBMVEX////MzMzJycnNzc3T09P7+/vh4eHY2NjU1NT19fXQ0NDe3t7r6+vw8PDi4uLo6OiDTXA7AAAFZElEQVR4nO2d6bKbMAyFiw1hC/D+b1tMNpJwWbUcHH3/2pnOcCpbm23l3z/DMAzDMAzDMAzDMAzDMAzDMAzDMAzDMH6MrOnqPK0S15P4NK/ba5lpfxQZZZdXQdgb/V/44tJEoLKpq09xY5k+v2p/4SGy1v8t76myLrW/cy9lvijvLjI9pSF7favk3TRWp9OYbdF3s2Oj/c2baDfqGzTm53GsZbVDYNDYaX/5SvYY8ExmzIrdAnuJHn83ln6/vkEj+kq9HjDgXWKtrWGW7rDAsBm1VcxAIRBaIo1AYIlUAmElNmQCQd1NSacvwQwaB+Pgl0S40L+1llhGW9EHdF7mCZa3od2EN7C2Ys6gMPFAhcbxbHQKpKjIoS9B8qcXFhP2VNrK7mRM+nojgnTg2EyIYsSMOJsZg7ETGYL9i0JbXaBiFJg4gDMNyqJpQiFAGVVzCux9jX5iwysQwNfwLtIe9WXKvEj7/FtbIbdAdW+acS9S9TKRp256Q7mGYt+GiXbDJuUX6HQjImPW/VSoGhH5SsORQlVXU/I7msRdNBUKuFJlZ8paGz5QrRH3X7vYgGorg7FF80I1M41fYR29wvhtGL/C+H1p/PEw/pyGvQ+VaOel8dcW8deHP1DjSyQ1qgJ/oNcWf7+U39Vo97z5G6bqR/nxnz1xL1P980P2M2Btfb9wjs+b1qh70gBrjQhxPTH+O1GcrQwAPzPAJhDEhIw7MdVW9oRpJ0I40htM97wRYuGD6O/qs3SkUK5A36Ffp0hvEQbIGzbq99m+IL4qDORHH9BuRfXuzBQNpUDVTv6f0HkbqEg4hkoinBt9Ef17fBorwi7RG8fdjWu1NSywd/rOUyBWrjbJkVfdzuMF+gn2+xtoHzOm3DdmyPkTrNAHXbJdo6uR6sFFsq21hitOsQPHrJ4pOOirULpqm8jqdWvVufyU+gJZly7PvqzOO/tyoGxnRLpe3mnNNyK7himt7zqHP+fdua33Ttm1eVF57xPvqzSvuxgG7BoGLGXTtXs6ZU17xXc8WXMp3IDvtjmSsh3crUsvyNGjqUezrZ1fH8jHMbP/zwENkVn7Wdz3BmmXRd6C5Weas3EFCPBHChoMMrO5yq6uplNXl4CVUpeZ7DNsrrp7+52ALDij3H/N2n//ZxccjY1fLCEGL5JUA/7mi5b+Sb+TQc4uNte668GoilcY8IhG/eYp97MgVyjvRomr+qrRkX6k5wSaXfAj09e3SFTbjEIC9U6jRJaopkSRR86aEkVej44kiu9FiaeV7xKFUzj+507fEmXjYiEusEcyuxF5pP6F4KVvjtnWKxB0qCprNBHcisKBYoTUrWEtfWLrVDSZ+ZQosU4VQuEICX8qMUfwbwRSG6VI8YJdoeYuDLCn4BKjPubhjhgiY5Nm4TaiwCyTJXiNKDJTaAFedyowrGUZztc0utH+AWcDVd/PDDA+LWX9GYT18E0dkpg4uwa+N0Mgi5TR14AsUr4iCmWRJmxDa/S6F18wlYksD7b3wbNM9cuKFzzeVPyoYg6WoA8TKwIsQV+rDzwJS26KZEKWeAG1DVnSGqBoGGDYiEDRMMCwEQE6NGPojzAwyvsR5IkbmKPpjUitEKHL9gb58BOojCZA7mrAXClD8g1T3z8hftnOORxxJ8TOVP3Y8Bvi8wu4YNFD60zBstIAcSdD557XLMRnULr3EyYhDhdw4TChDhdQLYw7tL8/gxfwifttgAGf+AetkbrBL0gV4gUL4lYN0LHTC9IKETFpo01q4lcI18MIkFb5gIk3cWIav0LA0oL4lmL8CuF6iQHS8glTIeXRhfbt7klM4TaFkl/uA9WIdKAYyEesixb/AZtxXSvWz7PbAAAAAElFTkSuQmCC';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$profilePath';
    }
  }
}
