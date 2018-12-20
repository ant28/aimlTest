<?xml version="1.0" encoding="UTF-8"?>
<!--=========================
XML Construct Domain Module
==========================-->

<!--     ENTITY DECLARATION          -->
<!ENTITY % categoryai "categoryai">
<!ENTITY % pattern "pattern">
<!ENTITY % template "template">
<!--     CATAGROEY DECLARATION          -->
<!ENTITY % categoryai.content "((pattern)?,(template)+)">
<!ENTITY % categoryai.attribute " ">
<!ELEMENT categoryai %categoryai.content;>
<!ATTLIST categoryai %categoryai.attribute;>
<!ATTLIST categoryai %global-atts; class CDATA "+ topic/foreign aiml-d/categoryai">
<!--     PATTERN DECLARATION          -->
<!ENTITY % pattern.content "(#PCDATA)">
<!ENTITY % pattern.attribute " ">
<!ELEMENT pattern %pattern.content;>
<!ATTLIST pattern %pattern.attribute;>
<!ATTLIST pattern %global-atts; class CDATA "+ topic/foreign aiml-d/pattern">
<!--     TEMPLATE DECLARATION          -->
<!ENTITY % template.content "(#PCDATA)*">
<!ENTITY % template.attribute " ">
<!ELEMENT template %template.content;>
<!ATTLIST template %template.attribute;>
<!ATTLIST template %global-atts; class CDATA "+ topic/foreign aiml-d/template">