# [MS-HNDS]: Host Name Data Structure Extension

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
  - [1.4 Relationship to Protocols and Other Structures](#Section_1.4)
  - [1.5 Applicability Statement](#Section_1.5)
  - [1.6 Versioning and Localization](#Section_1.6)
  - [1.7 Vendor-Extensible Fields](#Section_1.7)
</details>

<details>
<summary>2 Structures</summary>

- [2 Structures](#Section_2)
  - [2.1 Extended Host Name](#Section_2.1)
</details>

<details>
<summary>3 Structure Examples</summary>

- [3 Structure Examples](#Section_3)
</details>

<details>
<summary>4 Security Considerations</summary>

- [4 Security Considerations](#Section_4)
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

The Host Name Data Structure Extension Protocol specifies the extension to the allowable host names that can be assigned to a computer.

Sections 1.7 and 2 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_ascii"></a>
**ASCII**: The American Standard Code for Information Interchange (ASCII) is an 8-bit character-encoding scheme based on the English alphabet. ASCII codes represent text in computers, communications equipment, and other devices that work with text. ASCII refers to a single 8-bit ASCII character or an array of 8-bit ASCII characters with the high bit of each character set to zero.

<a id="gt_augmented-backus-naur-form-abnf"></a>
**Augmented Backus-Naur Form (ABNF)**: A modified version of Backus-Naur Form (BNF), commonly used by Internet specifications. ABNF notation balances compactness and simplicity with reasonable representational power. ABNF differs from standard BNF in its definitions and uses of naming rules, repetition, alternatives, order-independence, and value ranges. For more information, see [[RFC5234]](https://go.microsoft.com/fwlink/?LinkId=123096).

<a id="gt_client"></a>
**client**: A computer on which the remote procedure call (RPC) client is executing.

<a id="gt_domain-name-system-dns"></a>
**Domain Name System (DNS)**: A hierarchical, distributed database that contains mappings of domain names to various types of data, such as IP addresses. DNS enables the location of computers and services by user-friendly names, and it also enables the discovery of other information stored in the database.

<a id="gt_host-name"></a>
**host name**: The name of a physical server, as described in [[RFC952]](https://go.microsoft.com/fwlink/?LinkId=127731).

<a id="gt_utf-8"></a>
**UTF-8**: A byte-oriented standard for encoding Unicode characters, defined in the Unicode standard. Unless specified otherwise, this term refers to the UTF-8 encoding form specified in [[UNICODE5.0.0/2007]](https://go.microsoft.com/fwlink/?LinkId=154659) section 3.9.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[RFC1123] Braden, R., "Requirements for Internet Hosts - Application and Support", RFC 1123, October 1989, [https://www.rfc-editor.org/info/rfc1123](https://go.microsoft.com/fwlink/?LinkId=90268)

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC3629] Yergeau, F., "UTF-8, A Transformation Format of ISO 10646", STD 63, RFC 3629, November 2003, [https://www.rfc-editor.org/info/rfc3629](https://go.microsoft.com/fwlink/?LinkId=90439)

[RFC5234] Crocker, D., Ed., and Overell, P., "Augmented BNF for Syntax Specifications: ABNF", STD 68, RFC 5234, January 2008, [https://www.rfc-editor.org/info/rfc5234](https://go.microsoft.com/fwlink/?LinkId=123096)

[RFC952] Harrenstien, K., Stahl, M., and Feinler, E., "DOD Internet Host Table Specification", RFC 952, October 1985, [https://www.rfc-editor.org/info/rfc952](https://go.microsoft.com/fwlink/?LinkId=127731)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[ICANN] Internet Corporation for Assigned Names and Numbers, "DNS Stability: The Effect of New Generic Top Level Domains on the Internet Domain Name System", February 2008, [http://www.icann.org/en/topics/dns-stability-draft-paper-06feb08.pdf](https://go.microsoft.com/fwlink/?LinkId=127735)

[MS-NBTE] Microsoft Corporation, "[NetBIOS over TCP (NBT) Extensions](../MS-NBTE/MS-NBTE.md)".

[RFC1034] Mockapetris, P., "Domain Names - Concepts and Facilities", STD 13, RFC 1034, November 1987, [https://www.rfc-edit.org/info/rfc1034](https://go.microsoft.com/fwlink/?LinkId=90263)

[RFC1035] Mockapetris, P., "Domain Names - Implementation and Specification", STD 13, RFC 1035, November 1987, [https://www.rfc-editor.org/info/rfc1035](https://go.microsoft.com/fwlink/?LinkId=90264)

[RFC2181] Elz, R., and Bush, R., "Clarifications to the DNS Specification", RFC 2181, July 1997, [https://www.rfc-editor.org/info/rfc2181](https://go.microsoft.com/fwlink/?LinkId=127732)

[RFC3493] Gilligan, R., Thomson, S., Bound, J., McCann, J., and Stevens, W., "Basic Socket Interface Extensions for IPv6", RFC 3493, February 2003, [https://www.rfc-editor.org/info/rfc3493](https://go.microsoft.com/fwlink/?LinkId=90425)

<a id="Section_1.3"></a>
## 1.3 Overview

A [**host name**](#gt_host-name) is a string assigned to a computer to identify itself and to differentiate itself from other hosts on the network. The syntax for a host name was first defined in [[RFC952]](https://go.microsoft.com/fwlink/?LinkId=127731) and was subsequently updated in [[RFC1123]](https://go.microsoft.com/fwlink/?LinkId=90268) section 2.1.

This document extends that syntax to allow underscores and non-[**ASCII**](#gt_ascii) characters.

<a id="Section_1.4"></a>
## 1.4 Relationship to Protocols and Other Structures

Various protocols use [**host names**](#gt_host-name) in their own protocols and it is the responsibility of those protocols to state whether they use the standard host name syntax, or this extended syntax.

One protocol worth noting is the DNS protocol [[RFC1034]](https://go.microsoft.com/fwlink/?LinkId=90263) [[RFC1035]](https://go.microsoft.com/fwlink/?LinkId=90264) [[RFC2181]](https://go.microsoft.com/fwlink/?LinkId=127732), which does not depend on host names in any way. The DNS protocol uses [**DNS**](#gt_domain-name-system-dns) names, which allow binary labels, and hence inherently supports host names as well as names that would not be legal host names.

**Note** This document does not apply to NetBIOS names, which are instead discussed in [MS-NBTE](../MS-NBTE/MS-NBTE.md).

<a id="Section_1.5"></a>
## 1.5 Applicability Statement

A computer is typically configured with a [**host name**](#gt_host-name) which is used to uniquely identify that computer. That is, hosts can identify one another through the host names.

<a id="Section_1.6"></a>
## 1.6 Versioning and Localization

There is no versioning or localization support in this structure.

<a id="Section_1.7"></a>
## 1.7 Vendor-Extensible Fields

The host name structure does not contain any vendor-extensible fields.

<a id="Section_2"></a>
# 2 Structures

<a id="Section_2.1"></a>
## 2.1 Extended Host Name

The extended [**host name**](#gt_host-name) syntax is a [**UTF-8**](#gt_utf-8) [[RFC3629]](https://go.microsoft.com/fwlink/?LinkId=90439) string specified by the following [**ABNF**](#gt_augmented-backus-naur-form-abnf) [[RFC5234]](https://go.microsoft.com/fwlink/?LinkId=123096).

hname = name *("." name)

name = 1*63let-dig-hyp-und

let-dig-hyp-und = ALPHA / DIGIT / UTF8-2 / UTF8-3 / UTF8-4 / "-" / "_"

where UTF8-2, UTF8-3, and UTF8-4 are as specified in [RFC3629] section 4. In addition, the entire extended host name MUST be at most 255 bytes long.

An implementation MAY<1> disallow a string where a substring constructed from the "name" rule does not contain at least one non-DIGIT character.

<a id="Section_3"></a>
# 3 Structure Examples

The following strings are all examples of extended host names.

"my_computer.contoso.com"

"my_computer"

"_123"

"0x123"

"-"

"-._.-._.-"

<a id="Section_4"></a>
# 4 Security Considerations

Because the string "0x123" is a valid extended [**host name**](#gt_host-name), there might be security issues depending on how [**client**](#gt_client) software interprets such strings. For example, as discussed in [[ICANN]](https://go.microsoft.com/fwlink/?LinkId=127735), the inet_addr() method of the classic sockets Application Programming Interface (API) will interpret these strings as string representations of an IP address, and as discussed in [[RFC3493]](https://go.microsoft.com/fwlink/?LinkId=90425) section 6.1, the getaddrinfo() method of the sockets API will perform a simple conversion of strings accepted by inet_addr(), instead of trying to resolve the name using any type of name resolution service. This could redirect the client software to an address other than an address registered for that host name. As such, great care needs to be taken before using an extended host name that could be interpreted as a hexadecimal number.

<a id="Section_5"></a>
# 5 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

- Windows NT operating system
- Windows 2000 operating system
- Windows XP operating system
- Windows Server 2003 operating system
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

<1> Section 2.1: Windows NT, Windows 2000, Windows XP, Windows Server 2003, Windows Vista, Windows Server 2008, Windows 7, and Windows Server 2008 R2 operating system follow this behavior.

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
| [5](#Section_5) Appendix A: Product Behavior | Added Windows Server 2025 to the list of applicable products. | Major |

