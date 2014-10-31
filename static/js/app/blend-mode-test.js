/*global window: false, document: false */

if (Modernizr.addAsyncTest !== undefined) {
    Modernizr.addAsyncTest(function () {
        'use strict';
        setTimeout(function () {
            var mix_blend_mode;
            try {
                mix_blend_mode = 
                Modernizr.addTest('bgblendmode', mix_blend_mode);
            } catch (err) {
                Modernizr.addTest('bgblendmode', false);
            }
        });
    });
}