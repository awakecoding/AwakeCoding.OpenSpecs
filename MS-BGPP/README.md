# [MS-BGPP]: Border Gateway Protocol (BGP) Profile

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
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 Gateway Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Higher-Layer Triggered Events](#Section_3.1.4)
    - [3.1.5 Message Processing Events and Sequencing Rules](#Section_3.1.5)
    - [3.1.6 Timer Events](#Section_3.1.6)
    - [3.1.7 Other Local Events](#Section_3.1.7)
</details>

<details>
<summary>4 Protocol Examples</summary>

- [4 Protocol Examples](#Section_4)
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

The Border Gateway Protocol (BGP) is an inter-domain routing protocol. The primary function of a BGP speaking system is to exchange network reachability information with other BGP systems. BGP reduces the need for manual route configuration on routers because it is a dynamic routing protocol.

In implementations of this profile, BGP is predominantly used to automatically learn routes between sites that are connected over site-to-site Virtual Private Networks (VPN). This document clarifies the differences between the profile and the published BGP standard.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_bgp-speaker"></a>
**BGP speaker**: A router that implements the Border Gateway Protocol (BGP).

<a id="gt_border-gateway-protocol-bgp"></a>
**Border Gateway Protocol (BGP)**: An inter-autonomous system routing protocol designed for TCP/IP routing.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[RFC1997] R. Chandra, P. Traina, "BGP Communities Attribute", RFC 1997, August 1996, [https://www.rfc-editor.org/info/rfc1997](https://go.microsoft.com/fwlink/?LinkId=279741)

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC2385] Heffernan, A., "Protection of BGP Sessions via the TCP MD5 Signature Option", RFC2385, [https://www.rfc-editor.org/info/rfc2385](https://go.microsoft.com/fwlink/?linkid=2133735)

[RFC4271] Rekhter, Y., Li, T., Hares, S., Eds., "A Border Gateway Protocol 4 (BGP-4)", RFC 4271, [https://www.rfc-editor.org/info/rfc4271](https://go.microsoft.com/fwlink/?LinkId=279746)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[MSDOCS-BGP] Microsoft Corporation, "Border Gateway Protocol (BGP)", [https://learn.microsoft.com/en-us/windows-server/remote/remote-access/bgp/border-gateway-protocol-bgp](https://go.microsoft.com/fwlink/?linkid=2134233)

<a id="Section_1.3"></a>
## 1.3 Overview

The [**Border Gateway Protocol (BGP)**](#gt_border-gateway-protocol-bgp) Profile does not implement some of the MUST clauses called out in BGP RFCs. For more details see section [2.2](#Section_2.2) and section [3.1.5](#Section_3.1.5). For more information on BGP see [[MSDOCS-BGP]](https://go.microsoft.com/fwlink/?linkid=2134233).

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

The [**Border Gateway Protocol (BGP)**](#gt_border-gateway-protocol-bgp) Profile is a subset of the Border Gateway Protocol 4 (BGP-4) specified in [[RFC4271]](https://go.microsoft.com/fwlink/?LinkId=279746). BGP Profile relies on BGP Communities Attributes specified in [[RFC1997]](https://go.microsoft.com/fwlink/?LinkId=279741) with some omissions.

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

This profile assumes that an administrator only configures the use of this profile in an applicable environment.

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

Since this profile is not compliant with the standard BGP-4 requirements specified in [[RFC4271]](https://go.microsoft.com/fwlink/?LinkId=279746), it is not applicable for use on the global Internet.

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

This profile does not provide any way to discover whether a peer supports this profile.

<a id="Section_1.8"></a>
## 1.8 Vendor-Extensible Fields

None.

<a id="Section_1.9"></a>
## 1.9 Standards Assignments

None.

<a id="Section_2"></a>
# 2 Messages

<a id="Section_2.1"></a>
## 2.1 Transport

There are no transport deviations from the BGP-4 specification [[RFC4271]](https://go.microsoft.com/fwlink/?LinkId=279746).

<a id="Section_2.2"></a>
## 2.2 Message Syntax

Message syntax is based on the BGP-4 specification [[RFC4271]](https://go.microsoft.com/fwlink/?LinkId=279746).

The deviations from the BGP Communities Attribute specification [[RFC1997]](https://go.microsoft.com/fwlink/?LinkId=279741) are:

The RFC section on "Well-known Communities" states, "The following communities have global significance and their operations shall be implemented in any community-attribute-aware [**BGP speaker**](#gt_bgp-speaker)": NO_EXPORT (0xFFFFFF01), NO_ADVERTISE (0xFFFFFF02), and NO_EXPORT_SUBCONFED (0xFFFFFF03). These community operations are not implemented.

<a id="Section_3"></a>
# 3 Protocol Details

<a id="Section_3.1"></a>
## 3.1 Gateway Details

BGP Profile applies to the server side as specified in [[RFC4271]](https://go.microsoft.com/fwlink/?LinkId=279746).

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

No changes from [[RFC4271]](https://go.microsoft.com/fwlink/?LinkId=279746).

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

No changes from [[RFC4271]](https://go.microsoft.com/fwlink/?LinkId=279746).

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

No changes from [[RFC4271]](https://go.microsoft.com/fwlink/?LinkId=279746).

<a id="Section_3.1.4"></a>
### 3.1.4 Higher-Layer Triggered Events

No changes from [[RFC4271]](https://go.microsoft.com/fwlink/?LinkId=279746).

<a id="Section_3.1.5"></a>
### 3.1.5 Message Processing Events and Sequencing Rules

The deviations from the Border Gateway Protocol 4 (BGP-4) specification [[RFC4271]](https://go.microsoft.com/fwlink/?LinkId=279746) are:

- The RFC section on "Security Considerations" states that implementations MUST support TCP MD5 ([[RFC2385]](https://go.microsoft.com/fwlink/?linkid=2133735)) for authentication. Authentication is not implemented.
- The RFC states, "As part of Phase 3 of the route selection process, the BGP speaker has updated its Adj-RIBs-Out. All newly installed routes and all newly unfeasible routes for which there is no replacement route SHALL be advertised to its peers by means of an UPDATE message." This is not implemented. An External Border Gateway Protocol (EBGP) or (eBGP) learned route will not be re-advertised to another eBGP peer even if that’s the best route from the decision process.
<a id="Section_3.1.6"></a>
### 3.1.6 Timer Events

No changes from [[RFC4271]](https://go.microsoft.com/fwlink/?LinkId=279746).

<a id="Section_3.1.7"></a>
### 3.1.7 Other Local Events

No changes from [[RFC4271]](https://go.microsoft.com/fwlink/?LinkId=279746).

<a id="Section_4"></a>
# 4 Protocol Examples

Protocol examples of Boarder Gateway message formats can be found in [[RFC4271]](https://go.microsoft.com/fwlink/?LinkId=279746) section 4.

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

The "Security Considerations" section in specification [[RFC4271]](https://go.microsoft.com/fwlink/?LinkId=279746) states that implementations MUST support TCP MD5 ([[RFC2385]](https://go.microsoft.com/fwlink/?linkid=2133735)) for authentication. Authentication is not implemented.

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

None.

<a id="Section_6"></a>
# 6 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

- Windows Server 2012 R2 operating system
- Windows Server 2016 operating system
- Windows Server 2019 operating system
- Windows Server 2022 operating system
- Windows Server 2025 operating system
Exceptions, if any, are noted in this section. If an update version, service pack or Knowledge Base (KB) number appears with a product name, the behavior changed in that update. The new behavior also applies to subsequent updates unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

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

