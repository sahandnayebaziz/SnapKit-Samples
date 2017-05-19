An example of one of the samples...


```swift

...

override func viewDidLoad() {
        super.viewDidLoad()

        // Initialize your new subviews
        let myBlueRectangle = UIView()
        myBlueRectangle.layer.borderColor = view.tintColor.CGColor
        myBlueRectangle.layer.borderWidth = 2
        
        let myOrangeRectangle = UIView()
        myOrangeRectangle.backgroundColor = SamplesColors.orange
        
        // Add your subviews to the view heirarchy.
        //
        // * Notice here that myBlueRectangle is added as a subview of 'view', the view controller's view, 
        //   while myOrangeRectangle is added as a subview of myBlueRectangle! Voilà! You have nested views!
        //   Now that each view is a subview of another view, we can use constraints to position them how we'd like!
        //
        view.addSubview(myBlueRectangle)
        myBlueRectangle.addSubview(myOrangeRectangle)
        
...
```

Enjoy!
