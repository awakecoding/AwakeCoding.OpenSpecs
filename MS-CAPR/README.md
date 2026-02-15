# [MS-CAPR]: Central Access Policy Identifier (ID) Retrieval Protocol

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
  - [1.8 Vendor Extensible Fields](#Section_1.8)
  - [1.9 Standards Assignments](#Section_1.9)
</details>

<details>
<summary>2 Messages</summary>

- [2 Messages](#Section_2)
  - [2.1 Transport](#Section_2.1)
  - [2.2 Common Data Types](#Section_2.2)
    - [2.2.1 Structures](#Section_2.2.1)
      - [2.2.1.1 LSAPR_WRAPPED_CAPID_SET](#Section_2.2.1.1)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 lsacap Server Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Message Processing Events and Sequencing Rules](#Section_3.1.4)
      - [3.1.4.1 LsarGetAvailableCAPIDs (Opnum 0)](#Section_3.1.4.1)
    - [3.1.5 Timer Events](#Section_3.1.5)
    - [3.1.6 Other Local Events](#Section_3.1.6)
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
<summary>6 Appendix A: Full IDL</summary>

- [6 Appendix A: Full IDL](#Section_6)
</details>

<details>
<summary>7 Appendix B: Product Behavior</summary>

- [7 Appendix B: Product Behavior](#Section_7)
</details>

<details>
<summary>8 Change Tracking</summary>

- [8 Change Tracking](#Section_8)
</details>
<a id="Section_1"></a>
# 1 Introduction

The Central Access Policy Identifier (ID) Retrieval Protocol enables an administrative tool to query the Central Access Policies (CAPs) configured on a remote computer.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_remote-procedure-call-rpc"></a>
**remote procedure call (RPC)**: A communication protocol used primarily between client and server. The term has three definitions that are often used interchangeably: a runtime environment providing for communication facilities between computers (the RPC runtime); a set of request-and-response message exchanges between computers (the RPC exchange); and the single message from an RPC exchange (the RPC message). For more information, see [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824).

<a id="gt_transmission-control-protocol-tcp"></a>
**Transmission Control Protocol (TCP)**: A protocol used with the Internet Protocol (IP) to send data in the form of message units between computers over the Internet. TCP handles keeping track of the individual units of data (called packets) that a message is divided into for efficient routing through the Internet.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[C706] The Open Group, "DCE 1.1: Remote Procedure Call", C706, August 1997, [https://publications.opengroup.org/c706](https://go.microsoft.com/fwlink/?LinkId=89824)

**Note** Registration is required to download the document.

[MS-DTYP] Microsoft Corporation, "[Windows Data Types](../MS-DTYP/MS-DTYP.md)".

[MS-ERREF] Microsoft Corporation, "[Windows Error Codes](../MS-ERREF/MS-ERREF.md)".

[MS-GPCAP] Microsoft Corporation, "[Group Policy: Central Access Policies Protocol Extension](../MS-GPCAP/MS-GPCAP.md)".

[MS-LSAT] Microsoft Corporation, "[Local Security Authority (Translation Methods) Remote Protocol](../MS-LSAT/MS-LSAT.md)".

[MS-RPCE] Microsoft Corporation, "[Remote Procedure Call Protocol Extensions](../MS-RPCE/MS-RPCE.md)".

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[RFC4511] Sermersheim, J., "Lightweight Directory Access Protocol (LDAP): The Protocol", RFC 4511, June 2006, [https://www.rfc-editor.org/info/rfc4511](https://go.microsoft.com/fwlink/?LinkId=157505)

<a id="Section_1.3"></a>
## 1.3 Overview

The Central Access Policy ID Retrieval (CAPR) Protocol is designed to allow an administrative tool running on one computer to remotely query the set of central access control policies configured on another computer.

Central access policy objects are created in Active Directory using administrative authorization tools. Selected central access policy objects are deployed to other computers using Group Policy: Central Access Policies Extension (CAPE, described in [MS-GPCAP](../MS-GPCAP/MS-GPCAP.md)). Other administrative tools can then use CAPR to determine which central policy objects have been deployed to a given remote computer.

Within CAPE and CAPR, central access policies are represented by Central Access Policy IDs (CAPIDs). A CAPID is simply the SID of a central access policy object within Active Directory.

The typical use scenario is as follows. An administrative interface tool uses CAPR to obtain the CAPIDs of one or more central access policy objects. The tool then uses these CAPIDs with CAPE and Lightweight Directory Access Protocol (LDAP): The Protocol, specified in [[RFC4511]](https://go.microsoft.com/fwlink/?LinkId=157505), to obtain detailed information about the policies. That data can then be presented to the user and manipulated in whatever manner is appropriate to the administrative interface tool, such as to perform authorization tasks.

This protocol defines one RPC call, LsarGetAvailableCAPIDs, for client applications to use. See section [3.1.4.1](#Section_3.1.4.1) for details of this call's use.

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

The CAPR Protocol is dependent upon [**RPC**](#gt_remote-procedure-call-rpc) and [**TCP**](#gt_transmission-control-protocol-tcp) for its transport. CAPR is dependent on CAPE for the abstract data model elements which store CAPIDs. Although CAPR is not itself dependent on LDAP, scenarios that use CAPR typically also use LDAP to obtain central access policy data, once the relevant CAPIDs have been obtained.

No other protocol currently depends on the CAPR Protocol.

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

The CAPR Protocol is an RPC interface, and as such has the prerequisites specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 1.5 that are common to RPC interfaces.

The CAPR Protocol client obtains the name of a remote computer that supports the Remote Authorization API Protocol before invoking this protocol.

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

This protocol is appropriate only for implementing tools to query the central access policies configured on a remote machine.

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

This document covers versioning issues in the following areas:

- **Supported Transports:** This protocol uses multiple RPC Protocol Sequences, as specified in section [2.1](#Section_2.1).
- **Security and Authentication Methods:** This protocol uses the security and authentication methods specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 3.2.1.4.1.
- **Capability Negotiation:** This protocol does not support negotiation of the interface version to use.
<a id="Section_1.8"></a>
## 1.8 Vendor Extensible Fields

This protocol has no vendor-extensible fields and cannot be extended by any party other than Microsoft.

This protocol uses Win32 error codes as defined in [MS-ERREF](../MS-ERREF/MS-ERREF.md) section 2.2. Vendors SHOULD reuse those values with their indicated meaning. Implementations that use any other values run the risk of having those values collide with future modifications to the Win32 error code set.

<a id="Section_1.9"></a>
## 1.9 Standards Assignments

This protocol has no standards assignments.

| Parameter | Value | Reference |
| --- | --- | --- |
| UUID for lsacap | afc07e2e-311c-4435-808c-c483ffeec7c9 | [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824) |

<a id="Section_2"></a>
# 2 Messages

<a id="Section_2.1"></a>
## 2.1 Transport

This protocol uses the following RPC Protocol sequences:

- [**RPC**](#gt_remote-procedure-call-rpc) over TCP/IP (See NCACN_IP_TCP in [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 2.1.1.1)
- Server Message Block (See NCACN_NP in [MS-RPCE] section 2.1.1.2)
This protocol uses the following RPC endpoints:

- Dynamic endpoints, as described in [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824) part 4.
This protocol MUST use the following interface identifier:

- lsacap interface: afc07e2e-311c-4435-808c-c483ffeec7c9
This protocol MUST use "\PIPE\lsarpc" as the RPC endpoint when using RPC over SMB.

<a id="Section_2.2"></a>
## 2.2 Common Data Types

The following data types are specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md):

| Data type name | Section | Description |
| --- | --- | --- |
| ULONG | 2.2.50 | A ULONG is a 32-bit unsigned integer (range: 0 through 4294967295 decimal). Because a ULONG is unsigned, its first bit (Most Significant Bit (MSB)) is not reserved for signing. |

<a id="Section_2.2.1"></a>
### 2.2.1 Structures

The CAPR Protocol defines the following structure:

| Structure name | Section | Description |
| --- | --- | --- |
| LSAPR_WRAPPED_CAPID_SET | [2.2.1.1](#Section_2.2.1.1) | A container for an array of LSAPR_SID_INFORMATION structures. |

<a id="Section_2.2.1.1"></a>
#### 2.2.1.1 LSAPR_WRAPPED_CAPID_SET

The LSAPR_WRAPPED_CAPID_SET structure is a container for an array of LSAPR_SID_INFORMATION structures.

typedef struct _LSAPR_WRAPPED_CAPID_SET {

ULONG Entries;

[size_is(Entries)] LSAPR_SID_INFORMATION* SidInfo;

} LSAPR_WRAPPED_CAPID_SET;

**Entries:** The number of elements in the SidInfo array.

**SidInfo:** A pointer to an array of LSAPR_SID_INFORMATION structures, as defined in [MS-LSAT](../MS-LSAT/MS-LSAT.md) section 2.2.17.

<a id="Section_3"></a>
# 3 Protocol Details

The Central Access Policy ID Retrieval Protocol is used to retrieve the set of central access policies that have been configured on a remote machine. This protocol is intended to be used in the implementation of administrative interfaces for viewing or managing the set of central access policies of specific resources on the remote machine.

All CAPR Protocol methods return ERROR_SUCCESS (0x00000000) on success. Otherwise, they return 32-bit nonzero Win32 error codes. For more information on Win32 error codes, see [MS-ERREF](../MS-ERREF/MS-ERREF.md).

Unless otherwise specified, the pointer type for the CAPR protocol [**RPC**](#gt_remote-procedure-call-rpc) interface is pointer_default(unique). Method calls are received at a dynamically assigned endpoint. The endpoints for the Netlogon service are negotiated by the RPC endpoint mapper. For information on dynamic endpoint assignment and endpoint negotiation, see [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 2.1.1.1.

The client side of this protocol involves no additional timers or other states and can simply pass calls directly from the higher-layer protocol or application to the transport. Similarly, results returned by the transport can be passed directly to the higher-layer protocol or application without further processing.

The CAPR protocol does not support version number negotiation. Client and server implementations of this protocol MUST be configured with a version number of 1.0. See section [6](#Section_6) for an example of configuring the version number.

<a id="Section_3.1"></a>
## 3.1 lsacap Server Details

The following sections specify the data and state maintained by the lsacap RPC server, including details about receiving lsacap RPC methods on the server. The information in the following sections is intended to be illustrative of the protocol's specified behavior, without mandating any particular implementation. Implementations are not required to adhere to this model as long as their external behavior is consistent with the behavior specified in this document.

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

This protocol uses the following ADM element, which is directly accessed from the Group Policy Central Access Policies Protocol Extension protocol, as described in [MS-GPCAP](../MS-GPCAP/MS-GPCAP.md) section 3.1.1:

**CentralAccessPoliciesList:** The list of Group Policy central access policies on the remote computer.

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

None.

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

The CAPR server implementation registers an endpoint with RPC over TCP/IP. The server MUST register the SPNEGO security support provider authentication_type constant [0x09] as the security provider used by the RPC interface, as specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 3.3.3.3.1.3.

<a id="Section_3.1.4"></a>
### 3.1.4 Message Processing Events and Sequencing Rules

This protocol defines the following RPC method.

| Method | Description |
| --- | --- |
| [LsarGetAvailableCAPIDs](#Section_3.1.4.1) | Opnum: 0 |

<a id="Section_3.1.4.1"></a>
#### 3.1.4.1 LsarGetAvailableCAPIDs (Opnum 0)

This method returns a list of the CAPIDs of all the central access policies available on the specified remote machine. These identifiers are equivalent to the SIDs of the central access policy objects as they are stored in Active Directory.

NTSTATUS LsarGetAvailableCAPIDs(

[in] handle_t BindingHandle,

[out] LSAPR_WRAPPED_CAPID_SET* WrappedCAPIDs);

**BindingHandle:** A handle to an RPC binding for the specified remote machine.

**WrappedCAPIDs:** A pointer to LSAPR_WRAPPED_CAPID_SET, as defined in section [2.2.1.1](#Section_2.2.1.1).

**Return Values:**

If the method succeeds, the function MUST return 0x00000000 (ERROR_SUCCESS).

If the method fails, it MUST return a nonzero error code from the values defined in [MS-ERREF](../MS-ERREF/MS-ERREF.md).

When processing this call, the server MUST return an LSAPR_WRAPPED_CAPID_SET constructed as follows:

- The server MUST ensure that an authentication level identifier (as specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 2.2.1.1.8) other than RPCE_C_AUTHN_LEVEL_NONE is present in the RPC message. Otherwise, the server MUST return STATUS_ACCESS_DENIED.
- The *Entries* field of the LSAPR_WRAPPED_CAPID_SET MUST be set to the number of **CentralAccessPolicy** objects in the **CentralAccessPoliciesList** ADM element.
- The *SidInfo* field of the LSAPR_WRAPPED_CAPID_SET structures MUST be set to an array of pointers to LSAPR_SID_INFORMATION structures. There MUST be one LSAPR_SID_INFORMATION structure in the array for each **CentralAccessPolicy** object in the **CentralAccessPoliciesList** ADM element. Each LSAPR_SID_INFORMATION structure MUST be set to the *CAPID* field of the corresponding CentralAccessPolicy object.
<a id="Section_3.1.5"></a>
### 3.1.5 Timer Events

None.

<a id="Section_3.1.6"></a>
### 3.1.6 Other Local Events

None.

<a id="Section_4"></a>
# 4 Protocol Examples

None.

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

Central access policies embody authorization policies used to control access to resources. Write permission on central access policies gives users the ability to modify authorization policies. Central access policies are designed to be managed centrally, not to be edited on client computers.

Where possible, avoid storing central access policies on client computers in implementations of this protocol. If an implementation is required to store central access policies on client computers, do so in secure locations that only system processes can access.

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

This protocol has no security parameters.

<a id="Section_6"></a>
# 6 Appendix A: Full IDL

For ease of implementation, the full Central Access Policy ID Retrieval Protocol IDL interface is provided, where "ms-dtyp.idl" is the IDL found in [MS-DTYP](../MS-DTYP/MS-DTYP.md) Appendix A. The syntax uses the IDL syntax extensions defined in [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 2.2.4 and 3.1.1.5.1. For example, as noted in [MS-RPCE] section 2.2.4.9, a pointer_default declaration is not required and pointer_default(unique) is assumed.

import "ms-dtyp.idl";

import "ms-lsat.idl";

typedef struct _LSAPR_WRAPPED_CAPID_SET {

ULONG Entries;

[size_is(Entries)] LSAPR_SID_INFORMATION * SidInfo;

} LSAPR_WRAPPED_CAPID_SET;

[uuid(afc07e2e-311c-4435-808c-c483ffeec7c9)]

[version(1.0)]

[pointer_default(unique)]

[ms_union]

interface lsacap {

NTSTATUS LsarGetAvailableCAPIDs(

[in] handle_t BindingHandle,

[out] LSAPR_WRAPPED_CAPID_SET * WrappedCAPIDs);

};

<a id="Section_7"></a>
# 7 Appendix B: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

The following table shows the relationships between Microsoft product versions or supplemental software and the roles they perform.

| Windows Releases | Server Role | Client Role |
| --- | --- | --- |
| Windows 8 operating system | No | Yes |
| Windows Server 2012 operating system | Yes | Yes |
| Windows 8.1 operating system | No | Yes |
| Windows Server 2012 R2 operating system | Yes | Yes |
| Windows 10 operating system | No | Yes |
| Windows Server 2016 operating system | Yes | Yes |
| Windows Server operating system | Yes | Yes |
| Windows Server 2019 operating system | Yes | Yes |
| Windows Server 2022 operating system | Yes | Yes |
| Windows 11 operating system | No | Yes |
| Windows Server 2025 operating system | - | - |

Exceptions, if any, are noted in this section. If an update version, service pack or Knowledge Base (KB) number appears with a product name, the behavior changed in that update. The new behavior also applies to subsequent updates unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<a id="Section_8"></a>
# 8 Change Tracking

This section identifies changes that were made to this document since the last release. Changes are classified as Major, Minor, or None.

The revision class **Major** means that the technical content in the document was significantly revised. Major changes affect protocol interoperability or implementation. Examples of major changes are:

- A document revision that incorporates changes to interoperability requirements.
- A document revision that captures changes to protocol functionality.
The revision class **Minor** means that the meaning of the technical content was clarified. Minor changes do not affect protocol interoperability or implementation. Examples of minor changes are updates to clarify ambiguity at the sentence, paragraph, or table level.

The revision class **None** means that no new technical changes were introduced. Minor editorial and formatting changes may have been made, but the relevant technical content is identical to the last released version.

The changes made to this document are listed in the following table. For more information, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com).

| Section | Description | Revision class |
| --- | --- | --- |
| [7](#Section_7) Appendix B: Product Behavior | Added Windows Server 2025 to the list of applicable products. | Major |

