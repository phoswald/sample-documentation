function loadFromTextarea(id) {
  return document.getElementById(id).value;
}

function loadFromUri(uri, callback) {
  var request = new XMLHttpRequest();
  request.open('GET', uri, true);
  request.send(null);
  request.onreadystatechange = function () {
      if (request.readyState === 4 && request.status === 200) {
        callback(request.responseText);
      }
  }
}

function convertToHtml(text) {
  var converter = new showdown.Converter();
  converter.setOption('tables', true);
  return converter.makeHtml(text);
}

function updateElement(id, html) {
  document.getElementById(id).innerHTML = html;
}

function convert() {
  var text = loadFromTextarea('source-text');
  var html = convertToHtml(text);
  updateElement('target-html', html);
}

function load() {
  var uri = document.getElementById('source-uri').value;
  loadFromUri(uri, function(text) {
    var html = convertToHtml(text);
    updateElement('target-html', html);
  });
}