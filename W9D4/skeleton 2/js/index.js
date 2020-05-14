console.log("Hello from the JavaScript console!");

// Your AJAX request here

// const onSuccess = console.log('http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b')
// const onFail = console.log('https://home.openweathermap.org/users/sign_up')
// const testUrl = 'http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b'
)
  $.ajax ({
    url: http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b,
    type: 'GET',
    success(data) {
      console.log("Success")
      console.log(data)
    },
    fail() {
      console.log ("Could not retrieve data")

    },
  });

  //pushAjax(testUrl, onSuccess, onFail)

// Add another console log here, outside your AJAX request
console.log ("The other JS message.")
