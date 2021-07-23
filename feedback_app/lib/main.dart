import 'package:flutter/material.dart';



void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Home(),


    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
                      child:Align(
                          child:Material(
                              color:Colors.white,
                              elevation:20.0,
                              borderRadius: BorderRadius.circular(100.0),
                              shadowColor:Color(0x802196F3),
                              child:Container(color:Colors.blue[300],
                                  width:350.0,
                                  height:450.0,
                                  child:Column(children:<Widget>[
                                    Padding(padding: const EdgeInsets.all(50.0),
                                        child:Container(color:Colors.blue[200],
                                            child:Align(
                                                alignment:Alignment.bottomCenter,
                                                child:Column(children:<Widget>[
                                                Padding(padding: const EdgeInsets.all(16.0),
                                                child:Container(color:Colors.blue[200],
                                                    child:Text("Feedback App",style:TextStyle(color:Colors.black,fontSize:30.0,decoration: TextDecoration.underline,fontStyle: FontStyle.italic ,fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
                                                ,padding: const EdgeInsets.all(20.0),))
                                           , Padding(padding: const EdgeInsets.all(16.0),
                                            child:RaisedButton(
                                                    shape:RoundedRectangleBorder(borderRadius:new BorderRadius.circular(20.0)),
                                                    color:Colors.black,padding: const EdgeInsets.fromLTRB(70, 10, 70, 10),
                                                    child:Text('Start',style:TextStyle(color:Colors.white,fontSize:20.0)),
                                                    onPressed:(){
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => FirstPage()),);
                                                    }
                                                )
                                            )
                                        ]))
                                        ))
                              ])
                          )
                      )
                  )



    ));}
}

  class FirstPage extends StatefulWidget {

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var myFeedbackText="COULD BE BETTER";
  double sliderValue=0.0;
  double score=0.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar:AppBar(
          leading: IconButton(icon:Icon(Icons.arrow_back),onPressed:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),);
          }),
          title:Text("Feedback"),
         backgroundColor: Color(0xffff0080),

        ),
        body:
        Container(

            color:Color(0xffE5E5E5),
            child:Column(
                children:<Widget>[
                  Container(child:Padding(
                    padding:const EdgeInsets.all(16.0),
                    child:Container(child:Text("1. On a scale of 1 to 5 , how do you like our UI",
                      style:TextStyle(color:Colors.black,fontSize:22.0,fontWeight:FontWeight.bold),),padding:const EdgeInsets.all(16.0),
  color:Colors.white),),),
                  SizedBox(height:30.0),
                  Container(
                      child:Align(
                          child:Material(
                              color:Colors.white,
                              elevation:14.0,
                              borderRadius: BorderRadius.circular(24.0),
                              shadowColor:Color(0x802196F3),
                              child:Container(
                                  width:350.0,
                                  height:400.0,
                                  child:Column(children:<Widget>[
                                    Padding(padding: const EdgeInsets.all(16.0),
                                        child:Container(
                                            child:Text(myFeedbackText,style:TextStyle(color:Colors.black,fontSize:22.0),)
                                        ))
                                    , Padding(padding: const EdgeInsets.all(16.0),
                                        child:Container(
                                          child:Slider(
                                              min:0.0,
                                              max:5.0,
                                              divisions:5,
                                              value:sliderValue,
                                              activeColor: Color(0xffff0080),
                                              inactiveColor: Colors.blueGrey,
                                              onChanged:(newValue){
                                                setState((){
                                                  sliderValue=newValue;
                                                  score=sliderValue;
                                                  if(sliderValue>=0.0 && sliderValue<=1.0)
                                                  {
                                                    myFeedbackText="COULD BE BETTER";
                                                  }
                                                  if(sliderValue>=1.1 && sliderValue<=2.0)
                                                  {
                                                    myFeedbackText="BELOW AVERAGE";
                                                  }
                                                  if(sliderValue>=2.1 && sliderValue<=3.0)
                                                  {
                                                    myFeedbackText="AVERAGE";
                                                  }
                                                  if(sliderValue>=3.1 && sliderValue<=4.0)
                                                  {
                                                    myFeedbackText="GOOD";
                                                  }
                                                  if(sliderValue>=4.1 && sliderValue<=5.0)
                                                  {
                                                    myFeedbackText="EXCELLENT";
                                                  }
                                                });
                                              }
                                          ),
                                        ))
                                    ,Padding(padding: const EdgeInsets.all(16.0),
                                        child:Container(
                                            child:Text("Your rating is $sliderValue",style:TextStyle(color:Colors.black,fontSize:22.0),)
                                        ))
                                    ,Padding(padding: const EdgeInsets.all(8.0),
                                        child:Container(
                                            child:Align(
                                                alignment:Alignment.bottomCenter,
                                                child:RaisedButton(
                                                    shape:RoundedRectangleBorder(borderRadius:new BorderRadius.circular(30.0)),
                                                    color:Color(0xffff0080),
                                                    child:Text('Submit'),
                                                    onPressed:(){
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => MoneySlider(pass1:score)),);
                                                    }
                                                )
                                            )
                                        ))
                                  ])
                              )
                          )
                      )
                  )
                ]
            )
        )
    );}
}class MoneySlider extends StatefulWidget {

var pass1;
MoneySlider({ this.pass1 });

@override
  _MoneySliderState createState() => _MoneySliderState();
}

