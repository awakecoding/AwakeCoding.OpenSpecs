# [MS-GPNRPT]: Group Policy: Name Resolution Policy Table (NRPT) Data Extension

Last updated: 4/23/2024

Table of Contents

<details>
<summary>1 Introduction</summary>

- [1 Introduction](#Section_1)
  - [1.1 Glossary](#Section_1.1)
  - [1.2 References](#Section_1.2)
    - [1.2.1 Normative References](#Section_1.2.1)
    - [1.2.2 Informative References](#Section_1.2.2)
  - [1.3 Protocol Overview (Synopsis)](#Section_1.3)
    - [1.3.1 Background](#Section_1.3.1)
    - [1.3.2 Name Resolution Policy Table Extension Encoding Overview](#Section_1.3.2)
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
    - [2.2.1 Global Policy Configuration Options](#Section_2.2.1)
      - [2.2.1.1 Enable DirectAccess for All Networks](#Section_2.2.1.1)
      - [2.2.1.2 DNS Secure Name Query Fallback](#Section_2.2.1.2)
      - [2.2.1.3 DirectAccess Query Order](#Section_2.2.1.3)
    - [2.2.2 Name Resolution Policy Messages](#Section_2.2.2)
      - [2.2.2.1 Name](#Section_2.2.2.1)
      - [2.2.2.2 Config Options](#Section_2.2.2.2)
      - [2.2.2.3 Version](#Section_2.2.2.3)
      - [2.2.2.4 DNSSEC Query IPsec Encryption](#Section_2.2.2.4)
      - [2.2.2.5 DNSSEC Query IPsec Required](#Section_2.2.2.5)
      - [2.2.2.6 DNSSEC Validation Required](#Section_2.2.2.6)
      - [2.2.2.7 IPsec CA Restriction](#Section_2.2.2.7)
      - [2.2.2.8 DirectAccess DNS Servers](#Section_2.2.2.8)
      - [2.2.2.9 DirectAccess Proxy Name](#Section_2.2.2.9)
      - [2.2.2.10 DirectAccess Proxy Type](#Section_2.2.2.10)
      - [2.2.2.11 DirectAccess Query IPsec Encryption](#Section_2.2.2.11)
      - [2.2.2.12 DirectAccess Query IPsec Required](#Section_2.2.2.12)
      - [2.2.2.13 Generic DNS Servers](#Section_2.2.2.13)
      - [2.2.2.14 IDN Configuration](#Section_2.2.2.14)
      - [2.2.2.15 Auto-Trigger VPN](#Section_2.2.2.15)
      - [2.2.2.16 Proxy Name](#Section_2.2.2.16)
      - [2.2.2.17 Proxy Type](#Section_2.2.2.17)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 Administrative Plug-in Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Higher-Layer Triggered Events](#Section_3.1.4)
    - [3.1.5 Processing Events and Sequencing Rules](#Section_3.1.5)
    - [3.1.6 Timer Events](#Section_3.1.6)
    - [3.1.7 Other Local Events](#Section_3.1.7)
</details>

<details>
<summary>4 Protocol Examples</summary>

- [4 Protocol Examples](#Section_4)
  - [4.1 Global Policy Configuration Messages](#Section_4.1)
  - [4.2 Name Resolution Policy Messages](#Section_4.2)
    - [4.2.1 DirectAccess](#Section_4.2.1)
    - [4.2.2 DNSSEC](#Section_4.2.2)
    - [4.2.3 Both DirectAccess and DNSSEC](#Section_4.2.3)
    - [4.2.4 Generic DNS Server](#Section_4.2.4)
    - [4.2.5 IDN Configuration](#Section_4.2.5)
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

This document specifies the Name Resolution Policy Table (NRPT) Group Policy Data Extension, an extension to Group Policy: Registry Extension Encoding [MS-GPREG](../MS-GPREG/MS-GPREG.md). The NRPT Group Policy Data Extension provides a mechanism for an administrator to control any [**Name Resolution Policy**](#gt_name-resolution-policy) behavior on a [**client**](#gt_client) by using Group Policy settings.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_active-directory"></a>
**Active Directory**: The Windows implementation of a general-purpose directory service, which uses LDAP as its primary access protocol. [**Active Directory**](#gt_active-directory) stores information about a variety of objects in the network such as user accounts, computer accounts, groups, and all related credential information used by Kerberos [MS-KILE](../MS-KILE/MS-KILE.md). [**Active Directory**](#gt_active-directory) is either deployed as Active Directory Domain Services (AD DS) or Active Directory Lightweight Directory Services (AD LDS), which are both described in [MS-ADOD](../MS-ADOD/MS-ADOD.md): Active Directory Protocols Overview.

<a id="gt_administrative-template"></a>
**administrative template**: A file associated with a [**Group Policy Object (GPO)**](#gt_group-policy-object-gpo) that combines information on the syntax of registry-based policy settings with human-readable descriptions of the settings, as well as other information.

<a id="gt_advanced-encryption-standard-aes"></a>
**Advanced Encryption Standard (AES)**: A block cipher that supersedes the [**Data Encryption Standard (DES)**](#gt_data-encryption-standard-des). AES can be used to protect electronic data. The AES algorithm can be used to encrypt (encipher) and decrypt (decipher) information. Encryption converts data to an unintelligible form called ciphertext; decrypting the ciphertext converts the data back into its original form, called plaintext. AES is used in symmetric-key cryptography, meaning that the same key is used for the encryption and decryption operations. It is also a block cipher, meaning that it operates on fixed-size blocks of plaintext and ciphertext, and requires the size of the plaintext as well as the ciphertext to be an exact multiple of this block size. AES is also known as the Rijndael symmetric encryption algorithm [[FIPS197]](https://go.microsoft.com/fwlink/?LinkId=89870).

<a id="gt_certification-authority-ca"></a>
**certification authority (CA)**: A third party that issues public key certificates. Certificates serve to bind public keys to a user identity. Each user and certification authority (CA) can decide whether to trust another user or CA for a specific purpose, and whether this trust is to be transitive. For more information, see [[RFC3280]](https://go.microsoft.com/fwlink/?LinkId=90414).

<a id="gt_client"></a>
**client**: A client, also called a client computer, is a computer that receives and applies settings of a [**Group Policy Object (GPO)**](#gt_group-policy-object-gpo), as specified in [MS-GPOL](../MS-GPOL/MS-GPOL.md).

<a id="gt_client-computer"></a>
**client computer**: A computer that receives and applies settings from a [**Group Policy Object (GPO)**](#gt_group-policy-object-gpo), as specified in [MS-GPOL].

<a id="gt_client-side-extension-guid-cse-guid"></a>
**client-side extension GUID (CSE GUID)**: A [**GUID**](#gt_globally-unique-identifier-guid) that enables a specific client-side extension on the Group Policy client to be associated with policy data that is stored in the logical and physical components of a [**Group Policy Object (GPO)**](#gt_group-policy-object-gpo) on the Group Policy server, for that particular extension.

<a id="gt_data-encryption-standard-des"></a>
**Data Encryption Standard (DES)**: A specification for encryption of computer data that uses a 56-bit key developed by IBM and adopted by the U.S. government as a standard in 1976. For more information see [[FIPS46-3]](https://go.microsoft.com/fwlink/?LinkId=89872).

<a id="gt_directaccess"></a>
**DirectAccess**: A collection of different component policies, including Name Resolution Policy and IPsec, which allows seamless connectivity to corporate resources when not physically connected to the corporate network.

<a id="gt_domain"></a>
**domain**: A set of users and computers sharing a common namespace and management infrastructure. At least one computer member of the set has to act as a domain controller (DC) and host a member list that identifies all members of the domain, as well as optionally hosting the [**Active Directory**](#gt_active-directory) service. The domain controller provides authentication of members, creating a unit of trust for its members. Each domain has an identifier that is shared among its members. For more information, see [MS-AUTHSOD](../MS-AUTHSOD/MS-AUTHSOD.md) section 1.1.1.5 and [MS-ADTS](../MS-ADTS/MS-ADTS.md).

<a id="gt_domain-name-system-dns"></a>
**Domain Name System (DNS)**: A hierarchical, distributed database that contains mappings of domain names to various types of data, such as IP addresses. DNS enables the location of computers and services by user-friendly names, and it also enables the discovery of other information stored in the database.

<a id="gt_fully-qualified-domain-name-fqdn"></a>
**fully qualified domain name (FQDN)**: An unambiguous domain name that gives an absolute location in the [**Domain Name System's (DNS)**](#gt_604dcfcd-72f5-46e5-85c1-f3ce69956700) hierarchy tree, as defined in [[RFC1035]](https://go.microsoft.com/fwlink/?LinkId=90264) section 3.1 and [[RFC2181]](https://go.microsoft.com/fwlink/?LinkId=127732) section 11.

<a id="gt_globally-unique-identifier-guid"></a>
**globally unique identifier (GUID)**: A term used interchangeably with universally unique identifier (UUID) in Microsoft protocol technical documents (TDs). Interchanging the usage of these terms does not imply or require a specific algorithm or mechanism to generate the value. Specifically, the use of this term does not imply or require that the algorithms described in [[RFC4122]](https://go.microsoft.com/fwlink/?LinkId=90460) or [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824) must be used for generating the [**GUID**](#gt_globally-unique-identifier-guid). See also universally unique identifier (UUID).

<a id="gt_group-policy-object-gpo"></a>
**Group Policy Object (GPO)**: A collection of administrator-defined specifications of the policy settings that can be applied to groups of computers in a domain. Each GPO includes two elements: an object that resides in the [**Active Directory**](#gt_active-directory) for the domain, and a corresponding file system subdirectory that resides on the sysvol DFS share of the Group Policy server for the domain.

<a id="gt_ipv4-address-in-string-format"></a>
**IPv4 address in string format**: A string representation of an IPv4 address in dotted-decimal notation, as described in [[RFC1123]](https://go.microsoft.com/fwlink/?LinkId=90268) section 2.1.

<a id="gt_ipv6-address-in-string-format"></a>
**IPv6 address in string format**: A string representation of an IPv6 address, as described in [[RFC4291]](https://go.microsoft.com/fwlink/?LinkId=90464) section 2.2.

<a id="gt_name-resolution-policy"></a>
**Name Resolution Policy**: [**Policy settings**](#gt_policy-setting) that control how [**client**](#gt_client) name resolution is performed for a given [**DNS**](#gt_domain-name-system-dns) domain or hostname.

<a id="gt_name-resolution-policy-table-nrpt"></a>
**Name Resolution Policy Table (NRPT)**: The collection of Name Resolution Policy settings that apply to a given client.

<a id="gt_netbios"></a>
**NetBIOS**: A particular network transport that is part of the LAN Manager protocol suite. [**NetBIOS**](#gt_netbios) uses a broadcast communication style that was applicable to early segmented local area networks. A protocol family including name resolution, datagram, and connection services. For more information, see [[RFC1001]](https://go.microsoft.com/fwlink/?LinkId=90260) and [[RFC1002]](https://go.microsoft.com/fwlink/?LinkId=90261).

<a id="gt_policy-setting"></a>
**policy setting**: A statement of the possible behaviors of an element of a domain member computer's behavior that can be configured by an administrator.

<a id="gt_punycode"></a>
**Punycode**: An ASCII Compatible Encoding syntax that transforms strings containing Unicode characters into strings consisting of a limited set of ASCII characters allowable for [**DNS**](#gt_domain-name-system-dns). Used to transform internationalized domain names. For more details, see [[RFC3492]](https://go.microsoft.com/fwlink/?LinkId=144682).

<a id="gt_registry"></a>
**registry**: A local system-defined database in which applications and system components store and retrieve configuration data. It is a hierarchical data store with lightly typed elements that are logically stored in tree format. Applications use the registry API to retrieve, modify, or delete registry data. The data stored in the registry varies according to the version of the operating system.

<a id="gt_registry-policy-file"></a>
**registry policy file**: A file associated with a [**Group Policy Object (GPO)**](#gt_group-policy-object-gpo) that contains a set of registry-based policy settings.

<a id="gt_tool-extension-guid-or-administrative-plug-in-guid"></a>
**tool extension GUID or administrative plug-in GUID**: A GUID defined separately for each of the user policy settings and computer policy settings that associates a specific administrative tool plug-in with a set of policy settings that can be stored in a [**Group Policy Object (GPO)**](#gt_group-policy-object-gpo).

<a id="gt_unicode"></a>
**Unicode**: A character encoding standard developed by the Unicode Consortium that represents almost all of the written languages of the world. The [**Unicode**](#gt_unicode) standard [[UNICODE5.0.0/2007]](https://go.microsoft.com/fwlink/?LinkId=154659) provides three forms (UTF-8, UTF-16, and UTF-32) and seven schemes (UTF-8, UTF-16, UTF-16 BE, UTF-16 LE, UTF-32, UTF-32 LE, and UTF-32 BE).

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[MS-GPOL] Microsoft Corporation, "[Group Policy: Core Protocol](../MS-GPOL/MS-GPOL.md)".

[MS-GPREG] Microsoft Corporation, "[Group Policy: Registry Extension Encoding](../MS-GPREG/MS-GPREG.md)".

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC5280] Cooper, D., Santesson, S., Farrell, S., et al., "Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile", RFC 5280, May 2008, [https://www.rfc-editor.org/info/rfc5280](https://go.microsoft.com/fwlink/?LinkId=131034)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[MS-HNDS] Microsoft Corporation, "[Host Name Data Structure Extension](../MS-HNDS/MS-HNDS.md)".

[RFC1034] Mockapetris, P., "Domain Names - Concepts and Facilities", STD 13, RFC 1034, November 1987, [https://www.rfc-edit.org/info/rfc1034](https://go.microsoft.com/fwlink/?LinkId=90263)

[RFC3490] Faltstrom, P., "Internationalizing Domain Names in Applications (IDNA)", RFC 3490, March 2003, [http://www.ietf.org/rfc/rfc3490.txt](https://go.microsoft.com/fwlink/?LinkId=129918)

[RFC3596] Thomson, S., Huitema, C., Ksinant, V., and Souissi, M., "DNS Extensions to Support IP version 6", RFC 3596, October 2003, [https://www.rfc-editor.org/info/rfc3596](https://go.microsoft.com/fwlink/?LinkId=107027)

<a id="Section_1.3"></a>
## 1.3 Protocol Overview (Synopsis)

The Name Resolution Policy Table (NRPT) Group Policy Data Extension provides a mechanism for an administrator to control [**Name Resolution Policy**](#gt_name-resolution-policy) behavior of the [**client**](#gt_client) through Group Policy by using the Group Policy: Registry Extension Encoding [MS-GPREG](../MS-GPREG/MS-GPREG.md).

<a id="Section_1.3.1"></a>
### 1.3.1 Background

The Group Policy: Core Protocol (as specified in [MS-GPOL](../MS-GPOL/MS-GPOL.md)) allows [**clients**](#gt_client) to discover and retrieve [**policy settings**](#gt_policy-setting) created by administrators of a [**domain**](#gt_domain). These settings are persisted within [**Group Policy Objects (GPOs)**](#gt_group-policy-object-gpo) that are assigned to Policy Target accounts in the [**Active Directory**](#gt_active-directory). On each client, each GPO is interpreted and acted upon by software components known as client plug-ins. The client plug-ins responsible for a given GPO are specified using an attribute on the GPO. This attribute specifies a list of [**globally unique identifier (GUID)**](#gt_globally-unique-identifier-guid) lists. The first GUID of each GUID list is referred to as a [**client-side extension GUID (CSE GUID)**](#gt_client-side-extension-guid-cse-guid). Other GUIDs in the GUID list are referred to as [**tool extension GUIDs**](#gt_88ad7745-bee6-47f7-ae98-6fac7c5ef330). For each GPO that is applicable to a client, the client consults the CSE GUIDs listed in the GPO to determine which client plug-in on the client will handle the GPO. The client then invokes the client plug-in to handle the GPO.

[**Registry**](#gt_registry)-based settings are accessible from a GPO through the Group Policy: Registry Extension Encoding protocol [MS-GPREG](../MS-GPREG/MS-GPREG.md), which is a client plug-in. The protocol provides mechanisms both for administrative tools to obtain metadata about registry-based settings and for clients to obtain applicable registry-based settings.

Group Policy: Registry Extension Encoding settings are specified using [**registry policy files**](#gt_registry-policy-file) (as specified in [MS-GPREG] section 2.2.1). An administrative tool uses the information within the [**administrative template**](#gt_administrative-template) to write out a registry policy file and associate it with a GPO. The Group Policy: Registry Extension Encoding plug-in on each client reads registry policy files specified by applicable GPOs and applies their contents to its registry.

<a id="Section_1.3.2"></a>
### 1.3.2 Name Resolution Policy Table Extension Encoding Overview

[**Name Resolution Policy Table**](#gt_name-resolution-policy-table-nrpt) policies are configurable from a GPO through the Name Resolution Policy Table Group Policy Data Extension, which uses the {f4d8c39a-f43d-42b4-9bdf-4e48d3044ba1} [**tool extension GUID**](#gt_88ad7745-bee6-47f7-ae98-6fac7c5ef330). The protocol provides mechanisms both for Group Policy administrators to deploy policies and for [**clients**](#gt_client) to obtain the applicable policies to enforce them. The Name Resolution Policy Table component has complex settings not expressible through [**administrative templates**](#gt_administrative-template), and for this reason it implements a custom UI that can author [**registry policy files**](#gt_registry-policy-file) containing the encodings of the settings described in this document. Given that the Name Resolution Policy Table policies are applied to the whole machine, the NRPT Group Policy Data Extension protocol uses the Computer Policy Mode described in [MS-GPREG](../MS-GPREG/MS-GPREG.md) section 1.3.2.

Name Resolution Policy Table policies are applied as follows:

- An administrator invokes a Group Policy Name Resolution Policy Table administrative tool on the administrator's computer to administer a Group Policy Object (GPO) through Group Policy Protocol using the Policy Administration mode, as specified in [MS-GPOL](../MS-GPOL/MS-GPOL.md) section 2.2.7. The administrative tool invokes a plug-in specific to Group Policy: Registry Extension Encoding so that the administrator can administer the Group Policy: Name Resolution Policy Table Data Structure transported over the Group Policy: Registry Extension Encoding data. This results in the storage and retrieval of metadata inside a GPO on a Group Policy server. This metadata describes configuration settings to be applied to the [**registry**](#gt_registry) on a client that is affected by the GPO. The administrator views the data and updates it to add a directive to run a command when the [**client computer**](#gt_client-computer) starts up. If they are not already present from a prior update, the [**CSE GUID**](#gt_client-side-extension-guid-cse-guid) and tool extension GUID for Computer Policy Settings for Group Policy: Registry Extension Encoding are written to the GPO.
- A client computer affected by that GPO is started (or is connected to the network, if this happens after the client starts), and Group Policy Protocol is invoked by the client to retrieve [**Policy Settings**](#gt_policy-setting) from the Group Policy server. As part of the processing of Group Policy Protocol, the Group Policy: Registry Extension Encoding's CSE GUID is read from this GPO, and this instructs the client to invoke a Group Policy: Registry Extension Encoding plug-in component for Policy Application.
- In processing the Policy Application portion of Group Policy: Registry Extension Encoding, the client parses the settings and then saves the settings in the registry on the local computer and notifies the Name Resolution Policy client component. The NRPT policies are stored in local storage.
- The NRPT Group Policy Data Extension is invoked for policy application. To apply the policies, the Name Resolution Policy component parses its previously stored settings in local storage.
<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

This protocol depends on the Group Policy: Registry Extension Encoding (as specified in [MS-GPREG](../MS-GPREG/MS-GPREG.md)) to transport the Name Resolution Policy Table Group Policy Data Extension settings. The protocol also has all the dependencies inherited from Group Policy: Registry Extension Encoding.

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

The prerequisites for this protocol are the same as those for the Group Policy: Registry Extension Encoding ([MS-GPREG](../MS-GPREG/MS-GPREG.md)).

In addition, a [**client**](#gt_client) needs to have a system/subsystem capable of executing commands at startup/shutdown time because the Computer Policy Mode of the Group Policy: Registry Extension Encoding is used.

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

The NRPT Group Policy Data Extension is applicable only while transported under the Group Policy: Registry Extension Encoding and within the Group Policy: Core Protocol framework. The Group Policy: Name Resolution Policy Table Data Structure is used to express the required [**Name Resolution Policy Table**](#gt_name-resolution-policy-table-nrpt) policy of the [**client**](#gt_client). Settings configured under Group Policy have priority over local settings.

The NRPT Group Policy Data Extension is not used in any other context.

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

The Group Policy: Name Resolution Policy Table Data Structure has a policy version (also called schema version), but the protocol currently defines a single version with a value of 1.

<a id="Section_1.8"></a>
## 1.8 Vendor-Extensible Fields

None.

<a id="Section_1.9"></a>
## 1.9 Standards Assignments

| Parameter | Value |
| --- | --- |
| Tool extension GUID | {f4d8c39a-f43d-42b4-9bdf-4e48d3044ba1} |
| Policy Base registry key | Software\Policies\Microsoft\Windows NT\DNSClient |

<a id="Section_2"></a>
# 2 Messages

<a id="Section_2.1"></a>
## 2.1 Transport

The Name Resolution Policy Table Group Policy Data Extension requires Group Policy: Registry Extension Encoding. All messages are exchanged in [**registry policy files**](#gt_registry-policy-file) encoded using Group Policy: Registry Extension Encoding.

<a id="Section_2.2"></a>
## 2.2 Message Syntax

<a id="Section_2.2.1"></a>
### 2.2.1 Global Policy Configuration Options

The Global Policy Configuration Options specify name resolution behavior that applies to all entries within the NRPT.

For information about the Type values, see [MS-GPREG](../MS-GPREG/MS-GPREG.md) section 2.2.1.

<a id="Section_2.2.1.1"></a>
#### 2.2.1.1 Enable DirectAccess for All Networks

Key: Software\Policies\Microsoft\Windows NT\DNSClient or System\CurrentControlSet\services\Dnscache\Parameters<1>

Value: "EnableDAForAllNetworks"

Type: REG_DWORD

Size: 32 bits.

Data: This field is a 32-bit value, which MUST contain one of the following values.

| Value | Meaning |
| --- | --- |
| 0x00000000 | Let Network ID determine when [**DirectAccess**](#gt_directaccess) settings are to be used. |
| 0x00000001 | Always use DirectAccess settings regardless of location. |
| 0x00000002 | Never use DirectAccess settings regardless of location. |

<a id="Section_2.2.1.2"></a>
#### 2.2.1.2 DNS Secure Name Query Fallback

Key: Software\Policies\Microsoft\Windows NT\DNSClient or System\CurrentControlSet\services\Dnscache\Parameters<2>

Value: "DnsSecureNameQueryFallback"

Type: REG_DWORD

Size: 32 bits.

Data: This field is a 32-bit value, which MUST contain one of the following values.

| Value | Meaning |
| --- | --- |
| 0x00000000 | Only use Link-Local Multicast Name Resolution (LLMNR) and [**NetBIOS**](#gt_netbios) if the name does not exist in [**DNS**](#gt_domain-name-system-dns). |
| 0x00000001 | Always fall back to LLMNR and NetBIOS for any kind of name resolution error. |
| 0x00000002 | Always fall back to LLMNR and NetBIOS if the name does not exist in DNS or if the DNS servers are unreachable when on a private network. |

<a id="Section_2.2.1.3"></a>
#### 2.2.1.3 DirectAccess Query Order

Key: Software\Policies\Microsoft\Windows NT\DNSClient or System\CurrentControlSet\services\Dnscache\Parameters<3>

Value: "DirectAccessQueryOrder"

Type: REG_DWORD

Size: 32 bits.

Data: This field is a 32-bit value, which MUST contain one of the following values.

| Value | Meaning |
| --- | --- |
| 0x00000000 | Resolve only IPv6 addresses. |
| 0x00000001 | Resolve both IPv4 and IPv6 addresses. |

<a id="Section_2.2.2"></a>
### 2.2.2 Name Resolution Policy Messages

The [**Name Resolution Policy Table**](#gt_name-resolution-policy-table-nrpt) consists of one or more Name Resolution Policy keys under Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig. The names for these keys can be any unique string value.

<a id="Section_2.2.2.1"></a>
#### 2.2.2.1 Name

Key: Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID} or System\CurrentControlSet\services\Dnscache\Parameters\DnsPolicyConfig\{Rule GUID}<4>

Value: "Name"

Type: REG_MULTI_SZ.

Size: Equal to the size of the **Data** field.

Data: One or more [**Unicode**](#gt_unicode) string names, each of which MUST be either a [**DNS**](#gt_domain-name-system-dns) suffix, a DNS prefix, a [**fully qualified domain name (FQDN)**](#gt_fully-qualified-domain-name-fqdn), an IPv4 subnet formatted as specified in [[RFC1034]](https://go.microsoft.com/fwlink/?LinkId=90263), section 3.6.2, or an IPv6 subnet formatted as specified in [[RFC3596]](https://go.microsoft.com/fwlink/?LinkId=107027) section 2.5.

Each DNS suffix present MUST consist of a "." character with a domain name appended. Each DNS prefix present MUST be constructed according to the "name" rule specified in [MS-HNDS](../MS-HNDS/MS-HNDS.md) section 2.1.

<a id="Section_2.2.2.2"></a>
#### 2.2.2.2 Config Options

Key: Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID} or System\CurrentControlSet\services\Dnscache\Parameters\DnsPolicyConfig\{Rule GUID}<5>

Value: "ConfigOptions"

Type: REG_DWORD

Size: 32 bits.

Data: This field is a 32-bit value, which MUST contain one of the following values.

| Value | Meaning |
| --- | --- |
| 0x00000002 | Only DNSSEC options (that is, options defined in sections [2.2.2.4](#Section_2.2.2.4), [2.2.2.5](#Section_2.2.2.5), [2.2.2.6](#Section_2.2.2.6), and [2.2.2.7](#Section_2.2.2.7)) are specified. |
| 0x00000004 | Only [**DirectAccess**](#gt_directaccess) options (that is, options defined in sections [2.2.2.8](#Section_2.2.2.8), [2.2.2.9](#Section_2.2.2.9), [2.2.2.10](#Section_2.2.2.10), [2.2.2.11](#Section_2.2.2.11), and [2.2.2.12](#Section_2.2.2.12)) are specified. |
| 0x00000006 | Both DNSSEC and DirectAccess options are specified. |
| 0x00000008 | Only the Generic DNS server option (that is, the option defined in section [2.2.2.13](#Section_2.2.2.13)) is specified. |
| 0x0000000A | The Generic DNS server option and the DNSSEC options are specified. |
| 0x0000000C | The Generic DNS server option and the DirectAccess options are specified. |
| 0x0000000E | The Generic DNS server option, DNSSEC options, and DirectAccess options are specified. |
| 0x00000010 | Only the IDN Configuration option (that is, option defined in section [2.2.2.14](#Section_2.2.2.14)) is specified. |
| 0x00000012 | The IDN configuration option and DNSSEC options are specified. |
| 0x00000014 | The IDN configuration option and DirectAccess options are specified. |
| 0x00000016 | The IDN configuration option, DNSSEC options, and DirectAccess options are specified. |
| 0x00000018 | The IDN configuration option and the Generic DNS server options are specified. |
| 0x0000001A | The IDN configuration option, Generic DNS server option, and DNSSEC options are specified. |
| 0x0000001C | The IDN configuration option, Generic DNS server options, and DirectAccess options are specified. |
| 0x0000001E | The IDN configuration option, Generic DNS server option, DNSSEC options, and DirectAccess options are specified. |

<a id="Section_2.2.2.3"></a>
#### 2.2.2.3 Version

Key: Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID} or System\CurrentControlSet\services\Dnscache\Parameters\DnsPolicyConfig\{Rule GUID}<6>

Value: "Version"

Type: REG_DWORD

Size: 32 bits.

Data: This field is a 32-bit value specifying the [**Name Resolution Policy**](#gt_name-resolution-policy) version. Its value MUST be 0x00000001.

<a id="Section_2.2.2.4"></a>
#### 2.2.2.4 DNSSEC Query IPsec Encryption

Key: Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID} or System\CurrentControlSet\services\Dnscache\Parameters\DnsPolicyConfig\{Rule GUID}<7>

Value: "DNSSECQueryIPSECEncryption"

Type: REG_DWORD

Size: 32 bits.

Data: This field is a 32-bit value, which MUST contain one of the following values.

| Value | Meaning |
| --- | --- |
| 0x00000000 | No encryption (integrity only) necessary when IPsec protection is used for DNSSEC queries. |
| 0x00000001 | Low security encryption, which includes [**DES**](#gt_data-encryption-standard-des) or [**AES**](#gt_advanced-encryption-standard-aes) with key size of 128, 192, or 256 bits, is to be used when IPsec protection is used for DNSSEC queries. |
| 0x00000002 | Medium security encryption, which includes AES with key size of 128, 192, or 256 bits, is to be used when IPsec protection is used for DNSSEC queries. |
| 0x00000003 | High security encryption, which includes AES with key size of 192 or 256 bits, is to be used when IPsec protection is used for DNSSEC queries. |

<a id="Section_2.2.2.5"></a>
#### 2.2.2.5 DNSSEC Query IPsec Required

Key: Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID} or System\CurrentControlSet\services\Dnscache\Parameters\DnsPolicyConfig\{Rule GUID}<8>

Value: "DNSSECQueryIPSECRequired"

Type: REG_DWORD

Size: 32 bits.

Data: This field is a 32-bit value, which MUST contain one of the following values.

| Value | Meaning |
| --- | --- |
| 0x00000000 | IPsec is not required for [**DNS**](#gt_domain-name-system-dns) queries. |
| 0x00000001 | IPsec is required for DNS queries. |

<a id="Section_2.2.2.6"></a>
#### 2.2.2.6 DNSSEC Validation Required

Key: Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID} or System\CurrentControlSet\services\Dnscache\Parameters\DnsPolicyConfig\{Rule GUID}<9>

Value: "DNSSECValidationRequired"

Type: REG_DWORD

Size: 32 bits.

Data: This field is a 32-bit value, which MUST contain one of the following values.

| Value | Meaning |
| --- | --- |
| 0x00000000 | DNSSEC validation is not required for [**DNS**](#gt_domain-name-system-dns) queries. |
| 0x00000001 | DNSSEC validation is required for DNS queries. |

<a id="Section_2.2.2.7"></a>
#### 2.2.2.7 IPsec CA Restriction

Key: Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID} or System\CurrentControlSet\services\Dnscache\Parameters\DnsPolicyConfig\{Rule GUID}<10>

Value: "IPSECCARestriction"

Type: REG_SZ.

Size: Equal to the size of the **Data** field.

Data: A [**Unicode**](#gt_unicode) string specifying the [**Certificate Authority**](#gt_c925d5d7-a442-4ba4-9586-5f94ccec847a) in X509 format [[RFC5280]](https://go.microsoft.com/fwlink/?LinkId=131034).

<a id="Section_2.2.2.8"></a>
#### 2.2.2.8 DirectAccess DNS Servers

Key: Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID} or System\CurrentControlSet\services\Dnscache\Parameters\DnsPolicyConfig\{Rule GUID}<11>

Value: "DirectAccessDNSServers"

Type: REG_SZ.

Size: Equal to the size of the **Data** field.

Data: A semicolon-delimited [**Unicode**](#gt_unicode) string of IP addresses or names of [**DNS**](#gt_domain-name-system-dns) servers used for internal name resolutions by [**DirectAccess**](#gt_directaccess) [**clients**](#gt_client). Each IP address item in the string MUST be either an [**IPv4 address in string format**](#gt_ipv4-address-in-string-format) or an [**IPv6 address in string format**](#gt_ipv6-address-in-string-format). Each name in the string MUST be an extended hostname as specified in [MS-HNDS](../MS-HNDS/MS-HNDS.md).

<a id="Section_2.2.2.9"></a>
#### 2.2.2.9 DirectAccess Proxy Name

Key: Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID} or System\CurrentControlSet\services\Dnscache\Parameters\DnsPolicyConfig\{Rule GUID}<12>

Value: "DirectAccessProxyName"

Type: REG_SZ.

Size: Equal to the size of the **Data** field.

Data: A [**Unicode**](#gt_unicode) string specifying the HTTP proxy name and port in the format "proxy:port" where "proxy" MUST be either an extended hostname as specified in [MS-HNDS](../MS-HNDS/MS-HNDS.md) section 2.1, an [**IPv4 address in string format**](#gt_ipv4-address-in-string-format), or an [**IPv6 address in string format**](#gt_ipv6-address-in-string-format); "port" MUST be a decimal integer between 1 and 65535.

<a id="Section_2.2.2.10"></a>
#### 2.2.2.10 DirectAccess Proxy Type

Key: Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID} or System\CurrentControlSet\services\Dnscache\Parameters\DnsPolicyConfig\{Rule GUID}<13>

Value: "DirectAccessProxyType"

Type: REG_DWORD

Size: 32 bits.

Data: This field is a 32-bit value, which MUST contain one of the following values.

| Value | Meaning |
| --- | --- |
| 0x00000000 | No proxy configured. |
| 0x00000001 | Use the default proxy. |
| 0x00000002 | Use the proxy specified by the [**DirectAccess**](#gt_directaccess) Proxy Name (see section [2.2.2.9](#Section_2.2.2.9)). |

<a id="Section_2.2.2.11"></a>
#### 2.2.2.11 DirectAccess Query IPsec Encryption

Key: Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID} or System\CurrentControlSet\services\Dnscache\Parameters\DnsPolicyConfig\{Rule GUID}<14>

Value: "DirectAccessQueryIPSECEncryption"

Type: REG_DWORD

Size: 32 bits.

Data: This field is a 32-bit value, which MUST contain one of the following values.

| Value | Meaning |
| --- | --- |
| 0x00000000 | No encryption (integrity only) required for IPsec protection of [**DNS**](#gt_domain-name-system-dns) queries. |
| 0x00000001 | Low security, which includes [**DES**](#gt_data-encryption-standard-des) or [**AES**](#gt_advanced-encryption-standard-aes) with key size of 128, 192, or 256 bits, required for IPsec protection of DNS queries. |
| 0x00000002 | Medium security, which includes AES with key size of 128, 192, or 256 bits, required for IPsec protection of DNS queries. |
| 0x00000003 | High security, which includes AES with key size of 192 or 256 bits, required for IPsec protection of DNS queries. |

<a id="Section_2.2.2.12"></a>
#### 2.2.2.12 DirectAccess Query IPsec Required

Key: Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID} or System\CurrentControlSet\services\Dnscache\Parameters\DnsPolicyConfig\{Rule GUID}<15>

Value: "DirectAccessQueryIPSECRequired"

Type: REG_DWORD

Size: 32 bits.

Data: This field is a 32-bit value, which MUST contain of one of the following values.

| Value | Meaning |
| --- | --- |
| 0x00000000 | IPsec protection is not required for [**DNS**](#gt_domain-name-system-dns) queries. |
| 0x00000001 | IPsec protection is required for DNS queries. |

<a id="Section_2.2.2.13"></a>
#### 2.2.2.13 Generic DNS Servers

Key: Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID} or System\CurrentControlSet\services\Dnscache\Parameters\DnsPolicyConfig\{Rule GUID}<16><17>

Value: "GenericDNSServers"

Type: REG_SZ

Size: Equal to the size of the **Data** field.

Data: A semicolon-delimited [**Unicode**](#gt_unicode) string of IP addresses or names of DNS servers used for name resolutions by clients in the absence of [**DirectAccess**](#gt_directaccess) settings. Each IP address item in the string MUST be either an [**IPv4 address in string format**](#gt_ipv4-address-in-string-format) or an [**IPv6 address in string format**](#gt_ipv6-address-in-string-format). Each name in the string MUST be an extended hostname, as specified in [MS-HNDS](../MS-HNDS/MS-HNDS.md).

<a id="Section_2.2.2.14"></a>
#### 2.2.2.14 IDN Configuration

Key: Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID} or System\CurrentControlSet\services\Dnscache\Parameters\DnsPolicyConfig\{Rule GUID}<18><19>

Value: "IDNConfig"

Type: REG_DWORD

Size: 32 bits.

Data: This field is a 32-bit value that MUST contain one of the following values.

| Value | Meaning |
| --- | --- |
| 0x00000000 | The query name MUST be encoded in UTF-8 without any mapping. |
| 0x00000001 | The query name MUST be encoded in UTF-8 with mapping. |
| 0x00000002 | The query name MUST be encoded in [**Punycode**](#gt_punycode). |

For more information about IDN configuration, see [[RFC3490]](https://go.microsoft.com/fwlink/?LinkId=129918).

<a id="Section_2.2.2.15"></a>
#### 2.2.2.15 Auto-Trigger VPN

Key: Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID} or System\CurrentControlSet\services\Dnscache\Parameters\DnsPolicyConfig\{Rule GUID}<20>

**Note** This property is optional. If it is not used, its value is set to an empty string.

Value: "VpnRequired"

Type: REG_DWORD

Size: 32 bits.

Data: This field is a 32-bit value that MUST contain one of the following values.

| Value | Meaning |
| --- | --- |
| 0x00000000 | Do NOT notify VPN platform to dial VPN when sending DNS queries. |
| 0x00000001 | Notify VPN platform to dial VPN when sending DNS queries. |

<a id="Section_2.2.2.16"></a>
#### 2.2.2.16 Proxy Name

Key: Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID} or System\CurrentControlSet\services\Dnscache\Parameters\DnsPolicyConfig\{Rule GUID}<21>

**Note** This property is optional. If it is not used, its value is set to an empty string.

Value: "ProxyName"

Type: REG_SZ

Size: Equal to the size of the **Data** field.

Data: A [**Unicode**](#gt_unicode) string specifying the HTTP proxy name and port in the format "proxy:port" where "proxy" MUST be either an extended hostname as specified in [MS-HNDS](../MS-HNDS/MS-HNDS.md) section 2.1, an [**IPv4 address in string format**](#gt_ipv4-address-in-string-format), or an [**IPv6 address in string format**](#gt_ipv6-address-in-string-format); "port" MUST be a decimal integer between 1 and 65,535.

<a id="Section_2.2.2.17"></a>
#### 2.2.2.17 Proxy Type

Key: Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID} or System\CurrentControlSet\services\Dnscache\Parameters\DnsPolicyConfig\{Rule GUID}<22>

**Note** This property is optional. If it is not used, its value is set to an empty string.

Value: "ProxyType"

Type: REG_SZ

Size: Equal to the size of the **Data** field.

Data: This field is a 32-bit value, which MUST contain one of the following values.

| Value | Meaning |
| --- | --- |
| 0x00000000 | No proxy configured. |
| 0x00000001 | Use the default proxy. |
| 0x00000002 | Use the proxy specified by the [Proxy Name (section 2.2.2.16)](#Section_2.2.2.16). |

<a id="Section_3"></a>
# 3 Protocol Details

<a id="Section_3.1"></a>
## 3.1 Administrative Plug-in Details

The administrative plug-in mediates between the user interface (UI) and a remote data store that contains [**Name Resolution Policy Table**](#gt_name-resolution-policy-table-nrpt) Group Policy extension settings. Its purpose is to receive Name Resolution Policy Table Group Policy information from a UI and to write the same policy information to a remote data store.

The NRPT Group Policy Data Extension administrative plug-in relies on a collection of settings specified in section [2.2](../MS-GPREG/MS-GPREG.md) and stored as a [**Unicode**](#gt_unicode) configuration file ([MS-GPREG](../MS-GPREG/MS-GPREG.md) section 2.2) at a remote storage location using the Group Policy: Core Protocol. The administrative plug-in parses and encodes these settings as specified in section 2.2 to perform its functions.

The NRPT Group Policy Data Extension administrative plug-in reads in these settings from the remote storage location and displays them to an administrator through a UI.

An administrator can then use the UI to make further configuration changes, and the NRPT Group Policy Data Extension administrative plug-in will make corresponding changes to the name-value pairs stored in the aforementioned Unicode configuration file following the conventions of the keys specified in section 2.2.

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

None.

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

None.

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

None.

<a id="Section_3.1.4"></a>
### 3.1.4 Higher-Layer Triggered Events

The NRPT Group Policy Data Extension administrative plug-in is invoked when an administrator launches the user interface for editing Group Policy settings. The plug-in displays the current settings to the administrator, and when the administrator requests a change in settings, it updates the stored configuration appropriately as specified in section [2.2](#Section_2.2), after performing additional checks and actions as noted in this section.

The administrative plug-in SHOULD<23> take measures in its UI to ensure that the user cannot unknowingly set the Name Resolution Policy Table Group Policy settings to an invalid value.

<a id="Section_3.1.5"></a>
### 3.1.5 Processing Events and Sequencing Rules

The NRPT Group Policy Data Extension administrative plug-in reads extension-specific data from the remote storage location and will then pass that information to a UI to display the current settings to an administrator.

It will also write the extension-specific configuration data to the remote storage location if the administrator makes any changes to the existing configuration.

Any additional entries in the configuration data that do not pertain to the configuration options specified in section [2.2](#Section_2.2), or that are not supported by the particular implementation, MUST be ignored by the plug-in.

<a id="Section_3.1.6"></a>
### 3.1.6 Timer Events

None.

<a id="Section_3.1.7"></a>
### 3.1.7 Other Local Events

None.

<a id="Section_4"></a>
# 4 Protocol Examples

<a id="Section_4.1"></a>
## 4.1 Global Policy Configuration Messages

The following is an example of [**Name Resolution Policy**](#gt_name-resolution-policy) global options to query for both IPv4 and IPv6, always allow fallback to LLMNR and [**NetBIOS**](#gt_netbios), and to enable Name Resolution Policy behavior only when not physically connected to the corporate network.

Key: SOFTWARE\Policies\Microsoft\Windows NT\DNSClient

Value: "DirectAccessQueryOrder"

Type: REG_DWORD

Size: 32 bits.

Data: 00000001

Value: "DnsSecureNameQueryFallback"

Type: REG_DWORD

Size: 32 bits.

Data: 00000001

Value: "EnableDAForAllNetworks"

Type: REG_DWORD

Size: 32 bits.

Data: 00000000

<a id="Section_4.2"></a>
## 4.2 Name Resolution Policy Messages

The following are examples of individual [**Name Resolution Policy**](#gt_name-resolution-policy) entries specifying DNSSEC, [**DirectAccess**](#gt_directaccess), and both.

<a id="Section_4.2.1"></a>
### 4.2.1 DirectAccess

The following is an example of a [**Name Resolution Policy**](#gt_name-resolution-policy) entry to apply [**DirectAccess**](#gt_directaccess) for names under the directaccess.example.com domain. The policy specifies the [**DNS**](#gt_domain-name-system-dns) servers to query and requires IPsec with medium encryption but no CA restriction or proxy.

Key: SOFTWARE\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID}

Value: "Version"

Type: REG_DWORD

Size: 32 bits.

Data: 00000001

Value: "Name"

Type: REG_MULTI_SZ.

Size: Equal to the size of the data field.

Data: ".directaccess.example.com"

Value: "ConfigOptions"

Type: REG_DWORD

Size: 32 bits.

Data: 00000004

Value: "DirectAccessDNSServers"

Type: REG_SZ.

Size: Equal to the size of the data field.

Data: "10.1.1.1;10.2.2.2"

Value: "DirectAccessProxyName"

Type: REG_SZ.

Size: Equal to the size of the data field.

Data: ""

Value: "DirectAccessProxyType"

Type: REG_DWORD

Size: 32 bits.

Data: 00000000

Value: "DirectAccessQueryIPSECEncryption"

Type: REG_DWORD

Size: 32 bits.

Data: 00000002

Value: "DirectAccessQueryIPSECRequired"

Type: REG_DWORD

Size: 32 bits.

Data: 00000001

Value: "IPSECCARestriction"

Type: REG_SZ.

Size: Equal to the size of the data field.

Data: ""

<a id="Section_4.2.2"></a>
### 4.2.2 DNSSEC

The following is an example of a [**Name Resolution Policy**](#gt_name-resolution-policy) entry to apply DNSSEC for names under the dnssec.example.com domain. The policy requires DNSSEC validation, IPsec with medium encryption, and a specific CA.

Key: SOFTWARE\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\ {Rule GUID}

Value: "Version"

Type: REG_DWORD

Size: 32 bits.

Data: 1

Value: "Name"

Type: REG_MULTI_SZ.

Size: Equal to the size of the data field.

Data: ".dnssec.example.com"

Value: "ConfigOptions"

Type: REG_DWORD

Size: 32 bits.

Data: 00000002

Value: "DNSSECQueryIPSECEncryption"

Type: REG_DWORD

Size: 32 bits.

Data: 00000002

Value: "DNSSECQueryIPSECRequired"

Type: REG_DWORD

Size: 32 bits.

Data: 00000001

Value: "DNSSECValidationRequired"

Type: REG_DWORD

Size: 32 bits.

Data: 00000001

Value: "IPSECCARestriction"

Type: REG_SZ.

Size: Equal to the size of the data field.

Data: 'C=US, O="VeriSign, Inc.", OU=Class 3 Public Primary Certification Authority - G2, OU="(c) 1998 VeriSign, Inc. - For authorized use only", OU=VeriSign Trust Network'

<a id="Section_4.2.3"></a>
### 4.2.3 Both DirectAccess and DNSSEC

The following is an example of a [**Name Resolution Policy**](#gt_name-resolution-policy) entry to apply both [**DirectAccess**](#gt_directaccess) and DNSSEC for names under the both.example.com domain. For DNSSEC, the policy requires DNSSEC validation, IPsec with high encryption, and a specific CA. For DirectAccess, it specifies [**DNS**](#gt_domain-name-system-dns) servers for DirectAccess, requires IPsec with high encryption, and specifies a proxy.

Key: SOFTWARE\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID}

Value: "Version"

Type: REG_DWORD

Size: 32 bits.

Data: 1

Value: "Name"

Type: REG_MULTI_SZ.

Size: Equal to the size of the data field.

Data: ".both.example.com"

Value: "ConfigOptions"

Type: REG_DWORD

Size: 32 bits.

Data: 00000006

Value: "DirectAccessDNSServers"

Type: REG_SZ.

Size: Equal to the size of the data field.

Data: "10.1.1.1"

Value: "DirectAccessProxyName"

Type: REG_SZ.

Size: Equal to the size of the data field.

Data: "exampleproxy:80"

Value: "DirectAccessProxyType"

Type: REG_DWORD

Size: 32 bits.

Data: 00000002

Value: "DirectAccessQueryIPSECEncryption"

Type: REG_DWORD

Size: 32 bits.

Data: 00000003

Value: "DirectAccessQueryIPSECRequired"

Type: REG_DWORD

Size: 32 bits.

Data: 00000001

Value: "DNSSECQueryIPSECEncryption"

Type: REG_DWORD

Size: 32 bits.

Data: 00000003

Value: "DNSSECQueryIPSECRequired"

Type: REG_DWORD

Size: 32 bits.

Data: 00000001

Value: "DNSSECValidationRequired"

Type: REG_DWORD

Size: 32 bits.

Data: 00000001

Value: "IPSECCARestriction"

Type: REG_SZ.

Size: Equal to the size of the data field.

Data: 'C=US, O="VeriSign, Inc.", OU=Class 3 Public Primary Certification Authority - G2, OU="(c) 1998 VeriSign, Inc. - For authorized use only", OU=VeriSign Trust Network'

<a id="Section_4.2.4"></a>
### 4.2.4 Generic DNS Server

The following is an example of a [**Name Resolution Policy**](#gt_name-resolution-policy) entry to apply the Generic DNS server configuration for names under the example.com domain. The policy requires the use of the configured DNS server for all DNS queries.

Key: SOFTWARE\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID}

Value: "VpnRequired"

Type: REG_DWORD

Size: 32 bits

Data: 00000001

Value: "Name"

Type: REG_MULTI_SZ

Size: Equal to the size of the data field

Data: ".example.com"

Value: "ConfigOptions"

Type: REG_DWORD

Size: 32 bits

Data: 00000008

Value: "GenericDNSServers"

Type: Reg_SZ

Size: Equal to the size of the data field

Data: "10.1.1.1; 10.2.2.2"

Value: "ProxyName"

Type: REG_SZ

Size: Equal to the size of the data field

Data: "exampleproxy:80"

Value: "ProxyType"

Type: REG_DWORD

Size: 32 bits

Data: 00000002

<a id="Section_4.2.5"></a>
### 4.2.5 IDN Configuration

The following is an example of a [**Name Resolution Policy**](#gt_name-resolution-policy) entry to apply internationalized domain name processing for names under the idn.example.com domain. The policy requires that all names in this domain be encoded in [**Punycode**](#gt_punycode).

Key: SOFTWARE\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Rule GUID}

Value: "Version"

Type: REG_DWORD

Size: 32 bits.

Data: 1

Value: "Name"

Type: REG_MULTI_SZ.

Size: Equal to the size of the data field.

Data: ".dnssec.example.com"

Value: "ConfigOptions"

Type: REG_DWORD

Size: 32 bits.

Data: 000000010

Value: "IDNConfig"

Type: Reg_DWORD

Size: 32 bits

Data: 00000002

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

Do not transmit passwords or other sensitive data through this protocol. The primary reason for this restriction is that the protocol provides no encryption, and therefore sensitive data transmitted through this protocol can be intercepted easily by an unauthorized user with access to the network carrying the data. For example, if a network administrator configured a Group Policy: Registry Extension Encoding setting in a [**GPO**](#gt_group-policy-object-gpo) to instruct a computer to use a specific password when accessing a certain network resource, this protocol would send that password unencrypted to those computers. A person gaining unauthorized access, intercepting the protocol's network packets in this case, would then discover the password for that resource, which would then be unprotected from the unauthorized person.

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

None.

<a id="Section_6"></a>
# 6 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

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

<1> Section 2.2.1.1: In the presence of both keys, the System\CurrentControlSet\services\Dnscache\Parameters key is ignored.

<2> Section 2.2.1.2: In the presence of both keys, the System\CurrentControlSet\services\Dnscache\Parameters key is ignored.

<3> Section 2.2.1.3: In the presence of both keys, the System\CurrentControlSet\services\Dnscache\Parameters key is ignored.

<4> Section 2.2.2.1: The **Name** key specification is Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Name}. In the presence of both specified keys, Windows ignores the System\CurrentControlSet\services\Dnscache\Parameters key.

<5> Section 2.2.2.2: The **Config Options** key specification is Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Name}. Note that in the presence of both specified keys, Windows ignores the System\CurrentControlSet\services\Dnscache\Parameters key.

<6> Section 2.2.2.3: The **Version** key specification is Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Name}. Note that in the presence of both specified keys, Windows ignores the System\CurrentControlSet\services\Dnscache\Parameters key.

<7> Section 2.2.2.4: The **DNSSEC Query IPsec Encryption** key specification is Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Name}. Note that in the presence of both specified keys, Windows ignores the System\CurrentControlSet\services\Dnscache\Parameters key.

<8> Section 2.2.2.5: The **DNSSEC Query IPsec Required** key specification is Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Name}. Note that in the presence of both specified keys, Windows ignores the System\CurrentControlSet\services\Dnscache\Parameters key.

<9> Section 2.2.2.6: The **DNSSEC Validation Required** key specification is Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Name}. Note that in the presence of both specified keys, Windows ignores the System\CurrentControlSet\services\Dnscache\Parameters key.

<10> Section 2.2.2.7: The **IPsec CA Restriction** key specification is Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Name}. Note that in the presence of both specified keys, Windows ignores the System\CurrentControlSet\services\Dnscache\Parameters key.

<11> Section 2.2.2.8: The **DirectAccess DNS Servers** key specification is Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Name}. Note that in the presence of both specified keys, Windows ignores the System\CurrentControlSet\services\Dnscache\Parameters key.

<12> Section 2.2.2.9: The **DirectAccess Proxy Name** key specification is Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Name}. Note that in the presence of both specified keys, Windows ignores the System\CurrentControlSet\services\Dnscache\Parameters key.

<13> Section 2.2.2.10: The **DirectAccess Proxy Type** key specification is Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Name}. Note that in the presence of both specified keys, Windows ignores the System\CurrentControlSet\services\Dnscache\Parameters key.

<14> Section 2.2.2.11: The **DirectAccess Query IPsec Encryption** key specification is Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Name}. Note that in the presence of both specified keys, Windows ignores the System\CurrentControlSet\services\Dnscache\Parameters key.

<15> Section 2.2.2.12: The **DirectAccess Query IPsec Required** key specification is Software\Policies\Microsoft\Windows NT\DNSClient\DnsPolicyConfig\{Name}. Note that in the presence of both specified keys, Windows ignores the System\CurrentControlSet\services\Dnscache\Parameters key.

<16> Section 2.2.2.13: In the presence of both specified keys, Windows ignores the System\CurrentControlSet\services\Dnscache\Parameters key.

<17> Section 2.2.2.13: This property is ignored on Windows 7 and Windows Server 2008 R2.

<18> Section 2.2.2.14: In the presence of both specified keys, Windows ignores the System\CurrentControlSet\services\Dnscache\Parameters key.

<19> Section 2.2.2.14: This property is ignored on Windows 7 and Windows Server 2008 R2.

<20> Section 2.2.2.15: This property is ignored on Windows 7, Windows Server 2008 R2, Windows 8, and Windows Server 2012.

<21> Section 2.2.2.16: This property is ignored on Windows 7, Windows Server 2008 R2, Windows 8, and Windows Server 2012.

<22> Section 2.2.2.17: This property is ignored on Windows 7, Windows Server 2008 R2, Windows 8, and Windows Server 2012.

<23> Section 3.1.4: Windows administrative tools verify the validity of the objects as defined in section [2.2](#Section_2.2) before writing them to the remote store through Group Policy: Registry Extension Encoding.

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

