To prevent the runtime error, always check if an object is null before accessing its properties. In scenarios with asynchronous operations, ensure that the object is initialized before attempting to use it.  Here’s an improved version using an event listener:

```actionscript
class MyClass {
    public var someProperty:String = "Initial Value";
}

var myObject:MyClass = new MyClass();

//Register event listener for the object's initialization
myObject.addEventListener(Event.COMPLETE, onObjectInitialized);

function onObjectInitialized(e:Event):void {
    if (myObject != null) {
        trace(myObject.someProperty);
    } else {
        trace("myObject is still null!");
    }
}

// Simulate an asynchronous operation that might set myObject to null
// Replace this with your actual asynchronous call
setTimeout(function(){
    //Simulate the possibility of myObject becoming null in an async operation
    myObject = null;
}, 100);
```
This approach ensures that `someProperty` is only accessed if `myObject` is properly initialized.