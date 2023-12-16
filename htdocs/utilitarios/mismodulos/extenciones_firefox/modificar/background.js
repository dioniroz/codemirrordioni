browser.contextMenus.create({
  id: "eat-page",
  title: "insertar requiredjs"
});

browser.contextMenus.onClicked.addListener(function(info, tab) {
  if (info.menuItemId == "eat-page") {
    browser.tabs.executeScript({
      file: "page-eater.js"
    });
  }
});