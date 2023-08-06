import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frequently Asked Questions',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 32.0),
              Text(
                'FAQs',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 32.0),
              FAQItem(
                question:'1. What is a healthy diet, and how can I maintain one?',
                answer: 'A healthy diet consists of a balance of nutrients, including fruits, vegetables, whole grains, lean proteins, and healthy fats. To maintain a healthy diet, focus on portion control, limit sugary and processed foods, and stay hydrated. Incorporate a variety of foods for a well-rounded nutrient intake.',
              ),
              SizedBox(height: 8.0),
              FAQItem(
                question: '2. How much exercise should I do each week to stay healthy?',
                answer: 'The World Health Organization (WHO) recommends adults aged 18-64 to engage in at least 150 minutes of moderate-intensity aerobic activity or 75 minutes of vigorous-intensity aerobic activity per week, along with muscle-strengthening activities on two or more days.',
              ),
              SizedBox(height: 8.0),
              FAQItem(
                question: '3. What are the best practices for managing stress and anxiety?',
                answer: 'Managing stress and anxiety can include regular exercise, mindfulness meditation, deep breathing exercises, maintaining a support network, setting realistic goals, and seeking professional help when needed.',
              ),
              SizedBox(height: 8.0),
              FAQItem(
                question: '4. What are the early warning signs of common health issues like heart disease or diabetes?',
                answer: 'Warning signs of heart disease can include chest pain, shortness of breath, and irregular heartbeats. For diabetes, common symptoms are frequent urination, excessive thirst, unexplained weight loss, and fatigue.',
              ),
              SizedBox(height: 8.0),
              FAQItem(
                question: '5.  How can I improve my sleep quality?',
                answer: 'To improve sleep quality, maintain a consistent sleep schedule, create a relaxing bedtime routine, limit screen time before bed, ensure a comfortable sleep environment, and avoid heavy meals, caffeine, and alcohol close to bedtime.',
              ),
              SizedBox(height: 8.0),
              FAQItem(
                question: '6.    What are the benefits of staying hydrated, and how much water should I drink daily?',
                answer: 'Staying hydrated supports overall health, improves digestion, regulates body temperature, and enhances cognitive function. The recommended daily water intake varies but generally, men should aim for about 3.7 liters (125 ounces), and women should aim for about 2.7 liters (91 ounces) from all beverages and foods.',
              ),
              SizedBox(height: 8.0),
              FAQItem(
                question: '7.  How can I boost my immune system naturally?',
                answer: 'To boost the immune system naturally, focus on a balanced diet rich in vitamins and minerals, get regular exercise, prioritize sleep, manage stress, and maintain good hygiene practices.',
              ),
              SizedBox(height: 8.0),
              FAQItem(
                question: '8.  Is my information secure on Enki Connect?',
                answer: 'Enki Connect takes privacy and security seriously. The platform implements robust security measures to protect user information and ensures compliance with applicable data protection regulations.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FAQItem extends StatefulWidget {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});

  @override
  _FAQItemState createState() => _FAQItemState();
}

class _FAQItemState extends State<FAQItem> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: ExpansionTile(
        title: Text(
          widget.question,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
    
          ),
        ),
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 16.0), 
            child: Text(
              widget.answer,
              style: GoogleFonts.raleway(
                fontSize: 18.0,
              ),
            ),
          ),
        ],
        onExpansionChanged: (expanded) {
          setState(() {
            _expanded = expanded;
          });
        },
        initiallyExpanded: _expanded,
      ),
    );
  }
}
