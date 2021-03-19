import 'package:flutter/material.dart';

   





  class SizeAnimationHandler extends StatefulWidget {
    final Widget child;
    double _height = 20.0;
    double _width = 20.0;
    bool _resized = false;
    AlignmentGeometry _alignmentAnimationHandler =  Alignment.center;

    SizeAnimationHandler({Key key, this.child}) : super(key: key,);


    @override
    SizeAnimationHandlerState createState() => SizeAnimationHandlerState();
  
  }
  
  class SizeAnimationHandlerState extends State<SizeAnimationHandler> with TickerProviderStateMixin{

      @override
      void initState() { 
        super.initState();        
      }

      void handleSize(){
         if(this.mounted) {
          setState(() {
               if (getResized) {
                setResized = false;
                setHeight = 80.0;
                 setWidth = 80.0;
                    } else {
                    setResized = true;
                    setHeight = 320.0;
                    setWidth = 320.0;
                    }
                  });
         }
      }
    @override
    Widget build(BuildContext context,) {
      return AnimatedAlign(alignment: this.getAlignmentChange,
      duration: new Duration(seconds: 1),
      child: 
                 new AnimatedSize(
              curve: Curves.bounceInOut,
              child: new GestureDetector(
                onTap: () {
                    handleSize();
                  },
                    
                    // handleAlignmentC
                child: new Container(
                  width: getWidth,
                  height: getHeight,
                  child: widget.child,

                ),
              ),
              vsync: this,
              duration: new Duration(seconds: 1),
                 ));}

      

  double get getHeight => widget._height;
  
  double get getWidth => widget._width;

  bool get getResized => widget._resized;

  AlignmentGeometry get getAlignmentChange => widget._alignmentAnimationHandler;
  
  set setAlignmentChange(AlignmentGeometry alignment){
    widget._alignmentAnimationHandler = alignment;


  } 


   set setHeight(double value){
     widget._height = value;
   }
      set setWidth(double value){
     widget._width = value;
   }
      set setResized(bool resized){
     widget._resized = resized;
   }
    void handleAlignmentChange() {
      setState(() {
        this.setAlignmentChange = this.getAlignmentChange == Alignment.center
          ? Alignment.center
          : Alignment.bottomRight;
            });

        // return widget._alignmentAnimationHandler == Alignment.center
        //   ? Alignment.bottomLeft
        //   : Alignment.center;
     }



  }

