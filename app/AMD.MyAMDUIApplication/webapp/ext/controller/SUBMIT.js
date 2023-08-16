sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        SUBMIT: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
