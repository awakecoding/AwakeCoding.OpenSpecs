# [MS-XOPP]: XML-binary Optimized Packaging (XOP) Profile

Last updated: 4/23/2024

Table of Contents

<details>
<summary>1 Introduction</summary>

- [1 Introduction](#Section_1)
  - [1.1 Glossary](#Section_1.1)
  - [1.2 References](#Section_1.2)
    - [1.2.1 Normative References](#Section_1.2.1)
    - [1.2.2 Informative References](#Section_1.2.2)
  - [1.3 Overview](#Section_1.3)
    - [1.3.1 MIME Parts Ordering in Multipart/Related XOP Package Extension](#Section_1.3.1)
  - [1.4 Relationship to Other Protocols](#Section_1.4)
  - [1.5 Prerequisites/Preconditions](#Section_1.5)
  - [1.6 Applicability Statement](#Section_1.6)
  - [1.7 Versioning and Capability Negotiation](#Section_1.7)
  - [1.8 Vendor-Extensible Fields](#Section_1.8)
  - [1.9 Standards Assignments](#Section_1.9)
</details>

<details>
<summary>2 Messages</summary>

- [2 Messages](#Section_2)
  - [2.1 Transport](#Section_2.1)
  - [2.2 Message Syntax](#Section_2.2)
    - [2.2.1 Ordering of the MIME Parts in XOP Packages](#Section_2.2.1)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
</details>

<details>
<summary>4 Protocol Examples</summary>

- [4 Protocol Examples](#Section_4)
  - [4.1 MIME Multipart/Related XOP Package Ordering](#Section_4.1)
</details>

<details>
<summary>5 Security</summary>

- [5 Security](#Section_5)
  - [5.1 Security Considerations for Implementers](#Section_5.1)
  - [5.2 Index of Security Parameters](#Section_5.2)
</details>

<details>
<summary>6 Appendix A: Product Behavior</summary>

- [6 Appendix A: Product Behavior](#Section_6)
</details>

<details>
<summary>7 Change Tracking</summary>

- [7 Change Tracking](#Section_7)
</details>
<a id="Section_1"></a>
# 1 Introduction

[**XML-binary Optimized Packaging (XOP)**](#gt_xml-binary-optimized-packaging-xop), as specified in [[XML-XOP]](https://go.microsoft.com/fwlink/?LinkId=129150), defines a method for the efficient serialization of [**XML Information Sets (XML Infosets)**](#gt_67d3e681-bbf7-490a-a175-1450635981bb) that have certain types of content. The XML-binary Optimized Packaging (XOP) Profile extends XOP to allow for the creation of more efficient implementations that process XML Infosets. This document, [MS-XOPP], describes the serialization rules for XML Infosets as [**MIME**](#gt_multipurpose-internet-mail-extensions-mime) Multipart/Related [**XOP packages**](#gt_xop-package) but does not specify how these XML Infosets are transmitted between network nodes.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_multipurpose-internet-mail-extensions-mime"></a>
**Multipurpose Internet Mail Extensions (MIME)**: A set of extensions that redefines and expands support for various types of content in email messages, as described in [[RFC2045]](https://go.microsoft.com/fwlink/?LinkId=90307), [[RFC2046]](https://go.microsoft.com/fwlink/?LinkId=90308), and [[RFC2047]](https://go.microsoft.com/fwlink/?LinkId=90309).

<a id="gt_soap-message"></a>
**SOAP message**: An XML document consisting of a mandatory SOAP envelope, an optional SOAP header, and a mandatory SOAP body. See [[SOAP1.2-1/2007]](https://go.microsoft.com/fwlink/?LinkId=94664) section 5 for more information.

<a id="gt_streaming"></a>
**streaming**: The act of processing a part of an [**XML Infoset**](#gt_67d3e681-bbf7-490a-a175-1450635981bb) without requiring that the entire [**XML Infoset**](#gt_67d3e681-bbf7-490a-a175-1450635981bb) be available.

<a id="gt_xml-information-set-infoset"></a>
**XML Information Set (Infoset)**: An abstract data set that provides a consistent set of definitions for use in specifications that refer to the information in a well-formed XML document, as described in [[XMLINFOSET]](https://go.microsoft.com/fwlink/?LinkId=145519).

<a id="gt_xml-binary-optimized-packaging-xop"></a>
**XML-binary Optimized Packaging (XOP)**: The packaging convention that efficiently serializes XML Infosets that contain certain types of content, as described in [XML-XOP].

<a id="gt_xop-information-set-xop-infoset"></a>
**XOP Information Set (XOP Infoset)**: An XML Infoset in which optimized content has been removed and replaced by <xop:Include> SOAP element information items, as described in [XML-XOP].

<a id="gt_xop-package"></a>
**XOP package**: A package that offers an alternate serialization of an XML Infoset and that contains the XOP document and any optimized content from the original XML Infoset, as described in [[XML-XOP]](https://go.microsoft.com/fwlink/?LinkId=129150).

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC2387] Levinson, E., "The MIME Multipart/Related Content-type", RFC 2387, August 1998, [https://www.rfc-editor.org/info/rfc2387](https://go.microsoft.com/fwlink/?LinkId=95254)

[XML-XOP] Gudgin, M., Mendelsohn, N., Nottingham, M., and Ruellan, H., "XML-binary Optimized Packaging", January 25, 2005, [http://www.w3.org/TR/2005/REC-xop10-20050125](https://go.microsoft.com/fwlink/?LinkId=129150)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[SOAP-MTOM] Gudgin, M., Medelsohn, N., Nottingham, M., and Ruellan, H., "SOAP Message Transmission Optimization Mechanism", W3C Recommendation, 25 January 2005, [http://www.w3.org/TR/2005/REC-soap12-mtom-20050125/](https://go.microsoft.com/fwlink/?LinkId=95126)

<a id="Section_1.3"></a>
## 1.3 Overview

The XML-binary Optimized Packaging (XOP) Profile provides extensions that enable more efficient implementations of [[XML-XOP]](https://go.microsoft.com/fwlink/?LinkId=129150) to be built by requiring certain ordering of the [**Multipurpose Internet Mail Extensions (MIME)**](#gt_multipurpose-internet-mail-extensions-mime) [**XML Information Set (XML Infoset)**](#gt_67d3e681-bbf7-490a-a175-1450635981bb) parts in the [**XOP package**](#gt_xop-package).

<a id="Section_1.3.1"></a>
### 1.3.1 MIME Parts Ordering in Multipart/Related XOP Package Extension

The standard [**XOP**](#gt_xml-binary-optimized-packaging-xop) implementation, as specified in [[XML-XOP]](https://go.microsoft.com/fwlink/?LinkId=129150) section 4.1, is not allowed to consider the ordering of [**MIME**](#gt_multipurpose-internet-mail-extensions-mime) parts to be significant to XOP processing or to the construction of the [**XOP Information Set (XOP Infoset)**](#gt_xop-information-set-xop-infoset) for MIME Multipart/Related packaging. The XML-binary Optimized Packaging (XOP) Profile extends the MIME Multipart/Related packaging mechanism specified in [XML-XOP] to allow for the ordering of the MIME parts, as described in section [2.2.1](#Section_2.2.1). These extensions enable the creation of more efficient implementations for processing an [**XML Infoset**](#gt_67d3e681-bbf7-490a-a175-1450635981bb) packaged in MIME Multipart/Related [**XOP packages**](#gt_xop-package) when [**streaming**](#gt_streaming).

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

The XML-binary Optimized Packaging (XOP) Profile is an extension of [[XML-XOP]](https://go.microsoft.com/fwlink/?LinkId=129150). The extensions specified in this document [MS-XOPP] do not introduce any new protocol relationships beyond those specified in [XML-XOP] Appendix A.

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

There are no prerequisites or preconditions beyond those specified in [[XML-XOP]](https://go.microsoft.com/fwlink/?LinkId=129150) Appendix A.

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

The [**MIME**](#gt_multipurpose-internet-mail-extensions-mime) Parts Ordering in Multipart/Related XOP Package Extension specified in section [1.3.1](#Section_1.3.1) is applicable when an [**XOP Infoset**](#gt_xop-information-set-xop-infoset) packaged in a MIME Multipart/Related [**XOP package**](#gt_xop-package) is processed in [**streaming**](#gt_streaming) fashion.

These extensions are not applicable to XOP packaging mechanisms other than MIME and those that do not specify their own packaging mechanism.

If broad interoperability with implementations strictly compliant with [[XML-XOP]](https://go.microsoft.com/fwlink/?LinkId=129150) is desired, these extensions might not be a suitable choice.

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

There is no versioning or capability negotiation beyond that specified in [[XML-XOP]](https://go.microsoft.com/fwlink/?LinkId=129150).

<a id="Section_1.8"></a>
## 1.8 Vendor-Extensible Fields

There are no vendor-extensible fields beyond those specified in [[XML-XOP]](https://go.microsoft.com/fwlink/?LinkId=129150).

<a id="Section_1.9"></a>
## 1.9 Standards Assignments

There are no standards assignments beyond those specified in [[XML-XOP]](https://go.microsoft.com/fwlink/?LinkId=129150).

<a id="Section_2"></a>
# 2 Messages

<a id="Section_2.1"></a>
## 2.1 Transport

This specification defines only serialization rules for [**XOP packages**](#gt_xop-package) and does not define how XOP packages are transmitted on the network. As such, it does not have a transport.

<a id="Section_2.2"></a>
## 2.2 Message Syntax

Except as specified in section [2.2.1](#Section_2.2.1), the syntax used for specifying [**MIME**](#gt_multipurpose-internet-mail-extensions-mime) Multipart/Related [**XOP packaging**](#gt_3bcedd8e-f8f3-41b9-8221-e14aacd1db53) is as specified in [[XML-XOP]](https://go.microsoft.com/fwlink/?LinkId=129150) section 3, [XML-XOP] section 4.1, and [[RFC2387]](https://go.microsoft.com/fwlink/?LinkId=95254).

<a id="Section_2.2.1"></a>
### 2.2.1 Ordering of the MIME Parts in XOP Packages

The extensions provided by the XML–binary Optimized Packaging (XOP) Profile override the following text located in [[XML-XOP]](https://go.microsoft.com/fwlink/?LinkId=129150) section 4.1:

"Except for purposes of determining the root [**MIME**](#gt_multipurpose-internet-mail-extensions-mime) part, as specified by [[RFC2387]](https://go.microsoft.com/fwlink/?LinkId=95254), ordering of MIME parts MUST NOT be considered significant to [**XOP**](#gt_xml-binary-optimized-packaging-xop) processing or to the construction of the [**XOP Infoset**](#gt_xop-information-set-xop-infoset)."

In [**streaming**](#gt_streaming) mode negotiated through a process that is out of band to this protocol, the root MIME part MUST appear first in a MIME Multipart/Related [**XOP package**](#gt_xop-package), and the subsequent MIME parts MUST appear in the order in which they appear in the corresponding [**XML Infoset**](#gt_67d3e681-bbf7-490a-a175-1450635981bb).<1>

<a id="Section_3"></a>
# 3 Protocol Details

The XML-binary Optimized Packaging (XOP) Profile does not introduce any new protocol roles or change any existing protocol roles that are defined in [[XML-XOP]](https://go.microsoft.com/fwlink/?LinkId=129150).

<a id="Section_4"></a>
# 4 Protocol Examples

<a id="Section_4.1"></a>
## 4.1 MIME Multipart/Related XOP Package Ordering

The XML-binary Optimized Packaging (XOP) Profile does not introduce any new protocol roles or change any existing protocol roles that are defined in [[XML-XOP]](https://go.microsoft.com/fwlink/?LinkId=129150). Examples of how [**MIME**](#gt_multipurpose-internet-mail-extensions-mime) Multipart/Related [**XOP packages**](#gt_xop-package) are ordered are provided in [XML-XOP] section 1.2.

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

Security considerations are the same as those specified in [[XML-XOP]](https://go.microsoft.com/fwlink/?LinkId=129150) section 6.

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

None.

<a id="Section_6"></a>
# 6 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

**Windows Releases**

- Windows XP operating system Service Pack 2 (SP2)
- Windows Server 2003 operating system with Service Pack 1 (SP1)
- Windows Vista operating system
- Windows Server 2008 operating system
- Windows 7 operating system
- Windows Server 2008 R2 operating system
- Windows 8 operating system
- Windows Server 2012 operating system
- Windows 8.1 operating system
- Windows Server 2012 R2 operating system
- Windows 10 operating system
- Windows Server 2016 operating system
- Windows Server operating system
- Windows Server 2019 operating system
- Windows Server 2022 operating system
- Windows 11 operating system
- Windows Server 2025 operating system
Exceptions, if any, are noted in this section. If an update version, service pack or Knowledge Base (KB) number appears with a product name, the behavior changed in that update. The new behavior also applies to subsequent updates unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<1> Section 2.2.1: The Windows Web Services API element provides a buffered and [**streaming**](#gt_streaming) programming model for exchanging and processing [**SOAP messages**](#gt_soap-message) encoded as specified in [[SOAP-MTOM]](https://go.microsoft.com/fwlink/?LinkId=95126) between network nodes. When the Windows Web Services API's streaming programming model is used to create SOAP messages, it follows the [**MIME**](#gt_multipurpose-internet-mail-extensions-mime) parts ordering requirements specified in section [2.2.1](#Section_2.2.1).

<a id="Section_7"></a>
# 7 Change Tracking

This section identifies changes that were made to this document since the last release. Changes are classified as Major, Minor, or None.

The revision class **Major** means that the technical content in the document was significantly revised. Major changes affect protocol interoperability or implementation. Examples of major changes are:

- A document revision that incorporates changes to interoperability requirements.
- A document revision that captures changes to protocol functionality.
The revision class **Minor** means that the meaning of the technical content was clarified. Minor changes do not affect protocol interoperability or implementation. Examples of minor changes are updates to clarify ambiguity at the sentence, paragraph, or table level.

The revision class **None** means that no new technical changes were introduced. Minor editorial and formatting changes may have been made, but the relevant technical content is identical to the last released version.

The changes made to this document are listed in the following table. For more information, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com).

| Section | Description | Revision class |
| --- | --- | --- |
| [6](#Section_6) Appendix A: Product Behavior | Added Windows Server 2025 to the list of applicable products. | Major |

