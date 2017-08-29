'use strict';
angular.module('app')
.constant('PrefixURL', {
    apiURL: 'http://localhost/cing/restfull/api/',
    articleURL: 'apiarticles',
    uploadURL:'apiuploads',
    attachmentURL:'apiattachments'
})
.value('_', window._);