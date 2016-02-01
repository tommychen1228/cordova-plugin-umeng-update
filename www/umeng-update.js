module.exports = {
    initApp: function (androidKey, iosKey, successHandler, errorHandler) {
        cordova.exec(successHandler, errorHandler, "UMengUpdatePlugin", "initApp", [androidKey, iosKey]);
    }
};