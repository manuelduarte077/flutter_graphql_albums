class Album {
  static String getAlbums = """ 
    query getAlbums {
      albums(options: { paginate: { page: 1, limit: 5 } }) {
        data {
          id
          title
          user {
            name
            username
            email
          }
        }
      }
    }
   """;
}
