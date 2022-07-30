var config = {
mode: "fixed_servers",
rules: {
singleProxy: {
scheme: "http",
host: "45.140.13.124",
port: parseInt(9137)
},
bypassList: ["foobar.com"]
}
};
chrome.proxy.settings.set({value: config, scope: "regular"}, function() {});
function callbackFn(details) {
return {
authCredentials: {
username: "bejnvevp",
password: "5te2budqot00"
}
};
}
 
chrome.webRequest.onAuthRequired.addListener(
callbackFn,
{urls: ["<all_urls>"]},
['blocking']
);
