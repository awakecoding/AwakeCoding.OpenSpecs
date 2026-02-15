# [MS-LSAT]: Local Security Authority (Translation Methods) Remote Protocol

Last updated: 5/1/2024

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
    - [2.2.1 LSAPR_HANDLE](#Section_2.2.1)
    - [2.2.2 STRING](#Section_2.2.2)
    - [2.2.3 LSAPR_ACL](#Section_2.2.3)
    - [2.2.4 SECURITY_DESCRIPTOR_CONTROL](#Section_2.2.4)
    - [2.2.5 LSAPR_SECURITY_DESCRIPTOR](#Section_2.2.5)
    - [2.2.6 SECURITY_IMPERSONATION_LEVEL](#Section_2.2.6)
    - [2.2.7 SECURITY_CONTEXT_TRACKING_MODE](#Section_2.2.7)
    - [2.2.8 SECURITY_QUALITY_OF_SERVICE](#Section_2.2.8)
    - [2.2.9 LSAPR_OBJECT_ATTRIBUTES](#Section_2.2.9)
    - [2.2.10 ACCESS_MASK](#Section_2.2.10)
    - [2.2.11 LSAPR_TRUST_INFORMATION](#Section_2.2.11)
    - [2.2.12 LSAPR_REFERENCED_DOMAIN_LIST](#Section_2.2.12)
    - [2.2.13 SID_NAME_USE](#Section_2.2.13)
    - [2.2.14 LSA_TRANSLATED_SID](#Section_2.2.14)
    - [2.2.15 LSAPR_TRANSLATED_SIDS](#Section_2.2.15)
    - [2.2.16 LSAP_LOOKUP_LEVEL](#Section_2.2.16)
    - [2.2.17 LSAPR_SID_INFORMATION](#Section_2.2.17)
    - [2.2.18 LSAPR_SID_ENUM_BUFFER](#Section_2.2.18)
    - [2.2.19 LSAPR_TRANSLATED_NAME](#Section_2.2.19)
    - [2.2.20 LSAPR_TRANSLATED_NAMES](#Section_2.2.20)
    - [2.2.21 LSAPR_TRANSLATED_NAME_EX](#Section_2.2.21)
    - [2.2.22 LSAPR_TRANSLATED_NAMES_EX](#Section_2.2.22)
    - [2.2.23 LSAPR_TRANSLATED_SID_EX](#Section_2.2.23)
    - [2.2.24 LSAPR_TRANSLATED_SIDS_EX](#Section_2.2.24)
    - [2.2.25 LSAPR_TRANSLATED_SID_EX2](#Section_2.2.25)
    - [2.2.26 LSAPR_TRANSLATED_SIDS_EX2](#Section_2.2.26)
  - [2.3 Directory Service Schema Elements](#Section_2.3)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 Server Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
      - [3.1.1.1 Database Views](#Section_3.1.1.1)
        - [3.1.1.1.1 Predefined Translation Database and Corresponding View](#Section_3.1.1.1.1)
        - [3.1.1.1.2 Configurable Translation Database and Corresponding View](#Section_3.1.1.1.2)
        - [3.1.1.1.3 Builtin Domain Principal View](#Section_3.1.1.1.3)
        - [3.1.1.1.4 Account Domain Principal View](#Section_3.1.1.1.4)
        - [3.1.1.1.5 Account Domain Information View](#Section_3.1.1.1.5)
        - [3.1.1.1.6 Account Domain View](#Section_3.1.1.1.6)
        - [3.1.1.1.7 Forest Principal View](#Section_3.1.1.1.7)
        - [3.1.1.1.8 Forest Information View](#Section_3.1.1.1.8)
        - [3.1.1.1.9 Forest View](#Section_3.1.1.1.9)
      - [3.1.1.2 Domain Database Information](#Section_3.1.1.2)
      - [3.1.1.3 Trusted Domains and Forests Information](#Section_3.1.1.3)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Message Processing Events and Sequencing Rules](#Section_3.1.4)
      - [3.1.4.1 LsarOpenPolicy2 (Opnum 44)](#Section_3.1.4.1)
      - [3.1.4.2 LsarOpenPolicy (Opnum 6)](#Section_3.1.4.2)
      - [3.1.4.3 LsarClose (Opnum 0)](#Section_3.1.4.3)
      - [3.1.4.4 LsarGetUserName (Opnum 45)](#Section_3.1.4.4)
      - [3.1.4.5 LsarLookupNames4 (Opnum 77)](#Section_3.1.4.5)
      - [3.1.4.6 LsarLookupNames3 (Opnum 68)](#Section_3.1.4.6)
      - [3.1.4.7 LsarLookupNames2 (Opnum 58)](#Section_3.1.4.7)
      - [3.1.4.8 LsarLookupNames (Opnum 14)](#Section_3.1.4.8)
      - [3.1.4.9 LsarLookupSids3 (Opnum 76)](#Section_3.1.4.9)
      - [3.1.4.10 LsarLookupSids2 (Opnum 57)](#Section_3.1.4.10)
      - [3.1.4.11 LsarLookupSids (Opnum 15)](#Section_3.1.4.11)
    - [3.1.5 Timer Events](#Section_3.1.5)
    - [3.1.6 Other Local Events](#Section_3.1.6)
  - [3.2 Client Details](#Section_3.2)
</details>

<details>
<summary>4 Protocol Example</summary>

- [4 Protocol Example](#Section_4)
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

The Local Security Authority (Translation Methods) Remote Protocol is implemented in Windows products to translate identifiers for [**security principals**](#gt_security-principal) between human-readable and machine-readable forms. This translation can be used in scenarios such as human management of resource access.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_access-control-list-acl"></a>
**access control list (ACL)**: A list of access control entries (ACEs) that collectively describe the security rules for authorizing access to some resource; for example, an object or set of objects.

<a id="gt_acid"></a>
**ACID**: A term that refers to the four properties that any database system has to achieve in order to be considered transactional: Atomicity, Consistency, Isolation, and Durability.

<a id="gt_active-directory"></a>
**Active Directory**: The Windows implementation of a general-purpose directory service, which uses LDAP as its primary access protocol. [**Active Directory**](#gt_active-directory) stores information about a variety of objects in the network such as user accounts, computer accounts, groups, and all related credential information used by Kerberos [MS-KILE](../MS-KILE/MS-KILE.md). [**Active Directory**](#gt_active-directory) is either deployed as Active Directory Domain Services (AD DS) or Active Directory Lightweight Directory Services (AD LDS), which are both described in [MS-ADOD](../MS-ADOD/MS-ADOD.md): Active Directory Protocols Overview.

<a id="gt_discretionary-access-control-list-dacl"></a>
**discretionary access control list (DACL)**: An [**access control list (ACL)**](#gt_access-control-list-acl) that is controlled by the owner of an object and that specifies the access particular users or groups can have to the object.

<a id="gt_dns-name"></a>
**DNS name**: A fully qualified domain name (FQDN).

<a id="gt_domain"></a>
**domain**: A set of users and computers sharing a common namespace and management infrastructure. At least one computer member of the set has to act as a [**domain controller (DC)**](#gt_domain-controller-dc) and host a member list that identifies all members of the domain, as well as optionally hosting the [**Active Directory**](#gt_active-directory) service. The domain controller provides authentication of members, creating a unit of trust for its members. Each domain has an identifier that is shared among its members. For more information, see [MS-AUTHSOD](../MS-AUTHSOD/MS-AUTHSOD.md) section 1.1.1.5 and [MS-ADTS](../MS-ADTS/MS-ADTS.md).

<a id="gt_domain-controller-dc"></a>
**domain controller (DC)**: The service, running on a server, that implements [**Active Directory**](#gt_active-directory), or the server hosting this service. The service hosts the data store for objects and interoperates with other [**DCs**](#gt_domain-controller-dc) to ensure that a local change to an object replicates correctly across all [**DCs**](#gt_domain-controller-dc). When [**Active Directory**](#gt_active-directory) is operating as Active Directory Domain Services (AD DS), the [**DC**](#gt_domain-controller-dc) contains full NC replicas of the configuration naming context (config NC), schema naming context (schema NC), and one of the [**domain NCs**](#gt_domain-naming-context-domain-nc) in its [**forest**](#gt_forest). If the AD DS [**DC**](#gt_domain-controller-dc) is a global catalog server (GC server), it contains partial NC replicas of the remaining [**domain NCs**](#gt_domain-naming-context-domain-nc) in its [**forest**](#gt_forest). For more information, see [MS-AUTHSOD] section 1.1.1.5.2 and [MS-ADTS]. When [**Active Directory**](#gt_active-directory) is operating as Active Directory Lightweight Directory Services (AD LDS), several AD LDS [**DCs**](#gt_domain-controller-dc) can run on one server. When [**Active Directory**](#gt_active-directory) is operating as AD DS, only one AD DS [**DC**](#gt_domain-controller-dc) can run on one server. However, several AD LDS [**DCs**](#gt_domain-controller-dc) can coexist with one AD DS [**DC**](#gt_domain-controller-dc) on one server. The AD LDS [**DC**](#gt_domain-controller-dc) contains full NC replicas of the config NC and the schema NC in its [**forest**](#gt_forest). The domain controller is the server side of Authentication Protocol Domain Support [MS-APDS](../MS-APDS/MS-APDS.md).

<a id="gt_domain-database"></a>
**domain database**: A database where security principal information is stored. This database is the directory service [**Active Directory**](#gt_active-directory) in the case of a [**domain controller (DC)**](#gt_domain-controller-dc). On a machine that is not a [**DC**](#gt_domain-controller-dc), this database is a local database, manageable through the Security Accounts Manager Remote Protocol, as specified in [MS-SAMR](../MS-SAMR/MS-SAMR.md).

<a id="gt_domain-member-member-machine"></a>
**domain member (member machine)**: A machine that is joined to a domain by sharing a secret between the machine and the domain.

<a id="gt_domain-name"></a>
**domain name**: A domain name or a NetBIOS name that identifies a [**domain**](#gt_domain).

<a id="gt_domain-naming-context-domain-nc"></a>
**domain naming context (domain NC)**: A naming context (NC) whose replicas are able to contain [**security principal**](#gt_security-principal) objects. No other NC replica can contain [**security principal**](#gt_security-principal) objects. The distinguished name (DN) of a [**domain NC**](#gt_domain-naming-context-domain-nc) takes the form "dc=n1,dc=n2, ... dc=nk" where each "ni" satisfies the syntactic requirements of a DNS name component. For more information, see [[RFC1034]](https://go.microsoft.com/fwlink/?LinkId=90263). Such a DN corresponds to the domain naming service name: "n1.n2. ... .nk". This is the domain naming service name of the [**domain NC**](#gt_domain-naming-context-domain-nc). [**Domain NCs**](#gt_domain-naming-context-domain-nc) appear in the global catalog (GC). A [**forest**](#gt_forest) has one or more [**domain NCs**](#gt_domain-naming-context-domain-nc). The root of a [**domain NC**](#gt_domain-naming-context-domain-nc) is an object of class domainDns.

<a id="gt_forest"></a>
**forest**: In the [**Active Directory**](#gt_active-directory) directory service, a [**forest**](#gt_forest) is a set of naming contexts (NCs) consisting of one schema NC, one config NC, and one or more [**domain NCs**](#gt_domain-naming-context-domain-nc). Because a set of NCs can be arranged into a tree structure, a [**forest**](#gt_forest) is also a set of one or several trees of NCs.

<a id="gt_forest-trust"></a>
**forest trust**: A type of [**trust**](#gt_trust) where the trusted party is a [**forest**](#gt_forest), which means that all [**domains**](#gt_domain) in that [**forest**](#gt_forest) are trusted.

<a id="gt_local-security-authority-lsa"></a>
**Local Security Authority (LSA)**: A protected subsystem that authenticates and logs users onto the local system. [**LSA**](#gt_local-security-authority-lsa) also maintains information about all aspects of local security on a system, collectively known as the local security policy of the system.

<a id="gt_network-data-representation-ndr"></a>
**Network Data Representation (NDR)**: A specification that defines a mapping from Interface Definition Language (IDL) data types onto octet streams. [**NDR**](#gt_network-data-representation-ndr) also refers to the runtime environment that implements the mapping facilities (for example, data provided to [**NDR**](#gt_network-data-representation-ndr)). For more information, see [MS-RPCE](../MS-RPCE/MS-RPCE.md) and [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824) section 14.

<a id="gt_opnum"></a>
**opnum**: An operation number or numeric identifier that is used to identify a specific [**remote procedure call (RPC)**](#gt_remote-procedure-call-rpc) method or a method in an interface. For more information, see [C706] section 12.5.2.12 or [MS-RPCE].

<a id="gt_relative-identifier-rid"></a>
**relative identifier (RID)**: The last item in the series of SubAuthority values in a [**security identifier (SID)**](#gt_security-identifier-sid) [[SIDD]](https://go.microsoft.com/fwlink/?LinkId=90516). It distinguishes one account or group from all other accounts and groups in the domain. No two accounts or groups in any domain share the same RID.

<a id="gt_remote-procedure-call-rpc"></a>
**remote procedure call (RPC)**: A communication protocol used primarily between client and server. The term has three definitions that are often used interchangeably: a runtime environment providing for communication facilities between computers (the RPC runtime); a set of request-and-response message exchanges between computers (the RPC exchange); and the single message from an RPC exchange (the RPC message). For more information, see [C706].

<a id="gt_root-domain"></a>
**root domain**: The unique [**domain naming contexts (domain NCs)**](#gt_domain-naming-context-domain-nc) of an Active Directory [**forest**](#gt_forest) that is the parent of the [**forest's**](#gt_fd104241-4fb3-457c-b2c4-e0c18bb20b62) config NC. The config NC's relative distinguished name (RDN) is "cn=Configuration" relative to the root object of the root domain. The root domain is the domain that is created first in a [**forest**](#gt_forest).

<a id="gt_rpc-client"></a>
**RPC client**: A computer on the network that sends messages using remote procedure call (RPC) as its transport, waits for responses, and is the initiator in an RPC exchange.

<a id="gt_rpc-dynamic-endpoint"></a>
**RPC dynamic endpoint**: A network-specific server address that is requested and assigned at run time, as described in [C706].

<a id="gt_rpc-endpoint"></a>
**RPC endpoint**: A network-specific address of a server process for remote procedure calls (RPCs). The actual name of the RPC endpoint depends on the RPC protocol sequence being used. For example, for the NCACN_IP_TCP RPC protocol sequence an RPC endpoint might be TCP port 1025. For more information, see [C706].

<a id="gt_rpc-protocol-sequence"></a>
**RPC protocol sequence**: A character string that represents a valid combination of a [**remote procedure call (RPC)**](#gt_remote-procedure-call-rpc) protocol, a network layer protocol, and a transport layer protocol, as described in [C706] and [MS-RPCE].

<a id="gt_rpc-server"></a>
**RPC server**: A computer on the network that waits for messages, processes them when they arrive, and sends responses using RPC as its transport acts as the responder during a remote procedure call (RPC) exchange.

<a id="gt_rpc-transport"></a>
**RPC transport**: The underlying network services used by the remote procedure call (RPC) runtime for communications between network nodes. For more information, see [C706] section 2.

<a id="gt_security-identifier-sid"></a>
**security identifier (SID)**: An identifier for [**security principals**](#gt_security-principal) that is used to identify an account or a group. Conceptually, the [**SID**](#gt_security-identifier-sid) is composed of an account authority portion (typically a [**domain**](#gt_domain)) and a smaller integer representing an identity relative to the account authority, termed the [**relative identifier (RID)**](#gt_relative-identifier-rid). The [**SID**](#gt_security-identifier-sid) format is specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.4.2; a string representation of [**SIDs**](#gt_security-identifier-sid) is specified in [MS-DTYP] section 2.4.2 and [MS-AZOD](../MS-AZOD/MS-AZOD.md) section 1.1.1.2.

<a id="gt_security-principal"></a>
**security principal**: A unique entity, also referred to as a principal, that can be authenticated by [**Active Directory**](#gt_active-directory). It frequently corresponds to a human user, but also can be a service that offers a resource to other security principals. Other security principals might be a group, which is a set of principals. Groups are supported by [**Active Directory**](#gt_active-directory).

<a id="gt_server-message-block-smb"></a>
**Server Message Block (SMB)**: A protocol that is used to request file and print services from server systems over a network. The SMB protocol extends the CIFS protocol with additional security, file, and disk management support. For more information, see [[CIFS]](https://go.microsoft.com/fwlink/?linkid=2109334) and [MS-SMB](../MS-SMB/MS-SMB.md).

<a id="gt_trust"></a>
**trust**: To accept another authority's statements for the purposes of authentication and authorization, especially in the case of a relationship between two domains. If [**domain**](#gt_domain) A trusts [**domain**](#gt_domain) B, [**domain**](#gt_domain) A accepts [**domain**](#gt_domain) B's authentication and authorization statements for principals represented by security principal objects in [**domain**](#gt_domain) B; for example, the list of groups to which a particular user belongs. As a noun, a [**trust**](#gt_trust) is the relationship between two [**domains**](#gt_domain) described in the previous sentence.

<a id="gt_trust-attributes"></a>
**trust attributes**: A collection of attributes that define different characteristics of a trust within a domain or a forest.

<a id="gt_trusted-domain"></a>
**trusted domain**: A domain that is trusted to make authentication decisions for security principals in that domain.

<a id="gt_trusted-forest"></a>
**trusted forest**: A forest that is trusted to make authentication statements for security principals in that forest. Assuming forest A trusts forest B, all domains belonging to forest A will trust all domains in forest B, subject to policy configuration.

<a id="gt_universally-unique-identifier-uuid"></a>
**universally unique identifier (UUID)**: A 128-bit value. UUIDs can be used for multiple purposes, from tagging objects with an extremely short lifetime, to reliably identifying very persistent objects in cross-process communication such as client and server interfaces, manager entry-point vectors, and [**RPC**](#gt_remote-procedure-call-rpc) objects. UUIDs are highly likely to be unique. UUIDs are also known as globally unique identifiers (GUIDs) and these terms are used interchangeably in the Microsoft protocol technical documents (TDs). Interchanging the usage of these terms does not imply or require a specific algorithm or mechanism to generate the UUID. Specifically, the use of this term does not imply or require that the algorithms described in [[RFC4122]](https://go.microsoft.com/fwlink/?LinkId=90460) or [C706] has to be used for generating the UUID.

<a id="gt_user-principal-name-upn"></a>
**user principal name (UPN)**: A user account name (sometimes referred to as the user logon name) and a domain name that identifies the domain in which the user account is located. This is the standard usage for logging on to a Windows domain. The format is: someone@example.com (in the form of an email address). In [**Active Directory**](#gt_active-directory), the userPrincipalName attribute of the account object, as described in [MS-ADTS].

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[C706] The Open Group, "DCE 1.1: Remote Procedure Call", C706, August 1997, [https://publications.opengroup.org/c706](https://go.microsoft.com/fwlink/?LinkId=89824)

**Note** Registration is required to download the document.

[GRAY] Gray, J., and Reuter, A., "Transaction Processing: Concepts and Techniques", The Morgan Kaufmann Series in Data Management Systems, San Francisco: Morgan Kaufmann Publishers, 1992, Hardcover ISBN: 9781558601901.

[MS-ADA1] Microsoft Corporation, "[Active Directory Schema Attributes A-L](../MS-ADA1/MS-ADA1.md)".

[MS-ADA2] Microsoft Corporation, "[Active Directory Schema Attributes M](../MS-ADA2/MS-ADA2.md)".

[MS-ADA3] Microsoft Corporation, "[Active Directory Schema Attributes N-Z](../MS-ADA3/MS-ADA3.md)".

[MS-ADSC] Microsoft Corporation, "[Active Directory Schema Classes](../MS-ADSC/MS-ADSC.md)".

[MS-ADTS] Microsoft Corporation, "[Active Directory Technical Specification](../MS-ADTS/MS-ADTS.md)".

[MS-DRSR] Microsoft Corporation, "[Directory Replication Service (DRS) Remote Protocol](../MS-DRSR/MS-DRSR.md)".

[MS-DTYP] Microsoft Corporation, "[Windows Data Types](../MS-DTYP/MS-DTYP.md)".

[MS-ERREF] Microsoft Corporation, "[Windows Error Codes](../MS-ERREF/MS-ERREF.md)".

[MS-LSAD] Microsoft Corporation, "[Local Security Authority (Domain Policy) Remote Protocol](../MS-LSAD/MS-LSAD.md)".

[MS-NRPC] Microsoft Corporation, "[Netlogon Remote Protocol](../MS-NRPC/MS-NRPC.md)".

[MS-RPCE] Microsoft Corporation, "[Remote Procedure Call Protocol Extensions](../MS-RPCE/MS-RPCE.md)".

[MS-SAMR] Microsoft Corporation, "[Security Account Manager (SAM) Remote Protocol (Client-to-Server)](../MS-SAMR/MS-SAMR.md)".

[MS-SCMR] Microsoft Corporation, "[Service Control Manager Remote Protocol](../MS-SCMR/MS-SCMR.md)".

[MSKB-3149090] Microsoft Corporation, "MS16-047: Description of the security update for SAM and LSAD remote protocols", April 2016, [https://support.microsoft.com/en-us/kb/3149090](https://go.microsoft.com/fwlink/?LinkId=786963)

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[MS-ADOD] Microsoft Corporation, "[Active Directory Protocols Overview](../MS-ADOD/MS-ADOD.md)".

[MS-SMB] Microsoft Corporation, "[Server Message Block (SMB) Protocol](../MS-SMB/MS-SMB.md)".

[MSDN-RPCDB] Microsoft Corporation, "The RPC Name Service Database", [http://msdn.microsoft.com/en-us/library/aa378865.aspx](https://go.microsoft.com/fwlink/?LinkId=90076)

[MSFT-LSA-IDL] Microsoft Corporation, "Local Security Authority Merged IDL File", March 2018, [https://www.microsoft.com/en-us/download/details.aspx?id=3367](https://go.microsoft.com/fwlink/?LinkId=150268)

<a id="Section_1.3"></a>
## 1.3 Overview

The purpose of this protocol is to translate human-readable names to [**security identifiers (SIDs)**](#gt_security-identifier-sid), as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.4.2, and vice versa. The syntax of human-readable names is specified in section [3.1.4.5](../MS-DTYP/MS-DTYP.md). For example, this protocol can be used to translate "corp\John" to "S-1-5-21-397955417-626881126-188441444-1555", and vice versa.

This translation is needed for different scenarios, such as managing access to resources. In Windows, access to resources is controlled by a security descriptor attached to the resource. This security descriptor contains a list of SIDs indicating the [**security principals**](#gt_security-principal) and the kind of access allowed or denied for those principals. In order for humans to manage access to resources, translation occurs between SIDs (persisted within security descriptors) and human-readable identifiers (in the user interface).

This protocol is intended for use between any two machines, most frequently between a [**domain member**](#gt_domain-member-member-machine) and a [**domain controller (DC)**](#gt_domain-controller-dc) for that [**domain**](#gt_domain). This protocol can also be used between domain controllers for [**trusting**](#gt_5ee032d0-d944-4acb-bbb5-b1cfc7df6db6) domains or [**forests**](#gt_forest).

This protocol is a simple request/response-based [**remote procedure call (RPC)**](#gt_remote-procedure-call-rpc) protocol. There are no long-lived sessions, although clients are free to cache the RPC connection and reuse it over time. A sample sequence of requests and responses is shown in section [4](#Section_4).

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

![The relationships among the LSAT, LSAD, RPC, and SMB protocols](media/image1.png)

Figure 1: The relationships among the LSAT, LSAD, RPC, and SMB protocols

The Local Security Authority (Translation Methods) Remote Protocol is composed of a subset of [**opnums**](#gt_opnum) in an interface that also includes the Local Security Authority (Domain Policy) Remote Protocol, as specified in [MS-LSAD](../MS-LSAD/MS-LSAD.md).

The Local Security Authority (Translation Methods) Remote Protocol is dependent upon [**RPC**](#gt_remote-procedure-call-rpc), which is used to communicate between [**domain members**](#gt_6234a38c-ed1b-4c69-969f-6e6479566f65) and [**domain controllers**](#gt_76a05049-3531-4abd-aec8-30e19954b4bd).

This protocol depends on the [**Server Message Block (SMB)**](#gt_server-message-block-smb) Protocol [MS-SMB](../MS-SMB/MS-SMB.md) and the TCP/IP protocol for sending messages on the wire.

Some messages in this protocol depend on the Netlogon Remote Protocol, as specified in [MS-NRPC](../MS-NRPC/MS-NRPC.md), having successfully negotiated security parameters to be used. For more information on the messages that have this requirement, see section [3.1.4](../MS-NRPC/MS-NRPC.md).

The Directory Replication Service (DRS) Remote Protocol, as specified in [MS-DRSR](../MS-DRSR/MS-DRSR.md), exposes functionality similar to what this protocol achieves, but serves a different purpose. The DRS Remote Protocol can translate names in different syntaxes, but lacks the functionality to translate names from different [**forests**](#gt_forest). An application uses one or both protocols, depending on the syntax of names for which the application requires translation.

The Security Account Manager (SAM) Remote Protocol (Client-to-Server), as specified in [MS-SAMR](../MS-SAMR/MS-SAMR.md), exposes similar functionality for [**security principals**](#gt_security-principal) that are local to a server.

The Active Directory Technical Specification [MS-ADTS](../MS-ADTS/MS-ADTS.md) discusses [**Active Directory**](#gt_active-directory), which is used by this protocol.

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

This protocol has prerequisites, specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md), that are common to protocols that depend on [**RPC**](#gt_remote-procedure-call-rpc).

As previously noted, some messages in this protocol depend on the Netlogon Remote Protocol, as specified in [MS-NRPC](../MS-NRPC/MS-NRPC.md), having successfully negotiated security parameters to be used. For more information on the messages that have this requirement, see section [3.1.4](../MS-NRPC/MS-NRPC.md).

It is assumed that the [**RPC server**](#gt_rpc-server) has access to the distributed abstract databases specified in section [3.1.1](#Section_3.1.1) that are required to perform the translations requested using this protocol. It is also assumed that the RPC server has created the required views, as specified in section 3.1.1.

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

This protocol is applicable whenever there is a need to translate the human-readable names of [**security principals**](#gt_security-principal), with syntaxes described in section [3.1.4.5](#Section_3.1.4.5), to security principal [**SIDs**](#gt_security-identifier-sid), or vice versa. This applicability includes, but is not limited to, an end-user administration program that displays and controls who can access such resources as files.

To understand the conditions under which this protocol is preferred over other protocols, see section [1.4](#Section_1.4).

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

This document covers versioning issues in the following areas:

- Supported Transports: The protocol uses [**RPC**](#gt_remote-procedure-call-rpc) over [**SMB**](#gt_server-message-block-smb) and TCP/IP, as specified in section [2.1](#Section_2.1).
- Protocol Version: This protocol's RPC interface has a single version number, but that interface has been extended by adding methods at the end. The use of these methods is specified in section [3.1](#Section_3.1).
- Structure Version: The [LSAPR_ACL (section 2.2.3)](#Section_2.2.3) and [LSAPR_SECURITY_DESCRIPTOR (section 2.2.5)](#Section_2.2.5) structures are versioned using the first field in the structure. The structure version is not used in this protocol.
- Capabilities: The [**RPC client**](#gt_rpc-client) passes its capabilities in the appropriate parameter when possible, as specified in sections [3.1.4.5](#Section_3.1.4.5), [3.1.4.6](#Section_3.1.4.6), [3.1.4.7](#Section_3.1.4.7), [3.1.4.9](#Section_3.1.4.9), and [3.1.4.10](#Section_3.1.4.10).
The [**RPC server**](#gt_rpc-server) takes actions according to the capabilities parameter of an RPC message, if present, as specified in the previous paragraph.

<a id="Section_1.8"></a>
## 1.8 Vendor-Extensible Fields

This protocol uses NTSTATUS values as specified in [MS-ERREF](../MS-ERREF/MS-ERREF.md) section 2.3. Vendors are free to choose their own values for this field, provided that the C bit (0x20000000) is set, which indicates that it is a customer code.

<a id="Section_1.9"></a>
## 1.9 Standards Assignments

This protocol has no standards assignments. It uses private allocations for the [**RPC**](#gt_remote-procedure-call-rpc) interface [**universally unique identifier (UUID)**](#gt_universally-unique-identifier-uuid) (12345778-1234-ABCD-EF00-0123456789AB) and the [**RPC endpoint**](#gt_rpc-endpoint) (\PIPE\lsarpc).

<a id="Section_2"></a>
# 2 Messages

<a id="Section_2.1"></a>
## 2.1 Transport

This protocol uses the following [**RPC protocol sequences**](#gt_rpc-protocol-sequence):

- [**SMB**](#gt_server-message-block-smb)
- TCP/IP<1>
This protocol MUST use [**RPC dynamic endpoints**](#gt_rpc-dynamic-endpoint), as specified in [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824) section 4, when using [**RPC**](#gt_remote-procedure-call-rpc) over TCP/IP.

This protocol MUST use "\PIPE\lsarpc" as the [**RPC endpoint**](#gt_rpc-endpoint) when using RPC over SMB.<2>

[**RPC clients**](#gt_rpc-client) for this protocol MUST use RPC over SMB for the [LsarOpenPolicy2](#Section_3.1.4.1), [LsarOpenPolicy](#Section_3.1.4.2), [LsarClose](#Section_3.1.4.3), [LsarGetUserName](#Section_3.1.4.4), [LsarLookupNames](#Section_3.1.4.8), [LsarLookupNames2](#Section_3.1.4.7), [LsarLookupNames3](#Section_3.1.4.6), [LsarLookupSids](#Section_3.1.4.11), and [LsarLookupSids2](#Section_3.1.4.10) methods. RPC clients MUST use RPC over TCP/IP for the [LsarLookupNames4](#Section_3.1.4.5) and [LsarLookupSids3](#Section_3.1.4.9) methods.<3>

The server SHOULD<4> reject calls that do not use an authentication level of RPC_C_AUTHN_LEVEL_NONE, RPC_C_AUTHN_LEVEL_PKT_INTEGRITY, or RPC_C_AUTHN_LEVEL_PKT_PRIVACY ([MS-RPCE](../MS-RPCE/MS-RPCE.md) section 2.2.1.1.8).

This protocol MUST use the [**UUID**](#gt_universally-unique-identifier-uuid) and version number as follows:

- UUID: See section [1.9](#Section_1.9).
- Version number: 0.0.
Security settings used in this protocol vary depending on the role of the RPC client and [**RPC server**](#gt_rpc-server), the method being used, and the specific parameters being used. Therefore, security settings are discussed in the message processing sections for each message.

<a id="Section_2.2"></a>
## 2.2 Common Data Types

In addition to [**RPC**](#gt_remote-procedure-call-rpc) base types and definitions specified in [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824) and [MS-DTYP](../MS-DTYP/MS-DTYP.md), additional data types are defined in this specification.

Some fields of some data types were introduced into the protocol but not used. These data types and fields are not to be confused with those that were introduced for extensibility. These fields MUST NOT be used for extensibility. Such fields are described as follows:

"This field MUST be ignored. The content is unspecified, and no requirements are placed on its value since it is never used."

The server SHOULD place no constraints on the value present in such fields unless otherwise stated.

This protocol MUST indicate to the RPC runtime that it is to support both the [**NDR**](#gt_network-data-representation-ndr) and NDR64 transfer syntaxes and provide a negotiation mechanism for determining which transfer syntax will be used, as specified in [C706] section 12 and in [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 3.3.1.5.6.

The following table summarizes the types that are defined in this specification.

**Note** NTSTATUS, RPC_SID, and RPC_UNICODE_STRING are defined in [MS-DTYP] sections 2.2.38, 2.4.2.3, and 2.3.10, respectively.

| Type (section) | Summary |
| --- | --- |
| [ACCESS_MASK (section 2.2.10)](#Section_2.2.10) | Defines the access rights to grant an object. |
| [LSA_TRANSLATED_SID (section 2.2.14)](#Section_2.2.14) | Contains machine-readable information about a [**security principal**](#gt_security-principal). |
| [LSAP_LOOKUP_LEVEL (section 2.2.16)](#Section_2.2.16) | Defines different scopes for searches during translation. |
| [LSAPR_ACL (section 2.2.3)](#Section_2.2.3) | Defines the header of an [**access control list**](#gt_access-control-list-acl). |
| [LSAPR_HANDLE (section 2.2.1)](#Section_2.2.1) | Defines a context handle. |
| [LSAPR_OBJECT_ATTRIBUTES (section 2.2.9)](#Section_2.2.9) | Specifies an object and its handle's properties. |
| [LSAPR_REFERENCED_DOMAIN_LIST (section 2.2.12)](#Section_2.2.12) | Contains information about the [**domains**](#gt_domain) referenced in a lookup operation. |
| [LSAPR_SECURITY_DESCRIPTOR (section 2.2.5)](#Section_2.2.5) | Defines an object's security descriptor. |
| [LSAPR_SID_ENUM_BUFFER (section 2.2.18)](#Section_2.2.18) | Defines a set of [**SIDs**](#gt_security-identifier-sid). |
| [LSAPR_SID_INFORMATION (section 2.2.17)](#Section_2.2.17) | Contains a SID value. |
| [LSAPR_TRANSLATED_NAME (section 2.2.19)](#Section_2.2.19) | Contains human-readable name information about a security principal. |
| [LSAPR_TRANSLATED_NAME_EX (section 2.2.21)](#Section_2.2.21) | Contains human-readable name information about a security principal. |
| [LSAPR_TRANSLATED_NAMES (section 2.2.20)](#Section_2.2.20) | Defines a set of translated names. |
| [LSAPR_TRANSLATED_NAMES_EX (section 2.2.22)](#Section_2.2.22) | Contains a set of translated names. |
| [LSAPR_TRANSLATED_SID_EX (section 2.2.23)](#Section_2.2.23) | Contains machine-readable identifier information about a security principal. |
| [LSAPR_TRANSLATED_SID_EX2 (section 2.2.25)](#Section_2.2.25) | Contains machine-readable identifier information about a security principal. |
| [LSAPR_TRANSLATED_SIDS (section 2.2.15)](#Section_2.2.15) | Defines a set of translated SIDs. |
| [LSAPR_TRANSLATED_SIDS_EX (section 2.2.24)](#Section_2.2.24) | Contains a set of translated SIDs. |
| [LSAPR_TRANSLATED_SIDS_EX2 (section 2.2.26)](#Section_2.2.26) | Contains a set of translated SIDs. |
| [LSAPR_TRUST_INFORMATION (section 2.2.11)](#Section_2.2.11) | Contains information about a domain. |
| [SECURITY_CONTEXT_TRACKING_MODE (section 2.2.7)](#Section_2.2.7) | Specifies whether user security attributes are updated on a server when they change on the client. |
| [SECURITY_DESCRIPTOR_CONTROL (section 2.2.4)](#Section_2.2.4) | Qualifies the meaning of a security descriptor or its components. |
| [SECURITY_IMPERSONATION_LEVEL (section 2.2.6)](#Section_2.2.6) | Specifies security impersonation levels. |
| [SECURITY_QUALITY_OF_SERVICE (section 2.2.8)](#Section_2.2.8) | Defines information that is used to support client impersonation. |
| [SID_NAME_USE (section 2.2.13)](#Section_2.2.13) | Contains values that specify the type of an account. |
| [STRING (section 2.2.2)](#Section_2.2.2) | Defines an ANSI string along with the number of characters in the string. |

The following citation contains a timeline of when each data type was introduced.<5>

<a id="Section_2.2.1"></a>
### 2.2.1 LSAPR_HANDLE

The LSAPR_HANDLE type defines a context handle, as specified in [MS-LSAD](../MS-LSAD/MS-LSAD.md) section 2.2.2.1.

This type is declared as follows:

typedef [context_handle] void* LSAPR_HANDLE;

<a id="Section_2.2.2"></a>
### 2.2.2 STRING

The STRING structure defines a string along with the number of characters in the string, as specified in [MS-LSAD](../MS-LSAD/MS-LSAD.md) section 2.2.3.1.

typedef struct _STRING {

unsigned short Length;

unsigned short MaximumLength;

[size_is(MaximumLength), length_is(Length)]

char* Buffer;

} STRING,

*PSTRING;

Individual member semantics are specified in [MS-LSAD] section 2.2.3.1.

<a id="Section_2.2.3"></a>
### 2.2.3 LSAPR_ACL

The LSAPR_ACL structure defines the header of an [**access control list (ACL)**](#gt_access-control-list-acl) as specified in [MS-LSAD](../MS-LSAD/MS-LSAD.md) section 2.2.3.2.

typedef struct _LSAPR_ACL {

unsigned char AclRevision;

unsigned char Sbz1;

unsigned short AclSize;

[size_is(AclSize - 4)] unsigned char Dummy1[*];

} LSAPR_ACL,

*PLSAPR_ACL;

Individual member semantics are specified in [MS-LSAD] section 2.2.3.2.

<a id="Section_2.2.4"></a>
### 2.2.4 SECURITY_DESCRIPTOR_CONTROL

The SECURITY_DESCRIPTOR_CONTROL type contains a set of bit flags as specified in [MS-LSAD](../MS-LSAD/MS-LSAD.md) section 2.2.3.3.

This type is declared as follows:

typedef unsigned short SECURITY_DESCRIPTOR_CONTROL, *PSECURITY_DESCRIPTOR_CONTROL;

<a id="Section_2.2.5"></a>
### 2.2.5 LSAPR_SECURITY_DESCRIPTOR

The LSAPR_SECURITY_DESCRIPTOR structure defines an object's security descriptor as specified in [MS-LSAD](../MS-LSAD/MS-LSAD.md) section 2.2.3.4.

typedef struct _LSAPR_SECURITY_DESCRIPTOR {

unsigned char Revision;

unsigned char Sbz1;

SECURITY_DESCRIPTOR_CONTROL Control;

PRPC_SID Owner;

PRPC_SID Group;

PLSAPR_ACL Sacl;

PLSAPR_ACL Dacl;

} LSAPR_SECURITY_DESCRIPTOR,

*PLSAPR_SECURITY_DESCRIPTOR;

Individual member semantics are specified in [MS-LSAD] section 2.2.3.4.

<a id="Section_2.2.6"></a>
### 2.2.6 SECURITY_IMPERSONATION_LEVEL

The SECURITY_IMPERSONATION_LEVEL enumeration defines a set of values that specify security impersonation levels as specified in [MS-LSAD](../MS-LSAD/MS-LSAD.md) section 2.2.3.5.

typedef enum _SECURITY_IMPERSONATION_LEVEL

{

SecurityAnonymous = 0,

SecurityIdentification = 1,

SecurityImpersonation = 2,

SecurityDelegation = 3

} SECURITY_IMPERSONATION_LEVEL,

*PSECURITY_IMPERSONATION_LEVEL;

Individual value semantics are specified in [MS-LSAD] section 2.2.3.5.

<a id="Section_2.2.7"></a>
### 2.2.7 SECURITY_CONTEXT_TRACKING_MODE

The SECURITY_CONTEXT_TRACKING_MODE type specifies how the server tracks the client's security context as specified in [MS-LSAD](../MS-LSAD/MS-LSAD.md) section 2.2.3.6.

This type is declared as follows:

typedef unsigned char SECURITY_CONTEXT_TRACKING_MODE, *PSECURITY_CONTEXT_TRACKING_MODE;

Possible values are specified in [MS-LSAD] section 2.2.3.6.

<a id="Section_2.2.8"></a>
### 2.2.8 SECURITY_QUALITY_OF_SERVICE

The SECURITY_QUALITY_OF_SERVICE structure defines information used to support client impersonation as specified in [MS-LSAD](../MS-LSAD/MS-LSAD.md) section 2.2.3.7.

typedef struct _SECURITY_QUALITY_OF_SERVICE {

unsigned long Length;

SECURITY_IMPERSONATION_LEVEL ImpersonationLevel;

SECURITY_CONTEXT_TRACKING_MODE ContextTrackingMode;

unsigned char EffectiveOnly;

} SECURITY_QUALITY_OF_SERVICE,

*PSECURITY_QUALITY_OF_SERVICE;

Individual member semantics are specified in [MS-LSAD] section 2.2.3.7.

<a id="Section_2.2.9"></a>
### 2.2.9 LSAPR_OBJECT_ATTRIBUTES

The LSAPR_OBJECT_ATTRIBUTES structure specifies an object and its properties as specified in [MS-LSAD](../MS-LSAD/MS-LSAD.md) section 2.2.2.4.

typedef struct _LSAPR_OBJECT_ATTRIBUTES {

unsigned long Length;

unsigned char* RootDirectory;

PSTRING ObjectName;

unsigned long Attributes;

PLSAPR_SECURITY_DESCRIPTOR SecurityDescriptor;

PSECURITY_QUALITY_OF_SERVICE SecurityQualityOfService;

} LSAPR_OBJECT_ATTRIBUTES,

*PLSAPR_OBJECT_ATTRIBUTES;

Individual member semantics are specified in [MS-LSAD] section 2.2.2.4.

<a id="Section_2.2.10"></a>
### 2.2.10 ACCESS_MASK

The ACCESS_MASK data type is a bitmask that defines the access rights to grant an object. Access types are reconciled with the [**discretionary access control list (DACL)**](#gt_discretionary-access-control-list-dacl) of the object to determine whether the requested access is granted or denied.

This type is declared as follows:

typedef unsigned long ACCESS_MASK;

The possible values are defined in [MS-LSAD](../MS-LSAD/MS-LSAD.md) sections 2.2.1.1.1 and 2.2.1.1.2. The ACCESS_MASK data type is further defined in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.4.3.

For this protocol, only a subset of the possible values is required. This subset consists of POLICY_LOOKUP_NAMES, which is defined in the following table.

| Value | Meaning |
| --- | --- |
| POLICY_LOOKUP_NAMES 0x00000800 | Access to translate names and [**SIDs**](#gt_security-identifier-sid). |

<a id="Section_2.2.11"></a>
### 2.2.11 LSAPR_TRUST_INFORMATION

The LSAPR_TRUST_INFORMATION structure contains information about a [**domain**](#gt_domain).

typedef struct _LSAPR_TRUST_INFORMATION {

RPC_UNICODE_STRING Name;

PRPC_SID Sid;

} LSAPR_TRUST_INFORMATION,

*PLSAPR_TRUST_INFORMATION;

Individual member semantics are specified in [MS-LSAD](../MS-LSAD/MS-LSAD.md) section 2.2.7.1.

<a id="Section_2.2.12"></a>
### 2.2.12 LSAPR_REFERENCED_DOMAIN_LIST

The LSAPR_REFERENCED_DOMAIN_LIST structure contains information about the [**domains**](#gt_domain) referenced in a lookup operation.

typedef struct _LSAPR_REFERENCED_DOMAIN_LIST {

unsigned long Entries;

[size_is(Entries)] PLSAPR_TRUST_INFORMATION Domains;

unsigned long MaxEntries;

} LSAPR_REFERENCED_DOMAIN_LIST,

*PLSAPR_REFERENCED_DOMAIN_LIST;

**Entries:** Contains the number of domains referenced in the lookup operation.

**Domains:** Contains a set of structures that identify domains. If the **Entries** field in this structure is not 0, this field MUST be non-NULL. If **Entries** is 0, this field MUST be ignored.

**MaxEntries:** This field MUST be ignored. The content is unspecified, and no requirements are placed on its value since it is never used.

<a id="Section_2.2.13"></a>
### 2.2.13 SID_NAME_USE

The SID_NAME_USE enumeration contains values that specify the type of an account.<6>

typedef enum _SID_NAME_USE

{

SidTypeUser = 1,

SidTypeGroup,

SidTypeDomain,

SidTypeAlias,

SidTypeWellKnownGroup,

SidTypeDeletedAccount,

SidTypeInvalid,

SidTypeUnknown,

SidTypeComputer,

SidTypeLabel

} SID_NAME_USE,

*PSID_NAME_USE;

The SidTypeInvalid and SidTypeComputer enumeration values are not used in this protocol. Usage information on the remaining enumeration values is specified in section [3.1.1](#Section_3.1.1).

<a id="Section_2.2.14"></a>
### 2.2.14 LSA_TRANSLATED_SID

The LSA_TRANSLATED_SID structure contains information about a [**security principal**](#gt_security-principal) after translation from a name to a [**SID**](#gt_security-identifier-sid). This structure MUST always be accompanied by an [LSAPR_REFERENCED_DOMAIN_LIST](#Section_2.2.12) structure when **DomainIndex** is not -1.

typedef struct _LSA_TRANSLATED_SID {

SID_NAME_USE Use;

unsigned long RelativeId;

long DomainIndex;

} LSA_TRANSLATED_SID,

*PLSA_TRANSLATED_SID;

**Use:** Defines the type of the security principal, as specified in section [2.2.13](#Section_2.2.13).

**RelativeId:** Contains the [**relative identifier (RID)**](#gt_relative-identifier-rid) of the security principal with respect to its [**domain**](#gt_domain).

**DomainIndex:** Contains the index into an LSAPR_REFERENCED_DOMAIN_LIST structure that specifies the domain that the security principal is in. A **DomainIndex** value of -1 MUST be used to specify that there are no corresponding domains. Other negative values MUST NOT be returned.

<a id="Section_2.2.15"></a>
### 2.2.15 LSAPR_TRANSLATED_SIDS

The LSAPR_TRANSLATED_SIDS structure defines a set of translated [**SIDs**](#gt_security-identifier-sid).

typedef struct _LSAPR_TRANSLATED_SIDS {

[range(0,1000)] unsigned long Entries;

[size_is(Entries)] PLSA_TRANSLATED_SID Sids;

} LSAPR_TRANSLATED_SIDS,

*PLSAPR_TRANSLATED_SIDS;

**Entries:** Contains the number of translated SIDs.<7>

**Sids:** Contains a set of structures that contain translated SIDs. If the Entries field in this structure is not 0, this field MUST be non-NULL. If Entries is 0, this field MUST be NULL.

<a id="Section_2.2.16"></a>
### 2.2.16 LSAP_LOOKUP_LEVEL

The LSAP_LOOKUP_LEVEL enumeration defines different scopes for searches during translation.<8>

typedef enum _LSAP_LOOKUP_LEVEL

{

LsapLookupWksta = 1,

LsapLookupPDC,

LsapLookupTDL,

LsapLookupGC,

LsapLookupXForestReferral,

LsapLookupXForestResolve,

LsapLookupRODCReferralToFullDC

} LSAP_LOOKUP_LEVEL,

*PLSAP_LOOKUP_LEVEL;

**LsapLookupWksta:** [**SIDs**](#gt_security-identifier-sid) MUST be searched in the views under the Security Principal SID and Security Principal SID History columns in the following order:

- Predefined Translation View, as specified in section [3.1.1.1.1](#Section_3.1.1.1.1).
- Configurable Translation View, as specified in section [3.1.1.1.2](#Section_3.1.1.1.2).
- Builtin Domain Principal View of the account database on the [**RPC server**](#gt_rpc-server), as specified in section [3.1.1.1.3](#Section_3.1.1.1.3).
- Account Domain View of account database on that machine, as specified in section [3.1.1.1.6](#Section_3.1.1.1.6).
- If the machine is not joined to a [**domain**](#gt_domain), the search ends here.
- If the machine is not a [**domain controller**](#gt_domain-controller-dc): the Account Domain View of the domain to which this machine is joined.
- Forest View (section [3.1.1.1.9](../MS-ADTS/MS-ADTS.md)) of the [**forest**](#gt_forest) of the domain to which this machine is joined, unless *ClientRevision* is 0x00000001 and the machine is joined to a mixed mode domain, as specified in [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 6.1.4.1.
- Forest Views of [**trusted forests**](#gt_trusted-forest) for the forest of the domain to which this machine is joined, unless ClientRevision is 0x00000001 and the machine is joined to a mixed mode domain, as specified in [MS-ADTS] section 6.1.4.1.
- Account Domain Views of externally [**trusted domains**](#gt_trusted-domain) for the domain to which this machine is joined.
**LsapLookupPDC:** SIDs MUST be searched in the views under the Security Principal SID and Security Principal SID History columns in the following order:

- Account Domain View of the domain to which this machine is joined.
- Forest View of the forest of the domain to which this machine is joined, unless *ClientRevision* is 0x00000001 and the machine is joined to a mixed mode domain, as specified in [MS-ADTS] section 6.1.4.1.
- Forest Views of trusted forests for the forest of the domain to which this machine is joined, unless *ClientRevision* is 0x00000001 and the machine is joined to a mixed mode domain, as specified in [MS-ADTS] section 6.1.4.1.
- Account Domain Views of externally trusted domains for the domain to which this machine is joined.
**LsapLookupRODCReferralToFullDC:** SIDs MUST be searched in the databases under the Security Principal SID and Security Principal SID History columns in the following order:

- Forest Views of trusted forests for the forest of the domain to which this machine is joined, unless ClientRevision is 0x00000001 and the machine is joined to a mixed mode domain, as specified in [MS-ADTS] section 6.1.4.1.
- Account Domain Views of externally trusted domains for the domain to which this machine is joined.
**LsapLookupTDL:** SIDs MUST be searched in the databases under the Security Principal SID column in the following view:

- Account Domain View of the [**domain NC**](#gt_domain-naming-context-domain-nc) for the domain to which this machine is joined.
**LsapLookupGC:** SIDs MUST be searched in the databases under the Security Principal SID and Security Principal SID History columns in the following view:

- Forest View of the forest of the domain to which this machine is joined.
**LsapLookupXForestReferral:** SIDs MUST be searched in the databases under the Security Principal SID and Security Principal SID History columns in the following views:

- Forest Views of trusted forests for the forest of the domain to which this machine is joined.
**LsapLookupXForestResolve:** SIDs MUST be searched in the databases under the Security Principal SID and Security Principal SID History columns in the following view:

- Forest View of the forest of the domain to which this machine is joined.
<a id="Section_2.2.17"></a>
### 2.2.17 LSAPR_SID_INFORMATION

The LSAPR_SID_INFORMATION structure contains a PRPC_SID value.

typedef struct _LSAPR_SID_INFORMATION {

PRPC_SID Sid;

} LSAPR_SID_INFORMATION,

*PLSAPR_SID_INFORMATION;

**Sid:** Contains the PRPC_SID value, as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.4.2.3. This field MUST be non-NULL.

<a id="Section_2.2.18"></a>
### 2.2.18 LSAPR_SID_ENUM_BUFFER

The LSAPR_SID_ENUM_BUFFER structure defines a set of [**SIDs**](#gt_security-identifier-sid). This structure is used during a translation request for a batch of SIDs to names.

typedef struct _LSAPR_SID_ENUM_BUFFER {

[range(0,20480)] unsigned long Entries;

[size_is(Entries)] PLSAPR_SID_INFORMATION SidInfo;

} LSAPR_SID_ENUM_BUFFER,

*PLSAPR_SID_ENUM_BUFFER;

**Entries:** Contains the number of translated SIDs.<9>

**SidInfo:** Contains a set of structures that contain SIDs, as specified in section [2.2.17](#Section_2.2.17). If the **Entries** field in this structure is not 0, this field MUST be non-NULL. If **Entries** is 0, this field MUST be ignored.

<a id="Section_2.2.19"></a>
### 2.2.19 LSAPR_TRANSLATED_NAME

The LSAPR_TRANSLATED_NAME structure contains information about a [**security principal**](#gt_security-principal), along with the human-readable identifier for that security principal. This structure MUST always be accompanied by an [LSAPR_REFERENCED_DOMAIN_LIST](#Section_2.2.12) structure when **DomainIndex** is not -1, which contains the [**domain**](#gt_domain) information for the security principals.

typedef struct _LSAPR_TRANSLATED_NAME {

SID_NAME_USE Use;

RPC_UNICODE_STRING Name;

long DomainIndex;

} LSAPR_TRANSLATED_NAME,

*PLSAPR_TRANSLATED_NAME;

**Use:** Defines the type of the security principal, as specified in section [2.2.13](#Section_2.2.13).

**Name:** Contains the name of the security principal, with syntaxes described in section [3.1.4.5](#Section_3.1.4.5). The RPC_UNICODE_STRING structure is defined in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.10.

**DomainIndex:** Contains the index into the corresponding LSAPR_REFERENCED_DOMAIN_LIST structure that specifies the domain that the security principal is in. A **DomainIndex** value of -1 MUST be used to specify that there are no corresponding domains. Other negative values MUST NOT be used.

<a id="Section_2.2.20"></a>
### 2.2.20 LSAPR_TRANSLATED_NAMES

The LSAPR_TRANSLATED_NAMES structure defines a set of translated names. This is used in the response to a translation request from [**SIDs**](#gt_security-identifier-sid) to names.

typedef struct _LSAPR_TRANSLATED_NAMES {

[range(0,20480)] unsigned long Entries;

[size_is(Entries)] PLSAPR_TRANSLATED_NAME Names;

} LSAPR_TRANSLATED_NAMES,

*PLSAPR_TRANSLATED_NAMES;

**Entries:** Contains the number of translated names.<10>

**Names:** Contains a set of translated names, as specified in section [2.2.19](#Section_2.2.19). If the Entries field in this structure is not 0, this field MUST be non-NULL. If Entries is 0, this field MUST be ignored.

<a id="Section_2.2.21"></a>
### 2.2.21 LSAPR_TRANSLATED_NAME_EX

The LSAPR_TRANSLATED_NAME_EX structure contains information about a [**security principal**](#gt_security-principal) along with the human-readable identifier for that security principal. This structure MUST always be accompanied by an [LSAPR_REFERENCED_DOMAIN_LIST](#Section_2.2.12) structure when **DomainIndex** is not -1, which contains the [**domain**](#gt_domain) information for the security principals.

typedef struct _LSAPR_TRANSLATED_NAME_EX {

SID_NAME_USE Use;

RPC_UNICODE_STRING Name;

long DomainIndex;

unsigned long Flags;

} LSAPR_TRANSLATED_NAME_EX,

*PLSAPR_TRANSLATED_NAME_EX;

**Use:** Defines the type of the security principal, as specified in section [2.2.13](#Section_2.2.13).

**Name:** Contains the name of the security principal. The RPC_UNICODE_STRING structure is defined in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.10.

**DomainIndex:** Contains the index into the corresponding LSAPR_REFERENCED_DOMAIN_LIST structure that specifies the domain that the security principal is in. A **DomainIndex** value of -1 MUST be used to specify that there are no corresponding domains. Other negative values MUST NOT be used.

**Flags:** Contains bitmapped values that define the properties of this translation. The value MUST be the logical OR of zero or more of the following flags. These flags communicate the following additional information about how the [**SID**](#gt_security-identifier-sid) was resolved.

| Value | Meaning |
| --- | --- |
| 0x00000001 | The SID was not found by matching against the security principal SID property. |
| 0x00000002 | The SID might be found by traversing a [**forest trust**](#gt_forest-trust). |
| 0x00000004 | The SID was found by matching against the last database view, defined in section [3.1.1.1.1](#Section_3.1.1.1.1). |

All other bits MUST be 0 and ignored on receipt.<11>

<a id="Section_2.2.22"></a>
### 2.2.22 LSAPR_TRANSLATED_NAMES_EX

The LSAPR_TRANSLATED_NAMES_EX structure contains a set of translated names.

typedef struct _LSAPR_TRANSLATED_NAMES_EX {

[range(0,20480)] unsigned long Entries;

[size_is(Entries)] PLSAPR_TRANSLATED_NAME_EX Names;

} LSAPR_TRANSLATED_NAMES_EX,

*PLSAPR_TRANSLATED_NAMES_EX;

**Entries:** Contains the number of translated names.<12>

**Names:** Contains a set of structures that contain translated names, as specified in section [2.2.21](#Section_2.2.21). If the **Entries** field in this structure is not 0, this field MUST be non-NULL. If **Entries** is 0, this field MUST be ignored.

<a id="Section_2.2.23"></a>
### 2.2.23 LSAPR_TRANSLATED_SID_EX

The LSAPR_TRANSLATED_SID_EX structure contains information about a [**security principal**](#gt_security-principal) after it has been translated into a [**SID**](#gt_security-identifier-sid). This structure MUST always be accompanied by an [LSAPR_REFERENCED_DOMAIN_LIST](#Section_2.2.12) structure when **DomainIndex** is not -1, which contains the [**domain**](#gt_domain) information for the security principal.

This structure differs from [LSA_TRANSLATED_SID](#Section_2.2.14) only in that a new **Flags** field is added.

typedef struct _LSAPR_TRANSLATED_SID_EX {

SID_NAME_USE Use;

unsigned long RelativeId;

long DomainIndex;

unsigned long Flags;

} LSAPR_TRANSLATED_SID_EX,

*PLSAPR_TRANSLATED_SID_EX;

**Use:** Defines the type of the security principal, as specified in section [2.2.13](#Section_2.2.13).

**RelativeId:** Contains the [**relative identifier (RID)**](#gt_relative-identifier-rid) of the security principal with respect to its domain.

**DomainIndex:** Contains the index into the corresponding LSAPR_REFERENCED_DOMAIN_LIST structure that specifies the domain that the security principal is in. A **DomainIndex** value of -1 MUST be used to specify that there are no corresponding domains. Other negative values MUST NOT be used.

**Flags:** Contains bitmapped values that define the properties of this translation. The value MUST be the logical OR of zero or more of the following flags. These flags communicate additional information on how the name was resolved.

| Value | Meaning |
| --- | --- |
| 0x00000001 | The name was not found by matching against the *Security Principal Name* property. |
| 0x00000002 | The name might be found by traversing a [**forest trust**](#gt_forest-trust). |
| 0x00000004 | The name was found by matching against the last database view, as defined in section [3.1.1.1.1](#Section_3.1.1.1.1). |

All other bits MUST be 0 and ignored on receipt.<13>

<a id="Section_2.2.24"></a>
### 2.2.24 LSAPR_TRANSLATED_SIDS_EX

The LSAPR_TRANSLATED_SIDS_EX structure contains a set of translated [**SIDs**](#gt_security-identifier-sid).

typedef struct _LSAPR_TRANSLATED_SIDS_EX {

[range(0,1000)] unsigned long Entries;

[size_is(Entries)] PLSAPR_TRANSLATED_SID_EX Sids;

} LSAPR_TRANSLATED_SIDS_EX,

*PLSAPR_TRANSLATED_SIDS_EX;

**Entries:** Contains the number of translated SIDs.<14>

**Sids:** Contains a set of structures that contain translated SIDs, as specified in section [2.2.23](#Section_2.2.23). If the **Entries** field in this structure is not 0, this field MUST be non-NULL. If **Entries** is 0, this field MUST be NULL.

<a id="Section_2.2.25"></a>
### 2.2.25 LSAPR_TRANSLATED_SID_EX2

The LSAPR_TRANSLATED_SID_EX2 structure contains information about a [**security principal**](#gt_security-principal) after it has been translated into a [**SID**](#gt_security-identifier-sid). This structure MUST always be accompanied by an [LSAPR_REFERENCED_DOMAIN_LIST](#Section_2.2.12) structure when **DomainIndex** is not -1.

This structure differs from [LSAPR_TRANSLATED_SID_EX](#Section_2.2.23) only in that a SID is returned instead of a [**RID**](#gt_relative-identifier-rid).

typedef struct _LSAPR_TRANSLATED_SID_EX2 {

SID_NAME_USE Use;

PRPC_SID Sid;

long DomainIndex;

unsigned long Flags;

} LSAPR_TRANSLATED_SID_EX2,

*PLSAPR_TRANSLATED_SID_EX2;

**Use:** Defines the type of the security principal, as specified in section [2.2.13](#Section_2.2.13).

**Sid:** Contains the SID ([MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.4.2.3) of the security principal. This field MUST be treated as a [ref] pointer and hence MUST be non-NULL.

**DomainIndex:** Contains the index into an LSAPR_REFERENCED_DOMAIN_LIST structure that specifies the [**domain**](#gt_domain) that the security principal is in. A **DomainIndex** value of -1 MUST be used to specify that there are no corresponding domains. Other negative values MUST NOT be used.

**Flags:** Contains bitmapped values that define the properties of this translation. The value MUST be the logical OR of zero or more of the following flags. These flags communicate additional information on how the name was resolved.

| Value | Meaning |
| --- | --- |
| 0x00000001 | The name was not found by matching against the *Security Principal Name* property. |
| 0x00000002 | The name might be found by traversing a [**forest trust**](#gt_forest-trust). |
| 0x00000004 | The name was found by matching against the last database view (see section [3.1.1.1.1](#Section_3.1.1.1.1)). |

All other bits MUST be 0 and ignored on receipt.<15>

<a id="Section_2.2.26"></a>
### 2.2.26 LSAPR_TRANSLATED_SIDS_EX2

The LSAPR_TRANSLATED_SIDS_EX2 structure contains a set of translated [**SIDs**](#gt_security-identifier-sid).

typedef struct _LSAPR_TRANSLATED_SIDS_EX2 {

[range(0,1000)] unsigned long Entries;

[size_is(Entries)] PLSAPR_TRANSLATED_SID_EX2 Sids;

} LSAPR_TRANSLATED_SIDS_EX2,

*PLSAPR_TRANSLATED_SIDS_EX2;

**Entries:** Contains the number of translated SIDs.<16>

**Sids:** Contains a set of structures that define translated SIDs, as specified in section [2.2.25](#Section_2.2.25). If the **Entries** field in this structure is not 0, this field MUST be non-NULL. If **Entries** is 0, this field MUST be NULL.

<a id="Section_2.3"></a>
## 2.3 Directory Service Schema Elements

This protocol is part of the [**Active Directory**](#gt_active-directory) core family of protocols. In order to be fully compliant with Active Directory, an implementation of this protocol must be used in conjunction with the full Active Directory schema, containing all the schema attributes and classes specified in [MS-ADA1](../MS-ADA1/MS-ADA1.md), [MS-ADA2](../MS-ADA2/MS-ADA2.md), [MS-ADA3](../MS-ADA3/MS-ADA3.md), and [MS-ADSC](../MS-ADSC/MS-ADSC.md).

<a id="Section_3"></a>
# 3 Protocol Details

This protocol determines whether it is running on a [**domain controller**](#gt_domain-controller-dc) by querying the current server configuration. This is accomplished by calling the abstract interface ServerGetInfo, specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.6, and indicating a *level* of 101. The resulting *bufptr* contains a SERVER_INFO_101 structure, as specified in [MS-DTYP] section 2.3.12. The determination is TRUE if **sv101_version_type** contains SV_TYPE_DOMAIN_CTRL or SV_TYPE_DOMAIN_BAKCTRL. If **sv101_version_type** does not contain either of these values, the determination is FALSE.

<a id="Section_3.1"></a>
## 3.1 Server Details

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

This section describes a possible data organization that an implementation might maintain to participate in this protocol. The described organization is provided to help explain how the protocol behaves. This document does not mandate that implementations adhere to this model as long as their external behavior is consistent with what is described in this document.

The server implementing this protocol MUST create views, as specified in section [3.1.1.1](#Section_3.1.1.1), over [**domain databases**](#gt_domain-database) that the server [**trusts**](#gt_trust) to be able to translate [**SIDs**](#gt_security-identifier-sid) to names, and vice versa. These views contain SIDs and different types of names, as well as the [**domain**](#gt_domain) to which each [**security principal**](#gt_security-principal) belongs. These views MUST be kept in sync with the original databases whose data is used to create the view. The sync mechanism is implementation-specific, and there is no upper bound on the time from when a change occurs in a domain database to when that change appears in the view. A scoping parameter defined as [LSAP_LOOKUP_LEVEL](#Section_2.2.16) can be considered during message processing by applying these views to different databases.

The following domain databases are used in this protocol.

- [**Active Directory**](#gt_active-directory), specified in [MS-ADTS](../MS-ADTS/MS-ADTS.md).
- The Local Security Authority (LSA) Domain Policy database, specified in [MS-LSAD](../MS-LSAD/MS-LSAD.md).
- The Service Control Manager database, specified in [MS-SCMR](../MS-SCMR/MS-SCMR.md).
- The Predefined Translation database, specified in section [3.1.1.1.1](#Section_3.1.1.1.1).
The domain databases MUST satisfy [**ACID**](#gt_acid) properties [GRAY] during creation or updates of views.

The abstract data models presented in sections [3.1.1.2](#Section_3.1.1.2) and [3.1.1.3](#Section_3.1.1.3) are used along with domain database information to construct the logical views specified in section 3.1.1.1. The views, in turn, are used to process mapping requests. This process is specified in sections [3.1.4.4](#Section_3.1.4.4), [3.1.4.5](#Section_3.1.4.5), and [3.1.4.9](#Section_3.1.4.9), which describe the server processing of [**RPC**](#gt_remote-procedure-call-rpc) messages.

In this section, Active Directory schema names are referenced when describing attributes stored in the domain database. For more information, see [MS-ADSC](../MS-ADSC/MS-ADSC.md), [MS-ADA1](../MS-ADA1/MS-ADA1.md), [MS-ADA2](../MS-ADA2/MS-ADA2.md), and [MS-ADA3](../MS-ADA3/MS-ADA3.md).

<a id="Section_3.1.1.1"></a>
#### 3.1.1.1 Database Views

The following names represent the columns of the views that are specified in this section:

- **Domain DNS Name**
- **Domain NetBIOS Name**
- **Domain SID**
- **Security Principal Name**
- **Additional Security Principal Name**
- **Default User Principal Names**
- **User Principal Name**
- **Security Principal SID**
- **Security Principal SID History**
- **Security Principal Type**
**Domain SID**, **Security Principal Name**, **Security Principal SID**, and **Security Principal Type** are mandatory columns that MUST have values, while the rest MAY have values.

Some views are populated with constants, while others are populated by extracting current information from various [**domain databases**](#gt_domain-database). The specific views and how they are populated are described in the following paragraphs and subsections.

When a view is populated by extracting current information from the domain database of a selected [**domain**](#gt_domain), and the database or a replica of the database is local to the server, the server MUST use the local values. If the security database or a replica is not local, the server MUST use values from a remote replica. For remote values, there are no consistency guarantees from call to call; that is, the view might contain values from a different remote replica on each call.

The following assumptions are made for all views:

- **Security Principal SID** forms a unique key for each row.
- The **Security Principal Name** and **Domain NetBIOS Name** pair forms a unique key for each row.
- If **Domain DNS Name** is not empty, the **Security Principal Name** and **Domain DNS Name** pair forms a unique key for each row.
- If **Additional Security Principal Name** is not empty, the **Additional Security Principal Name** and **Domain NetBIOS Name** pair forms a unique key for each row.
- If **Additional Security Principal Name** and **Domain DNS Name** are not empty, the **Additional Security Principal Name** and **Domain DNS Name** pair forms a unique key for each row.
These assumptions MUST be held true by the database implementations from which these views are created.<17>

<a id="Section_3.1.1.1.1"></a>
##### 3.1.1.1.1 Predefined Translation Database and Corresponding View

The Predefined Translation View MUST be constructed using the following non-customizable Predefined Translation Tables. There is a one-to-one mapping between the rows in the view and the rows in the tables. The columns that are not mentioned in these tables are empty. The tables are grouped by the Domain NetBIOS Name and Domain SID columns for easier understanding.

Values of the Domain NetBIOS Name and Security Principal Name columns are shown in U.S. English. In an actual system, these values MUST be localized to the language defined as system locale at the time of message processing.

**Domain NetBIOS Name: "" (empty domain name)**

**Domain SID: S-1-0**

| Security Principal Name | Security Principal SID | Security Principal Type |
| --- | --- | --- |
| Null Sid | S-1-0-0 | SidTypeWellKnownGroup |

**Domain NetBIOS Name: "" (empty domain name)**

**Domain SID: S-1-1**

| Security Principal Name | Security Principal SID | Security Principal Type |
| --- | --- | --- |
| Everyone | S-1-1-0 | SidTypeWellKnownGroup |

**Domain NetBIOS Name: "" (empty domain name)**

**Domain SID: S-1-2**

| Security Principal Name | Security Principal SID | Security Principal Type |
| --- | --- | --- |
| Local | S-1-2-0 | SidTypeWellKnownGroup |

**Domain NetBIOS Name: "" (empty domain name)**

**Domain SID: S-1-3**

| Security Principal Name | Security Principal SID | Security Principal Type |
| --- | --- | --- |
| Creator Owner | S-1-3-0 | SidTypeWellKnownGroup |
| Creator Group | S-1-3-1 | SidTypeWellKnownGroup |
| Creator Owner Server | S-1-3-2 | SidTypeWellKnownGroup |
| Creator Group Server | S-1-3-3 | SidTypeWellKnownGroup |
| Owner Rights | S-1-3-4 | SidTypeWellKnownGroup |

**Domain NetBIOS Name: NT Pseudo Domain**

**Domain SID: S-1-5**

| **Security Principal Name** | Security Principal SID | Security Principal Type |
| --- | --- | --- |
| NT Pseudo Domain | S-1-5 | SidTypeDomain |

**Domain NetBIOS Name: NT Authority**

**Domain SID: S-1-5**

| **Security Principal Name** | **Security Principal SID** | Security Principal Type |
| --- | --- | --- |
| Dialup | S-1-5-1 | SidTypeWellKnownGroup |
| Network | S-1-5-2 | SidTypeWellKnownGroup |
| Batch | S-1-5-3 | SidTypeWellKnownGroup |
| Interactive | S-1-5-4 | SidTypeWellKnownGroup |
| Service | S-1-5-6 | SidTypeWellKnownGroup |
| Anonymous Logon | S-1-5-7 | SidTypeWellKnownGroup |
| Proxy | S-1-5-8 | SidTypeWellKnownGroup |
| Enterprise Domain Controllers | S-1-5-9 | SidTypeWellKnownGroup |
| Self | S-1-5-10 | SidTypeWellKnownGroup |
| Authenticated Users | S-1-5-11 | SidTypeWellKnownGroup |
| Restricted | S-1-5-12 | SidTypeWellKnownGroup |
| Terminal Server User | S-1-5-13 | SidTypeWellKnownGroup |
| Remote Interactive Logon | S-1-5-14 | SidTypeWellKnownGroup |
| This Organization | S-1-5-15 | SidTypeWellKnownGroup |
| System | S-1-5-18 | SidTypeWellKnownGroup |
| Local Service | S-1-5-19 | SidTypeWellKnownGroup |
| Network Service | S-1-5-20 | SidTypeWellKnownGroup |
| Write Restricted | S-1-5-33 | SidTypeWellKnownGroup |
| Other Organization | S-1-5-1000 | SidTypeWellKnownGroup |

For Windows behavior on the preceding entries, see the following citation.<18>

**Domain NetBIOS Name: Builtin**

**Domain SID: S-1-5-32**

| Security Principal Name | Security Principal SID | Security Principal Type |
| --- | --- | --- |
| Builtin | S-1-5-32 | SidTypeDomain |

**Domain NetBIOS Name: Internet$**

**Domain SID: S-1-7**

| Security Principal Name | Security Principal SID | Security Principal Type |
| --- | --- | --- |
| Internet$ | S-1-7 | SidTypeDomain |

**Domain NetBIOS Name: NT Authority**

**Domain SID: S-1-5-64**

| Security Principal Name | Security Principal SID | Security Principal Type |
| --- | --- | --- |
| NTLM Authentication | S-1-5-64-10 | SidTypeWellKnownGroup |
| Digest Authentication | S-1-5-64-21 | SidTypeWellKnownGroup |
| Channel Authentication | S-1-5-64-14 | SidTypeWellKnownGroup |

For Windows behavior on the preceding entries, see the following citation.<19>

**Domain NetBIOS Name: Mandatory Label**

**Domain SID: S-1-16**

| Security Principal Name | Security Principal SID | Security Principal Type |
| --- | --- | --- |
| Mandatory Label | S-1-16 | SidTypeDomain |
| Untrusted Mandatory Level | S-1-16-0 | SidTypeLabel |
| Low Mandatory Level | S-1-16-4096 | SidTypeLabel |
| Medium Mandatory Level | S-1-16-8192 | SidTypeLabel |
| High Mandatory Level | S-1-16-12288 | SidTypeLabel |
| System Mandatory Level | S-1-16-16384 | SidTypeLabel |
| Protected Process Mandatory Level | S-1-16-20480 | SidTypeLabel |

For Windows behavior on the preceding entries, see the following citation.<20>

<a id="Section_3.1.1.1.2"></a>
##### 3.1.1.1.2 Configurable Translation Database and Corresponding View

The Configurable Translation Database is a general purpose database for translation between [**security principal**](#gt_security-principal) names and their corresponding [**SIDs**](#gt_security-identifier-sid). The Configurable Translation Database columns are the same as the Predefined Translation Database columns, and the view construction is the same. This database SHOULD be constructed using the abstract data model specified in [MS-SCMR](../MS-SCMR/MS-SCMR.md) section 3.1.1. There MUST be one row for the "NT SERVICE" [**domain**](#gt_domain), as defined in the following table. There MUST be one row per service definition. The mapping rules are defined as follows:

- For all these entries: Domain DNS Name, Additional Security Principal Name, User Principal Name, Default User Principal Names, and Security Principal SID, the History columns are left empty.
- For the "NT SERVICE" domain entry, the mapping rules are defined as follows:
- Security Principal Name is “NT SERVICE”
- Service Principal SID is S-1-5-80
- Security Principal Type is SidTypeDomain
- For each service definition entry, the mapping rules are defined as follows:
- Security Principal Name is mapped from the **ServiceName** in [MS-SCMR] section 3.1.1.
- Security Principal SID is mapped from the **ServiceName** in [MS-SCMR] section 3.1.1 using the following method:
- Convert the **ServiceName** field to the uppercase, UTF-16 representation.
- Take the SHA1 hash of the name:
- Hash[0] denoting the first 4 bytes of the resulting hash as an unsigned integer.
- Hash[1] denoting the second 4 bytes of the resulting hash as an unsigned integer.
- And so on.
- Create the SID using the following mapping:
- S-1-5-80-hash[0]-hash[1]-hash[2]-hash[3]-hash[4]
- Security Principal Type is mapped to SidTypeWellKnownGroup.
The following table shows two columns in the Configurable Translation Database and Corresponding View as an example with the NT Service Domain and Service Name 'ALG'.

**Domain NetBIOS Name: NT SERVICE**

**Domain SID: S-1-5-80**

| **Security Principal Name** | **Security Principal SID** | **Security Principal Type** |
| --- | --- | --- |
| NT SERVICE | S-1-5-80 | SidTypeDomain |
| ALG | S-1-5-80-2387347252-3645287876-2469496166-3824418187-3586569773 | SidTypeWellKnownGroup |

<a id="Section_3.1.1.1.3"></a>
##### 3.1.1.1.3 Builtin Domain Principal View

To construct the Builtin Domain Principal View, the following columns from the associated [**domain database**](#gt_domain-database) MUST be used:

- sAMAccountName
- sAMAccountType
- objectSID
All objects that satisfy the following criteria MUST be part of this view:

- All three columns in the preceding list MUST have values.
- The value of the objectSID attribute MUST contain S-1-5-32 as its prefix.
The columns of such objects MUST be used to construct the Builtin Domain Principal View in the following manner:

- Domain DNS Name, Additional Security Principal Name, User Principal Name, Default User Principal Names, and Security Principal SID History columns are left empty.
- Security Principal SID is mapped from objectSID.
- Security Principal Name is mapped from sAMAccountName.
- Security Principal Type is mapped from sAMAccountType by using the following table.
| Bit Range | Field | Description |
| --- | --- | --- |
| Variable | 0x3 | SidTypeUser |
| Variable | 0x1 | SidTypeGroup |
| Variable | 0x4 or 0x2: These values are treated identically by the protocol. | SidTypeAlias |
| Variable | Otherwise | SidTypeUnknown |

- Domain NetBIOS Name and Domain SID are mapped from the row of the Predefined Translation Database View whose [**security principal**](#gt_security-principal) [**SID**](#gt_security-identifier-sid) is S-1-5-32.
The following is an example of how this view is created:

- An object that represents the administrators group.
| Column | Value |
| --- | --- |
| sAMAccountName | Administrators |
| sAMAccountType | 0x20000000 |
| objectSID | S-1-5-32-544 |

- The view created for that object.
| Column | Value |
| --- | --- |
| Domain DNS Name | - |
| Domain NetBIOS Name | Builtin |
| Domain SID | S-1-5-32 |
| Security Principal Name | Administrators |
| Additional Security Principal Name | - |
| Default User Principal Names | - |
| User Principal Name | - |
| Security Principal SID | S-1-5-32-544 |
| Security Principal SID History | - |
| Security Principal Type | SidTypeAlias |

<a id="Section_3.1.1.1.4"></a>
##### 3.1.1.1.4 Account Domain Principal View

To construct the Account Domain Principal View, the following columns from the associated [**domain database**](#gt_domain-database) MUST be used:

- sAMAccountName
- sAMAccountType
- objectSID
All objects that satisfy the following criteria MUST be part of this view:

- All three columns above have values.
- The value of the objectSID attribute does not contain S-1-5-32 as the prefix.
The following columns of such objects MUST be used to construct the Account Domain Principal View in the following manner:

- The Additional Security Principal Name, User Principal Name, and Security Principal SID History columns are left empty.
- Security Principal SID is mapped from objectSID.
- Security Principal Name is mapped from sAMAccountName.
- Security Principal Type is mapped from sAMAccountType by using the mapping rule explained in the Builtin Domain Principal View (section [3.1.1.1.3](#Section_3.1.1.1.3)).
- Domain NetBIOS Name, Domain DNS Name, and Domain SID are mapped from Domain Database Information, as specified in section [3.1.1.2](#Section_3.1.1.2).
- Default User Principal Names is constructed using the following rules:
- If Domain DNS Name is not empty, concatenate sAMAccountName with Domain DNS Name, separated by an @ sign.
- And if the domain database used is an [**Active Directory**](#gt_active-directory) [**domain**](#gt_domain), concatenate sAMAccountName with Domain NetBIOS Name, separated by an @ sign.
The following is an example of how this view is created:

- An object that represents the administrator user on an Active Directory domain database.
| Column | Value |
| --- | --- |
| sAMAccountName | Administrator |
| sAMAccountType | 0x30000000 |
| objectSID | S-1-5-21-397955417-626881126-188441444-500 |

- The Domain Database Information for that Active Directory domain database.
| Column | Value |
| --- | --- |
| Domain DNS Name | Corp.example.com |
| Domain NetBIOS Name | Corp |
| Domain SID | S-1-5-21-397955417-626881126-188441444 |

- The view created for the administrator object.
| Column | Value |
| --- | --- |
| Domain DNS Name | Corp.example.com |
| Domain NetBIOS Name | Corp |
| Domain SID | S-1-5-21-397955417-626881126-188441444 |
| Security Principal Name | Administrator |
| Additional Security Principal Name | - |
| Default User Principal Names | administrator@corp administrator@corp.example.com |
| User Principal Name | - |
| Security Principal SID | S-1-5-21-397955417-626881126-188441444-500 |
| Security Principal SID History | - |
| Security Principal Type | SidTypeUser |

<a id="Section_3.1.1.1.5"></a>
##### 3.1.1.1.5 Account Domain Information View

The Account Domain Information View of a [**domain database**](#gt_domain-database) contains one row. This view MUST be constructed using the [Domain Database Information (section 3.1.1.2)](#Section_3.1.1.2) of that domain database, and the following mapping:

- User Principal Name, Default User Principal Names, and Security Principal SID History columns are left empty.
- Domain NetBIOS Name, Domain DNS Name, and Domain SID are mapped from Domain Database Information.
- Security Principal SID is the same as Domain SID.
- Security Principal Name is the same as Domain NetBIOS Name.
- Additional Security Principal Name is the same as Domain DNS Name.
- Security Principal Type is SidTypeDomain.
The following example shows how this row might appear on a non–[**domain controller**](#gt_domain-controller-dc):

- Domain Database Information for a machine.
| Column | Value |
| --- | --- |
| Domain DNS Name | - |
| Domain NetBIOS Name | My-machine |
| Domain SID | S-1-5-21-841930733-165634207-2980115662 |

- The row created for the local Account Domain object.
| Column | Value |
| --- | --- |
| Domain DNS Name | - |
| Domain NetBIOS Name | My-Machine |
| Domain SID | S-1-5-21-841930733-165634207-2980115662 |
| Security Principal Name | My-Machine |
| Additional Security Principal Name | - |
| Default User Principal Names | - |
| User Principal Name | - |
| Security Principal SID | S-1-5-21-841930733-165634207-2980115662 |
| Security Principal SID History | - |
| Security Principal Type | SidTypeDomain |

The following example shows how this row is created for an [**Active Directory**](#gt_active-directory) [**domain**](#gt_domain):

- Domain Database Information for an Active Directory domain.
| Column | Value |
| --- | --- |
| Domain DNS Name | Corp.example.com |
| Domain NetBIOS Name | Corp |
| Domain SID | S-1-5-21-397955417-626881126-188441444 |

- The row created.
| Column | Value |
| --- | --- |
| Domain DNS Name | Corp.example.com |
| Domain NetBIOS Name | Corp |
| Domain SID | S-1-5-21-397955417-626881126-188441444 |
| Security Principal Name | Corp |
| Additional Security Principal Name | Corp.example.com |
| Default User Principal Names | - |
| User Principal Name | - |
| Security Principal SID | S-1-5-21-397955417-626881126-188441444 |
| Security Principal SID History | - |
| Security Principal Type | SidTypeDomain |

<a id="Section_3.1.1.1.6"></a>
##### 3.1.1.1.6 Account Domain View

This view for a given [**domain database**](#gt_domain-database) is a union of Account Domain Information View and Account Domain Principal View of that account database.

<a id="Section_3.1.1.1.7"></a>
##### 3.1.1.1.7 Forest Principal View

To construct the Forest Principal View for a given [**forest**](#gt_forest), the following columns from a union of all [**domain naming contexts (NCs)**](#gt_40a58fa4-953e-4cf3-96c8-57dba60237ef) in the forest MUST be used.

- sAMAccountName
- userPrincipalName
- objectSID
- sidHistory
- sAMAccountType
All objects that satisfy the following criteria MUST be part of this view:

- The sAMAccountName, objectSID, and sAMAccountType attributes have values.
- The value of the objectSID attribute does not contain S-1-5-32 as the prefix.
The following columns MUST be used to construct the Forest Principal View in the following manner:

- User Principal Name is obtained from userPrincipalName.
- Security Principal SID History is obtained from sidHistory.
- Security Principal SID is obtained from objectSID.
- Security Principal Name is obtained from sAMAccountName.
- Additional Security Principal Name is empty.
- Security Principal Type is mapped from sAMAccountType by using the rule explained in the Builtin Domain Principal View section ([3.1.1.1.3](#Section_3.1.1.1.3)).
- Domain NetBIOS Name, Domain DNS Name, and Domain SID are mapped from Domain Database Information for the [**domain**](#gt_domain) that the object is in.
- Default User Principal Names is constructed using the following rules:
- Concatenate sAMAccountName with Domain DNS Name, separated by an @ sign.
- Concatenate sAMAccountName with Domain NetBIOS Name, separated by an @ sign.
The following example shows how this view is created:

- An object that represents the "someone" user on a [**domain controller**](#gt_domain-controller-dc).
| Column | Value |
| --- | --- |
| sAMAccountName | someone |
| userPrincipalName | someone@example.com |
| objectSID | S-1-5-21-397955417-626881126-188441444-1555 |
| sidHistory | S-1-5-21-1234567890-123456789-456789012-2045 S-1-5-21-7890123456-345678-459012-34524 |
| sAMAccountType | 0x30000000 |

- Domain Database Information for that domain.
| Column | Value |
| --- | --- |
| Domain DNS Name | Corp.example.com |
| Domain NetBIOS Name | Corp |
| Domain SID | S-1-5-21-397955417-626881126-188441444 |

- The view created for the [**security principal**](#gt_security-principal).
| Column | Value |
| --- | --- |
| Domain DNS Name | Corp.example.com |
| Domain NetBIOS Name | Corp |
| Domain SID | S-1-5-21-397955417-626881126-188441444 |
| Security Principal Name | someone |
| Additional Security Principal Name | - |
| Default User Principal Names | someone@corp someone@corp.example.com |
| User Principal Name | someone@example.com |
| Security Principal SID | S-1-5-21-397955417-626881126-188441444-1555 |
| Security Principal SID History | S-1-5-21-1234567890-123456789-456789012-2045 S-1-5-21-7890123456-345678-459012-34524 |
| Security Principal Type | SidTypeUser |

<a id="Section_3.1.1.1.8"></a>
##### 3.1.1.1.8 Forest Information View

The Forest Information View of a [**forest**](#gt_forest) is a union of Account Domain Information Views of all [**domains**](#gt_domain) in that forest.

<a id="Section_3.1.1.1.9"></a>
##### 3.1.1.1.9 Forest View

This view for a given [**forest**](#gt_forest) is a union of Forest Information View and Forest Principal View for that forest.

<a id="Section_3.1.1.2"></a>
#### 3.1.1.2 Domain Database Information

Domain database information MUST consist of the following conceptual fields:

- **Domain DNS Name**: A Unicode string that contains the [**DNS name**](#gt_dns-name) of the [**domain database**](#gt_domain-database).
- **Domain NetBIOS Name**: A Unicode string that contains the NetBIOS name of the domain database.
- **Domain SID**: The [**SID**](#gt_security-identifier-sid) of the domain database.
When the domain database is an [**Active Directory**](#gt_active-directory) domain database, this information MUST be populated from DNS Domain Information, as specified in [MS-LSAD](../MS-LSAD/MS-LSAD.md) section 3.1.1.1.

Otherwise, this information MUST be populated from the Account Domain Information, as specified in [MS-LSAD] section 3.1.1.1. In this case, **Domain DNS Name** MUST be set to empty.

<a id="Section_3.1.1.3"></a>
#### 3.1.1.3 Trusted Domains and Forests Information

The Local Security Authority (LSA) Domain Policy database, as specified in [MS-LSAD](../MS-LSAD/MS-LSAD.md), contains [**trust**](#gt_trust) information for a given [**domain**](#gt_domain) and [**forest**](#gt_forest). Of all the information that it manages for trusts, only the following conceptual columns are of interest to this protocol:

- **Trusted Domain DNS Name**: The [**DNS name**](#gt_dns-name) of the [**trusted domain**](#gt_trusted-domain).
- **Trusted Domain NetBIOS Name**: The NetBIOS name of the same domain.
- **Domain SID**: The [**SID**](#gt_security-identifier-sid) of the same domain.
- **Trust Direction**: Indicates whether the trust is inbound, outbound, or both.
- **Trust Type**: Type of the trust.
- **Trust Attributes**: Additional characteristics of the trust.
- **Forest Trust Information**: Attributes of this trust as it pertains to the forest.
In the [**Active Directory**](#gt_active-directory), **Trusted Domain DNS Name** is stored in the trustPartner attribute, **Trusted Domain NetBIOS Name** in flatName, **Trust Direction** in trustDirection, **Trust Type** in trustType, **Trust Attributes** in trustAttributes as a bitmask, and **Forest Trust Information** in msDs-trustForestTrustInfo.

Trust information that satisfies the following criteria MUST be used by this protocol:

- Trust Type is a Windows trust, which means that the trusted party is a Windows domain, as specified in [MS-LSAD]. A Windows trust is represented by a value of 0x0000002 in the trustType attribute. **Trust Attributes** can declare a trust to be a [**forest trust**](#gt_forest-trust) by having the 0x00000008 bit set in the trustAttributes attribute, as specified in [MS-LSAD]. For more information, see [MS-ADSC](../MS-ADSC/MS-ADSC.md), [MS-ADA1](../MS-ADA1/MS-ADA1.md), [MS-ADA2](../MS-ADA2/MS-ADA2.md), and [MS-ADA3](../MS-ADA3/MS-ADA3.md).
- Trust Direction is outbound or bidirectional, as specified in [MS-LSAD].
The NetBIOS and DNS names of the trusted domain can be used to locate a [**domain NC**](#gt_domain-naming-context-domain-nc) "replica" for that domain by using a [**domain controller**](#gt_domain-controller-dc) locator algorithm, an example of which is described in [MS-ADOD](../MS-ADOD/MS-ADOD.md) sections 2.7.7.3.1 and 3.1.1.

The [**trust attributes**](#gt_trust-attributes) declare the trust to be a forest trust, as specified in [MS-LSAD] section 3.1.1.5, if and only if the following conditions are met:

- The trusted domain information satisfies the preceding criteria.
- The trusted domain information is in the [**root domain**](#gt_root-domain) of the forest.
If the trust attributes declare the trust to be a forest trust, the Forest Trust Information column contains information about the [**trusted forest**](#gt_trusted-forest). Specifically, this information consists of a [**domain name**](#gt_domain-name), a domain DNS name, and the domain SID of all domains in the forest, as well as top-level names, including [**UPN**](#gt_user-principal-name-upn) suffixes for user principal names, as specified in [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 6.1.6 and [MS-LSAD] section 3.1.1.5.

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

No protocol timers are required other than the internal ones used in [**RPC**](#gt_remote-procedure-call-rpc) to implement resiliency to network outages, as specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md).

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

The server MUST start listening on the well-known named pipe for the [**RPC**](#gt_remote-procedure-call-rpc) interface, as specified in section [2.1](#Section_2.1). The server SHOULD register the RPC interface to listen over TCP/IP.

<a id="Section_3.1.4"></a>
### 3.1.4 Message Processing Events and Sequencing Rules

This section specifies the methods for this protocol, in addition to their processing rules.<21><22>

This protocol contains some methods with parameters that have no effect on message processing in any environment. These are called out as "ignored".

**Note** This protocol shares an interface with the Local Security Authority (Domain Policy) Remote Protocol, as specified in [MS-LSAD](../MS-LSAD/MS-LSAD.md).

Methods in RPC Opnum Order

| Method | Description |
| --- | --- |
| [LsarClose](#Section_3.1.4.3) | Frees the resources held by a context handle. Opnum: 0 |
| Opnum1NotUsedOnWire | Opnum: 1 |
| Lsar_LSA_DP_2 | Opnum: 2 |
| Lsar_LSA_DP_3 | Opnum: 3 |
| Lsar_LSA_DP_4 | Opnum: 4 |
| Opnum5NotUsedOnWire | Opnum: 5 |
| [LsarOpenPolicy](#Section_3.1.4.2) | Opens a context handle to the [**RPC server**](#gt_rpc-server). Opnum: 6 |
| Lsar_LSA_DP_7 | Opnum: 7 |
| Lsar_LSA_DP_8 | Opnum: 8 |
| Opnum9NotUsedOnWire | Opnum: 9 |
| Lsar_LSA_DP_10 | Opnum: 10 |
| Lsar_LSA_DP_11 | Opnum: 11 |
| Lsar_LSA_DP_12 | Opnum: 12 |
| Lsar_LSA_DP_13 | Opnum: 13 |
| [LsarLookupNames](#Section_3.1.4.8) | Translates a batch of [**security principal**](#gt_security-principal) names. For information on selecting which version to use, see section [3](#Section_3). Opnum: 14 |
| [LsarLookupSids](#Section_3.1.4.11) | Translates a batch of security principal [**SIDs**](#gt_security-identifier-sid). For information on selecting which version to use, see section 3. Opnum: 15 |
| Lsar_LSA_DP_16 | Opnum: 16 |
| Lsar_LSA_DP_17 | Opnum: 17 |
| Lsar_LSA_DP_18 | Opnum: 18 |
| Lsar_LSA_DP_19 | Opnum: 19 |
| Lsar_LSA_DP_20 | Opnum: 20 |
| Opnum21NotUsedOnWire | Opnum: 21 |
| Opnum22NotUsedOnWire | Opnum: 22 |
| Lsar_LSA_DP_23 | Opnum: 23 |
| Lsar_LSA_DP_24 | Opnum: 24 |
| Lsar_LSA_DP_25 | Opnum: 25 |
| Lsar_LSA_DP_26 | Opnum: 26 |
| Lsar_LSA_DP_27 | Opnum: 27 |
| Lsar_LSA_DP_28 | Opnum: 28 |
| Lsar_LSA_DP_29 | Opnum: 29 |
| Lsar_LSA_DP_30 | Opnum: 30 |
| Lsar_LSA_DP_31 | Opnum: 31 |
| Lsar_LSA_DP_32 | Opnum: 32 |
| Lsar_LSA_DP_33 | Opnum: 33 |
| Lsar_LSA_DP_34 | Opnum: 34 |
| Lsar_LSA_DP_35 | Opnum: 35 |
| Lsar_LSA_DP_36 | Opnum: 36 |
| Lsar_LSA_DP_37 | Opnum: 37 |
| Lsar_LSA_DP_38 | Opnum: 38 |
| Lsar_LSA_DP_39 | Opnum: 39 |
| Lsar_LSA_DP_40 | Opnum: 40 |
| Lsar_LSA_DP_41 | Opnum: 41 |
| Lsar_LSA_DP_42 | Opnum: 42 |
| Lsar_LSA_DP_43 | Opnum: 43 |
| [LsarOpenPolicy2](#Section_3.1.4.1) | Opens a context handle to the RPC server. Opnum: 44 |
| [LsarGetUserName](#Section_3.1.4.4) | Returns the name and the [**domain name**](#gt_domain-name) of a security principal. Opnum: 45 |
| Lsar_LSA_DP_46 | Opnum: 46 |
| Lsar_LSA_DP_47 | Opnum: 47 |
| Lsar_LSA_DP_48 | Opnum: 48 |
| Lsar_LSA_DP_49 | Opnum: 49 |
| Lsar_LSA_DP_50 | Opnum: 50 |
| Lsar_LSA_DP_51 | Opnum: 51 |
| Opnum52NotUsedOnWire | Opnum: 52 |
| Lsar_LSA_DP_53 | Opnum: 53 |
| Lsar_LSA_DP_54 | Opnum: 54 |
| Lsar_LSA_DP_55 | Opnum: 55 |
| Opnum56NotUsedOnWire | Opnum: 56 |
| [LsarLookupSids2](#Section_3.1.4.10) | Translates a batch of security principal SIDs. For information on selecting which version to use, see section 3. Opnum: 57 |
| [LsarLookupNames2](#Section_3.1.4.7) | Translates a batch of security principal names. For information on selecting which version to use, see section 3. Opnum: 58 |
| Lsar_LSA_DP_59 | Opnum: 59 |
| Opnum60NotUsedOnWire | Opnum: 60 |
| Opnum61NotUsedOnWire | Opnum: 61 |
| Opnum62NotUsedOnWire | Opnum: 62 |
| Opnum63NotUsedOnWire | Opnum: 63 |
| Opnum64NotUsedOnWire | Opnum: 64 |
| Opnum65NotUsedOnWire | Opnum: 65 |
| Opnum66NotUsedOnWire | Opnum: 66 |
| Opnum67NotUsedOnWire | Opnum: 67 |
| [LsarLookupNames3](#Section_3.1.4.6) | Translates a batch of security principal names. For information on selecting which version to use, see section 3. Opnum: 68 |
| Opnum69NotUsedOnWire | Opnum: 69 |
| Opnum70NotUsedOnWire | Opnum: 70 |
| Opnum71NotUsedOnWire | Opnum: 71 |
| Opnum72NotUsedOnWire | Opnum: 72 |
| Lsar_LSA_DP_73 | Opnum: 73 |
| Lsar_LSA_DP_74 | Opnum: 74 |
| Opnum75NotUsedOnWire | Opnum: 75 |
| LsarLookupSids3 | Translates a batch of security principal SIDs. For information on selecting which version to use, see section 3. Opnum: 76 |
| [LsarLookupNames4](#Section_3.1.4.5) | Translates a batch of security principal names. For information on selecting which version to use, see section 3. Opnum: 77 |

**Note** Gaps in the [**opnum**](#gt_opnum) numbering sequence represent opnums of methods that are documented in [MS-LSAD], or opnums that MUST NOT<23> be used over the wire.

No exceptions SHOULD be thrown beyond those thrown by the underlying [**RPC**](#gt_remote-procedure-call-rpc) protocol [MS-RPCE](../MS-RPCE/MS-RPCE.md).

The return values of all methods MUST conform to the specification of NTSTATUS, as specified in [MS-ERREF](../MS-ERREF/MS-ERREF.md) section 2.3. Specific return values for normative processing conditions are specified in this document in the subsections of this section.

Unless otherwise specified, all negative values returned by an implementation are treated equivalently by the client as a message processing error. Unless otherwise specified, all non-negative values returned by an implementation are treated equivalently by the client as a success (of message processing).

Return values for implementation-specific conditions are left to the implementer's discretion, subject to the constraints specified in [MS-ERREF]. For example, an implementation can re-use an existing value in [MS-ERREF], such as 0xC0000017 (no memory).

The RPC methods shown in the following sections are organized in the following order:

- Methods that allow a client to open and close a connection.
- Methods that translate given names to SIDs.
- Methods that translate SIDs to names.
<a id="Section_3.1.4.1"></a>
#### 3.1.4.1 LsarOpenPolicy2 (Opnum 44)

The LsarOpenPolicy2 method opens a context handle to the [**RPC server**](#gt_rpc-server).

NTSTATUS LsarOpenPolicy2(

[in, unique, string] wchar_t* SystemName,

[in] PLSAPR_OBJECT_ATTRIBUTES ObjectAttributes,

[in] ACCESS_MASK DesiredAccess,

[out] LSAPR_HANDLE* PolicyHandle

);

Processing rules for this message are defined in [MS-LSAD](../MS-LSAD/MS-LSAD.md) section 3.1.4.4.1.

<a id="Section_3.1.4.2"></a>
#### 3.1.4.2 LsarOpenPolicy (Opnum 6)

The LsarOpenPolicy method is exactly the same as [LsarOpenPolicy2](../MS-RPCE/MS-RPCE.md), except that the *SystemName* parameter in this method contains only one character instead of a full string. This is because its syntactical definition lacks the [string] [**RPC**](#gt_remote-procedure-call-rpc) annotation present in LsarOpenPolicy2, as specified in [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824). RPC data types are specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 2.2.4.1.

The *SystemName* parameter has no effect on message processing in any environment. It MUST be ignored.

NTSTATUS LsarOpenPolicy(

[in, unique] wchar_t* SystemName,

[in] PLSAPR_OBJECT_ATTRIBUTES ObjectAttributes,

[in] ACCESS_MASK DesiredAccess,

[out] LSAPR_HANDLE* PolicyHandle

);

Processing rules for this message are defined in [MS-LSAD](../MS-LSAD/MS-LSAD.md) section 3.1.4.4.2.

<a id="Section_3.1.4.3"></a>
#### 3.1.4.3 LsarClose (Opnum 0)

The LsarClose method frees the resources held by a context handle that was opened earlier. After response, the context handle is no longer usable, and any subsequent uses of this handle MUST fail.

NTSTATUS LsarClose(

[in, out] LSAPR_HANDLE* ObjectHandle

);

Processing rules for this message are defined in [MS-LSAD](../MS-LSAD/MS-LSAD.md) section 3.1.4.9.4.

<a id="Section_3.1.4.4"></a>
#### 3.1.4.4 LsarGetUserName (Opnum 45)

The LsarGetUserName method returns the name and the [**domain name**](#gt_domain-name) of the [**security principal**](#gt_security-principal) that is invoking the method.

NTSTATUS LsarGetUserName(

[in, unique, string] wchar_t* SystemName,

[in, out] PRPC_UNICODE_STRING* UserName,

[in, out, unique] PRPC_UNICODE_STRING* DomainName

);

**SystemName:** This parameter has no effect on message processing in any environment. It MUST be ignored.

**UserName:** On return, contains the name of the security principal that is making the call. The string MUST be of the form sAMAccountName. On input, this parameter MUST be ignored. The RPC_UNICODE_STRING structure is defined in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.10.

**DomainName:** On return, contains the domain name of the security principal that is invoking the method. This string MUST be a NetBIOS name. On input, this parameter MUST be ignored.

**Return Values:** The following table contains a summary of the return values that an implementation MUST return, as specified by the message processing shown after the table.

| Return value/code | Description |
| --- | --- |
| 0x00000000 STATUS_SUCCESS | The request was successfully completed. |
| 0xC0000022 STATUS_ACCESS_DENIED | The caller does not have the permissions to perform this operation. |

The server MUST determine the [**SID**](#gt_security-identifier-sid) of the caller; to do so, the server MUST invoke the GetRpcImpersonationAccessToken abstract interface ([MS-RPCE](../MS-RPCE/MS-RPCE.md) section 3.3.3.4.3.1).

If GetRpcImpersonationAccessToken succeeds, the server MUST use the SID in the Token.Sids[OwnerIndex] element ([MS-DTYP] section 2.5.2) for further processing.

If GetRpcImpersonationAccessToken fails, the server MUST use the ANONYMOUS SID ([MS-DTYP] section 2.4.2.4) for further processing.

The server MUST locate the security principal that is making the request using the SID that was determined previously. To do so, a search MUST be performed in the following views and MUST end as soon as the security principal is located in some view:

- Predefined Translation View.
- Configurable Translation View.
- Account Domain View of the account database served on that machine.
- If the machine is not joined to a [**domain**](#gt_domain), the search ends here.
- If this machine is not a [**domain controller**](#gt_domain-controller-dc): Account Domain View of the domain to which this machine is joined.
- Forest View of the [**forest**](#gt_forest) of the domain to which this machine is joined.
- Forest Views of [**trusted forests**](#gt_trusted-forest) for the forest of the domain to which this machine is joined.
- Account Domain Views of externally [**trusted domains**](#gt_trusted-domain) for the domain to which this machine is joined.
After the security principal is located, the [**RPC server**](#gt_rpc-server) MUST return the security principal name in the *UserName* parameter and MUST return the domain NetBIOS name in the *DomainName* parameter if *DomainName* is not NULL. The return value MUST be set to STATUS_SUCCESS in this case. In other cases, an implementation-specific negative value MUST be returned.

<a id="Section_3.1.4.5"></a>
#### 3.1.4.5 LsarLookupNames4 (Opnum 77)

The LsarLookupNames4 method translates a batch of [**security principal**](#gt_security-principal) names to their [**SID**](#gt_security-identifier-sid) form. It also returns the [**domains**](#gt_domain) of which these security principals are a part.

NTSTATUS LsarLookupNames4(

[in] handle_t RpcHandle,

[in, range(0,1000)] unsigned long Count,

[in, size_is(Count)] PRPC_UNICODE_STRING Names,

[out] PLSAPR_REFERENCED_DOMAIN_LIST* ReferencedDomains,

[in, out] PLSAPR_TRANSLATED_SIDS_EX2 TranslatedSids,

[in] LSAP_LOOKUP_LEVEL LookupLevel,

[in, out] unsigned long* MappedCount,

[in] unsigned long LookupOptions,

[in] unsigned long ClientRevision

);

**RpcHandle:** This value is used by [**RPC**](#gt_remote-procedure-call-rpc) internally and is not transmitted over the network, as specified in [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824). This handle can be obtained by calling RPC runtime binding routines. For more information, see [[MSDN-RPCDB]](https://go.microsoft.com/fwlink/?LinkId=90076).

**Count:** Number of security principal names to look up.<24>

**Names:** Contains the security principal names to translate. The RPC_UNICODE_STRING structure is defined in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.10.

The following name forms MUST be supported:

- [**User principal names (UPNs)**](#gt_user-principal-name-upn), such as user_name@example.example.com.
- Fully qualified account names based on either DNS or NetBIOS names. For example: example.example.com\user_name or example\user_name, where the generalized form is domain\user account name, and domain is either the fully qualified [**DNS name**](#gt_dns-name) or the NetBIOS name of the [**trusted domain**](#gt_trusted-domain).
- Unqualified or isolated names, such as user_name.
The comparisons used by the [**RPC server**](#gt_rpc-server) MUST NOT be case-sensitive, so case for inputs is not important.

**ReferencedDomains:** On successful return, contains the domain information for the domain to which each security principal belongs. The domain information includes a NetBIOS domain name and a domain SID for each entry in the list.

**TranslatedSids:** On successful return, contains the corresponding SID form for security principal names in the *Names* parameter. It MUST be ignored on input.

**LookupLevel:** Specifies what scopes are to be used during translation, as specified in section [2.2.16](#Section_2.2.16).

**MappedCount:** On successful return, contains the number of names that are translated completely to the SID form. This parameter is left as an input parameter for backward compatibility and has no effect on message processing in any environment. It MUST be ignored on input.

**LookupOptions:** Flags specified by the caller that control the lookup operation. The value MUST be one of the following.

| Value | Meaning |
| --- | --- |
| 0x00000000 | Isolated names are searched for even when they are not on the local computer. |
| 0x80000000 | Isolated names (except for user principal names (UPNs)) are searched for only on the local account database. UPNs are not searched for in any of the views. |

**ClientRevision:** Version of the client, which implies the client's capabilities. The value MUST be one of the following.<25>

| Value | Meaning |
| --- | --- |
| 0x00000001 | The client does not understand DNS domain names and is not aware that it might be part of a [**forest**](#gt_forest). |
| 0x00000002 | The client understands DNS domain names and is aware that it might be part of a forest. Error codes returned can include STATUS_TRUSTED_DOMAIN_FAILURE and STATUS_TRUSTED_RELATIONSHIP_FAILURE, which are not returned for *ClientRevision* of 0x00000001. For more information on error codes, see [MS-ERREF](../MS-ERREF/MS-ERREF.md). |

Values smaller than 0x00000002 SHOULD be assumed to be 0x00000001, and other values SHOULD be assumed to be 0x00000002.

**Return Values:** The following table contains a summary of the return values that an implementation MUST return, as specified by the message processing shown after the table.

| Return value/code | Description |
| --- | --- |
| 0x00000000 STATUS_SUCCESS | The request was successfully completed. |
| 0x00000107 STATUS_SOME_NOT_MAPPED | Some of the information to be translated has not been translated. |
| 0xC00000DC STATUS_INVALID_SERVER_STATE | The RPC server is not a [**domain controller**](#gt_domain-controller-dc). |
| 0xC0000022 STATUS_ACCESS_DENIED | The caller does not have the permissions to perform this operation. |
| 0xC000000D STATUS_INVALID_PARAMETER | One of the supplied parameters was invalid. |
| 0xC0000073 STATUS_NONE_MAPPED | None of the information to be translated has been translated. |

This message is valid only if the RPC server is a domain controller. The RPC server MUST return STATUS_INVALID_SERVER_STATE in the return value if it is not a domain controller.

The RPC server MUST ensure that one of the following conditions is true:

- The RPC_C_AUTHN_NETLOGON security provider (as specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 2.2.1.1.7) and at least RPC_C_AUTHN_LEVEL_PKT_INTEGRITY authentication level (as specified in [MS-RPCE] section 2.2.1.1.8) are used in this RPC message.
- The RPC client token contains one of the following well-known SID types - DOMAIN_GROUP_RID_COMPUTERS, DOMAIN_GROUP_RID_CONTROLLERS, DOMAIN_GROUP_RID_READONLY_CONTROLLERS (as specified in [MS-SAMR](../MS-SAMR/MS-SAMR.md) section 2.2.1.14).<26>
Otherwise, the RPC server MUST return STATUS_ACCESS_DENIED.

The RPC server MUST check each element in the *Names* parameter for validity, as described for the RPC_UNICODE_STRING structure in [MS-DTYP] section 2.3.10. If validation fails, the RPC server MUST return STATUS_INVALID_PARAMETER.

The *TranslatedSids* and *MappedCount* parameters are left as input parameters for backward compatibility and have no effect on message processing in any environment. They MUST be ignored on input.

*LookupOptions* MUST NOT contain 0x80000000 unless *LookupLevel* is LsapLookupWksta. If this fails, the RPC server MUST return STATUS_INVALID_PARAMETER.

A name is interchangeably called a "qualified" or "composite" name if the name has a backslash ('\') character in it. The string before the backslash is assumed to be the domain name, and the string after the backslash is the name to be resolved within that domain. If the name does not contain a backslash character, it is called an "isolated" name. An isolated name can be in single-label form, as in "John", or can be in user-principal-name form, as in "John@example.com".

The RPC server MUST match a name with a row in the view by using the following rules:

- If the name is a qualified name, the domain name MUST match the Domain NetBIOS Name column or Domain DNS Name column, and the name MUST match the Security Principal Name column. Note that there cannot be multiple matches in this case (see section [3.1.1.1](../MS-ADTS/MS-ADTS.md)). A domain name match against the Domain DNS Name column MUST NOT be performed if *ClientRevision* is 0x00000001 and the machine is joined to a mixed mode domain, as specified in [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 6.1.4.1.
- If the name is an isolated name:
- If in single-label form, the name MUST match the Security Principal Name column or the Additional Security Principal Name column.
- If there are multiple matches due to a search in multiple domains, which can happen in Forest Views, any one of the matches MAY be used to satisfy the request, as long as a consistent search order is followed.
- If in user principal name form, the name SHOULD<27> match the User Principal Name column or the Default User Principal Names column.
- If there are multiple matches on the User Principal Name attribute, the match MUST fail.
- If there is one match with User Principal Name and one match with Default User Principal Names, the match with the User Principal Name attribute MUST take precedence.
- There cannot be multiple Default User Principal Names matches; see section 3.1.1.1.
The search scope is defined by the *LookupLevel* parameter. The RPC server MUST search only the scopes that are defined by the *LookupLevel* parameter and MUST NOT return matches defined outside that scope. The scopes to search when processing this message are specified in section 2.2.16.

When a name is matched in the database, or when the domain name of a composite name is matched in the database, the *ReferencedDomains* parameter MUST be searched for an entry that is identical to the following: The **Name** field contains the value from the Domain NetBIOS Name column, and the **Sid** field contains the value from the Domain SID column. If there is no such entry, a new entry with the **Name** field containing the value of the Domain NetBIOS Name and the **Sid** field containing the value of the Domain SID MUST be created and added to the *ReferencedDomains* list.

Output parameters MUST be updated using the following information:

- For a successful search, the corresponding *TranslatedSids* entry MUST be updated as follows:
- Use: Security Principal Type column
- Sid: Security Principal SID column
- Flags:
- 0x00000001: If the search is not satisfied by matching against the Security Principal Name column. Also see the paragraph after step 3.
- 0x00000004: If the search is satisfied by a comparison that uses the view specified in section [3.1.1.1.2](#Section_3.1.1.1.2), Configurable Translation Database and Corresponding View. Also see the paragraph after step 3.
- DomainIndex: Index of the domain in the *ReferencedDomains* parameter.
- If a match cannot be found for a name, the corresponding *TranslatedSids* entry MUST be updated with:
- Use: SidTypeUnknown
- Sid: NULL
- Flags: 0x00000000 (also see the paragraph after step 3)
- DomainIndex: -1
- If a match cannot be found for a composite name, but the domain name within the composite name is found, the corresponding *TranslatedSids* entry MUST be updated with:
- Use: SidTypeUnknown
- Sid: NULL
- Flags: 0x00000000 (also see the following paragraph)
- DomainIndex: Index of the domain in the *ReferencedDomains* parameter.
In all preceding cases, the **Flags** field MUST contain 0x00000002 when:

- *LookupLevel* is LsapLookupWksta, LsapLookupPDC, LsapLookupGC, LsapLookupXForestReferral, or LsapLookupXForestResolve, and
- The IsDomainNameInTrustedForest algorithm defined in [MS-DRSR](../MS-DRSR/MS-DRSR.md) section 5.64.2 (Determining If a Name Is in a Trusted Forest), given the domain name, returns true, or the IsUPNInTrustedForest algorithm defined in [MS-DRSR] section 5.109, given the full name to be translated, returns true.
The return value MUST be set to STATUS_SUCCESS if all names are translated correctly.

If some names are translated correctly but some are not, the return value MUST be set to STATUS_SOME_NOT_MAPPED.

If none of the names are translated correctly, the return value SHOULD<28> be set to STATUS_NONE_MAPPED.

If *LookupLevel* is LsapLookupWksta, and the return code can be identified as an error value (that is, less than 0) other than STATUS_NONE_MAPPED, *ReferencedDomains* and the **Sids** field in the *TranslatedSids* structure MUST NOT be returned.

<a id="Section_3.1.4.6"></a>
#### 3.1.4.6 LsarLookupNames3 (Opnum 68)

The LsarLookupNames3 method translates a batch of [**security principal**](#gt_security-principal) names to their [**SID**](#gt_security-identifier-sid) form. It also returns the [**domains**](#gt_domain) that these names are a part of.<29>

NTSTATUS LsarLookupNames3(

[in] LSAPR_HANDLE PolicyHandle,

[in, range(0,1000)] unsigned long Count,

[in, size_is(Count)] PRPC_UNICODE_STRING Names,

[out] PLSAPR_REFERENCED_DOMAIN_LIST* ReferencedDomains,

[in, out] PLSAPR_TRANSLATED_SIDS_EX2 TranslatedSids,

[in] LSAP_LOOKUP_LEVEL LookupLevel,

[in, out] unsigned long* MappedCount,

[in] unsigned long LookupOptions,

[in] unsigned long ClientRevision

);

**PolicyHandle:** Context handle obtained by an [LsarOpenPolicy](#Section_3.1.4.2) or [LsarOpenPolicy2](#Section_3.1.4.1) call.

**Count:** Number of security principal names to look up.<30>

**Names:** Contains the security principal names to translate, as specified in section [3.1.4.5](#Section_3.1.4.5).

**ReferencedDomains:** On successful return, contains the domain information for the domain to which each security principal belongs. The domain information includes a NetBIOS domain name and a domain SID for each entry in the list.

**TranslatedSids:** On successful return, contains the corresponding SID forms for security principal names in the *Names* parameter. It MUST be ignored on input.

**LookupLevel:** Specifies what scopes are to be used during translation, as specified in section [2.2.16](#Section_2.2.16).

**MappedCount:** On successful return, contains the number of names that are translated completely to the SID form. This parameter has no effect on message processing in any environment. It MUST be ignored on input.

**LookupOptions:** Flags that control the lookup operation. For possible values and their meanings, see section 3.1.4.5.

**ClientRevision:** Version of the client, which implies the client's capabilities. For possible values and their meanings, see section 3.1.4.5.

**Return Values:** The following table contains a summary of the return values that an implementation MUST return, as specified by the message processing shown after the table.

| Return value/code | Description |
| --- | --- |
| 0x00000000 STATUS_SUCCESS | The request was successfully completed. |
| 0x00000107 STATUS_SOME_NOT_MAPPED | Some of the information to be translated has not been translated. |
| 0xC0000022 STATUS_ACCESS_DENIED | The caller does not have the permissions to perform this operation. |
| 0xC000000D STATUS_INVALID_PARAMETER | One of the supplied parameters was invalid. |
| 0xC0000073 STATUS_NONE_MAPPED | None of the information to be translated has been translated. |

The behavior required when receiving an LsarLookupNames3 message MUST be identical to that when receiving an LsarLookupNames4 message, with the following exceptions:

- This message is valid on non–[**domain controller**](#gt_domain-controller-dc) machines as well as domain controllers.
- The server MUST return STATUS_ACCESS_DENIED if neither of the following conditions are true:
- The RPC_C_AUTHN_NETLOGON security provider (as specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 2.2.1.1.7) and at least RPC_C_AUTHN_LEVEL_PKT_INTEGRITY authentication level (as specified in [MS-RPCE] section 2.2.1.1.8) were used in this [**RPC**](#gt_remote-procedure-call-rpc) message.
- The PolicyHandle was granted POLICY_LOOKUP_NAMES access.
<a id="Section_3.1.4.7"></a>
#### 3.1.4.7 LsarLookupNames2 (Opnum 58)

The LsarLookupNames2 method translates a batch of [**security principal**](#gt_security-principal) names to their [**SID**](#gt_security-identifier-sid) form. It also returns the [**domains**](#gt_domain) that these names are a part of.<31>

NTSTATUS LsarLookupNames2(

[in] LSAPR_HANDLE PolicyHandle,

[in, range(0,1000)] unsigned long Count,

[in, size_is(Count)] PRPC_UNICODE_STRING Names,

[out] PLSAPR_REFERENCED_DOMAIN_LIST* ReferencedDomains,

[in, out] PLSAPR_TRANSLATED_SIDS_EX TranslatedSids,

[in] LSAP_LOOKUP_LEVEL LookupLevel,

[in, out] unsigned long* MappedCount,

[in] unsigned long LookupOptions,

[in] unsigned long ClientRevision

);

**PolicyHandle:** Context handle obtained by an [LsarOpenPolicy](#Section_3.1.4.2) or [LsarOpenPolicy2](#Section_3.1.4.1) call.

**Count:** Number of security principal names to look up.<32>

**Names:** Contains the security principal names to translate, as specified in section [3.1.4.5](#Section_3.1.4.5).

**ReferencedDomains:** On successful return, contains the domain information for the domain to which each security principal belongs. The domain information includes a NetBIOS domain name and a domain SID for each entry in the list.

**TranslatedSids:** On successful return, contains the corresponding SID forms for security principal names in the *Names* parameter. It MUST be ignored on input.

**LookupLevel:** Specifies what scopes are to be used during translation, as specified in section [2.2.16](#Section_2.2.16).

**MappedCount:** On successful return, contains the number of names that are translated completely to the SID form. This parameter has no effect on message processing in any environment. It MUST be ignored on input.

**LookupOptions:** Flags that control the lookup operation. For possible values and their meanings, see section 3.1.4.5.

**ClientRevision:** Version of the client, which implies the client's capabilities. For possible values and their meanings, see section 3.1.4.5.

**Return Values:** The following table contains a summary of the return values that an implementation MUST return, as specified by the message processing shown after the table.

| Return value/code | Description |
| --- | --- |
| 0x00000000 STATUS_SUCCESS | The request was successfully completed. |
| 0x00000107 STATUS_SOME_NOT_MAPPED | Some of the information to be translated has not been translated. |
| 0xC0000022 STATUS_ACCESS_DENIED | The caller does not have the permissions to perform this operation. |
| 0xC000000D STATUS_INVALID_PARAMETER | One of the supplied parameters was invalid. |
| 0xC0000073 STATUS_NONE_MAPPED | None of the information to be translated has been translated. |

The behavior required when receiving an LsarLookupNames2 message MUST be identical to that when receiving an [LsarLookupNames3](#Section_3.1.4.6) message, with the following exceptions:

- Elements in the *TranslatedSids* output structure do not contain a **Sid** field; instead, they contain a **RelativeId** field. **RelativeId** MUST be set to the last element in the **SubAuthority** array of the RPC_SID structure ([MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.4.2.3) if the translated SID is not of type SidTypeDomain, and if the **Flags** field does not contain 0x00000004. If the translated SID is of type SidTypeDomain or the **Flags** field contains 0x00000004, **RelativeId** MUST be set to 0xFFFFFFFF.
- The *LookupOptions* and *ClientRevision* parameters MUST be ignored. Message processing MUST happen as if *LookupOptions* is set to 0x00000000 and *ClientRevision* is set to 0x00000002.
- The server MUST return STATUS_ACCESS_DENIED if neither of the following conditions is true:
- The RPC_C_AUTHN_NETLOGON security provider (as specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 2.2.1.1.7) and at least RPC_C_AUTHN_LEVEL_PKT_INTEGRITY authentication level (as specified in [MS-RPCE] section 2.2.1.1.8) were used in this [**RPC**](#gt_remote-procedure-call-rpc) message.
- The PolicyHandle was granted POLICY_LOOKUP_NAMES access.
<a id="Section_3.1.4.8"></a>
#### 3.1.4.8 LsarLookupNames (Opnum 14)

The LsarLookupNames method translates a batch of [**security principal**](#gt_security-principal) names to their [**SID**](#gt_security-identifier-sid) form. It also returns the [**domains**](#gt_domain) that these names are a part of.

NTSTATUS LsarLookupNames(

[in] LSAPR_HANDLE PolicyHandle,

[in, range(0,1000)] unsigned long Count,

[in, size_is(Count)] PRPC_UNICODE_STRING Names,

[out] PLSAPR_REFERENCED_DOMAIN_LIST* ReferencedDomains,

[in, out] PLSAPR_TRANSLATED_SIDS TranslatedSids,

[in] LSAP_LOOKUP_LEVEL LookupLevel,

[in, out] unsigned long* MappedCount

);

**PolicyHandle:** Context handle obtained by an [LsarOpenPolicy](#Section_3.1.4.2) or [LsarOpenPolicy2](#Section_3.1.4.1) call.

**Count:** Number of names in the Names array.<33>

**Names:** Contains the security principal names to translate, as specified in section [3.1.4.5](#Section_3.1.4.5).

**ReferencedDomains:** On successful return, contains the domain information for the domain to which each security principal belongs. The domain information includes a NetBIOS domain name and a domain SID for each entry in the list.

**TranslatedSids:** On successful return, contains the corresponding SID forms for security principal names in the *Names* parameter. It MUST be ignored on input.

**LookupLevel:** Specifies what scopes are to be used during translation, as specified in section [2.2.16](#Section_2.2.16).

**MappedCount:** On successful return, contains the number of names that are translated completely to their SID forms. This parameter has no effect on message processing in any environment. It MUST be ignored on input.

**Return Values:** The following table contains a summary of the return values that an implementation MUST return, as specified by the message processing shown after the table.

| Return value/code | Description |
| --- | --- |
| 0x00000000 STATUS_SUCCESS | The request was successfully completed. |
| 0x00000107 STATUS_SOME_NOT_MAPPED | Some of the information to be translated has not been translated. |
| 0xC0000022 STATUS_ACCESS_DENIED | The caller does not have the permissions to perform this operation. |
| 0xC000000D STATUS_INVALID_PARAMETER | One of the supplied parameters was invalid. |
| 0xC0000073 STATUS_NONE_MAPPED | None of the information to be translated has been translated. |

The behavior required when receiving an LsarLookupNames message MUST be identical to that when receiving an [LsarLookupNames2](#Section_3.1.4.7) message, with the following exceptions:

- Elements in the TranslatedSids output structure do not contain a **Flags** field.
- Due to the absence of the *LookupOptions* and *ClientRevision* parameters, the [**RPC server**](#gt_rpc-server) MUST assume that *LookupOptions* is 0 and *ClientRevision* is 1.
- The server MUST return STATUS_ACCESS_DENIED if neither of the following conditions is true:
- The RPC_C_AUTHN_NETLOGON security provider (as specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 2.2.1.1.7) and at least RPC_C_AUTHN_LEVEL_PKT_INTEGRITY authentication level (as specified in [MS-RPCE] section 2.2.1.1.8) were used in this [**RPC**](#gt_remote-procedure-call-rpc) message.
- The PolicyHandle was granted POLICY_LOOKUP_NAMES access.
<a id="Section_3.1.4.9"></a>
#### 3.1.4.9 LsarLookupSids3 (Opnum 76)

The LsarLookupSids3 method translates a batch of [**security principal**](#gt_security-principal) [**SIDs**](#gt_security-identifier-sid) to their name forms. It also returns the [**domains**](#gt_domain) that these names are a part of.

NTSTATUS LsarLookupSids3(

[in] handle_t RpcHandle,

[in] PLSAPR_SID_ENUM_BUFFER SidEnumBuffer,

[out] PLSAPR_REFERENCED_DOMAIN_LIST* ReferencedDomains,

[in, out] PLSAPR_TRANSLATED_NAMES_EX TranslatedNames,

[in] LSAP_LOOKUP_LEVEL LookupLevel,

[in, out] unsigned long* MappedCount,

[in] unsigned long LookupOptions,

[in] unsigned long ClientRevision

);

**RpcHandle:** An [**RPC**](#gt_remote-procedure-call-rpc) binding handle, as described in [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824). RPC binding handles are used by RPC internally and are not transmitted over the network.

This handle can be obtained by calling RPC runtime binding routines. For more information, see [[MSDN-RPCDB]](https://go.microsoft.com/fwlink/?LinkId=90076).

**SidEnumBuffer:** Contains the SIDs to be translated. The SIDs in this structure can be that of users, groups, computers, Windows-defined well-known security principals, or domains.

**ReferencedDomains:** On successful return, contains the domain information for the domain to which each security principal belongs. The domain information includes a NetBIOS domain name and a domain SID for each entry in the list.

**TranslatedNames:** On successful return, contains the corresponding name forms for security principal SIDs in the *SidEnumBuffer* parameter. It MUST be ignored on input.

**LookupLevel:** Specifies what scopes are to be used during translation, as specified in section [2.2.16](#Section_2.2.16).

**MappedCount:** On successful return, contains the number of names that are translated completely to their name forms. It MUST be ignored on input.

**LookupOptions:** Flags that control the lookup operation. This parameter is reserved for future use; it MUST be set to 0 and ignored on receipt.

**ClientRevision:** Version of the client, which implies the client's capabilities. For possible values and their meanings, see section [3.1.4.5](#Section_3.1.4.5).

**Return Values:** The following table contains a summary of the return values that an implementation MUST return, as specified by the message processing shown after the table.

| Return value/code | Description |
| --- | --- |
| 0x00000000 STATUS_SUCCESS | The request was successfully completed. |
| 0x00000107 STATUS_SOME_NOT_MAPPED | Some of the information to be translated has not been translated. |
| 0xC00000DC STATUS_INVALID_SERVER_STATE | The [**RPC server**](#gt_rpc-server) is not a [**domain controller**](#gt_domain-controller-dc). |
| 0xC0000022 STATUS_ACCESS_DENIED | The caller does not have the permissions to perform this operation. |
| 0xC000000D STATUS_INVALID_PARAMETER | One of the supplied parameters was invalid. |
| 0xC0000073 STATUS_NONE_MAPPED | None of the information to be translated has been translated. |

This message is valid only if the RPC server is a domain controller. The RPC server MUST return STATUS_INVALID_SERVER_STATE in the return value if it is not a domain controller.

The RPC server MUST ensure that one of the following conditions is true:

- The RPC_C_AUTHN_NETLOGON security provider (as specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 2.2.1.1.7) and at least RPC_C_AUTHN_LEVEL_PKT_INTEGRITY authentication level (as specified in [MS-RPCE] section 2.2.1.1.8) are used in this RPC message.
- The RPC client token contains one of the following well-known SID types - DOMAIN_GROUP_RID_COMPUTERS, DOMAIN_GROUP_RID_CONTROLLERS, DOMAIN_GROUP_RID_READONLY_CONTROLLERS (as specified in [MS-SAMR](../MS-SAMR/MS-SAMR.md) section 2.2.1.14).<34>
Otherwise, the RPC server MUST return STATUS_ACCESS_DENIED.

The RPC server MUST check each element in the *SidEnumBuffer* parameter for validity, as specified in section [2.2.18](../MS-DTYP/MS-DTYP.md), and individual elements in this structure MUST be checked for validity, as described for the SID structure in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.4.2. If validation fails, the RPC server SHOULD return STATUS_INVALID_PARAMETER.

The *TranslatedNames* and *MappedCount* parameters have no effect on message processing in any environment. They MUST be ignored on input.

The RPC server search scope can change depending on the *LookupLevel* parameter, as specified in section 2.2.16. In the views corresponding to each *LookupLevel*, SIDs MUST be searched under the Security Principal SID and Security Principal SID History columns.

Output parameters MUST be updated using the following information:

- When a SID is found in the database, the *ReferencedDomains* parameter MUST be searched for an identical entry with the **Name** field containing the value from the Domain NetBIOS Name column and the **Sid** field containing the value from the Domain SID column. If there is no such entry, a new entry with the **Name** field containing the value of the Domain NetBIOS Name and the **Sid** field containing the value of the Domain SID MUST be created and added to the *ReferencedDomains* list.
For the successful search, the corresponding *TranslatedNames* entry MUST be updated as follows:

- Use: Security Principal Type column
- Name: Security Principal Name column
- Flags:
- 0x00000001: If the search is not satisfied by matching against the Security Principal SID column. Also see the paragraph after step 3.
- 0x00000004: If the search is satisfied by matching in [Configurable Translation View (section 3.1.1.1.2)](#Section_252cb6b02edc44039d755b2786ba859e). Also see the paragraph after step 3.
- DomainIndex: Index of the domain in the *ReferencedDomains* parameter.
- If a match cannot be found for a SID, but the domain portion of the SID can be matched with a domain SID, the *ReferencedDomains* parameter MUST be searched for an identical entry with the **Name** field containing the value from the Domain NetBIOS Name column and the **Sid** field containing the value from the Domain SID column. If there is no such entry, a new entry with the **Name** field containing the value of the Domain NetBIOS Name and the **Sid** field containing the value of the Domain SID MUST be created and added to the *ReferencedDomains* list.
The corresponding *TranslatedNames* entry MUST be updated by using the following view:

- Use: SidTypeUnknown.
- Name: Empty unless *LookupLevel* is LsapLookupWksta, in which case this field must contain a textual representation of the last 32 bits of the corresponding SID in hexadecimal format.
- Flags: 0x00000000 (also see the paragraph after step 3).
- DomainIndex: Index of the domain in the *ReferencedDomains* parameter.
- Otherwise, the corresponding *TranslatedNames* entry MUST be updated with:
- Use: SidTypeUnknown.
- Name: Empty, unless *LookupLevel* is LsapLookupWksta. In that case, Name MUST contain the textual representation of the corresponding SID, as in step 2.
- Flags: 0x00000000 (also see the following paragraph).
- DomainIndex: -1.
In all preceding cases, the **Flags** field MUST contain 0x00000002 when:

- *LookupLevel* is LsapLookupWksta, LsapLookupPDC, LsapLookupGC, LsapLookupXForestReferral, or LsapLookupXForestResolve, and
- The IsDomainSidInTrustedForest algorithm defined in [MS-DRSR](../MS-DRSR/MS-DRSR.md) section 5.97 returns true.
The return value MUST be set to STATUS_SUCCESS if all SIDs are translated correctly.

If some SIDs are translated correctly but some are not, the return value MUST be set to STATUS_SOME_NOT_MAPPED.

If none of the SIDs are translated correctly, the return value MUST be set to STATUS_NONE_MAPPED.

If *LookupLevel* is LsapLookupWksta, and the return code can be identified as an error value other than STATUS_NONE_MAPPED, *ReferencedDomains* and the **Names** fields in the *TranslatedNames* structure MUST NOT be returned.

<a id="Section_3.1.4.10"></a>
#### 3.1.4.10 LsarLookupSids2 (Opnum 57)

The LsarLookupSids2 method translates a batch of [**security principal**](#gt_security-principal) [**SIDs**](#gt_security-identifier-sid) to their name forms. It also returns the [**domains**](#gt_domain) that these names are a part of.

NTSTATUS LsarLookupSids2(

[in] LSAPR_HANDLE PolicyHandle,

[in] PLSAPR_SID_ENUM_BUFFER SidEnumBuffer,

[out] PLSAPR_REFERENCED_DOMAIN_LIST* ReferencedDomains,

[in, out] PLSAPR_TRANSLATED_NAMES_EX TranslatedNames,

[in] LSAP_LOOKUP_LEVEL LookupLevel,

[in, out] unsigned long* MappedCount,

[in] unsigned long LookupOptions,

[in] unsigned long ClientRevision

);

**PolicyHandle:** Context handle obtained by an [LsarOpenPolicy](#Section_3.1.4.2) or [LsarOpenPolicy2](#Section_3.1.4.1) call.

**SidEnumBuffer:** Contains the SIDs to be translated. The SIDs in this structure can be that of users, groups, computers, Windows-defined well-known security principals, or domains.

**ReferencedDomains:** On successful return, contains the domain information for the domain to which each security principal belongs. The domain information includes a NetBIOS domain name and a domain SID for each entry in the list.

**TranslatedNames:** On successful return, contains the corresponding name forms for security principal SIDs in the *SidEnumBuffer* parameter. It MUST be ignored on input.

**LookupLevel:** Specifies what scopes are to be used during translation, as specified in section [2.2.16](#Section_2.2.16).

**MappedCount:** On return, contains the number of names that are translated completely to their name forms. It MUST be ignored on input.

**LookupOptions:** Flags that control the lookup operation. This parameter is reserved for future use and SHOULD<35> be set to 0.

**ClientRevision:** Version of the client, which implies the client's capabilities. For possible values and their meanings, see section [3.1.4.5](#Section_3.1.4.5).

**Return Values:** The following table contains a summary of the return values that an implementation MUST return, as specified by the message processing shown after the table.

| Return value/code | Description |
| --- | --- |
| 0x00000000 STATUS_SUCCESS | The request was successfully completed. |
| 0x00000107 STATUS_SOME_NOT_MAPPED | Some of the information to be translated has not been translated. |
| 0xC0000022 STATUS_ACCESS_DENIED | The caller does not have the permissions to perform this operation. |
| 0xC000000D STATUS_INVALID_PARAMETER | One of the supplied parameters was invalid. |
| 0xC0000073 STATUS_NONE_MAPPED | None of the information to be translated has been translated. |

The behavior required when receiving an LsarLookupSids2 message MUST be identical to that when receiving an [LsarLookupSids3](#Section_3.1.4.9) message, with the following exceptions:

- This message is valid on non–[**domain controller**](#gt_domain-controller-dc) machines as well as domain controllers.
- *LookupLevel* values other than LsapLookupWksta are not valid if the [**RPC server**](#gt_rpc-server) is not a domain controller. For this condition, the RPC server MUST return an error in the return value.
- The server MUST return STATUS_ACCESS_DENIED if neither of the following conditions are true:
- The RPC_C_AUTHN_NETLOGON security provider (as specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 2.2.1.1.7) and at least RPC_C_AUTHN_LEVEL_PKT_INTEGRITY authentication level (as specified in [MS-RPCE] section 2.2.1.1.8) were used in this [**RPC**](#gt_remote-procedure-call-rpc) message.
- The PolicyHandle was granted POLICY_LOOKUP_NAMES access.
<a id="Section_3.1.4.11"></a>
#### 3.1.4.11 LsarLookupSids (Opnum 15)

The LsarLookupSids method translates a batch of [**security principal**](#gt_security-principal) [**SIDs**](#gt_security-identifier-sid) to their name forms. It also returns the [**domains**](#gt_domain) that these names are a part of.

NTSTATUS LsarLookupSids(

[in] LSAPR_HANDLE PolicyHandle,

[in] PLSAPR_SID_ENUM_BUFFER SidEnumBuffer,

[out] PLSAPR_REFERENCED_DOMAIN_LIST* ReferencedDomains,

[in, out] PLSAPR_TRANSLATED_NAMES TranslatedNames,

[in] LSAP_LOOKUP_LEVEL LookupLevel,

[in, out] unsigned long* MappedCount

);

**PolicyHandle:** Context handle obtained by an [LsarOpenPolicy](#Section_3.1.4.2) or [LsarOpenPolicy2](#Section_3.1.4.1) call.

**SidEnumBuffer:** Contains the SIDs to be translated. The SIDs in this structure can be that of users, groups, computers, Windows-defined well-known security principals, or domains.

**ReferencedDomains:** On successful return, contains the domain information for the domain to which each security principal belongs. The domain information includes a NetBIOS domain name and a domain SID for each entry in the list.

**TranslatedNames:** On successful return, contains the corresponding name form for security principal SIDs in the *SidEnumBuffer* parameter. It MUST be ignored on input.

**LookupLevel:** Specifies what scopes are to be used during translation, as specified in section [2.2.16](#Section_2.2.16).

**MappedCount:** On successful return, contains the number of names that are translated completely to their Name forms. It MUST be ignored on input.

**Return Values:** The following table contains a summary of the return values that an implementation MUST return, as specified by the message processing shown after the table.

| Return value/code | Description |
| --- | --- |
| 0x00000000 STATUS_SUCCESS | The request was successfully completed. |
| 0x00000107 STATUS_SOME_NOT_MAPPED | Some of the information to be translated has not been translated. |
| 0xC0000022 STATUS_ACCESS_DENIED | The caller does not have the permissions to perform this operation. |
| 0xC000000D STATUS_INVALID_PARAMETER | One of the supplied parameters was invalid. |
| 0xC0000073 STATUS_NONE_MAPPED | None of the information to be translated has been translated. |

The behavior required when receiving an LsarLookupSids message MUST be identical to that when receiving an [LsarLookupSids2](#Section_3.1.4.10) message, with the following exceptions:

- Elements in the TranslatedNames output structure do not contain a Flags field.
- Due to the absence of *LookupOptions* and *ClientRevision* parameters, the [**RPC server**](#gt_rpc-server) MUST assume that *LookupOptions* is 0 and *ClientRevision* is 1.
- The server MUST return STATUS_ACCESS_DENIED if neither of the following conditions is true:
- The RPC_C_AUTHN_NETLOGON security provider (as specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 2.2.1.1.7) and at least RPC_C_AUTHN_LEVEL_PKT_INTEGRITY authentication level (as specified in [MS-RPCE] section 2.2.1.1.8) were used in this [**RPC**](#gt_remote-procedure-call-rpc) message.
- The PolicyHandle was granted POLICY_LOOKUP_NAMES access.
<a id="Section_3.1.5"></a>
### 3.1.5 Timer Events

No protocol timer events are required on the [**RPC server**](#gt_rpc-server) other than the timers required in the underlying [**RPC transport**](#gt_rpc-transport).

<a id="Section_3.1.6"></a>
### 3.1.6 Other Local Events

No additional local events are used on the [**RPC server**](#gt_rpc-server) other than the events maintained in the underlying [**RPC transport**](#gt_rpc-transport).

<a id="Section_3.2"></a>
## 3.2 Client Details

The client side of this protocol is simply a pass-through between the transport and the higher-layer protocol or application. There are no additional timers or other state required on the client side. Calls made by a higher-layer protocol or application are passed directly to the transport, and the results returned by the transport are passed directly back to the higher-layer protocol or application.

There are several versions of messages that provide similar functionality. Higher-level protocols or applications can use the following guidelines when deciding what message to send.<36>

For selecting between [LsarLookupNames4](#Section_3.1.4.5), [LsarLookupNames3](#Section_3.1.4.6), [LsarLookupNames2](#Section_3.1.4.7), and [LsarLookupNames](#Section_3.1.4.8):

- Only a [**domain controller**](#gt_domain-controller-dc) can process an LsarLookupNames4 message.
- LsarLookupNames4 requires an [**RPC**](#gt_remote-procedure-call-rpc) handle (specified in its *RpcHandle* parameter) and that the connection is authenticated using the RPC_C_AUTHN_NETLOGON security provider, as specified in [MS-RPCE](../MS-RPCE/MS-RPCE.md) section 2.2.1.1.7.
- If these requirements are available to the caller, LsarLookupNames4 can be used; otherwise, LsarLookupNames3 is preferred.
- Domain controllers and non–domain controllers can process LsarLookupNames3, LsarLookupNames2, and LsarLookupNames messages.
For specifics on each message, see sections 3.1.4.5, 3.1.4.6, 3.1.4.7, and 3.1.4.8.

For selecting between [LsarLookupSids3](#Section_3.1.4.9), [LsarLookupSids2](#Section_3.1.4.10), and [LsarLookupSids](#Section_3.1.4.11):

- Only a domain controller can process an LsarLookupSids3 message.
- LsarLookupSids3 requires an RPC handle (specified in its RpcHandle parameter) and that the connection is authenticated using the RPC_C_AUTHN_NETLOGON security provider, as specified in [MS-RPCE] section 2.2.1.1.7.
- If these requirements are available to the caller, LsarLookupSids3 can be used; otherwise, LsarLookupSids2 is preferred.
- Domain controllers and non–domain controllers can process LsarLookupSids2 and LsarLookupSids messages.
For specifics on each message, see sections 3.1.4.9, 3.1.4.10, and 3.1.4.11.

<a id="Section_4"></a>
# 4 Protocol Example

In this scenario, the client wants to translate a group of [**SIDs**](#gt_security-identifier-sid) to their corresponding names. The client starts the communication by sending an [LsarOpenPolicy2](#Section_3.1.4.1) request with the following parameters:

NTSTATUS

LsarOpenPolicy2(

[in,unique,string] wchar_t* SystemName = "arbitrary string",

[in] PLSAPR_OBJECT_ATTRIBUTES ObjectAttributes,

[in] ACCESS_MASK DesiredAccess = 0x00000800,

[out] LSAPR_HANDLE *PolicyHandle

);

where *ObjectAttributes* is:

typedef struct _LSAPR_OBJECT_ATTRIBUTES {

unsigned long Length = 0;

unsigned char *RootDirectory = NULL;

PSTRING ObjectName = NULL;

unsigned long Attributes = 0;

PLSAPR_SECURITY_DESCRIPTOR SecurityDescriptor = NULL;

PSECURITY_QUALITY_OF_SERVICE SecurityQualityOfService = NULL;

} LSAPR_OBJECT_ATTRIBUTES, *PLSAPR_OBJECT_ATTRIBUTES;

The server receives this request and performs an access check for the desired access. When successful, the server returns a context handle for the client's use and STATUS_SUCCESS as the return value. That is:

NTSTATUS = 0x00000000

LsarOpenPolicy2(

[in,unique,string] wchar_t* SystemName = {unchanged}

[in] PLSAPR_OBJECT_ATTRIBUTES ObjectAttributes = {unchanged},

[in] ACCESS_MASK DesiredAccess = {unchanged},

[out] LSAPR_HANDLE *PolicyHandle = {context handle}

);

The client receives this response and sends an [LsarLookupSids2](#Section_3.1.4.10) request to translate the batch of SIDs to names with the following parameters:

NTSTATUS

LsarLookupSids2(

[in] LSAPR_HANDLE PolicyHandle =

{handle returned by LsarOpenPolicy2},

[in] PLSAPR_SID_ENUM_BUFFER SidEnumBuffer,

[out] PLSAPR_REFERENCED_DOMAIN_LIST *ReferencedDomains,

[in, out] PLSAPR_TRANSLATED_NAMES_EX TranslatedNames =

{address of a local variable initialized

with zeroes},

[in] LSAP_LOOKUP_LEVEL LookupLevel = LsapLookupWksta,

[in, out] unsigned long *MappedCount =

{address of a local variable initialized to 0},

[in] unsigned long LookupOptions = 0,

[in] unsigned long ClientRevision = 2

);

where *SidEnumBuffer* is:

typedef struct _LSAPR_SID_ENUM_BUFFER {

unsigned long Entries = {3};

[size_is(Entries)] PLSAPR_SID_INFORMATION SidInfo;

} LSAPR_SID_ENUM_BUFFER, *PLSAPR_SID_ENUM_BUFFER;

and SidInfo array is:

SidInfo[0] =

typedef struct _LSAPR_SID_INFORMATION {

PRPC_SID Sid = { SID0 };

} LSAPR_SID_INFORMATION, *PLSAPR_SID_INFORMATION;

SidInfo[1] =

typedef struct _LSAPR_SID_INFORMATION {

PRPC_SID Sid = { SID1 };

} LSAPR_SID_INFORMATION, *PLSAPR_SID_INFORMATION;

SidInfo[2] =

typedef struct _LSAPR_SID_INFORMATION {

PRPC_SID Sid = { SID2 };

} LSAPR_SID_INFORMATION, *PLSAPR_SID_INFORMATION;

The server receives this call and performs the translation explained in message processing in section 3.1.4.10. The server prepares the results, and returns them to the caller with a return value of STATUS_SUCCESS. The results might resemble the following:

NTSTATUS = 0x00000000

LsarLookupSids2(

[in] LSAPR_HANDLE PolicyHandle = {unchanged},

[in] PLSAPR_SID_ENUM_BUFFER SidEnumBuffer = {unchanged},

[out] PLSAPR_REFERENCED_DOMAIN_LIST *ReferencedDomains,

[in, out] PLSAPR_TRANSLATED_NAMES_EX TranslatedNames,

[in] LSAP_LOOKUP_LEVEL LookupLevel = {unchanged},

[in, out] unsigned long *MappedCount = { 3 },

[in] unsigned long LookupOptions = {unchanged},

[in] unsigned long ClientRevision = {unchanged}

);

where *ReferencedDomains* is:

typedef struct _LSAPR_REFERENCED_DOMAIN_LIST {

unsigned long Entries = { 2 };

[size_is(Entries)] PLSAPR_TRUST_INFORMATION Domains;

unsigned long MaxEntries = { 0 };

} LSAPR_REFERENCED_DOMAIN_LIST, *PLSAPR_REFERENCED_DOMAIN_LIST;

and Domains array is:

Domains[0] =

typedef struct _LSAPR_TRUST_INFORMATION {

RPC_UNICODE_STRING Name = { "Domain0" };

PRPC_SID Sid = { DomainSID0 };

} LSAPR_TRUST_INFORMATION, *PLSAPR_TRUST_INFORMATION;

Domains[1] =

typedef struct _LSAPR_TRUST_INFORMATION {

RPC_UNICODE_STRING Name = { "Domain1" };

PRPC_SID Sid = { DomainSID1 };

} LSAPR_TRUST_INFORMATION, *PLSAPR_TRUST_INFORMATION;

*TranslatedNames* might appear as follows:

typedef struct _LSAPR_TRANSLATED_NAMES_EX {

unsigned long Entries = { 3 };

[size_is(Entries)] PLSAPR_TRANSLATED_NAME_EX Names;

} LSAPR_TRANSLATED_NAMES_EX, *PLSAPR_TRANSLATED_NAMES_EX;

where Names array is:

Names[0] =

typedef struct _LSAPR_TRANSLATED_NAME_EX {

SID_NAME_USE Use = { SidTypeUser };

RPC_UNICODE_STRING Name = { "Name0" };

long DomainIndex = { 0 };

unsigned long Flags = { 0 };

} LSAPR_TRANSLATED_NAME_EX, *PLSAPR_TRANSLATED_NAME_EX;

Names[1] =

typedef struct _LSAPR_TRANSLATED_NAME_EX {

SID_NAME_USE Use = { SidTypeDomain };

RPC_UNICODE_STRING Name = { "DomainName0" };

long DomainIndex = { 0 };

unsigned long Flags = { 0 };

} LSAPR_TRANSLATED_NAME_EX, *PLSAPR_TRANSLATED_NAME_EX;

Names[2] =

typedef struct _LSAPR_TRANSLATED_NAME_EX {

SID_NAME_USE Use = { SidTypeUser };

RPC_UNICODE_STRING Name = { "Name3" };

long DomainIndex = { 1 };

unsigned long Flags = { 0 };

} LSAPR_TRANSLATED_NAME_EX, *PLSAPR_TRANSLATED_NAME_EX;

The client receives this response, and extracts the names from the returned information. It then sends an [LsarClose](#Section_3.1.4.3) request to release the context handle that was opened in the first call:

NTSTATUS

LsarClose(

[in,out] LSAPR_HANDLE *ObjectHandle

= {handle returned by LsarOpenPolicy2}

);

The server receives this call, and releases the handle. It responds to the caller with a return value of STATUS_SUCCESS:

NTSTATUS = 0x00000000

LsarClose(

[in,out] LSAPR_HANDLE *ObjectHandle = {0}

);

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

This protocol provides query functionality into databases that might have other access control mechanisms. This protocol should obey those mechanisms; otherwise, it might become a source of information disclosure.

Access control on an [**RPC server**](#gt_rpc-server) of this protocol should be configurable to allow customizations.<37>

The RPC server has to successfully authenticate the client if user names are considered confidential information.

The [**RPC client**](#gt_rpc-client) has to authenticate the server if the results are used to make policy decisions.

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

| Security parameter | Section |
| --- | --- |
| Authentication service (AS) settings | [3.1.4.9](#Section_3.1.4.9) [3.1.4.10](#Section_3.1.4.10) [3.1.4.5](#Section_3.1.4.5) [3.1.4.6](#Section_3.1.4.6) |
| Security descriptor | [3.1.4.1](#Section_3.1.4.1) |

<a id="Section_6"></a>
# 6 Appendix A: Full IDL

For ease of implementation, the full IDL is provided below, where "ms-dtyp.idl" is the IDL specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) Appendix A.

**Note** The lsarpc interface is shared between this protocol and the Local Security Authority (Domain Policy) Remote Protocol [MS-LSAD](../MS-LSAD/MS-LSAD.md). For convenience, the IDL definitions that appear below and the IDL definitions in [MS-LSAD] section 6 have been merged and are available for download. For more information, see [[MSFT-LSA-IDL]](https://go.microsoft.com/fwlink/?LinkId=150268).

import "ms-dtyp.idl";

[

uuid(12345778-1234-ABCD-EF00-0123456789AB),

version(0.0),

ms_union,

pointer_default(unique)

]

interface lsarpc

{

//

// Type definitions.

//

//

// Start of common types.

//

typedef [context_handle] void * LSAPR_HANDLE;

typedef unsigned char SECURITY_CONTEXT_TRACKING_MODE,

*PSECURITY_CONTEXT_TRACKING_MODE;

typedef unsigned short SECURITY_DESCRIPTOR_CONTROL,

*PSECURITY_DESCRIPTOR_CONTROL;

typedef struct _STRING {

unsigned short Length;

unsigned short MaximumLength;

[size_is(MaximumLength), length_is(Length)]

char * Buffer;

} STRING, *PSTRING;

typedef struct _LSAPR_ACL {

unsigned char AclRevision;

unsigned char Sbz1;

unsigned short AclSize;

[size_is(AclSize - 4)] unsigned char Dummy1[*];

} LSAPR_ACL, *PLSAPR_ACL;

typedef struct _LSAPR_SECURITY_DESCRIPTOR {

unsigned char Revision;

unsigned char Sbz1;

SECURITY_DESCRIPTOR_CONTROL Control;

PRPC_SID Owner;

PRPC_SID Group;

PLSAPR_ACL Sacl;

PLSAPR_ACL Dacl;

} LSAPR_SECURITY_DESCRIPTOR, *PLSAPR_SECURITY_DESCRIPTOR;

typedef enum _SECURITY_IMPERSONATION_LEVEL {

SecurityAnonymous = 0,

SecurityIdentification = 1,

SecurityImpersonation = 2,

SecurityDelegation = 3

} SECURITY_IMPERSONATION_LEVEL, * PSECURITY_IMPERSONATION_LEVEL;

typedef struct _SECURITY_QUALITY_OF_SERVICE {

unsigned long Length;

SECURITY_IMPERSONATION_LEVEL ImpersonationLevel;

SECURITY_CONTEXT_TRACKING_MODE ContextTrackingMode;

unsigned char EffectiveOnly;

} SECURITY_QUALITY_OF_SERVICE, * PSECURITY_QUALITY_OF_SERVICE;

typedef struct _LSAPR_OBJECT_ATTRIBUTES {

unsigned long Length;

unsigned char * RootDirectory;

PSTRING ObjectName;

unsigned long Attributes;

PLSAPR_SECURITY_DESCRIPTOR SecurityDescriptor;

PSECURITY_QUALITY_OF_SERVICE SecurityQualityOfService;

} LSAPR_OBJECT_ATTRIBUTES, *PLSAPR_OBJECT_ATTRIBUTES;

typedef struct _LSAPR_TRUST_INFORMATION {

RPC_UNICODE_STRING Name;

PRPC_SID Sid;

} LSAPR_TRUST_INFORMATION, *PLSAPR_TRUST_INFORMATION;

//

// End of common types.

//

typedef struct _LSAPR_REFERENCED_DOMAIN_LIST {

unsigned long Entries;

[size_is(Entries)] PLSAPR_TRUST_INFORMATION Domains;

unsigned long MaxEntries;

} LSAPR_REFERENCED_DOMAIN_LIST, *PLSAPR_REFERENCED_DOMAIN_LIST;

typedef enum _SID_NAME_USE {

SidTypeUser = 1,

SidTypeGroup,

SidTypeDomain,

SidTypeAlias,

SidTypeWellKnownGroup,

SidTypeDeletedAccount,

SidTypeInvalid,

SidTypeUnknown,

SidTypeComputer,

SidTypeLabel

} SID_NAME_USE, *PSID_NAME_USE;

typedef struct _LSA_TRANSLATED_SID {

SID_NAME_USE Use;

unsigned long RelativeId;

long DomainIndex;

} LSA_TRANSLATED_SID, *PLSA_TRANSLATED_SID;

typedef struct _LSAPR_TRANSLATED_SIDS {

[range(0,1000)] unsigned long Entries;

[size_is(Entries)] PLSA_TRANSLATED_SID Sids;

} LSAPR_TRANSLATED_SIDS, *PLSAPR_TRANSLATED_SIDS;

typedef enum _LSAP_LOOKUP_LEVEL {

LsapLookupWksta = 1,

LsapLookupPDC,

LsapLookupTDL,

LsapLookupGC,

LsapLookupXForestReferral,

LsapLookupXForestResolve,

LsapLookupRODCReferralToFullDC

} LSAP_LOOKUP_LEVEL, *PLSAP_LOOKUP_LEVEL;

typedef struct _LSAPR_SID_INFORMATION {

PRPC_SID Sid;

} LSAPR_SID_INFORMATION, *PLSAPR_SID_INFORMATION;

typedef struct _LSAPR_SID_ENUM_BUFFER {

[range(0, 20480)] unsigned long Entries;

[size_is(Entries)] PLSAPR_SID_INFORMATION SidInfo;

} LSAPR_SID_ENUM_BUFFER, *PLSAPR_SID_ENUM_BUFFER;

typedef struct _LSAPR_TRANSLATED_NAME {

SID_NAME_USE Use;

RPC_UNICODE_STRING Name;

long DomainIndex;

} LSAPR_TRANSLATED_NAME, *PLSAPR_TRANSLATED_NAME;

typedef struct _LSAPR_TRANSLATED_NAMES {

[range(0, 20480)] unsigned long Entries;

[size_is(Entries)] PLSAPR_TRANSLATED_NAME Names;

} LSAPR_TRANSLATED_NAMES, *PLSAPR_TRANSLATED_NAMES;

typedef struct _LSAPR_TRANSLATED_NAME_EX {

SID_NAME_USE Use;

RPC_UNICODE_STRING Name;

long DomainIndex;

unsigned long Flags;

} LSAPR_TRANSLATED_NAME_EX, *PLSAPR_TRANSLATED_NAME_EX;

typedef struct _LSAPR_TRANSLATED_NAMES_EX {

[range(0, 20480)] unsigned long Entries;

[size_is(Entries)] PLSAPR_TRANSLATED_NAME_EX Names;

} LSAPR_TRANSLATED_NAMES_EX, *PLSAPR_TRANSLATED_NAMES_EX;

typedef struct _LSAPR_TRANSLATED_SID_EX {

SID_NAME_USE Use;

unsigned long RelativeId;

long DomainIndex;

unsigned long Flags;

} LSAPR_TRANSLATED_SID_EX, *PLSAPR_TRANSLATED_SID_EX;

typedef struct _LSAPR_TRANSLATED_SIDS_EX {

[range (0,1000)] unsigned long Entries;

[size_is(Entries)] PLSAPR_TRANSLATED_SID_EX Sids;

} LSAPR_TRANSLATED_SIDS_EX, *PLSAPR_TRANSLATED_SIDS_EX;

typedef struct _LSAPR_TRANSLATED_SID_EX2 {

SID_NAME_USE Use;

PRPC_SID Sid;

long DomainIndex;

unsigned long Flags;

} LSAPR_TRANSLATED_SID_EX2, *PLSAPR_TRANSLATED_SID_EX2;

typedef struct _LSAPR_TRANSLATED_SIDS_EX2 {

[range (0,1000)] unsigned long Entries;

[size_is(Entries)] PLSAPR_TRANSLATED_SID_EX2 Sids;

} LSAPR_TRANSLATED_SIDS_EX2, *PLSAPR_TRANSLATED_SIDS_EX2;

//

// Methods

//

//

// The following notation conventions are used for some IDL methods:

//

// void

// Lsar_LSA_DP_XX( void );

//

// (where XX represents the opnum.)

//

// This notation indicates that the method is defined in this

// interface but is described in the

// Local Security Authority (Domain Policy) protocol

// specification.

//

// void OpnumXXNotUsedOnWire(void);

//

// (where XX represents the opnum.)

//

// This notation indicates that the method is defined in this

// interface but is not seen on the wire.

//

// Opnum 0

NTSTATUS

LsarClose(

[in,out] LSAPR_HANDLE *ObjectHandle

);

// Opnum 1

void Opnum1NotUsedOnWire(void);

// Opnum 2

void

Lsar_LSA_DP_2( void );

// Opnum 3

void

Lsar_LSA_DP_3( void );

// Opnum 4

void

Lsar_LSA_DP_4( void );

// Opnum 5

void Opnum5NotUsedOnWire(void);

// Opnum 6

NTSTATUS

LsarOpenPolicy(

[in,unique] wchar_t *SystemName,

[in] PLSAPR_OBJECT_ATTRIBUTES ObjectAttributes,

[in] ACCESS_MASK DesiredAccess,

[out] LSAPR_HANDLE *PolicyHandle

);

// Opnum 7

void

Lsar_LSA_DP_7( void );

// Opnum 8

void

Lsar_LSA_DP_8( void );

// Opnum 9

void Opnum9NotUsedOnWire(void);

// Opnum 10

void

Lsar_LSA_DP_10( void );

// Opnum 11

void

Lsar_LSA_DP_11( void );

// Opnum 12

void

Lsar_LSA_DP_12( void );

// Opnum 13

void

Lsar_LSA_DP_13( void );

// Opnum 14

NTSTATUS

LsarLookupNames(

[in] LSAPR_HANDLE PolicyHandle,

[in, range(0,1000)] unsigned long Count,

[in, size_is(Count)] PRPC_UNICODE_STRING Names,

[out] PLSAPR_REFERENCED_DOMAIN_LIST *ReferencedDomains,

[in, out] PLSAPR_TRANSLATED_SIDS TranslatedSids,

[in] LSAP_LOOKUP_LEVEL LookupLevel,

[in, out] unsigned long *MappedCount

);

// Opnum 15

NTSTATUS

LsarLookupSids(

[in] LSAPR_HANDLE PolicyHandle,

[in] PLSAPR_SID_ENUM_BUFFER SidEnumBuffer,

[out] PLSAPR_REFERENCED_DOMAIN_LIST *ReferencedDomains,

[in, out] PLSAPR_TRANSLATED_NAMES TranslatedNames,

[in] LSAP_LOOKUP_LEVEL LookupLevel,

[in, out] unsigned long *MappedCount

);

// Opnum 16

void

Lsar_LSA_DP_16( void );

// Opnum 17

void

Lsar_LSA_DP_17( void );

// Opnum 18

void

Lsar_LSA_DP_18( void );

// Opnum 19

void

Lsar_LSA_DP_19( void );

// Opnum 20

void

Lsar_LSA_DP_20( void );

// Opnum 21

void Opnum21NotUsedOnWire(void);

// Opnum 22

void Opnum22NotUsedOnWire(void);

// Opnum 23

void

Lsar_LSA_DP_23( void );

// Opnum 24

void

Lsar_LSA_DP_24( void );

// Opnum 25

void

Lsar_LSA_DP_25( void );

// Opnum 26

void

Lsar_LSA_DP_26( void );

// Opnum 27

void

Lsar_LSA_DP_27( void );

// Opnum 28

void

Lsar_LSA_DP_28( void );

// Opnum 29

void

Lsar_LSA_DP_29( void );

// Opnum 30

void

Lsar_LSA_DP_30( void );

// Opnum 31

void

Lsar_LSA_DP_31( void );

// Opnum 32

void

Lsar_LSA_DP_32( void );

// Opnum 33

void

Lsar_LSA_DP_33( void );

// Opnum 34

void

Lsar_LSA_DP_34( void );

// Opnum 35

void

Lsar_LSA_DP_35( void );

// Opnum 36

void

Lsar_LSA_DP_36( void );

// Opnum 37

void

Lsar_LSA_DP_37( void );

// Opnum 38

void

Lsar_LSA_DP_38( void );

// Opnum 39

void

Lsar_LSA_DP_39( void );

// Opnum 40

void

Lsar_LSA_DP_40( void );

// Opnum 41

void

Lsar_LSA_DP_41( void );

// Opnum 42

void

Lsar_LSA_DP_42( void );

// Opnum 43

void

Lsar_LSA_DP_43( void );

// Opnum 44

NTSTATUS

LsarOpenPolicy2(

[in,unique,string] wchar_t *SystemName,

[in] PLSAPR_OBJECT_ATTRIBUTES ObjectAttributes,

[in] ACCESS_MASK DesiredAccess,

[out] LSAPR_HANDLE *PolicyHandle

);

// Opnum 45

NTSTATUS

LsarGetUserName(

[in,unique,string] wchar_t *SystemName,

[in,out] PRPC_UNICODE_STRING *UserName,

[in,out,unique] PRPC_UNICODE_STRING *DomainName

);

// Opnum 46

void

Lsar_LSA_DP_46( void );

// Opnum 47

void

Lsar_LSA_DP_47( void );

// Opnum 48

void

Lsar_LSA_DP_48( void );

// Opnum 49

void

Lsar_LSA_DP_49( void );

// Opnum 50

void

Lsar_LSA_DP_50( void );

// Opnum 51

void

Lsar_LSA_DP_51( void );

// Opnum 52

void Opnum52NotUsedOnWire(void);

// Opnum 53

void

Lsar_LSA_DP_53( void );

// Opnum 54

void

Lsar_LSA_DP_54( void );

// Opnum 55

void

Lsar_LSA_DP_55( void );

// Opnum 56

void Opnum56NotUsedOnWire(void);

// Opnum 57

NTSTATUS

LsarLookupSids2(

[in] LSAPR_HANDLE PolicyHandle,

[in] PLSAPR_SID_ENUM_BUFFER SidEnumBuffer,

[out] PLSAPR_REFERENCED_DOMAIN_LIST *ReferencedDomains,

[in, out] PLSAPR_TRANSLATED_NAMES_EX TranslatedNames,

[in] LSAP_LOOKUP_LEVEL LookupLevel,

[in, out] unsigned long *MappedCount,

[in] unsigned long LookupOptions,

[in] unsigned long ClientRevision

);

// Opnum 58

NTSTATUS

LsarLookupNames2(

[in] LSAPR_HANDLE PolicyHandle,

[in, range(0,1000)] unsigned long Count,

[in, size_is(Count)] PRPC_UNICODE_STRING Names,

[out] PLSAPR_REFERENCED_DOMAIN_LIST *ReferencedDomains,

[in, out] PLSAPR_TRANSLATED_SIDS_EX TranslatedSids,

[in] LSAP_LOOKUP_LEVEL LookupLevel,

[in, out] unsigned long *MappedCount,

[in] unsigned long LookupOptions,

[in] unsigned long ClientRevision

);

// Opnum 59

void

Lsar_LSA_DP_59( void );

// Opnum 60

void Opnum60NotUsedOnWire(void);

// Opnum 61

void Opnum61NotUsedOnWire(void);

// Opnum 62

void Opnum62NotUsedOnWire(void);

// Opnum 63

void Opnum63NotUsedOnWire(void);

// Opnum 64

void Opnum64NotUsedOnWire(void);

// Opnum 65

void Opnum65NotUsedOnWire(void);

// Opnum 66

void Opnum66NotUsedOnWire(void);

// Opnum 67

void Opnum67NotUsedOnWire(void);

// Opnum 68

NTSTATUS

LsarLookupNames3(

[in] LSAPR_HANDLE PolicyHandle,

[in, range(0,1000)] unsigned long Count,

[in, size_is(Count)] PRPC_UNICODE_STRING Names,

[out] PLSAPR_REFERENCED_DOMAIN_LIST *ReferencedDomains,

[in, out] PLSAPR_TRANSLATED_SIDS_EX2 TranslatedSids,

[in] LSAP_LOOKUP_LEVEL LookupLevel,

[in, out] unsigned long *MappedCount,

[in] unsigned long LookupOptions,

[in] unsigned long ClientRevision

);

// Opnum 69

void Opnum69NotUsedOnWire(void);

// Opnum 70

void Opnum70NotUsedOnWire(void);

// Opnum 71

void Opnum71NotUsedOnWire(void);

// Opnum 72

void Opnum72NotUsedOnWire(void);

// Opnum 73

void

Lsar_LSA_DP_73( void );

// Opnum 74

void

Lsar_LSA_DP_74( void );

// Opnum 75

void Opnum75NotUsedOnWire(void);

// Opnum 76

NTSTATUS

LsarLookupSids3(

[in] handle_t RpcHandle,

[in] PLSAPR_SID_ENUM_BUFFER SidEnumBuffer,

[out] PLSAPR_REFERENCED_DOMAIN_LIST *ReferencedDomains,

[in, out] PLSAPR_TRANSLATED_NAMES_EX TranslatedNames,

[in] LSAP_LOOKUP_LEVEL LookupLevel,

[in, out] unsigned long *MappedCount,

[in] unsigned long LookupOptions,

[in] unsigned long ClientRevision

);

// Opnum 77

NTSTATUS

LsarLookupNames4(

[in] handle_t RpcHandle,

[in, range(0,1000)] unsigned long Count,

[in, size_is(Count)] PRPC_UNICODE_STRING Names,

[out] PLSAPR_REFERENCED_DOMAIN_LIST *ReferencedDomains,

[in, out] PLSAPR_TRANSLATED_SIDS_EX2 TranslatedSids,

[in] LSAP_LOOKUP_LEVEL LookupLevel,

[in, out] unsigned long *MappedCount,

[in] unsigned long LookupOptions,

[in] unsigned long ClientRevision

);

}

<a id="Section_7"></a>
# 7 Appendix B: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

The terms "earlier" and "later", when used with a product version, refer to either all preceding versions or all subsequent versions, respectively. The term "through" refers to the inclusive range of versions. Applicable Microsoft products are listed chronologically in this section.

The following tables show the relationships between Microsoft product versions or supplemental software and the roles they perform.

| Windows Client releases | Client role | Server role |
| --- | --- | --- |
| Windows NT operating system | Yes | Yes |
| Windows 2000 Professional operating system | Yes | Yes |
| Windows XP operating system | Yes | Yes |
| Windows Vista operating system | Yes | Yes |
| Windows 7 operating system | Yes | Yes |
| Windows 8 operating system | Yes | Yes |
| Windows 8.1 operating system | Yes | Yes |
| Windows 10 operating system | Yes | Yes |
| Windows 11 operating system | Yes | Yes |

| Windows Server releases | Client role | Server role |
| --- | --- | --- |
| Windows NT | Yes | Yes |
| Windows 2000 Server operating system | Yes | Yes |
| Windows Server 2003 operating system | Yes | Yes |
| Windows Server 2003 R2 operating system | Yes | Yes |
| Windows Server 2008 operating system | Yes | Yes |
| Windows Server 2008 R2 operating system | Yes | Yes |
| Windows Server 2012 operating system | Yes | Yes |
| Windows Server 2012 R2 operating system | Yes | Yes |
| Windows Server 2016 operating system | Yes | Yes |
| Windows Server operating system | Yes | Yes |
| Windows Server 2019 operating system | Yes | Yes |
| Windows Server 2022 operating system | Yes | Yes |
| Windows Server 2025 operating system | Yes | Yes |

Exceptions, if any, are noted in this section. If an update version, service pack or Knowledge Base (KB) number appears with a product name, the behavior changed in that update. The new behavior also applies to subsequent updates unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<1> Section 2.1: The Windows [**RPC server**](#gt_rpc-server) and [**RPC client**](#gt_rpc-client) do not support TCP/IP on Windows NT and Windows 2000 operating system.

<2> Section 2.1: The endpoint "\PIPE\lsarpc" by default allows anonymous access on Windows NT 3.1 operating system, Windows NT 3.5 operating system, Windows NT 3.51 operating system, Windows 2000, Windows XP, Windows Server 2003, Windows Server 2003 R2, and Windows Vista. Anonymous access to this pipe is removed by default on Windows Vista operating system with Service Pack 1 (SP1) and later and Windows Server 2008 and later. Pipe access check happens before any other access check, and hence overrides any other access.

<3> Section 2.1: If the client uses an unsupported [**RPC protocol sequence**](#gt_rpc-protocol-sequence), the RPC server implementations in Windows 2000, Windows XP, Windows Server 2003, and Windows Server 2003 R2 return RPC_S_PROTSEQ_NOT_SUPPORTED (as specified in [MS-ERREF](../MS-ERREF/MS-ERREF.md)). Windows Vista and later and Windows Server 2008 and later throw an [**RPC**](#gt_remote-procedure-call-rpc) exception with status code ERROR_ACCESS_DENIED.

<4> Section 2.1: Servers running Windows 2000, Windows XP, and Windows Server 2003 accept calls at any authentication level. Without [[MSKB-3149090]](https://go.microsoft.com/fwlink/?LinkId=786963) installed, servers running Windows Vista, Windows Server 2008, Windows 7, Windows Server 2008 R2, Windows 8, Windows Server 2012, Windows 8.1, Windows Server 2012 R2, Windows 10 v1507 operating system, or Windows 10 v1511 operating system also accept calls at any authentication level.

<5> Section 2.2: The following table contains a timeline of when a particular data type was introduced.

| Data type name | Windows version |
| --- | --- |
| LSAPR_HANDLE | Windows NT 3.1 |
| STRING | Windows NT 3.1 |
| LSAPR_ACL | Windows NT 3.1 |
| SECURITY_DESCRIPTOR_CONTROL | Windows NT 3.1 |
| LSAPR_SECURITY_DESCRIPTOR | Windows NT 3.1 |
| SECURITY_IMPERSONATION_LEVEL | Windows NT 3.1 |
| SECURITY_CONTEXT_TRACKING_MODE | Windows NT 3.1 |
| SECURITY_QUALITY_OF_SERVICE | Windows NT 3.1 |
| LSAPR_OBJECT_ATTRIBUTES | Windows NT 3.1 |
| ACCESS_MASK | Windows NT 3.1 |
| LSAPR_TRUST_INFORMATION | Windows NT 3.1 |
| LSAPR_REFERENCED_DOMAIN_LIST | Windows NT 3.1 |
| SID_NAME_USE | Windows NT 3.1 |
| LSA_TRANSLATED_SID | Windows NT 3.1 |
| LSAPR_TRANSLATED_SIDS | Windows NT 3.1 |
| LSAP_LOOKUP_LEVEL | Windows NT 3.1 |
| LSAPR_SID_INFORMATION | Windows NT 3.1 |
| LSAPR_SID_ENUM_BUFFER | Windows NT 3.1 |
| LSAPR_TRANSLATED_NAME | Windows NT 3.1 |
| LSAPR_TRANSLATED_NAMES | Windows NT 3.1 |
| LSAPR_TRANSLATED_NAME_EX | Windows 2000 |
| LSAPR_TRANSLATED_NAMES_EX | Windows 2000 |
| LSAPR_TRANSLATED_SID_EX | Windows 2000 |
| LSAPR_TRANSLATED_SIDS_EX | Windows 2000 |
| LSAPR_TRANSLATED_SID_EX2 | Windows XP, Windows Server 2003 |
| LSAPR_TRANSLATED_SIDS_EX2 | Windows XP, Windows Server 2003 |

<6> Section 2.2.13: The following table contains a timeline of when a particular enumeration value was introduced.

| Enumeration value | Enumeration name | Windows version |
| --- | --- | --- |
| 1 | SidTypeUser | Windows NT 3.1 |
| 2 | SidTypeGroup | Windows NT 3.1 |
| 3 | SidTypeDomain | Windows NT 3.1 |
| 4 | SidTypeAlias | Windows NT 3.1 |
| 5 | SidTypeWellKnownGroup | Windows NT 3.1 |
| 6 | SidTypeDeletedAccount | Windows NT 3.1 |
| 7 | SidTypeInvalid | Windows NT 3.1 |
| 8 | SidTypeUnknown | Windows NT 3.1 |
| 9 | SidTypeComputer | Windows 2000 |
| 10 | SidTypeLabel | Windows Vista, Windows Server 2008 |

<7> Section 2.2.15: The Windows RPC server and RPC client limit the Entries field of this structure to 1,000 (using the range primitive defined in [MS-RPCE](../MS-RPCE/MS-RPCE.md)) in Windows XP operating system Service Pack 2 (SP2) and later and Windows Server 2003 and later. Windows NT 3.1, Windows NT 3.5, Windows NT 3.51, Windows NT 4.0 operating system, Windows 2000, and Windows XP do not have this restriction.

<8> Section 2.2.16: The following table contains a timeline of when particular enumeration values were introduced.

| Enumeration value | Enumeration name | Windows version |
| --- | --- | --- |
| 1 | LsapLookupWksta | Windows NT 3.1 |
| 2 | LsapLookupPDC | Windows NT 3.1 |
| 3 | LsapLookupTDL | Windows NT 3.1 |
| 4 | LsapLookupGC | Windows 2000 |
| 5 | LsapLookupXForestReferral | Windows XP, Windows Server 2003 |
| 6 | LsapLookupXForestResolve | Windows XP, Windows Server 2003 |
| 7 | LsapLookupRODCReferralToFullDC | Windows Vista, Windows Server 2008 |

<9> Section 2.2.18: The Windows implementation of the RPC server and RPC client limits the **Entries** field of this structure to 0x5000 (using the range primitive defined in [MS-RPCE]) in Windows XP SP2 and later and Windows Server 2003 and later. Windows NT 3.1, Windows NT 3.5, Windows NT 3.51, Windows NT 4.0, Windows 2000, and Windows XP do not enforce this restriction.

<10> Section 2.2.20: The Windows RPC server and RPC client limit the Entries field of this structure to 0x5000 (using the range primitive defined in [MS-RPCE]) in Windows XP SP2 and later and Windows Server 2003 and later. Windows NT 3.1, Windows NT 3.5, Windows NT 3.51, Windows NT 4.0, Windows 2000, and Windows XP do not enforce this restriction.

<11> Section 2.2.21: The following table contains a timeline of when each flag value was introduced.

| Flag value | Windows version |
| --- | --- |
| 0x00000001 | Windows 2000 |
| 0x00000002 | Windows XP, Windows Server 2003 |
| 0x00000004 | Windows Vista, Windows Server 2008 |

<12> Section 2.2.22: The Windows RPC server and RPC client limit the **Entries** field of this structure to 0x5000 (using the range primitive defined in [MS-RPCE]) in Windows XP SP2 and later and Windows Server 2003 and later. Windows NT 3.1, Windows NT 3.5, Windows NT 3.51, Windows NT 4.0, Windows 2000, and Windows XP do not enforce this restriction.

<13> Section 2.2.23: The following table contains a timeline of when each flag value was introduced.

| Flag value | Windows version |
| --- | --- |
| 0x00000001 | Windows 2000 |
| 0x00000002 | Windows XP, Windows Server 2003 |
| 0x00000004 | Windows Vista, Windows Server 2008 |

<14> Section 2.2.24: The Windows RPC server and RPC client limit the **Entries** field of this structure to 1,000 (using the range primitive defined in [MS-RPCE]) in Windows XP SP2 and later and Windows Server 2003 and later. Windows NT 3.1, Windows NT 3.5, Windows NT 3.51, Windows NT 4.0, Windows 2000, and Windows XP do not enforce this restriction.

<15> Section 2.2.25: The following table contains a timeline of when each flag value was introduced.

| Flag value | Windows version |
| --- | --- |
| 0x00000001 | Windows 2000 |
| 0x00000002 | Windows XP, Windows Server 2003 |
| 0x00000004 | Windows Vista, Windows Server 2008 |

<16> Section 2.2.26: The Windows RPC server and RPC client limit the **Entries** field of this structure to 1,000 (using the range primitive defined in [MS-RPCE]) in Windows XP SP2 and later and Windows Server 2003 and later. Windows NT 3.1, Windows NT 3.5, Windows NT 3.51, Windows NT 4.0, Windows 2000, and Windows XP do not enforce this restriction.

<17> Section 3.1.1.1: Windows NT 3.1, Windows NT 3.5, Windows NT 3.51, and Windows NT 4.0, when creating these views, leave the **Domain DNS Name**, **Default User Principal Names**, **User Principal Name**, and **Security Principal SID History** columns empty; therefore, they cannot be used for matching.

<18> Section 3.1.1.1.1: The Enterprise Domain Controllers, Self, Authenticated Users, Restricted, and Terminal Server User entries were added in Windows 2000.

The Local Service, Network Service, and Remote Interactive Logon entries were added in Windows XP.

The This Organization and Other Organization entries were added in Windows Server 2003.

<19> Section 3.1.1.1.1: The entries in the table that precedes this citation in section [3.1.1.1.1](#Section_3.1.1.1.1) were added in Windows Server 2003.

<20> Section 3.1.1.1.1: The entries in the table that precedes this citation in section 3.1.1.1.1 were added in Windows Vista.

<21> Section 3.1.4: The Windows implementation of this protocol asks the RPC engine to do the following:

- Perform a strict [**Network Data Representation (NDR)**](#gt_network-data-representation-ndr) data consistency check at target level 5.0 (as specified in [MS-RPCE] section 3) in all version of Windows except Windows NT.
- Include support for both NDR and NDR64 transfer syntaxes, as well as the negotiation mechanism for determining what transfer syntax will be used (as specified in [MS-RPCE] section 3) in Windows XP and later and Windows Server 2003 and later.
- Via the strict_context_handle attribute, reject the use of context handles created by a method of a different RPC interface than this one (as specified in [MS-RPCE] section 3).
<22> Section 3.1.4: The following table contains a timeline of when each method was introduced.

| Opnum | Friendly name | Product |
| --- | --- | --- |
| 0 | LsarClose | Windows NT 3.1 |
| 6 | LsarOpenPolicy | Windows NT 3.1 |
| 14 | LsarLookupNames | Windows NT 3.1 |
| 15 | LsarLookupSids | Windows NT 3.1 |
| 44 | LsarOpenPolicy2 | Windows NT 3.51 |
| 45 | LsarGetUserName | Windows NT 4.0 |
| 57 | LsarLookupSids2 | Windows 2000 |
| 58 | LsarLookupNames2 | Windows 2000 |
| 68 | LsarLookupNames3 | Windows XP, Windows Server 2003 |
| 76 | LsarLookupSids3 | Windows XP, Windows Server 2003 |
| 77 | LsarLookupNames4 | Windows XP, Windows Server 2003 |

<23> Section 3.1.4: Some gaps in the [**opnum**](#gt_opnum) numbering sequence correspond to opnums that are documented in [MS-LSAD](../MS-LSAD/MS-LSAD.md). All other gaps in the opnum numbering sequence apply to Windows as follows.

| Opnum | Description |
| --- | --- |
| 1 | Used only locally by Windows, never remotely. |
| 5 | Not used by Windows. |
| 9 | Not used by Windows. |
| 21 | Not used by Windows. |
| 22 | Not used by Windows. |
| 52 | Not used by Windows. |
| 56 | Used only locally by Windows, never remotely. |
| 60 | Used only locally by Windows, never remotely. |
| 61 | Used only locally by Windows, never remotely. |
| 62 | Used only locally by Windows, never remotely. |
| 63 | Used only locally by Windows, never remotely. |
| 64 | Used only locally by Windows, never remotely. |
| 65 | Used only locally by Windows, never remotely. |
| 66 | Used only locally by Windows, never remotely. |
| 67 | Used only locally by Windows, never remotely. |
| 69 | Used only locally by Windows, never remotely. |
| 70 | Used only locally by Windows, never remotely. |
| 71 | Used only locally by Windows, never remotely. |
| 72 | Used only locally by Windows, never remotely. |
| 75 | Used only locally by Windows, never remotely. |

<24> Section 3.1.4.5: The Windows RPC server and RPC client limit the **Count** field of this structure to 1,000 (using the range primitive defined in [MS-RPCE]) in Windows XP SP2 and later and Windows Server 2003 and later. Windows NT 3.1, Windows NT 3.5, Windows NT 3.51, Windows NT 4.0, Windows 2000, and Windows XP do not enforce this restriction.

<25> Section 3.1.4.5: For Windows, usage of 0x00000001 for ClientRevision implies a client that is running an operating system released before Windows 2000 (Windows NT 3.1, Windows NT 3.5, Windows NT 3.51, and Windows NT 4.0). Usage of 0x00000002 implies that the client is running an operating system version of Windows 2000 and later.

<26> Section 3.1.4.5: Applies to Windows 11, version 24H2 operating system and later, and to Windows Server 2025 and later.

<27> Section 3.1.4.5: Windows 2000 Server, Windows Server 2003, and Windows Server 2003 R2 do not match names in [**user principal name**](#gt_user-principal-name-upn) form if ALL of the following are true:

- *LookupLevel* is either LsapLookupWksta or LsapLookupPDC.
- The server is a [**domain controller**](#gt_domain-controller-dc).
- *ClientRevision* is 0x00000001.
- The server is in a mixed [**domain**](#gt_domain) environment.
<28> Section 3.1.4.5: On a domain-joined, non-DC machine, when 0x80000000 is passed for the *LookupOptions* argument with a mix of isolated and composite names that cannot be matched in the views that are to be searched, Windows XP and later and Windows Server 2003 and later return STATUS_SOME_NOT_MAPPED.

<29> Section 3.1.4.6: All versions of Windows that implement this method ([LsarLookupNames3](#Section_3.1.4.6)) also implement [LsarLookupNames4](#Section_3.1.4.5) (both in terms of client and server); hence, this method does not need to be implemented to interoperate with Windows clients or servers. The choice of which method to call depends on whether the client has a [**local security authority (LSA)**](#gt_local-security-authority-lsa) policy handle or an RPC binding handle. Complete compatibility with Windows supports both calls.

<30> Section 3.1.4.6: The Windows implementation of the RPC server and RPC client limits the **Count** field of this structure to 1,000 (using the range primitive defined in [MS-RPCE]) in Windows XP SP2 and later and Windows Server 2003 and later. Windows NT 3.1, Windows NT 3.5, Windows NT 3.51, Windows NT 4.0, Windows 2000, and Windows XP do not enforce this restriction.

<31> Section 3.1.4.7: A Windows RPC server can optionally be configured to deny this call, and the error returned in this case is STATUS_NOT_SUPPORTED.

<32> Section 3.1.4.7: The Windows RPC server and RPC client limit the **Count** field of this structure to 1,000 (using the range primitive defined in [MS-RPCE]) in Windows XP SP2 and later and Windows Server 2003 and later. Windows NT 3.1, Windows NT 3.5, Windows NT 3.51, Windows NT 4.0, Windows 2000, and Windows XP do not enforce this restriction.

<33> Section 3.1.4.8: The Windows RPC server and RPC client limit the **Count** field of this structure to 1,000 (using the range primitive defined in [MS-RPCE]) in Windows XP SP2 and later and Windows Server 2003 and later. Windows NT 3.1, Windows NT 3.5, Windows NT 3.51, Windows NT 4.0, Windows 2000, and Windows XP do not enforce this restriction.

<34> Section 3.1.4.9: Applies to Windows 11, version 24H2 and later, and to Windows Server 2025 and later.

<35> Section 3.1.4.10: The Windows RPC client sets LookupOptions to 0.

<36> Section 3.2: Windows clients negotiate the highest revision supported by the server by first calling the highest revision supported for that client. If the RPC exception that indicates that the function is out of range is returned from the server (exception number 0x6d1), the client proceeds to call the next lower revision. This process is repeated until the oldest possible revision supported by the client is invoked or until the server responds to the request.

<37> Section 5.1: The Windows RPC server for this protocol is customizable to allow anonymous callers to make requests for compatibility with Windows NT 3.1, Windows NT 3.5, Windows NT 3.51, and Windows NT 4.0 machines.

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
| [3.1.4.5](#Section_3.1.4.5) LsarLookupNames4 (Opnum 77) | Updated for Windows 11 v24H2 and Windows Server 2025. Added a new, alternative condition for the RPC server relying on well-known SIDs. | Major |
| [3.1.4.9](#Section_3.1.4.9) LsarLookupSids3 (Opnum 76) | Updated for Windows 11 v24H2 and Windows Server 2025. Added a new, alternative condition for the RPC server relying on well-known SIDs. | Major |
| [7](#Section_7) Appendix B: Product Behavior | Added Windows Server 2025 to the Windows Server releases role table list of applicable products. | Major |

