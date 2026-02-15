# [MC-EDMX]: Entity Data Model for Data Services Packaging Format

Last updated: 3/13/2019

Table of Contents

<details>
<summary>1 Introduction</summary>

- [1 Introduction](#Section_1)
  - [1.1 Glossary](#Section_1.1)
  - [1.2 References](#Section_1.2)
    - [1.2.1 Normative References](#Section_1.2.1)
    - [1.2.2 Informative References](#Section_1.2.2)
  - [1.3 Overview](#Section_1.3)
  - [1.4 Relationship to Protocols and Other Structures](#Section_1.4)
  - [1.5 Applicability Statement](#Section_1.5)
  - [1.6 Versioning and Localization](#Section_1.6)
  - [1.7 Vendor-Extensible Fields](#Section_1.7)
</details>

<details>
<summary>2 Structures</summary>

- [2 Structures](#Section_2)
  - [2.1 edmx:Edmx](#Section_2.1)
  - [2.2 edmx:DataServices](#Section_2.2)
  - [2.3 edmx:Reference](#Section_2.3)
  - [2.4 edmx:AnnotationsReference](#Section_2.4)
</details>

<details>
<summary>3 Structure Examples</summary>

- [3 Structure Examples](#Section_3)
</details>

<details>
<summary>4 Security</summary>

- [4 Security](#Section_4)
</details>

<details>
<summary>5 Appendix A: Product Behavior</summary>

- [5 Appendix A: Product Behavior](#Section_5)
</details>

<details>
<summary>6 Change Tracking</summary>

- [6 Change Tracking](#Section_6)
</details>
<a id="Section_1"></a>
# 1 Introduction

The Entity Data Model for Data Services Packaging Format (EDMX) is an XML-based file format that serves as the packaging format for the service metadata of a [**data service**](#gt_data-service).

Data services are specified in [MS-ODATA](../MS-ODATA/MS-ODATA.md). The [**Entity Data Model (EDM)**](#gt_entity-data-model-edm) and the EDM conceptual [**schemas**](#gt_schema) are specified in [MC-CSDL](../MC-CSDL/MC-CSDL.md).

Sections 1.7 and 2 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_annotation"></a>
**annotation**: Any custom, application-specific extension that is applied to an instance of a schema definition language through the use of custom attributes and elements that are not a part of that schema definition language.

<a id="gt_data-service"></a>
**data service**: A server-side application that implements the OData protocol for the purpose of enabling clients to publish and edit resources. The resources exposed by [**data services**](#gt_data-service) are described by using the [**EDM**](#gt_entity-data-model-edm), as specified in [MC-CSDL](../MC-CSDL/MC-CSDL.md).

<a id="gt_entity-data-model-edm"></a>
**Entity Data Model (EDM)**: A set of concepts that describes the structure of data, regardless of its stored form.

<a id="gt_schema"></a>
**schema**: The set of attributes and object classes that govern the creation and update of objects.

<a id="gt_uniform-resource-identifier-uri"></a>
**Uniform Resource Identifier (URI)**: A string that identifies a resource. The URI is an addressing mechanism defined in Internet Engineering Task Force (IETF) Uniform Resource Identifier (URI): Generic Syntax [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453).

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[MC-CSDL] Microsoft Corporation, "[Conceptual Schema Definition File Format](../MC-CSDL/MC-CSDL.md)".

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [http://www.rfc-editor.org/rfc/rfc2119.txt](https://go.microsoft.com/fwlink/?LinkId=90317)

[XMLSCHEMA1] Thompson, H., Beech, D., Maloney, M., and Mendelsohn, N., Eds., "XML Schema Part 1: Structures", W3C Recommendation, May 2001, [http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/](https://go.microsoft.com/fwlink/?LinkId=90608)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[MS-NETOD] Microsoft Corporation, "[Microsoft .NET Framework Protocols Overview](../MS-NETOD/MS-NETOD.md)".

[MS-ODATA] Microsoft Corporation, "[Open Data Protocol (OData)](../MS-ODATA/MS-ODATA.md)".

<a id="Section_1.3"></a>
## 1.3 Overview

An Entity Data Model for Data Services Packaging Format (EDMX) document is an XML-based file format that serves as the packaging format for the service metadata of a [**data service**](#gt_data-service).

As specified in [MS-ODATA](../MS-ODATA/MS-ODATA.md), clients can obtain the service metadata for a data service with a [**URI**](#gt_uniform-resource-identifier-uri) of the following signature.

http://<host>/<prefix>/<service path>/$metadata

The data service returns service metadata packaged in an EDMX document. The root of an EDMX document is an **edmx:Edmx** element, which contains exactly one **edmx:DataServices** subelement. The **edmx:DataServices** subelement contains zero or more **Schema** subelements, which specify [**Entity Data Model (EDM)**](#gt_entity-data-model-edm) conceptual [**schemas**](#gt_schema). These EDM conceptual schemas are annotated as specified in [MS-ODATA].

The structure of an EDMX document resembles the following example.

<edmx:Edmx>

<edmx:DataServices>

<!-- Entity Data Model Conceptual Schemas, as specified in

[MC-CSDL] and annotated as specified in [MS-ODATA] -->

<Schema>

</Schema>

<!--

Additional Entity Data Model Conceptual Schemas as

specified in [MC-CSDL] and annotated as specified in [MS-ODATA]

-->

</edmx:DataServices>

</edmx:Edmx>

The contents of an EDMX document are determined by the data service in question and vary depending on the data service, as specified in [MS-ODATA].

<a id="Section_1.4"></a>
## 1.4 Relationship to Protocols and Other Structures

EDMX serves as the packaging format of the metadata of a [**data service**](#gt_data-service) (as specified in [MS-ODATA](../MS-ODATA/MS-ODATA.md)).

<a id="Section_1.5"></a>
## 1.5 Applicability Statement

An EDMX document is used when clients of a [**data service**](#gt_data-service) (as specified in [MS-ODATA](../MS-ODATA/MS-ODATA.md)) require the metadata of the data service.

<a id="Section_1.6"></a>
## 1.6 Versioning and Localization

This document specifies version 1.0 of EDMX.

<a id="Section_1.7"></a>
## 1.7 Vendor-Extensible Fields

An EDMX document does not contain any vendor-extensible fields, nor does it support extensibility. However, the [**Entity Data Model (EDM)**](#gt_entity-data-model-edm) conceptual [**schemas**](#gt_schema) that are packaged in an EDMX document support an extension mechanism through the use of [**annotations**](#gt_annotation) (**AnnotationAttribute** and **AnnotationElement**), as specified in [MC-CSDL](../MC-CSDL/MC-CSDL.md).

Parsers of EDMX documents ignore content that is unexpected or that cannot be parsed.

<a id="Section_2"></a>
# 2 Structures

<a id="Section_2.1"></a>
## 2.1 edmx:Edmx

The **edmx:Edmx** element defines the XML namespace for the EDMX document and contains the **edmx:DataServices** subelement.

The following example uses the **edmx:EDMX** element.

<edmx:Edmx Version="1.0" xmlns:edmx="http://schemas.microsoft.com/ado/2007/06/edmx">

The following rules apply to the **edmx:Edmx** element:

- An EDMX document MUST have exactly one **edmx:Edmx** element as its root element.
- The **Version** attribute MUST be defined on the **edmx:Edmx** element. **Version** is of type **xs:string**, as specified in the XML [**schema**](#gt_schema) [[XMLSCHEMA1]](https://go.microsoft.com/fwlink/?LinkId=90608).
- The **edmx:Edmx** element can contain a choice of zero or more of each of the following subelements:
- **edmx:Reference**
- **edmx:AnnotationsReference**
- Subelements in a given choice set can appear in any given order.
- The **edmx:Edmx** element specifies exactly one **edmx:DataServices** subelement. This subelement MUST appear after the **edmx:Reference** and **edmx:AnnotationReference** subelements, if present.
<a id="Section_2.2"></a>
## 2.2 edmx:DataServices

The **edmx:DataServices** element contains the service metadata of a [**data service**](#gt_data-service). This service metadata contains zero or more [**Entity Data Model (EDM)**](#gt_entity-data-model-edm) conceptual [**schemas**](#gt_schema) (as specified in [MC-CSDL](../MC-CSDL/MC-CSDL.md)), which are annotated as specified in [MS-ODATA](../MS-ODATA/MS-ODATA.md).

The following represents the **edmx:DataServices** element.

<edmx:DataServices>

The following rule applies to the **edmx:DataServices** element:

- The **edmx:DataServices** element can contain any number of **Schema** sublements.<1>
<a id="Section_2.3"></a>
## 2.3 edmx:Reference

The **edmx:Reference** element is used to reference another EDMX document or an [**Entity Data Model (EDM)**](#gt_entity-data-model-edm) conceptual [**schema**](#gt_schema).

The following examples use the **edmx:Reference** element.

<edmx:Reference Url="http://www.fabrikam.com/model.edmx" />

<edmx:Reference Url="http://www.fabrikam.com/model.csdl" />

The following rules apply to the **edmx:Reference** element:

- The **Url** attribute MUST be defined on the **edmx:Reference** element. **Url** is of type **xs:anyURI**, as specified in the XML schema [[XMLSCHEMA1]](https://go.microsoft.com/fwlink/?LinkId=90608). **Url** specifies a [**URI**](#gt_uniform-resource-identifier-uri) that resolves to the referenced EDMX document or to the EDM conceptual schema. **Url** MUST be an absolute URL.
- If **edmx:Reference** is defined in an EDMX document, processors incorporate the referenced EDMX document or the EDM conceptual schema.
<a id="Section_2.4"></a>
## 2.4 edmx:AnnotationsReference

The **edmx:AnnotationsReference** element is used to reference annotations (as specified in [MC-CSDL](../MC-CSDL/MC-CSDL.md)) specified in another EDMX document or in an [**Entity Data Model (EDM)**](#gt_entity-data-model-edm) conceptual [**schema**](#gt_schema).

The following examples use the **edmx:AnnotationsReference** element.

<edmx:AnnotationsReference Url="http://fabrikam.com/Annotations.edmx">

<edmx:Include TermNamespace="Com.Fabrikam.Model" Qualifier="Phone" />

</edmx:AnnotationsReference>

<edmx:AnnotationsReference Url="http://fabrikam.com/Annotations.edmx">

<edmx:Include TermNamespace="Com.Fabrikam.Model" />

</edmx:AnnotationsReference>

<edmx:AnnotationsReference Url="http://fabrikam.com/Annotations.edmx">

<edmx:Include Qualifier="Phone" />

</edmx:AnnotationsReference>

<edmx:AnnotationsReference Url="http://fabrikam.com/Annotations.edmx">

<edmx:Include />

</edmx:AnnotationsReference>

The following rules apply to the **edmx:AnnotationsReference** element:

- The **Url** attribute MUST be defined on the **edmx:AnnotationsReference** element. **Url** is of type **xs:anyURI**, as specified in the XML schema ([[XMLSCHEMA1]](https://go.microsoft.com/fwlink/?LinkId=90608)). **Url** specifies a [**URI**](#gt_uniform-resource-identifier-uri) that resolves to the referenced EDMX document or to the EDM conceptual schema that contains annotations. **Url** MUST be an absolute URL.
- The **edmx:AnnotationsReference** element MUST contain one or more **edmx:Include** subelements. **edmx:Include** is used to define the external annotations that are specified in the referenced EDMX document or in the EDM conceptual schema.
- If the **edmx:AnnotationsReference** element is defined in an EDMX document, processors MAY ignore the **edmx:AnnotationsReference** element.
- If processors do not ignore the **edmx:AnnotationsReference** element, processors MUST incorporate only the **Annotations** elements (as specified in [MC-CSDL]) and ignore all other EDM conceptual schema elements (as specified in [MC-CSDL]).
- The **TermNamespace** attribute MAY be defined on the **edmx:Include** subelement. **TermNamespace** is of type **xs:string** and indicates which annotations are to be included.
- The **Qualifier** attribute MAY be defined on the **edmx:Include** subelement. **Qualifier** is of type **xs:string** and indicates which annotations are to be included.
- If the **Qualifier** attribute is specified as an empty string, it is considered to be not specified.
- If only the **TermNamespace** attribute is defined on the **edmx:Include subelement**, **edmx:AnnotationsReference** includes all annotations that apply terms that are in the specified **TermNamespace**, regardless of the **Qualifier**.
- If both **TermNamespace** and **Qualifier** attributes are defined on the **edmx:Include** subelement, **edmx:AnnotationsReference** includes all annotations that apply terms that are in the specified **TermNamespace** and have the specified **Qualifier**.
- If only the **Qualifier** attribute is defined on the **edmx:Include** subelement, **edmx:AnnotationsReference** includes all annotations that apply terms that have the specified **Qualifier**, regardless of the namespace of the terms.
- If neither the **TermNamespace** nor the **Qualifier** attribute is defined on the **edmx:Include** subelement, **edmx:AnnotationsReference** includes all annotations.
<a id="Section_3"></a>
# 3 Structure Examples

The following is an example of the service metadata returned by a [**data service**](#gt_data-service). The **edmx:Edmx** and **edmx:DataServices** elements are specified in sections [2.1](../MC-CSDL/MC-CSDL.md) and [2.2](../MC-CSDL/MC-CSDL.md) of this document. All other XML elements are specified in [MC-CSDL](../MC-CSDL/MC-CSDL.md) and [MS-ODATA](../MS-ODATA/MS-ODATA.md).

<edmx:Edmx Version="1.0" xmlns:edmx="http://schemas.microsoft.com/ado/2007/06/edmx">

<edmx:DataServices>

<Schema Namespace="NorthwindModel"

xmlns:d="http://schemas.microsoft.com/ado/2007/08/dataservices"

xmlns:m="http://schemas.microsoft.com/ado/2007/08/dataservices/metadata"

xmlns="http://schemas.microsoft.com/ado/2006/04/edm">

<EntityContainer Name="NorthwindEntities" m:IsDefaultEntityContainer="true">

<EntitySet Name="OrderDetails" EntityType="NorthwindModel.OrderDetail" />

<EntitySet Name="Orders" EntityType="NorthwindModel.Order" />

<AssociationSet Name="OrderDetails_Orders" Association="NorthwindModel.OrderDetails_Orders">

<End Role="Orders" EntitySet="Orders" />

<End Role="OrderDetails" EntitySet="OrderDetails" />

</AssociationSet>

</EntityContainer>

<EntityType Name="OrderDetail">

<Key>

<PropertyRef Name="OrderID" />

<PropertyRef Name="ProductID" />

</Key>

<Property Name="Discount" Type="Edm.Single" Nullable="false" />

<Property Name="OrderID" Type="Edm.Int32" Nullable="false" />

<Property Name="ProductID" Type="Edm.Int32" Nullable="false" />

<Property Name="Quantity" Type="Edm.Int16" Nullable="false" />

<Property Name="UnitPrice" Type="Edm.Decimal" Nullable="false" Precision="19" Scale="4" />

<NavigationProperty Name="Order" Relationship="NorthwindModel.OrderDetails_Orders" FromRole="OrderDetails" ToRole="Orders" />

</EntityType>

<EntityType Name="Order">

<Key>

<PropertyRef Name="OrderID" />

</Key>

<Property Name="CustomerID" Type="Edm.String" Nullable="true" MaxLength="5" Unicode="true" FixedLength="true" />

<Property Name="OrderDate" Type="Edm.DateTime" Nullable="true" />

<Property Name="OrderID" Type="Edm.Int32" Nullable="false" />

<Property Name="ShipAddress" Type="Edm.String" Nullable="true" MaxLength="60" Unicode="true" FixedLength="false" />

<NavigationProperty Name="OrderDetails" Relationship="NorthwindModel.OrderDetails_Orders" FromRole="Orders" ToRole="OrderDetails" />

</EntityType>

<Association Name="OrderDetails_Orders">

<End Role="Orders" Type="NorthwindModel.Order" Multiplicity="1" />

<End Role="OrderDetails" Type="NorthwindModel.OrderDetail" Multiplicity="*" />

<ReferentialConstraint>

<Principal Role="Orders">

<PropertyRef Name="OrderID" />

</Principal>

<Dependent Role="OrderDetails">

<PropertyRef Name="OrderID" />

</Dependent>

</ReferentialConstraint>

</Association>

</Schema>

</edmx:DataServices>

</edmx:Edmx>

<a id="Section_4"></a>
# 4 Security

None.

<a id="Section_5"></a>
# 5 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

This document specifies version-specific details in the Microsoft .NET Framework. For information about which versions of .NET Framework are available in each released Windows product or as supplemental software, see [MS-NETOD](../MS-NETOD/MS-NETOD.md) section 4.

- Microsoft .NET Framework 3.5 Service Pack 1 (SP1)
- Microsoft .NET Framework 4.0
- Microsoft .NET Framework 4.5
- Microsoft .NET Framework 4.6
- Microsoft .NET Framework 4.7
- Microsoft .NET Framework 4.8
Exceptions, if any, are noted in this section. If an update version, service pack or Knowledge Base (KB) number appears with a product name, the behavior changed in that update. The new behavior also applies to subsequent updates unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<1> Section 2.2: Microsoft implementations always have at least one **Schema** subelement.

<a id="Section_6"></a>
# 6 Change Tracking

This section identifies changes that were made to this document since the last release. Changes are classified as Major, Minor, or None.

The revision class **Major** means that the technical content in the document was significantly revised. Major changes affect protocol interoperability or implementation. Examples of major changes are:

- A document revision that incorporates changes to interoperability requirements.
- A document revision that captures changes to protocol functionality.
The revision class **Minor** means that the meaning of the technical content was clarified. Minor changes do not affect protocol interoperability or implementation. Examples of minor changes are updates to clarify ambiguity at the sentence, paragraph, or table level.

The revision class **None** means that no new technical changes were introduced. Minor editorial and formatting changes may have been made, but the relevant technical content is identical to the last released version.

The changes made to this document are listed in the following table. For more information, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com).

| Section | Description | Revision class |
| --- | --- | --- |
| [5](#Section_5) Appendix A: Product Behavior | Added .NET Framework 4.8 to the list of applicable products. | Major |

