#iOS8 bug in UIModalPresentationStyleOverCurrentContext

When using a tab bar controller and trying to show a modal view controller with UIModalPresentationStyleOverCurrentContext in iOS8 if the presenting view controller is not embedded in a navigation controller it works as expected but if the presenting controller is embedded in a navigation controller then the tab bar is on top of the modal.

here's the code to display the modal:

```
let vc = storyboard?.instantiateViewControllerWithIdentifier("third") as! UIViewController
vc.modalPresentationStyle = UIModalPresentationStyle.OverCurrentContext
presentViewController(vc, animated: true, completion: nil)
```

* here's how the modal looks when presented from a view controller without a navigation controller:

![modal from view controller not embedded in a navigation controller](https://raw.githubusercontent.com/Arrnas/modal-over-current-context/master/Screen%20Shot%202015-06-18%20at%2010.52.45.png)

* when presented from a view controller embedded in a navigation controller:

![modal from view controller embedded in a navigation controller](https://raw.githubusercontent.com/Arrnas/modal-over-current-context/master/Screen%20Shot%202015-06-18%20at%2010.53.27.png)

* view hierarchy for first view controller

![view hierarchy without a navigation controller](https://raw.githubusercontent.com/Arrnas/modal-over-current-context/master/Screen%20Shot%202015-06-18%20at%2010.58.33.png)

* view hierarchy for second view controller

![view hierarchy with a navigation controller](https://raw.githubusercontent.com/Arrnas/modal-over-current-context/master/Screen%20Shot%202015-06-18%20at%2010.59.13.png)