class _MoneySliderState extends State<MoneySlider> {
  var myFeedbackText="COULD BE BETTER";
  var sliderValue=0.0;var score2=0.0;



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar:AppBar(
          leading: IconButton(icon:Icon(Icons.arrow_back),onPressed:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstPage()),);
          }),
          title:Text("Feedback"),
          backgroundColor: Color(0xff1a75ff),

        ),
        body:Container(
            color:Color(0xffE5E5E5),
            child:Column(
                children:<Widget>[
                  Container(child:Padding(
                    padding:const EdgeInsets.all(16.0),
                    child:Container(child:Text("2. What do you think of our service ? ",
                      style:TextStyle(color:Colors.black,fontSize:22.0,fontWeight:FontWeight.bold),),padding:const EdgeInsets.all(16.0),
                        color:Colors.white),),),
                  SizedBox(height:30.0),
                  Container(
                      child:Align(
                          child:Material(
                              color:Colors.white,
                              elevation:14.0,
                              borderRadius: BorderRadius.circular(24.0),
                              shadowColor:Color(0x802196F3),
                              child:Container(
                                  width:350.0,
                                  height:400.0,
                                  child:Column(children:<Widget>[
                                    Padding(padding: const EdgeInsets.all(16.0),
                                        child:Container(
                                            child:Text(myFeedbackText,style:TextStyle(color:Colors.black,fontSize:22.0),)
                                        ))
                                    , Padding(padding: const EdgeInsets.all(16.0),
                                        child:Container(
                                          child:Slider(
                                              min:0.0,
                                              max:5.0,
                                              divisions:5,
                                              value:sliderValue,
                                              activeColor: Color(0xff1a75ff),
                                              inactiveColor: Colors.blueGrey,
                                              onChanged:(newValue){
                                                setState((){
                                                  sliderValue=newValue;
                                                  score2=widget.pass1+sliderValue;
                                                  if(sliderValue>=0.0 && sliderValue<=1.0)
                                                  {
                                                    myFeedbackText="COULD BE BETTER";
                                                  }
                                                  if(sliderValue>=1.1 && sliderValue<=2.0)
                                                  {
                                                    myFeedbackText="BELOW AVERAGE";
                                                  }
                                                  if(sliderValue>=2.1 && sliderValue<=3.0)
                                                  {
                                                    myFeedbackText="AVERAGE";
                                                  }
                                                  if(sliderValue>=3.1 && sliderValue<=4.0)
                                                  {
                                                    myFeedbackText="GOOD";
                                                  }
                                                  if(sliderValue>=4.1 && sliderValue<=5.0)
                                                  {
                                                    myFeedbackText="EXCELLENT";
                                                  }
                                                });
                                              }
                                          ),
                                        ))
                                    ,Padding(padding: const EdgeInsets.all(16.0),
                                        child:Container(
                                            child:Text("Your rating is $sliderValue",style:TextStyle(color:Colors.black,fontSize:22.0),)
                                        ))
                                    ,Padding(padding: const EdgeInsets.all(8.0),
                                        child:Container(
                                            child:Align(
                                                alignment:Alignment.bottomCenter,
                                                child:RaisedButton(
                                                    shape:RoundedRectangleBorder(borderRadius:new BorderRadius.circular(30.0)),
                                                    color:Color(0xff1a75ff),
                                                    child:Text('Submit'),
                                                    onPressed:(){
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => StarFeedback(pass2:score2)),);
                                                    }
                                                )
                                            )
                                        ))
                                  ])
                              )
                          )
                      )
                  )
                ]
            )
        )
    );}
}
class StarFeedback extends StatefulWidget {
  var pass2;
  StarFeedback({ this.pass2 });
  @override
  _StarFeedbackState createState() => _StarFeedbackState();
}

