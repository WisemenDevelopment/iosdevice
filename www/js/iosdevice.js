var iosdevice = {
getPicture: function(success, failure){
    cordova.exec(success, failure, "iosdevice", "GetDevice", []);
}
};
module.exports = iosdevice;