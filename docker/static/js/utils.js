// Utility JS functions are to be defined here
function resizeIFrameToFitContent( iFrame ) {
    iFrame.width  = iFrame.contentWindow.document.body.scrollWidth;
    iFrame.height = iFrame.contentWindow.document.body.scrollHeight;
}

// used to fetch all methods of an arbitrary object to display to client
function getAllMethodsOfObejct(obj) {
    var result = [];
    for (var id in obj) {
      try {
        if (typeof(obj[id]) == "function") {
          result.push(id + ": " + obj[id].toString());
        }
      } catch (err) {
        result.push(id + ": inaccessible");
      }
    }
    return result;
  }



function loadHtml(elementId, fileName) {
    $(elementId).html('<object data="'+ fileName + '">');
};