class _StarFeedbackState extends State<StarFeedback> {
  var myFeedbackText="ABSOLUTELY NOT";
  var sliderValue=0.0;
var score3=0.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar:AppBar(
          leading: IconButton(icon:Icon(Icons.arrow_back),onPressed:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MoneySlider()),);
          }),
          title:Text("Feedback"),
          backgroundColor: Color(0xff7300e6),

        ),
        body:Container(
            color:Color(0xffE5E5E5),
            child:Column(
                children:<Widget>[
                  Container(child:Padding(
                    padding:const EdgeInsets.all(16.0),
                    child:Container(child:Text("3. Would you recommend our services to anyone",
                      style:TextStyle(color:Colors.black,fontSize:22.0,fontWeight:FontWeight.bold),),padding:const EdgeInsets.all(16.0),
                        color:Colors.white),),),
                  SizedBox(height:30.0),
                  Container(
                      child:Align(
                          child:Material(
                              color:Colors.white,
                              elevation:14.0,
                              borderRadius: BorderRadius.circular(24.0),
                              shadowColor:Color(0x802196F3),
                              child:Container(
                                  width:350.0,
                                  height:400.0,
                                  child:Column(children:<Widget>[
                                    Padding(padding: const EdgeInsets.all(16.0),
                                        child:Container(
                                            child:Text(myFeedbackText,style:TextStyle(color:Colors.black,fontSize:22.0),)
                                        ))
                                    , Padding(padding: const EdgeInsets.all(16.0),
                                        child:Container(
                                          child:Slider(
                                              min:0.0,
                                              max:5.0,
                                              divisions:5,
                                              value:sliderValue,
                                              activeColor: Color(0xff7300e6),
                                              inactiveColor: Colors.blueGrey,
                                              onChanged:(newValue){
                                                setState((){
                                                  sliderValue=newValue;
                                                  score3=widget.pass2+sliderValue;
                                                  if(sliderValue>=0.0 && sliderValue<=1.0)
                                                  {
                                                    myFeedbackText="ABSOLUTELY NOT";
                                                  }
                                                  if(sliderValue>=1.1 && sliderValue<=2.0)
                                                  {
                                                    myFeedbackText="I DON'T THINK SO";
                                                  }
                                                  if(sliderValue>=2.1 && sliderValue<=3.0)
                                                  {
                                                    myFeedbackText="MAYBE";
                                                  }
                                                  if(sliderValue>=3.1 && sliderValue<=4.0)
                                                  {
                                                    myFeedbackText="YES, I MIGHT";
                                                  }
                                                  if(sliderValue>=4.1 && sliderValue<=5.0)
                                                  {
                                                    myFeedbackText="DEFINITELY !";
                                                  }
                                                });
                                              }
                                          ),
                                        ))
                                    ,Padding(padding: const EdgeInsets.all(16.0),
                                        child:Container(
                                            child:Text("Your rating is $sliderValue",style:TextStyle(color:Colors.black,fontSize:22.0),)
                                        ))
                                    ,Padding(padding: const EdgeInsets.all(8.0),
                                        child:Container(
                                            child:Align(
                                                alignment:Alignment.bottomCenter,
                                                child:RaisedButton(
                                                    shape:RoundedRectangleBorder(borderRadius:new BorderRadius.circular(30.0)),
                                                    color:Color(0xff7300e6),
                                                    child:Text('Submit'),
                                                    onPressed:(){
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => FourFeedback(pass3:score3)),);
                                                    }
                                                )
                                            )
                                        ))
                                  ])
                              )
                          )
                      )
                  )
                ]
            )
        )
    );}
}
class FourFeedback extends StatefulWidget {
  var pass3;
  FourFeedback({ this.pass3 });
  @override
  _FourFeedbackState createState() => _FourFeedbackState();
}

