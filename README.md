knockout-deferred-modal
=======================

Loosely based on http://aboutcode.net/2012/11/15/twitter-bootstrap-modals-and-knockoutjs.html

Usage
=====


    # definition
    class MyDeferredModal extends DeferredModal
      constructor: ->
        super "knockout-template-id"
  
    # usage
    new MyDeferredModal().show().then (result) ->
      ...
  
    
