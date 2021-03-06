(function() {
    // Credit for the initial function -> CloudCannon Team @ https://learn.cloudcannon.com/jekyll/jekyll-search-using-lunr-js/

    function displaySearchResults(results, store) {
      var searchResults = document.getElementById('search-results');
  
      if (results.length) { // Are there any results?
        var appendString = '';
  
        for (var i = 0; i < results.length; i++) {  // Iterate over the results
          var item = store[results[i].ref];
          appendString += '<li><a href="' + item.url + '"><h3>' + item.title + '</h3></a>';
          appendString += '<p>' + item.content.substring(0, 150) + '...</p></li>';
        }
  
        searchResults.innerHTML = appendString;
      } else {
        searchResults.innerHTML = '<li>No results found</li>';
      }
    }
  
    function getQueryVariable(variable) {
      var query = window.location.search.substring(1);
      var vars = query.split('&');
  
      for (var i = 0; i < vars.length; i++) {
        var pair = vars[i].split('=');
  
        if (pair[0] === variable) {
          return decodeURIComponent(pair[1].replace(/\+/g, '%20'));
        }
      }
    }
  
    var searchTerm = getQueryVariable('query');
  
    if (searchTerm) {
        
      // var request = new XMLHttpRequest(); request.open('GET', 'https://kbve.com/assets/js/search-data.json', true);

      fetch('https://kbve.com/assets/js/search-data.json')
          .then(response => {

            
              // handle response data

          })
          .catch(err => {

              // handle errors

          });

          window.store = JSON.parse(data);
          document.getElementById('search-box').setAttribute("value", searchTerm);
          var idx = lunr.Index.load(JSON.parse(data))
          var results = idx.search(searchTerm); // Get lunr to perform a search
          displaySearchResults(results, window.store); // We'll write this in the next section
    }
  })();