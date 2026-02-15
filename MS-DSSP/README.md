# [MS-DSSP]: Directory Services Setup Remote Protocol

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
  - [2.2 Common Data Types](#Section_2.2)
    - [2.2.1 DSROLER_PRIMARY_DOMAIN_INFO_BASIC](#Section_2.2.1)
    - [2.2.2 DSROLE_MACHINE_ROLE](#Section_2.2.2)
    - [2.2.3 DSROLE_OPERATION_STATE_INFO](#Section_2.2.3)
    - [2.2.4 DSROLE_OPERATION_STATE](#Section_2.2.4)
    - [2.2.5 DSROLE_UPGRADE_STATUS_INFO](#Section_2.2.5)
    - [2.2.6 DSROLE_SERVER_STATE](#Section_2.2.6)
    - [2.2.7 DSROLE_PRIMARY_DOMAIN_INFO_LEVEL](#Section_2.2.7)
    - [2.2.8 DSROLER_PRIMARY_DOMAIN_INFORMATION](#Section_2.2.8)
  - [2.3 Directory Service Schema Elements](#Section_2.3)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 Client Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Higher-Layer Triggered Events](#Section_3.1.4)
    - [3.1.5 Message Processing Events and Sequencing Rules](#Section_3.1.5)
    - [3.1.6 Timer Events](#Section_3.1.6)
    - [3.1.7 Other Local Events](#Section_3.1.7)
  - [3.2 Server Details](#Section_3.2)
    - [3.2.1 Abstract Data Model](#Section_3.2.1)
    - [3.2.2 Timers](#Section_3.2.2)
    - [3.2.3 Initialization](#Section_3.2.3)
    - [3.2.4 Higher-Layer Triggered Events](#Section_3.2.4)
      - [3.2.4.1 Promotion](#Section_3.2.4.1)
      - [3.2.4.2 Demotion](#Section_3.2.4.2)
      - [3.2.4.3 Upgrade](#Section_3.2.4.3)
    - [3.2.5 Message Processing Events and Sequencing Rules](#Section_3.2.5)
      - [3.2.5.1 DsRolerGetPrimaryDomainInformation (Opnum 0)](#Section_3.2.5.1)
    - [3.2.6 Timer Events](#Section_3.2.6)
    - [3.2.7 Other Local Events](#Section_3.2.7)
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

The Directory Services Setup Remote Protocol is a client/server-based [**remote procedure call (RPC)**](#gt_remote-procedure-call-rpc) protocol. The protocol exposes an RPC interface that a client can call to obtain [**domain**](#gt_domain)-related computer state and configuration information.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_active-directory"></a>
**Active Directory**: The Windows implementation of a general-purpose [**directory service**](#gt_directory-service-ds), which uses LDAP as its primary access protocol. [**Active Directory**](#gt_active-directory) stores information about a variety of objects in the network such as user accounts, computer accounts, groups, and all related credential information used by Kerberos [MS-KILE](../MS-KILE/MS-KILE.md). [**Active Directory**](#gt_active-directory) is either deployed as Active Directory Domain Services (AD DS) or Active Directory Lightweight Directory Services (AD LDS), which are both described in [MS-ADOD](../MS-ADOD/MS-ADOD.md): Active Directory Protocols Overview.

<a id="gt_active-directory-domain"></a>
**Active Directory domain**: A [**domain**](#gt_domain) hosted on [**Active Directory**](#gt_active-directory). For more information, see [MS-ADTS](../MS-ADTS/MS-ADTS.md).

<a id="gt_backup-domain-controller-bdc"></a>
**backup domain controller (BDC)**: A [**domain controller (DC)**](#gt_domain-controller-dc) that receives a copy of the [**domain**](#gt_domain) directory database from the [**primary domain controller (PDC)**](#gt_primary-domain-controller-pdc). This copy is synchronized periodically and automatically with the [**primary domain controller (PDC)**](#gt_primary-domain-controller-pdc). BDCs also authenticate user logons and can be promoted to function as the [**PDC**](#gt_primary-domain-controller-pdc). There is only one [**PDC**](#gt_primary-domain-controller-pdc) or [**PDC**](#gt_primary-domain-controller-pdc) emulator in a [**domain**](#gt_domain), and the rest are [**backup domain controllers**](#gt_ce1138c6-7ab4-4c37-98b4-95599071c3c3).

<a id="gt_directory"></a>
**directory**: The database that stores information about objects such as users, groups, computers, printers, and the [**directory service**](#gt_directory-service-ds) that makes this information available to users and applications.

<a id="gt_directory-service-ds"></a>
**directory service (DS)**: A service that stores and organizes information about a computer network's users and network shares, and that allows network administrators to manage users' access to the shares. See also [**Active Directory**](#gt_active-directory).

<a id="gt_domain"></a>
**domain**: A set of users and computers sharing a common namespace and management infrastructure. At least one computer member of the set has to act as a [**domain controller (DC)**](#gt_domain-controller-dc) and host a member list that identifies all members of the domain, as well as optionally hosting the [**Active Directory**](#gt_active-directory) service. The domain controller provides authentication of members, creating a unit of trust for its members. Each domain has an identifier that is shared among its members. For more information, see [MS-AUTHSOD](../MS-AUTHSOD/MS-AUTHSOD.md) section 1.1.1.5 and [MS-ADTS].

<a id="gt_domain-controller-dc"></a>
**domain controller (DC)**: The service, running on a server, that implements [**Active Directory**](#gt_active-directory), or the server hosting this service. The service hosts the data store for objects and interoperates with other [**DCs**](#gt_domain-controller-dc) to ensure that a local change to an object replicates correctly across all [**DCs**](#gt_domain-controller-dc). When [**Active Directory**](#gt_active-directory) is operating as Active Directory Domain Services (AD DS), the [**DC**](#gt_domain-controller-dc) contains full NC replicas of the configuration naming context (config NC), schema naming context (schema NC), and one of the domain NCs in its [**forest**](#gt_forest). If the AD DS [**DC**](#gt_domain-controller-dc) is a global catalog server (GC server), it contains partial NC replicas of the remaining domain NCs in its [**forest**](#gt_forest). For more information, see [MS-AUTHSOD] section 1.1.1.5.2 and [MS-ADTS]. When [**Active Directory**](#gt_active-directory) is operating as Active Directory Lightweight Directory Services (AD LDS), several AD LDS [**DCs**](#gt_domain-controller-dc) can run on one server. When [**Active Directory**](#gt_active-directory) is operating as AD DS, only one AD DS [**DC**](#gt_domain-controller-dc) can run on one server. However, several AD LDS [**DCs**](#gt_domain-controller-dc) can coexist with one AD DS [**DC**](#gt_domain-controller-dc) on one server. The AD LDS [**DC**](#gt_domain-controller-dc) contains full NC replicas of the config NC and the schema NC in its [**forest**](#gt_forest). The domain controller is the server side of Authentication Protocol Domain Support [MS-APDS](../MS-APDS/MS-APDS.md).

<a id="gt_domain-membership-role"></a>
**domain membership role**: Quantifies the relationship between a computer and a domain. A computer can act in one of three roles: (1) Joined -- linked to a domain for purposes of policy and security; (2) Stand-alone -- not associated with any domain; or (3) [**Domain controller**](#gt_domain-controller-dc) --linked to a domain and hosting that domain.

<a id="gt_domain-membership-role-change"></a>
**domain membership role change**: It is possible to change the [**domain membership role**](#gt_domain-membership-role) of a computer. A stand-alone computer can become a domain-joined computer and vice versa. A computer that is not a [**domain controller**](#gt_domain-controller-dc) can become a [**domain controller**](#gt_domain-controller-dc), and vice versa.

<a id="gt_endpoint"></a>
**endpoint**: A client that is on a network and is requesting access to a network access server (NAS).

<a id="gt_forest"></a>
**forest**: One or more [**domains**](#gt_domain) that share a common schema and trust each other transitively. An organization can have multiple [**forests**](#gt_forest). A [**forest**](#gt_forest) establishes the security and administrative boundary for all the objects that reside within the [**domains**](#gt_domain) that belong to the [**forest**](#gt_forest). In contrast, a [**domain**](#gt_domain) establishes the administrative boundary for managing objects, such as users, groups, and computers. In addition, each [**domain**](#gt_domain) has individual security policies and trust relationships with other [**domains**](#gt_domain).

<a id="gt_fully-qualified-domain-name-fqdn"></a>
**fully qualified domain name (FQDN)**: An unambiguous domain name that gives an absolute location in the Domain Name System's (DNS) hierarchy tree, as defined in [[RFC1035]](https://go.microsoft.com/fwlink/?LinkId=90264) section 3.1 and [[RFC2181]](https://go.microsoft.com/fwlink/?LinkId=127732) section 11.

<a id="gt_globally-unique-identifier-guid"></a>
**globally unique identifier (GUID)**: A term used interchangeably with [**universally unique identifier (UUID)**](#gt_universally-unique-identifier-uuid) in Microsoft protocol technical documents (TDs). Interchanging the usage of these terms does not imply or require a specific algorithm or mechanism to generate the value. Specifically, the use of this term does not imply or require that the algorithms described in [[RFC4122]](https://go.microsoft.com/fwlink/?LinkId=90460) or [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824) must be used for generating the [**GUID**](#gt_globally-unique-identifier-guid). See also [**universally unique identifier (UUID)**](#gt_universally-unique-identifier-uuid).

<a id="gt_legacy-domain"></a>
**legacy domain**: A domain in which all the [**domain controllers**](#gt_76a05049-3531-4abd-aec8-30e19954b4bd) are [**legacy domain controllers**](#gt_legacy-domain-controller).

<a id="gt_legacy-domain-controller"></a>
**legacy domain controller**: A [**domain controller**](#gt_domain-controller-dc) that supports the Security Account Manager Remote Protocol [MS-SAMR](../MS-SAMR/MS-SAMR.md), but not the [**Active Directory**](#gt_active-directory) protocols specified in [MS-ADTS] and [MS-DRSR](../MS-DRSR/MS-DRSR.md).

<a id="gt_microsoft-interface-definition-language-midl"></a>
**Microsoft Interface Definition Language (MIDL)**: The Microsoft implementation and extension of the OSF-DCE Interface Definition Language (IDL). [**MIDL**](#gt_microsoft-interface-definition-language-midl) can also mean the Interface Definition Language (IDL) compiler provided by Microsoft. For more information, see [MS-RPCE](../MS-RPCE/MS-RPCE.md).

<a id="gt_mixed-mode"></a>
**mixed mode**: A state of an [**Active Directory**](#gt_active-directory) [**domain**](#gt_domain) that supports [**domain controllers (DCs)**](#gt_domain-controller-dc) running Windows NT Server 4.0 operating system. Mixed mode does not allow organizations to take advantage of new [**Active Directory**](#gt_active-directory) features such as universal groups, nested group membership, and interdomain group membership. See also [**native mode**](#gt_native-mode).

<a id="gt_native-mode"></a>
**native mode**: A state of an [**Active Directory**](#gt_active-directory) domain in which all current and future [**domain controllers (DCs)**](#gt_domain-controller-dc) use AD style domains. [**Native mode**](#gt_native-mode) allows organizations to take advantage of the new [**Active Directory**](#gt_active-directory) features such as universal groups, nested group membership, and interdomain group membership.

<a id="gt_netbios-name"></a>
**NetBIOS name**: A 16-byte address that is used to identify a NetBIOS resource on the network. For more information, see [[RFC1001]](https://go.microsoft.com/fwlink/?LinkId=90260) and [[RFC1002]](https://go.microsoft.com/fwlink/?LinkId=90261).

<a id="gt_network-data-representation-ndr"></a>
**Network Data Representation (NDR)**: A specification that defines a mapping from Interface Definition Language (IDL) data types onto octet streams. [**NDR**](#gt_network-data-representation-ndr) also refers to the runtime environment that implements the mapping facilities (for example, data provided to [**NDR**](#gt_network-data-representation-ndr)). For more information, see [MS-RPCE] and [C706] section 14.

<a id="gt_operating-system-upgrade"></a>
**operating system upgrade**: The action of replacing the existing operating system on a computer with a later version of the operating system while maintaining the original configuration and data of that computer.

<a id="gt_opnum"></a>
**opnum**: An operation number or numeric identifier that is used to identify a specific [**remote procedure call (RPC)**](#gt_remote-procedure-call-rpc) method or a method in an interface. For more information, see [C706] section 12.5.2.12 or [MS-RPCE].

<a id="gt_primary-domain-controller-pdc"></a>
**primary domain controller (PDC)**: A [**domain controller (DC)**](#gt_domain-controller-dc) designated to track changes made to the accounts of all computers on a [**domain**](#gt_domain). It is the only computer to receive these changes directly, and is specialized so as to ensure consistency and to eliminate the potential for conflicting entries in the [**Active Directory**](#gt_active-directory) database. A [**domain**](#gt_domain) has only one [**PDC**](#gt_primary-domain-controller-pdc).

<a id="gt_primary-domain-controller-pdc-role-owner"></a>
**primary domain controller (PDC) role owner**: The [**domain controller (DC)**](#gt_domain-controller-dc) that hosts the [**primary domain controller**](#gt_primary-domain-controller-pdc) emulator FSMO role for a given domain naming context (NC).

<a id="gt_read-only-domain-controller-rodc"></a>
**read-only domain controller (RODC)**: A [**domain controller (DC)**](#gt_domain-controller-dc) that does not accept originating updates. Additionally, an [**RODC**](#gt_read-only-domain-controller-rodc) does not perform outbound replication. An RODC cannot be the primary domain controller (PDC) for its domain.

<a id="gt_remote-procedure-call-rpc"></a>
**remote procedure call (RPC)**: A communication protocol used primarily between client and server. The term has three definitions that are often used interchangeably: a runtime environment providing for communication facilities between computers (the RPC runtime); a set of request-and-response message exchanges between computers (the RPC exchange); and the single message from an RPC exchange (the RPC message). For more information, see [C706].

<a id="gt_rpc-transport"></a>
**RPC transport**: The underlying network services used by the remote procedure call (RPC) runtime for communications between network nodes. For more information, see [C706] section 2.

<a id="gt_server-message-block-smb"></a>
**Server Message Block (SMB)**: A protocol that is used to request file and print services from server systems over a network. The SMB protocol extends the CIFS protocol with additional security, file, and disk management support. For more information, see [[CIFS]](https://go.microsoft.com/fwlink/?linkid=2109334) and [MS-SMB](../MS-SMB/MS-SMB.md).

<a id="gt_universally-unique-identifier-uuid"></a>
**universally unique identifier (UUID)**: A 128-bit value. UUIDs can be used for multiple purposes, from tagging objects with an extremely short lifetime, to reliably identifying very persistent objects in cross-process communication such as client and server interfaces, manager entry-point vectors, and [**RPC**](#gt_remote-procedure-call-rpc) objects. UUIDs are highly likely to be unique. UUIDs are also known as [**globally unique identifiers (GUIDs)**](#gt_globally-unique-identifier-guid) and these terms are used interchangeably in the Microsoft protocol technical documents (TDs). Interchanging the usage of these terms does not imply or require a specific algorithm or mechanism to generate the UUID. Specifically, the use of this term does not imply or require that the algorithms described in [RFC4122] or [C706] must be used for generating the UUID.

<a id="gt_well-known-endpoint"></a>
**well-known endpoint**: A preassigned, network-specific, stable address for a particular client/server instance. For more information, see [C706].

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[C706] The Open Group, "DCE 1.1: Remote Procedure Call", C706, August 1997, [https://publications.opengroup.org/c706](https://go.microsoft.com/fwlink/?LinkId=89824)

**Note** Registration is required to download the document.

[MS-ADTS] Microsoft Corporation, "[Active Directory Technical Specification](../MS-ADTS/MS-ADTS.md)".

[MS-DTYP] Microsoft Corporation, "[Windows Data Types](../MS-DTYP/MS-DTYP.md)".

[MS-ERREF] Microsoft Corporation, "[Windows Error Codes](../MS-ERREF/MS-ERREF.md)".

[MS-RPCE] Microsoft Corporation, "[Remote Procedure Call Protocol Extensions](../MS-RPCE/MS-RPCE.md)".

[MS-SMB] Microsoft Corporation, "[Server Message Block (SMB) Protocol](../MS-SMB/MS-SMB.md)".

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

None.

<a id="Section_1.3"></a>
## 1.3 Overview

This protocol provides a [**remote procedure call (RPC)**](#gt_remote-procedure-call-rpc) interface for querying domain-related computer state and configuration data. The client end of the Directory Services Setup Remote Protocol is an application that issues method calls on the RPC interface. The server end of the Directory Services Setup Remote Protocol obtains and replies to the client with the requested data about the computer on which the server is running. If the client connects to and requests information about a [**domain controller (DC)**](#gt_domain-controller-dc) for the [**directory service**](#gt_directory-service-ds), this data includes the status of any pending [promotion](#Section_3.2.4.1) or [demotion](#Section_3.2.4.2) of that DC.

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

The Directory Services Setup Remote Protocol is dependent upon Microsoft [**remote procedure call (RPC)**](#gt_remote-procedure-call-rpc) (Remote Procedure Call Protocol Extensions, as specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md)), which is used to communicate between computers on a network.

This protocol depends on the [**Server Message Block (SMB)**](#gt_server-message-block-smb) Protocol, as specified in [MS-SMB](../MS-SMB/MS-SMB.md), and TCP/IP protocols for sending messages on the wire.

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

This protocol is a [**remote procedure call (RPC)**](#gt_remote-procedure-call-rpc)-based protocol and therefore has the prerequisites, as specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md), common to all RPC interfaces.

Security considerations for RPC usage are specified in section [5.1](#Section_5.1).

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

This protocol can be used to perform the following functions:

- Obtain the configuration information of the domain to which a computer is joined. The information includes the domain name and domain [**globally unique identifier (GUID)**](#gt_globally-unique-identifier-guid). This protocol can be used to query a [**DC**](#gt_domain-controller-dc) to determine if it is a [**primary domain controller (PDC)**](#gt_primary-domain-controller-pdc) (or [**primary domain controller (PDC) role owner**](#gt_primary-domain-controller-pdc-role-owner)) or a [**read-only domain controller**](#gt_read-only-domain-controller-rodc).
- Query the progress of the [promotion](#Section_3.2.4.1) or [demotion](#Section_3.2.4.2) of a DC.
- Retrieve the upgrade status of a DC. This information is only applicable for the upgrade of a [**legacy domain controller**](#gt_legacy-domain-controller) to a version of Windows that is able to host [**Active Directory**](#gt_active-directory).
- Retrieve the [**domain membership role**](#gt_domain-membership-role) type for the computer.
<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

**Supported Transports:** This protocol uses only [**RPCs**](#gt_remote-procedure-call-rpc). The protocol supports the [**Server Message Block (SMB)**](#gt_server-message-block-smb) transport. For more information, see section [2.1](#Section_2.1).

- **Protocol Version:** This protocol interface has a single version number of 0.0. An RPC client determines whether a method is supported by attempting to call the method; if the method is not supported, the RPC server will return an "Opnum out of range" error<1> as specified in [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824) and [MS-RPCE](../MS-RPCE/MS-RPCE.md).
- **Security and Authentication Methods:** Authentication and security are provided as specified in [MS-SMB](../MS-SMB/MS-SMB.md) and [MS-RPCE]. Anonymous access can be allowed for some operations, as specified in DsRolerGetPrimaryDomainInformation (Opnum 0) (section [3.2.5.1)](../MS-SMB/MS-SMB.md).
<a id="Section_1.8"></a>
## 1.8 Vendor-Extensible Fields

This protocol does not define any vendor-extensible fields within the protocol itself.

<a id="Section_1.9"></a>
## 1.9 Standards Assignments

| Parameter | Value | Reference |
| --- | --- | --- |
| Named pipe | \PIPE\lsarpc | Section [2.1](#Section_2.1) |
| [**RPC**](#gt_remote-procedure-call-rpc) Interface [**UUID**](#gt_universally-unique-identifier-uuid) for Directory Services Setup Remote Protocol | 3919286a-b10c-11d0-9ba8-00c04fd92ef5 | Section 2.1 |

No public standard assignments have been received for this protocol. All values used in these extensions are in private ranges specified in section 2.1.

<a id="Section_2"></a>
# 2 Messages

<a id="Section_2.1"></a>
## 2.1 Transport

This protocol MUST use the following [**remote procedure call (RPC)**](#gt_remote-procedure-call-rpc) protocol sequence: RPC over [**SMB**](#gt_server-message-block-smb) (ncacn_np), as specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md).

This protocol uses the following [**well-known endpoints**](#gt_well-known-endpoint). These [**endpoints**](#gt_endpoint) are pipe names for RPC over SMB, as specified in [MS-RPCE]:

- \PIPE\lsarpc
A server MUST listen on RPC over the above-named pipe. A client MUST only attempt to connect to this protocol via RPC over the above-named pipe.<2>

For authentication and authorization services, both the requestor and responder of this protocol MUST use the SMB transport to communicate the identity of the requestor, as specified in [MS-SMB](../MS-SMB/MS-SMB.md) section 3.2.4.2.4.

The requestor MUST NOT use the RPC-provided security-support-provider mechanisms (for authentication, authorization, confidentiality, or tamper-resistance services).

This protocol MUST use this [**universally unique identifier (UUID)**](#gt_universally-unique-identifier-uuid) interface (3919286a-b10c-11d0-9ba8-00c04fd92ef5). The interface version number is 0.0.

<a id="Section_2.2"></a>
## 2.2 Common Data Types

In addition to [**RPC**](#gt_remote-procedure-call-rpc) base types, the sections that follow use the definition of [**GUID**](#gt_globally-unique-identifier-guid) as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) Appendix A.

Additional data types that follow are defined in the [**Microsoft Interface Definition Language (MIDL)**](#gt_microsoft-interface-definition-language-midl) (as specified in section [6](#Section_6)) for this RPC interface.

<a id="Section_2.2.1"></a>
### 2.2.1 DSROLER_PRIMARY_DOMAIN_INFO_BASIC

The DSROLER_PRIMARY_DOMAIN_INFO_BASIC structure contains basic information, including the role of the computer, domain name, and [**GUID**](#gt_globally-unique-identifier-guid) of the domain.

typedef struct _DSROLER_PRIMARY_DOMAIN_INFO_BASIC {

DSROLE_MACHINE_ROLE MachineRole;

unsigned __int32 Flags;

[unique, string] wchar_t* DomainNameFlat;

[unique, string] wchar_t* DomainNameDns;

[unique, string] wchar_t* DomainForestName;

GUID DomainGuid;

} DSROLER_PRIMARY_DOMAIN_INFO_BASIC,

*PDSROLER_PRIMARY_DOMAIN_INFO_BASIC;

**MachineRole:** The current role of the computer, expressed as a [DSROLE_MACHINE_ROLE](#Section_2.2.2) data type.

**Flags:** The value that indicates the state of the [**directory service**](#gt_directory-service-ds) and validity of the information contained in the **DomainGuid** member. The value of this parameter MUST be zero or a combination of one or more individual flags in the following table. The combination is the result of a bitwise OR of the flags that apply to the computer for which information is being retrieved. All undefined bits MUST be 0.

| Value | Meaning |
| --- | --- |
| DSROLE_PRIMARY_DS_RUNNING 0x00000001 | The directory service is running on this computer. If this flag is not set, the directory service is not running on this computer. |
| DSROLE_PRIMARY_DS_MIXED_MODE 0x00000002 | The directory service is running in [**mixed mode**](#gt_mixed-mode). This flag is valid only if the DSROLE_PRIMARY_DS_RUNNING flag is set and the DSROLE_PRIMARY_DS_READONLY flag is not set. |
| DSROLE_PRIMARY_DS_READONLY 0x00000008 | The computer holds a read-only copy of the [**directory**](#gt_directory). This flag is valid only if the DSROLE_PRIMARY_DS_RUNNING flag is set and the DSROLE_PRIMARY_DS_MIXED_MODE flag is not set. |
| DSROLE_PRIMARY_DOMAIN_GUID_PRESENT 0x01000000 | The **DomainGuid** member contains a valid domain GUID. If this bit is not set, the value in DomainGuid member is undefined. |

**DomainNameFlat:** The [**NetBIOS name**](#gt_netbios-name) of the domain or non-domain workgroup to which the computer belongs.

**DomainNameDns:** The domain name of the computer. This member MUST be NULL if the **MachineRole** member is **DsRole_RoleStandaloneWorkstation** or **DsRole_RoleStandaloneServer** and MUST NOT be NULL otherwise.

**DomainForestName:** The name of the [**forest**](#gt_forest) to which the computer belongs. This member MUST be NULL, if the computer is a stand-alone workstation or server.

**DomainGuid:** The [**UUID**](#gt_universally-unique-identifier-uuid) of the domain to which the computer belongs. The value of this member is valid only if the DSROLE_PRIMARY_DOMAIN_GUID_PRESENT flag is set.

<a id="Section_2.2.2"></a>
### 2.2.2 DSROLE_MACHINE_ROLE

The DSROLE_MACHINE_ROLE enumeration specifies the current role of the computer.

typedef enum _DSROLE_MACHINE_ROLE

{

DsRole_RoleStandaloneWorkstation,

DsRole_RoleMemberWorkstation,

DsRole_RoleStandaloneServer,

DsRole_RoleMemberServer,

DsRole_RoleBackupDomainController,

DsRole_RolePrimaryDomainController

} DSROLE_MACHINE_ROLE;

**DsRole_RoleStandaloneWorkstation:** The computer is a stand-alone workstation.

**DsRole_RoleMemberWorkstation:** The computer is a workstation that is joined to a domain.

**DsRole_RoleStandaloneServer:** The computer is a stand-alone server.

**DsRole_RoleMemberServer:** The computer is a server that is joined to a domain.

**DsRole_RoleBackupDomainController:** The computer is a server that is a [**backup domain controller**](#gt_backup-domain-controller-bdc) or a [**read-only domain controller**](#gt_read-only-domain-controller-rodc).<3>

**DsRole_RolePrimaryDomainController:** The computer is a server that is the [**primary domain controller**](#gt_primary-domain-controller-pdc) emulator.

<a id="Section_2.2.3"></a>
### 2.2.3 DSROLE_OPERATION_STATE_INFO

The DSROLE_OPERATION_STATE_INFO structure contains the status of a pending [**domain controller (DC)**](#gt_domain-controller-dc) [**domain membership role change**](#gt_domain-membership-role-change) operation, if any, for the computer.

typedef struct _DSROLE_OPERATION_STATE_INFO {

DSROLE_OPERATION_STATE OperationState;

} DSROLE_OPERATION_STATE_INFO,

*PDSROLE_OPERATION_STATE_INFO;

**OperationState:** The domain membership role change status of the computer, as specified by a [DSROLE_OPERATION_STATE](#Section_2.2.4) enumeration.

<a id="Section_2.2.4"></a>
### 2.2.4 DSROLE_OPERATION_STATE

The DSROLE_OPERATION_STATE enumeration specifies values that determine whether a [**DC**](#gt_domain-controller-dc) [promotion](#Section_3.2.4.1) or [demotion](#Section_3.2.4.2) operation is currently being performed on a computer.<4>

typedef enum _DSROLE_OPERATION_STATE

{

DsRoleOperationIdle = 0,

DsRoleOperationActive,

DsRoleOperationNeedReboot

} DSROLE_OPERATION_STATE;

**DsRoleOperationIdle:** No promotion or demotion operation is currently being performed on the computer.

**DsRoleOperationActive:** A promotion or demotion operation is in progress.

**DsRoleOperationNeedReboot:** A promotion or demotion operation has been performed. The computer MUST be restarted to function in the new role.

<a id="Section_2.2.5"></a>
### 2.2.5 DSROLE_UPGRADE_STATUS_INFO

The DSROLE_UPGRADE_STATUS_INFO structure contains information about the status of a pending [**operating system upgrade**](#gt_operating-system-upgrade), if any, for the computer. This structure is intended to store only the status of an operating system upgrade of a [**legacy domain controller**](#gt_legacy-domain-controller).

typedef struct _DSROLE_UPGRADE_STATUS_INFO {

unsigned __int32 OperationState;

DSROLE_SERVER_STATE PreviousServerState;

} DSROLE_UPGRADE_STATUS_INFO,

*PDSROLE_UPGRADE_STATUS_INFO;

**OperationState:** The current status of the upgrade. Valid values are shown in the following table.<5>

| Value | Meaning |
| --- | --- |
| 0x00000000 | No upgrade is currently in progress. |
| DSROLE_UPGRADE_IN_PROGRESS 0x00000004 | An upgrade is currently in progress. |

**PreviousServerState:** The role of the computer prior to the upgrade. The value of this member is valid only if an upgrade is in progress (that is, if the **OperationState** member is set to DSROLE_UPGRADE_IN_PROGRESS).

<a id="Section_2.2.6"></a>
### 2.2.6 DSROLE_SERVER_STATE

The DSROLE_SERVER_STATE enumeration specifies the role of the computer prior to the upgrade.

typedef enum _DSROLE_SERVER_STATE

{

DsRoleServerUnknown = 0,

DsRoleServerPrimary,

DsRoleServerBackup

} DSROLE_SERVER_STATE,

*PDSROLE_SERVER_STATE;

**DsRoleServerUnknown:** The previous role of the computer is unknown.

**DsRoleServerPrimary:** The previous role of the computer was [**primary domain controller**](#gt_primary-domain-controller-pdc) in a [**legacy domain**](#gt_legacy-domain).

**DsRoleServerBackup:** The previous role of the computer was [**backup domain controller**](#gt_backup-domain-controller-bdc) in a legacy domain.

<a id="Section_2.2.7"></a>
### 2.2.7 DSROLE_PRIMARY_DOMAIN_INFO_LEVEL

The DSROLE_PRIMARY_DOMAIN_INFO_LEVEL enumeration defines the information level that the client requests.

typedef enum _DSROLE_PRIMARY_DOMAIN_INFO_LEVEL

{

DsRolePrimaryDomainInfoBasic = 1,

DsRoleUpgradeStatus,

DsRoleOperationState

} DSROLE_PRIMARY_DOMAIN_INFO_LEVEL;

**DsRolePrimaryDomainInfoBasic:** Request for information about the domain to which the computer belongs.

**DsRoleUpgradeStatus:** Request for computer [**operating system upgrade**](#gt_operating-system-upgrade) status.

**DsRoleOperationState:** Request for computer operation state.

<a id="Section_2.2.8"></a>
### 2.2.8 DSROLER_PRIMARY_DOMAIN_INFORMATION

The DSROLER_PRIMARY_DOMAIN_INFORMATION union contains one of three types of information about a computer.

typedef

[switch_type(DSROLE_PRIMARY_DOMAIN_INFO_LEVEL)]

union _DSROLER_PRIMARY_DOMAIN_INFORMATION {

[case(DsRolePrimaryDomainInfoBasic)]

DSROLER_PRIMARY_DOMAIN_INFO_BASIC DomainInfoBasic;

[case(DsRoleUpgradeStatus)]

DSROLE_UPGRADE_STATUS_INFO UpgradStatusInfo;

[case(DsRoleOperationState)]

DSROLE_OPERATION_STATE_INFO OperationStateInfo;

} DSROLER_PRIMARY_DOMAIN_INFORMATION,

*PDSROLER_PRIMARY_DOMAIN_INFORMATION;

**DomainInfoBasic:** Basic information about a computer. For more information, see [DSROLER_PRIMARY_DOMAIN_INFO_BASIC (section 2.2.1)](#Section_2.2.1).

**UpgradStatusInfo:** Information about the upgrade of the computer. For more information, see [DSROLE_UPGRADE_STATUS_INFO (section 2.2.5)](#Section_2.2.5).

**OperationStateInfo:** [**Domain membership role change**](#gt_domain-membership-role-change) status of the computer. For more information, see [DSROLE_OPERATION_STATE_INFO (section 2.2.3)](#Section_2.2.3).

<a id="Section_2.3"></a>
## 2.3 Directory Service Schema Elements

None.

<a id="Section_3"></a>
# 3 Protocol Details

<a id="Section_3.1"></a>
## 3.1 Client Details

The client side of this protocol is simply a pass-through. That is, no additional timers or other state is required on the client side of this protocol. Calls made by the higher-layer protocol or application are passed directly to the transport, and the results returned by the transport are passed directly back to the higher-layer protocol or application.

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

No abstract data model is used.

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

No protocol timers are required other than those internal ones used in [**RPC**](#gt_remote-procedure-call-rpc) to implement resiliency to network outages, as specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md).

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

No initialization is performed by the client side of the Directory Services Setup Remote Protocol. The [**RPC**](#gt_remote-procedure-call-rpc) association (or binding)<6> to the server RPC needed to call the methods of this protocol is performed by the client application. The client side of the Directory Services Setup Remote Protocol simply uses the association established by the client application to call the RPC methods. The details of RPC binding can be found in [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 3. The client application MUST create a separate association for each method invocation.

<a id="Section_3.1.4"></a>
### 3.1.4 Higher-Layer Triggered Events

No higher-layer triggered events are used.

<a id="Section_3.1.5"></a>
### 3.1.5 Message Processing Events and Sequencing Rules

No special message processing is required on the client beyond the processing required in the underlying [**RPC**](#gt_remote-procedure-call-rpc) protocol.

<a id="Section_3.1.6"></a>
### 3.1.6 Timer Events

No protocol timer events are required on the client other than the events maintained in the underlying [**RPC transport**](#gt_rpc-transport).

<a id="Section_3.1.7"></a>
### 3.1.7 Other Local Events

No additional local events are used on the client other than the events maintained in the underlying [**RPC transport**](#gt_rpc-transport).

<a id="Section_3.2"></a>
## 3.2 Server Details

<a id="Section_3.2.1"></a>
### 3.2.1 Abstract Data Model

The following information is maintained by the server to respond to client queries.

The computer maintains abstract variables that contain the identity of the [**directory service**](#gt_directory-service-ds) domain and forest to which it belongs, if any. The variables are as follows:

**NetBIOSDomainName:** The name of the domain or nondomain workgroup, as known by [**NetBIOS name**](#gt_netbios-name), to which the computer belongs.

**DNSDomainName:** The [**fully qualified domain name (FQDN)**](#gt_fully-qualified-domain-name-fqdn) of the domain to which the computer belongs. This abstract element has value only for computers that are joined to a domain; otherwise, it is NULL.

**ForestName:** The FQDN of the forest to which the computer belongs. This variable has value only for computers that are joined to a domain; otherwise, it is NULL.

**DomainGUID:** The [**UUID**](#gt_universally-unique-identifier-uuid), as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md), that identifies the domain to which the computer belongs. This variable has type [**GUID**](#gt_globally-unique-identifier-guid), as specified in [MS-DTYP],<7> and has value only for computers that are joined to a directory service domain; otherwise, the value is NULL.

The computer maintains information about its role and status in the domain, as follows:

**ComputerRole (Public):** An abstract variable of type [DSROLE_MACHINE_ROLE](#Section_2.2.2) that describes the current [**domain membership role**](#gt_domain-membership-role) of the machine.

**ComputerOperationState:** The status of the current ComputerRole change operation. The type of this variable is [DSROLE_OPERATION_STATE](#Section_2.2.4) enumeration.

**ComputerUpgrade:** A Boolean abstract variable that is TRUE only when an [upgrade](#Section_3.2.4.3) event (as specified in section 3.2.4.3) is in progress.

**PreviousServerState:** The type of this variable is [DSROLE_SERVER_STATE](#Section_2.2.6) enumeration. When ComputerUpgrade is TRUE, it contains the security role that the [**domain controller (DC)**](#gt_domain-controller-dc) will have after the upgrade event (as specified in section 3.2.4.3) is complete. When ComputerUpgrade is FALSE, it contains DsRoleServerUnknown.

<a id="Section_3.2.2"></a>
### 3.2.2 Timers

No protocol timer events are required on the server other than the timers required in the underlying [**RPC transport**](#gt_rpc-transport), as specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md).

<a id="Section_3.2.3"></a>
### 3.2.3 Initialization

The server MUST listen on the [**well-known endpoint**](#gt_well-known-endpoint) that is defined for this [**RPC**](#gt_remote-procedure-call-rpc) interface. For more information, see section [2.1](#Section_2.1).<8>

ComputerUpgrade is initialized to FALSE.

PreviousServerState is initialized to DsRoleServerUnknown.

ComputerOperationState is initialized to DsRoleOperationIdle.

ComputerRole is set only during initialization. It is initialized as follows:

- If the server meets the requirements of a domain controller as described in [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 6.1.2.1, then
- If the server is hosting the PdcEmulationMasterRole ([MS-ADTS] section 3.1.1.1.11), ComputerRole is set to DsRole_RolePrimaryDomainController, else ComputerRole is set to DsRole_RoleBackupDomainController. The server determines if it is hosting the PdcEmulationMasterRole by invoking the **IsEffectiveRoleOwner** function with the *roleObject* parameter set to RoleObject(Default NC, PdcEmulationMasterRole) (see [MS-ADTS] section 3.1.1.5.1.8).
- Else
- If DNSDomainName is not NULL, then ComputerRole is set to DsRole_RoleMemberServer, else ComputerRole is set to DsRoleStandaloneServer.
<a id="Section_3.2.4"></a>
### 3.2.4 Higher-Layer Triggered Events

<a id="Section_3.2.4.1"></a>
#### 3.2.4.1 Promotion

Promotion is the act of configuring a server operating system to be a domain controller. At the beginning of promotion, ComputerOperationState MUST be set to DsRoleOperationActive. At the end of promotion, ComputerOperationState MUST be set to DsRoleOperationNeedReboot. Finally, all protocols on the server MUST be reinitialized to complete promotion.<9> The appropriate states of ComputerOperationState and ComputerRole are set during initialization according to section [3.2.3](#Section_3.2.3), regardless of the state of a promotion.

The operation or set of operations that constitute promotion (that configure a server operating system to be a domain controller) are server-to-server operations and are not included in this document and are not required for interoperation with clients. The required configuration for successful promotion is the abstract state required of a domain controller's existence as described in [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 6.1.2.1.

<a id="Section_3.2.4.2"></a>
#### 3.2.4.2 Demotion

Demotion is the act of configuring a domain controller to no longer be a domain controller. At the beginning of demotion, ComputerOperationState MUST be set to DsRoleOperationActive. At the end of demotion, ComputerOperationState MUST be set to DsRoleOperationNeedReboot. Finally, all protocols on the server MUST be reinitialized to complete demotion.<10> The appropriate states of ComputerOperationState and ComputerRole are set during initialization according to section [3.2.3](#Section_3.2.3), regardless of the state of a demotion.

The operation or set of operations that constitute demotion (that configure a domain controller to no longer be a domain controller) are server-to-server operations and are not included in this document, and are not required for interoperation with clients.

<a id="Section_3.2.4.3"></a>
#### 3.2.4.3 Upgrade

Upgrade is the act of promotion using values suggested from a previously existing source.<11> No upgrade-specific constraints are applied to these values; for example, the [**NetBIOS name**](#gt_netbios-name) of the new domain is not required to match that of a legacy domain. An implementation can choose any specific values as part of promotion as long as the result satisfies the abstract state required of a domain controller's existence as described in [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 6.1.2.1.

When the upgrade event begins:

- A promotion event MUST be triggered.
- ComputerUpgrade MUST be set to TRUE.
- PreviousServerState MUST be set to DsRoleServerPrimary if it is promoting the first domain controller in the domain; otherwise, PreviousServerState MUST be set to DsRoleServerBackup. Note that if this event is promoting the first domain controller in the domain, after promotion ComputerRole will be set to DsRole_RolePrimaryDomainController; otherwise, after promotion ComputerRole will be set to DsRole_RoleBackupDomainController.
The upgrade event is complete when the triggered promotion event is complete. When the upgrade event is complete:

- ComputerUpgrade MUST be set to FALSE.
- PreviousServerState MUST be set to DsRoleServerUnknown.
The operation or set of operations that constitute upgrade are server-to-server operations and are not included in this document; they are not required for interoperation with clients.

<a id="Section_3.2.5"></a>
### 3.2.5 Message Processing Events and Sequencing Rules

For authenticated [**RPC**](#gt_remote-procedure-call-rpc) over [**SMB**](#gt_server-message-block-smb), the details of method authentication are specific to the underlying RPC implementation, as specified in [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824) section 13, [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 5, and [MS-SMB](../MS-SMB/MS-SMB.md) section 5.

[**Opnums**](#gt_opnum) 1 through 11 are not used across the network. These opnums are reserved and MUST NOT be reused by non-Microsoft implementations.<12>

Methods in RPC Opnum Order

| Method | Description |
| --- | --- |
| [DsRolerGetPrimaryDomainInformation](#Section_3.2.5.1) | The DsRolerGetPrimaryDomainInformation method returns the requested information about the current configuration or state of the computer on which the server is running. Opnum: 0 |
| Opnum1NotUsedOnWire | Opnum: 1 |
| Opnum2NotUsedOnWire | Opnum: 2 |
| Opnum3NotUsedOnWire | Opnum: 3 |
| Opnum4NotUsedOnWire | Opnum: 4 |
| Opnum5NotUsedOnWire | Opnum: 5 |
| Opnum6NotUsedOnWire | Opnum: 6 |
| Opnum7NotUsedOnWire | Opnum: 7 |
| Opnum8NotUsedOnWire | Opnum: 8 |
| Opnum9NotUsedOnWire | Opnum: 9 |
| Opnum10NotUsedOnWire | Opnum: 10 |
| Opnum11NotUsedOnWire | Opnum: 11 |

All methods MUST NOT throw exceptions.

<a id="Section_3.2.5.1"></a>
#### 3.2.5.1 DsRolerGetPrimaryDomainInformation (Opnum 0)

The DsRolerGetPrimaryDomainInformation (Opnum 0) method returns the requested information about the current configuration or state of the computer on which the server is running.

DWORD DsRolerGetPrimaryDomainInformation(

[in] handle_t hBinding,

[in] DSROLE_PRIMARY_DOMAIN_INFO_LEVEL InfoLevel,

[out, switch_is(InfoLevel)] PDSROLER_PRIMARY_DOMAIN_INFORMATION* DomainInfo

);

**hBinding:** An RPC binding handle, as specified in [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824) section 2.3.1.

**InfoLevel:** The type of data requested by the client. For possible values in this enumeration, see section [2.2.7](#Section_2.2.7).

**DomainInfo:** The requested information that the server provides to the client. The value of the *InfoLevel* parameter indicates the type of information that is requested; information is returned in the corresponding member of the [DSROLER_PRIMARY_DOMAIN_INFORMATION](#Section_2.2.8) union.

**Return Values:** The method returns 0 if successful; if failed, it returns a nonzero error code as specified in [MS-ERREF](../MS-ERREF/MS-ERREF.md). Specifically, in addition to any other error codes, the server MUST return the following error codes for the following error conditions. Any other values transmitted in this field are implementation-specific. All nonzero values MUST be treated the same for protocol purposes.

| Return value/code | Description |
| --- | --- |
| 0x00000057 ERROR_INVALID_PARAMETER | One or more parameters are invalid. |
| 0x00000008 ERROR_NOT_ENOUGH_MEMORY | A memory allocation failure occurred. |

This method obtains the identity and authorization information about the client from the underlying [**RPC**](#gt_remote-procedure-call-rpc) runtime. Servers that implement this method SHOULD impose an authorization policy decision before performing the function.<13>

The server determines the appropriate response to the request by examining the *InfoLevel* parameter, setting the appropriate fields in the *DomainInfo* parameter and sending the response to the caller.

The following describes which fields are used and what the fields contain for each *InfoLevel* value.

**DsRolePrimaryDomainInfoBasic**

When the *InfoLevel* is **DsRolePrimaryDomainInfoBasic**, the server MUST use the **DomainInfoBasic** field of the *DomainInfo* parameter, whose type is [DSROLER_PRIMARY_DOMAIN_INFO_BASIC](#Section_2.2.1). The result MUST be constructed in the following manner:

- Determine the role of the server and set the **MachineRole** field of **DomainInfoBasic** according to the ComputerRole state element. If the server ComputerRole state element indicates that it is not a stand-alone computer, set the **DomainNameFlat**, **DomainNameDns**, **DomainForestName**, and **DomainGuid** fields of the DomainInfoBasic structure according to the NetBIOSDomainName, DNSDomainName, ForestName, and DomainGUID state information. If the DomainGUID state element is non-empty, the DSROLE_PRIMARY_DOMAIN_GUID_PRESENT bit MUST be set in the **Flags** member of DomainInfoBasic.
- If the server is a stand-alone computer, set the **DomainNameFlat** field of DomainInfoBasic according to NetBIOSDomainName state information; and then set the other fields to NULL.
- If the server is a domain controller and the [**directory service**](#gt_directory-service-ds) is enabled, set the **Flags** member of the DomainInfoBasic structure as follows:
- Set the DSROLE_PRIMARY_DS_RUNNING bit.
- If the domain is in mixed mode, set the DSROLE_PRIMARY_DS_MIXED_MODE bit.
- If the server is a read-only domain controller, set the DSROLE_PRIMARY_DS_READONLY bit. The domain hosted by a [**read-only domain controller**](#gt_read-only-domain-controller-rodc) SHOULD<14> be in [**native mode**](#gt_native-mode).
**DsRoleUpgradeStatus**

When InfoLevel is DsRoleUpgradeStatus, the server sets the requested information into the **UpgradStatusInfo** field of the *DomainInfo* parameter, whose type is DSROLE_UPGRADE_STATUS_INFO. The result MUST be constructed in the following manner:

- Set the OperationState field to DSROLE_UPGRADE_IN_PROGRESS if the ComputerUpgrade state element is TRUE.
- Set the PreviousServerState field to the PreviousServerState state element.
**DsRoleOperationState**

When InfoLevel is DsRoleOperationState, the server MUST return the result in the **OperationStateInfo** field of the *DomainInfo* parameter, whose type is DSROLE_OPERATION_STATE_INFO. The result MUST be constructed by setting the **OperationState** member of the OperationStateInfo structure according to the value of the ComputerOperationState state element.

<a id="Section_3.2.6"></a>
### 3.2.6 Timer Events

No timer events are required on the server other than the events maintained in the underlying [**RPC transport**](#gt_rpc-transport).

<a id="Section_3.2.7"></a>
### 3.2.7 Other Local Events

No additional local events are used on the server other than the events maintained in the underlying [**RPC transport**](#gt_rpc-transport).

<a id="Section_4"></a>
# 4 Protocol Examples

The following is an example of a [DsRolerGetPrimaryDomainInformation](#Section_3.2.5.1) [**RPC**](#gt_remote-procedure-call-rpc) method.

Assume the server is a workstation computer joined to a domain called MyDomainName.com.

The client calls the DsRolerGetPrimaryDomainInformation RPC method on the server with InfoLevel equal to 1.

The server returns with code 0x00000000; and with the **DomainInfoBasic** field of DomainInfo structure, the following values are in fields of **DomainInfoBasic**.

MachineRole = 1

Flags = 0x01000000

DomainNameFlat = "MyDomainName"

DomainNameDns = "MyDomainName.com"

DomainForestName = "MyDomainName.com"

DomainGuid = { 0x5585777b, 0xe549, 0x43b6,

{ 0xa8, 0x42, 0x2, 0xbe, 0xd, 0xd6, 0xab, 0x14 } };

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

Information returned by this protocol can reveal more than is appropriate for anonymous users, thus resulting in an information leak. An anonymous user can access [DsRolerGetPrimaryDomainInformation](#Section_3.2.5.1) on a [**domain controller**](#gt_domain-controller-dc) but not on a computer that is not running a domain controller. Implementers therefore need to determine whether to allow access to anonymous users.

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

| Security parameter | Section |
| --- | --- |
| [**Remote procedure call (RPC)**](#gt_remote-procedure-call-rpc) authentication. | Section [3.2.5](#Section_3.2.5) |
| Allow anonymous users and non-administrative users to retrieve information using the [DsRolerGetPrimaryDomainInformation](#Section_3.2.5.1) RPC method. | Section 3.2.5.1 |

<a id="Section_6"></a>
# 6 Appendix A: Full IDL

import "ms-dtyp.idl";

[

uuid(3919286a-b10c-11d0-9ba8-00c04fd92ef5),

version(0.0),

pointer_default(unique)

]

interface dssetup

{

typedef enum _DSROLE_MACHINE_ROLE {

DsRole_RoleStandaloneWorkstation,

DsRole_RoleMemberWorkstation,

DsRole_RoleStandaloneServer,

DsRole_RoleMemberServer,

DsRole_RoleBackupDomainController,

DsRole_RolePrimaryDomainController

} DSROLE_MACHINE_ROLE;

typedef enum _DSROLE_SERVER_STATE {

DsRoleServerUnknown = 0,

DsRoleServerPrimary,

DsRoleServerBackup

} DSROLE_SERVER_STATE, *PDSROLE_SERVER_STATE;

typedef enum _DSROLE_PRIMARY_DOMAIN_INFO_LEVEL {

DsRolePrimaryDomainInfoBasic = 1,

DsRoleUpgradeStatus,

DsRoleOperationState

} DSROLE_PRIMARY_DOMAIN_INFO_LEVEL;

typedef struct _DSROLE_UPGRADE_STATUS_INFO {

unsigned __int32 OperationState;

DSROLE_SERVER_STATE PreviousServerState;

} DSROLE_UPGRADE_STATUS_INFO, *PDSROLE_UPGRADE_STATUS_INFO;

typedef enum _DSROLE_OPERATION_STATE {

DsRoleOperationIdle = 0,

DsRoleOperationActive,

DsRoleOperationNeedReboot

} DSROLE_OPERATION_STATE;

typedef struct _DSROLE_OPERATION_STATE_INFO {

DSROLE_OPERATION_STATE OperationState;

} DSROLE_OPERATION_STATE_INFO, *PDSROLE_OPERATION_STATE_INFO;

typedef struct _DSROLER_PRIMARY_DOMAIN_INFO_BASIC {

DSROLE_MACHINE_ROLE MachineRole;

unsigned __int32 Flags;

[ unique, string ] wchar_t *DomainNameFlat;

[ unique, string ] wchar_t *DomainNameDns;

[ unique, string ] wchar_t *DomainForestName;

GUID DomainGuid;

} DSROLER_PRIMARY_DOMAIN_INFO_BASIC,

*PDSROLER_PRIMARY_DOMAIN_INFO_BASIC;

typedef [switch_type(DSROLE_PRIMARY_DOMAIN_INFO_LEVEL)] union

_DSROLER_PRIMARY_DOMAIN_INFORMATION {

[case(DsRolePrimaryDomainInfoBasic)]

DSROLER_PRIMARY_DOMAIN_INFO_BASIC DomainInfoBasic;

[case(DsRoleUpgradeStatus)]

DSROLE_UPGRADE_STATUS_INFO UpgradStatusInfo;

[case(DsRoleOperationState)]

DSROLE_OPERATION_STATE_INFO OperationStateInfo;

} DSROLER_PRIMARY_DOMAIN_INFORMATION,

*PDSROLER_PRIMARY_DOMAIN_INFORMATION;

DWORD

DsRolerGetPrimaryDomainInformation(

[in] handle_t hBinding,

[in] DSROLE_PRIMARY_DOMAIN_INFO_LEVEL InfoLevel,

[out, switch_is( InfoLevel )]

PDSROLER_PRIMARY_DOMAIN_INFORMATION *DomainInfo );

/*The following methods are part of the dssetup

interface in Windows 2000, Windows XP RTM,

and Windows XP SP1. They are not part of

this interface in Windows XP SP2 or later

service packs, Windows Server 2003 and later, and Windows Vista and later.

These methods do not expose client server protocol.*/

void Opnum1NotUsedOnWire(void);

void Opnum2NotUsedOnWire(void);

void Opnum3NotUsedOnWire(void);

void Opnum4NotUsedOnWire(void);

void Opnum5NotUsedOnWire(void);

void Opnum6NotUsedOnWire(void);

void Opnum7NotUsedOnWire(void);

void Opnum8NotUsedOnWire(void);

void Opnum9NotUsedOnWire(void);

void Opnum10NotUsedOnWire(void);

void Opnum11NotUsedOnWire(void);

}

<a id="Section_7"></a>
# 7 Appendix B: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

The terms "earlier" and "later", when used with a product version, refer to either all preceding versions or all subsequent versions, respectively. The term "through" refers to the inclusive range of versions. Applicable Microsoft products are listed chronologically in this section.

**Windows Client**

- Windows 2000 Professional operating system
- Windows XP operating system
- Windows Vista operating system
- Windows 7 operating system
- Windows 8 operating system
- Windows 8.1 operating system
- Windows 10 operating system
- Windows 11 operating system
**Windows Server**

- Windows 2000 Server operating system
- Windows Server 2003 operating system
- Windows Server 2008 operating system
- Windows Server 2008 R2 operating system
- Windows Server 2012 operating system
- Windows Server 2012 R2 operating system
- Windows Server 2016 operating system
- Windows Server operating system
- Windows Server 2019 operating system
- Windows Server 2022 operating system
- Windows Server 2025 operating system
Exceptions, if any, are noted in this section. If an update version, service pack or Knowledge Base (KB) number appears with a product name, the behavior changed in that update. The new behavior also applies to subsequent updates unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<1> Section 1.7: Windows [**RPC**](#gt_remote-procedure-call-rpc) protocol returns RPC_S_PROCNUM_OUT_OF_RANGE to notify the client that an RPC method is out of range, as specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md).

<2> Section 2.1: Applicable Windows Server releases listen on all protocols bound to RPC. Windows clients attempt only to connect via RPC over the above-named pipe.

<3> Section 2.2.2: **Read-only domain controllers** are not supported in Windows 2000 Server and Windows Server 2003.

<4> Section 2.2.4: In the Windows implementation, after a [promotion](#Section_3.2.4.1) or [demotion](#Section_3.2.4.2) operation that requires a reboot, and prior to that reboot, the RPC interface used by this protocol can be unavailable or it can reject connections with authentication errors.

<5> Section 2.2.5: DSROLE_UPGRADE_IN_PROGRESS is only set for an [**operating system upgrade**](#gt_operating-system-upgrade) from a Windows NT 4.0 operating system [**domain controller**](#gt_domain-controller-dc). A Windows computer returns this under the following conditions: (1) it was previously a Windows NT 4.0 domain controller, (2) the operating system upgrade from Windows NT 4.0 has completed, and (3) it has not yet transitioned to being a domain controller.

<6> Section 3.1.3: This protocol configures the RPC runtime to perform a strict [**NDR**](#gt_network-data-representation-ndr) data consistency check at target level 5.0 for Windows 2000 operating system, Windows XP, and Windows Server 2003, as specified in [MS-RPCE] section 3.

The protocol configures the RPC runtime to perform a strict NDR data consistency check at target level 6.0 for Windows Vista and later and Windows Server 2008 and later.

<7> Section 3.2.1: A Windows [**Active Directory domain**](#gt_active-directory-domain) has a domain [**GUID**](#gt_globally-unique-identifier-guid), and a Windows NT 4.0 [**domain**](#gt_domain) does not have a domain GUID. Computers running Windows 2000 can be members of a Windows NT 4.0 domain.

<8> Section 3.2.3: This protocol configures the RPC runtime to perform a strict NDR data consistency check at target level 5.0 for Windows 2000, Windows XP, and Windows Server 2003, as specified in [MS-RPCE] section 3.

It configures the RPC runtime to perform a strict NDR data consistency check at target level 6.0 for Windows Vista and later and Windows Server 2008 and later.

In Windows Vista and later and Windows Server 2008 and later, this protocol configures the RPC runtime to reject a NULL unique or full pointer (as specified in [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824) section 14.3.10) with a nonzero conformant value, as specified in [MS-RPCE] section 3.

This protocol configures the RPC runtime via the strict_context_handle attribute to reject the use of context handles that are created by a method of a different RPC interface than this one, as specified in [MS-RPCE] section 3.

<9> Section 3.2.4.1: Windows reinitializes all protocols on the server by rebooting the server.

<10> Section 3.2.4.2: Windows reinitializes all protocols on the server by rebooting the server.

<11> Section 3.2.4.3: Windows only uses a legacy domain as a source for suggested promotion input. Windows allows modification of the suggested input by an administrator before promotion, such as modification of the [**NetBIOS name**](#gt_netbios-name) of the new domain.

<12> Section 3.2.5: Gaps in the [**opnum**](#gt_opnum) numbering sequence apply to Windows as follows:

| Opnum | Description |
| --- | --- |
| 1-11 | Only used locally by Windows, never remotely. |

<13> Section 3.2.5.1: Windows domain controllers allow any authenticated or unauthenticated connection to invoke [DsRolerGetPrimaryDomainInformation](#Section_3.2.5.1). Computers running Windows that are not domain controllers require the connection not to be anonymous.

<14> Section 3.2.5.1: Read-only domain controllers are not supported in Windows 2000 Server or Windows Server 2003.

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