class _FourFeedbackState extends State<FourFeedback> {
  var myFeedbackText="ABSOLUTELY NOT";
  var sliderValue=0.0;
var score4=0.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar:AppBar(
          leading: IconButton(icon:Icon(Icons.arrow_back),onPressed:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StarFeedback()),);
          }),
          title:Text("Feedback"),

          backgroundColor: Color(0xff00802b),
        ),
        body:Container(
            color:Color(0xffE5E5E5),
            child:Column(
                children:<Widget>[
                  Container(child:Padding(
                    padding:const EdgeInsets.all(16.0),
                    child:Container(child:Text("4. Did you enjoy using our app ?",
                      style:TextStyle(color:Colors.black,fontSize:22.0,fontWeight:FontWeight.bold),),padding:const EdgeInsets.all(16.0),
                        color:Colors.white),),),
                  SizedBox(height:30.0),
                  Container(
                      child:Align(
                          child:Material(
                              color:Colors.white,
                              elevation:14.0,
                              borderRadius: BorderRadius.circular(24.0),
                              shadowColor:Color(0x802196F3),
                              child:Container(
                                  width:350.0,
                                  height:400.0,
                                  child:Column(children:<Widget>[
                                    Padding(padding: const EdgeInsets.all(16.0),
                                        child:Container(
                                            child:Text(myFeedbackText,style:TextStyle(color:Colors.black,fontSize:22.0),)
                                        ))
                                    , Padding(padding: const EdgeInsets.all(16.0),
                                        child:Container(
                                          child:Slider(
                                              min:0.0,
                                              max:5.0,
                                              divisions:5,
                                              value:sliderValue,
                                              activeColor: Color(0xff00802b),
                                              inactiveColor: Colors.blueGrey,
                                              onChanged:(newValue){
                                                setState((){
                                                  sliderValue=newValue;
                                                  score4=widget.pass3+sliderValue;
                                                  if(sliderValue>=0.0 && sliderValue<=1.0)
                                                  {
                                                    myFeedbackText="ABSOLUTELY NOT";
                                                  }
                                                  if(sliderValue>=1.1 && sliderValue<=2.0)
                                                  {
                                                    myFeedbackText="I DON'T THINK SO";
                                                  }
                                                  if(sliderValue>=2.1 && sliderValue<=3.0)
                                                  {
                                                    myFeedbackText="MAYBE";
                                                  }
                                                  if(sliderValue>=3.1 && sliderValue<=4.0)
                                                  {
                                                    myFeedbackText="YES";
                                                  }
                                                  if(sliderValue>=4.1 && sliderValue<=5.0)
                                                  {
                                                    myFeedbackText="DEFINITELY !";
                                                  }
                                                });
                                              }
                                          ),
                                        ))
                                    ,Padding(padding: const EdgeInsets.all(16.0),
                                        child:Container(
                                            child:Text("Your rating is $sliderValue",style:TextStyle(color:Colors.black,fontSize:22.0),)
                                        ))
                                    ,Padding(padding: const EdgeInsets.all(8.0),
                                        child:Container(
                                            child:Align(
                                                alignment:Alignment.bottomCenter,
                                                child:RaisedButton(
                                                    shape:RoundedRectangleBorder(borderRadius:new BorderRadius.circular(30.0)),
                                                    color:Color(0xff00802b),
                                                    child:Text('Submit'),
                                                    onPressed:(){
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => FifthFeedback(pass5:score4)),);
                                                    }
                                                )
                                            )
                                        ))
                                  ])
                              )
                          )
                      )
                  )
                ]
            )
        )
    );}
}
class FifthFeedback extends StatefulWidget {
  var pass5;
  FifthFeedback({ this.pass5 });
  @override
  _FifthFeedbackState createState() => _FifthFeedbackState();
}
class _FifthFeedbackState extends State<FifthFeedback> {
  var myFeedbackText="DEFINITELY !";
  var sliderValue=0.0;
var score6=0.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar:AppBar(
          leading: IconButton(icon:Icon(Icons.arrow_back),onPressed:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FourFeedback()),);
          }),
          title:Text("Feedback"),
          backgroundColor: Color(0xff00e6e6),

        ),
        body:Container(
            color:Color(0xffE5E5E5),
            child:Column(
                children:<Widget>[
                  Container(child:Padding(
                    padding:const EdgeInsets.all(16.0),
                    child:Container(child:Text("5. Did you feel like we wasted your time ?",
                      style:TextStyle(color:Colors.black,fontSize:22.0,fontWeight:FontWeight.bold),),padding:const EdgeInsets.all(16.0),
                        color:Colors.white),),),
                  SizedBox(height:30.0),
                  Container(
                      child:Align(
                          child:Material(
                              color:Colors.white,
                              elevation:14.0,
                              borderRadius: BorderRadius.circular(24.0),
                              shadowColor:Color(0x802196F3),
                              child:Container(
                                  width:350.0,
                                  height:400.0,
                                  child:Column(children:<Widget>[
                                    Padding(padding: const EdgeInsets.all(16.0),
                                        child:Container(
                                            child:Text(myFeedbackText,style:TextStyle(color:Colors.black,fontSize:22.0),)
                                        ))
                                    , Padding(padding: const EdgeInsets.all(16.0),
                                        child:Container(
                                          child:Slider(
                                              min:0.0,
                                              max:5.0,
                                              divisions:5,
                                              value:sliderValue,
                                              activeColor: Color(0xff00e6e6),
                                              inactiveColor: Colors.blueGrey,
                                              onChanged:(newValue){
                                                setState((){
                                                  sliderValue=newValue;
                                                  score6=widget.pass5+sliderValue;
                                                  if(sliderValue>=0.0 && sliderValue<=1.0)
                                                  {
                                                    myFeedbackText="DEFINITELY !";
                                                  }
                                                  if(sliderValue>=1.1 && sliderValue<=2.0)
                                                  {
                                                    myFeedbackText="YES";
                                                  }
                                                  if(sliderValue>=2.1 && sliderValue<=3.0)
                                                  {
                                                    myFeedbackText="MAYBE";
                                                  }
                                                  if(sliderValue>=3.1 && sliderValue<=4.0)
                                                  {
                                                    myFeedbackText="I DON'T THINK SO";
                                                  }
                                                  if(sliderValue>=4.1 && sliderValue<=5.0)
                                                  {
                                                    myFeedbackText="ABSOLUTELY NOT";
                                                  }
                                                });
                                              }
                                          ),
                                        ))
                                    ,Padding(padding: const EdgeInsets.all(16.0),
                                        child:Container(
                                            child:Text("Your rating is $sliderValue",style:TextStyle(color:Colors.black,fontSize:22.0),)
                                        ))
                                    ,Padding(padding: const EdgeInsets.all(8.0),
                                        child:Container(
                                            child:Align(
                                                alignment:Alignment.bottomCenter,
                                                child:RaisedButton(
                                                    shape:RoundedRectangleBorder(borderRadius:new BorderRadius.circular(30.0)),
                                                    color:Color(0xff00e6e6),
                                                    child:Text('Submit'),
                                                    onPressed:(){
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => SixthFeedback(pass6:score6)),);
                                                    }
                                                )
                                            )
                                        ))
                                  ])
                              )
                          )
                      )
                  )
                ]
            )
        )
    );}
}
class SixthFeedback extends StatefulWidget {
  var pass6;
  SixthFeedback({ this.pass6 });
  @override
  _SixthFeedbackState createState() => _SixthFeedbackState();
}
class _SixthFeedbackState extends State<SixthFeedback> {
  var myFeedbackText="DEFINITELY !";
  var sliderValue=0.0;
var score7=0.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar:AppBar(
          leading: IconButton(icon:Icon(Icons.arrow_back),onPressed:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FifthFeedback()),);
          }),
          title:Text("Feedback"),

          backgroundColor: Color(0xffb3b3ff),
        ),
        body:Container(
            color:Color(0xffE5E5E5),
            child:Column(
                children:<Widget>[
                  Container(child:Padding(
                    padding:const EdgeInsets.all(16.0),
                    child:Container(child:Text("6. Do we need a lot of improvement ?",
                      style:TextStyle(color:Colors.black,fontSize:22.0,fontWeight:FontWeight.bold),),padding:const EdgeInsets.all(16.0),
                        color:Colors.white),),),
                  SizedBox(height:30.0),
                  Container(
                      child:Align(
                          child:Material(
                              color:Colors.white,
                              elevation:14.0,
                              borderRadius: BorderRadius.circular(24.0),
                              shadowColor:Color(0x802196F3),
                              child:Container(
                                  width:350.0,
                                  height:400.0,
                                  child:Column(children:<Widget>[
                                    Padding(padding: const EdgeInsets.all(16.0),
                                        child:Container(
                                            child:Text(myFeedbackText,style:TextStyle(color:Colors.black,fontSize:22.0),)
                                        ))
                                    , Padding(padding: const EdgeInsets.all(16.0),
                                        child:Container(
                                          child:Slider(
                                              min:0.0,
                                              max:5.0,
                                              divisions:5,
                                              value:sliderValue,
                                              activeColor: Color(0xffb3b3ff),
                                              inactiveColor: Colors.blueGrey,
                                              onChanged:(newValue){
                                                setState((){
                                                  sliderValue=newValue;
                                                  score7=widget.pass6+sliderValue;
                                                  if(sliderValue>=0.0 && sliderValue<=1.0)
                                                  {
                                                    myFeedbackText="DEFINITELY !";
                                                  }
                                                  if(sliderValue>=1.1 && sliderValue<=2.0)
                                                  {
                                                    myFeedbackText="YES";
                                                  }
                                                  if(sliderValue>=2.1 && sliderValue<=3.0)
                                                  {
                                                    myFeedbackText="MAYBE";
                                                  }
                                                  if(sliderValue>=3.1 && sliderValue<=4.0)
                                                  {
                                                    myFeedbackText="I DON'T THINK SO";
                                                  }
                                                  if(sliderValue>=4.1 && sliderValue<=5.0)
                                                  {
                                                    myFeedbackText="ABSOLUTELY NOT";
                                                  }
                                                });
                                              }
                                          ),
                                        ))
                                    ,Padding(padding: const EdgeInsets.all(16.0),
                                        child:Container(
                                            child:Text("Your rating is $sliderValue",style:TextStyle(color:Colors.black,fontSize:22.0), )
                                        ))
                                    ,Padding(padding: const EdgeInsets.all(8.0),
                                        child:Container(
                                            child:Align(
                                                alignment:Alignment.bottomCenter,
                                                child:RaisedButton(
                                                    shape:RoundedRectangleBorder(borderRadius:new BorderRadius.circular(30.0)),
                                                    color:Color(0xffb3b3ff),
                                                    child:Text('Submit'),
                                                    onPressed:(){
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => Result(total:score7)),);
                                                    }
                                                )
                                            )
                                        ))
                                  ])
                              )
                          )
                      )
                  )
                ]
            )
        )
    );}
}


