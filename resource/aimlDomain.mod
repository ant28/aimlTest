<!--=========================
XML Construct Domain Module
==========================-->
<?xml version="1.0" encoding="utf-8"?>
<!ENTITY % category "category">
<!ENTITY % category.content "((category)*)">
<!ENTITY % category.attribute " ">
<!ELEMENT category %category.content;>
<!ATTLIST category %category.attribute;>
<!ATTLIST category %global-atts; class CDATA "+ topic/foreign category-d/category">
