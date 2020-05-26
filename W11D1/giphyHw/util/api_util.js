export const fetchSearchGiphys = searchTerm => {
  return $.ajax({ //FORGOT TO RETURN
    method: 'GET',
    url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=57JXANqIUzK3tk6Ly07UoiYwZiztTiuW&limit=2`,
  })
};