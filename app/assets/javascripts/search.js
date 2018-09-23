document.addEventListener("DOMContentLoaded", function(event) {
	var searchBar = document.getElementById('search')
	var url = '/api/v1/items/'
	var searchBox = document.getElementById('searchContainer')
	var itemsDiv = document.createElement('div');
	var notFound = document.createElement('p');
	notFound.innerText = 'Not Found'

	searchBar.addEventListener('input', function(e){
		var query = searchBar.value
		clearDom()
		makeRequest(query)
	})


	function makeRequest(query){
		var request = $.ajax({
			type: 'GET', 
			url: url + query, 
			contentType: 'application/json; charset=utf-8',
			dataType: "json"
		}).done(function(data){
			if (data.status != 400) {
				showItems(data)
			} else {
				showNotFound()
			}
		}).fail(function(fd){
			console.log('api error')
		})
	}

	function showItems(data) {
		for (var i =0; i < data.length; i++) {
			var item = data[i]
			
			var itemDiv = document.createElement('div');
			var itemName = document.createElement('a');
			var itemDescription = document.createElement('p');
			var itemPrice = document.createElement('p');

			searchBox.append(itemsDiv)
			itemsDiv.append(itemDiv)

			itemDiv.append(itemName)
			itemDiv.append(itemDescription)
			itemDiv.append(itemPrice)

			itemName.href = '/users/' + item.user_id + '/items/show/' + item.id
			itemName.innerText = item.name
			itemDescription.innerText = item.description
			itemPrice.innerText = item.price
		}
	}

	function clearDom() {
		itemsDiv.innerHTML = ''
	}

	function showNotFound() {
		searchBox.append(notFound)
	}

});