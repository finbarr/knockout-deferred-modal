knockout-deferred-modal
=======================

Loosely based on http://aboutcode.net/2012/11/15/twitter-bootstrap-modals-and-knockoutjs.html

Depends on jQuery, twitter bootstrap and underscore (though it could easily be modified to not depend on underscore).

Usage
=====


    # definition
    class MyDeferredModal extends DeferredModal
      constructor: ->
        super "knockout-template-id"
  
    # usage
    new MyDeferredModal().show().then (result) ->
      ...
  
    
