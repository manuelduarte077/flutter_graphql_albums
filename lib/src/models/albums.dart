class Album {
  static String getAlbums = r""" 
    query getAlbums($page: Int, $limit: Int) {
      albums(options: { paginate: { page: $page, limit: $limit } }) {
        data {
          id
          title
          user {
            name
            username
            email
            company {
              name
            }
          }
        }
      }
    }
   """;
}