class Result extends StatefulWidget {
  var total;
  Result({ this.total });
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  var myFeedbackText="";
var setcolor;


  @override
  Widget build(BuildContext context) {
    if(widget.total>=0.0 && widget.total<=10.0)
      {
        myFeedbackText="We are sorry for your inconvenience";
        setcolor=Colors.red;
      }
    if(widget.total>=11.0 && widget.total<=20.0)
    {
      myFeedbackText="Hope we serve you better next time";
      setcolor=Colors.yellow;
    }
    if(widget.total>=21.0 && widget.total<=30.0)
    {
      myFeedbackText="We hope you come back next time.";
      setcolor=Colors.green;
    }



    return new Scaffold(
        appBar:AppBar(
          leading: IconButton(icon:Icon(Icons.arrow_back),onPressed:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>SixthFeedback()),);
          }),
          title:Text("Feedback"),
backgroundColor:Colors.black

        ),
        body:Container(
            color:Color(0xffE5E5E5),
            child:Column(
                children:<Widget>[

                  SizedBox(height:30.0),
                  Container(
                      child:Align(
                          child:Material(
                              color:Colors.white,
                              elevation:14.0,
                              borderRadius: BorderRadius.circular(24.0),
                              shadowColor:Color(0x802196F3),
                              child:Container(
                                  width:350.0,
                                  height:400.0,

                                  child:Column(children:<Widget>[
                                      Padding(padding: const EdgeInsets.all(30.0),
                                          child:Container(

                                              child:Text("Your rating is ${widget.total}",style:TextStyle(color:Colors.black,fontSize:22.0),)
                                          )),
                                    Padding(padding: const EdgeInsets.all(40.0),
                                        child:RaisedButton(
                                            padding: const EdgeInsets.all(20.0),
                                            shape:RoundedRectangleBorder(borderRadius:new BorderRadius.circular(10.0)),
                                            color:Colors.black,
                                            child:Text(myFeedbackText,style:TextStyle(color:setcolor,fontSize:25.0),)

                                           , onPressed:(){},
                                        ))
                                    ,Padding(padding: const EdgeInsets.all(5.0),
                                        child:Container(
                                         //here
                                           ))

                                    ,Padding(padding: const EdgeInsets.all(5.0),
                                        child:Container(
                                            child:Align(
                                                alignment:Alignment.bottomCenter,
                                                child:RaisedButton(
                                            shape:RoundedRectangleBorder(borderRadius:new BorderRadius.circular(30.0)),
                              color:Colors.black,
                              child:Icon(Icons.home,color:Colors.white),
                              onPressed:(){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Home()),);
                              }
                          )
                                            )
                                        ))
                                  ])
                              )
                          )
                      )
                  )
                ]
            )
        )
    );}
}