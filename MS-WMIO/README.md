# [MS-WMIO]: Windows Management Instrumentation Encoding Version 1.0 Protocol

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
  - [2.1 Introduction](#Section_2.1)
  - [2.2 Annotated Object Block Encoding](#Section_2.2)
    - [2.2.1 EncodingUnit](#Section_2.2.1)
    - [2.2.2 EncodingUnitObjectBlock](#Section_2.2.2)
    - [2.2.3 EncodingUnitInstanceNoClass](#Section_2.2.3)
    - [2.2.4 ObjectEncodingLength](#Section_2.2.4)
    - [2.2.5 ObjectBlock](#Section_2.2.5)
    - [2.2.6 ObjectFlags](#Section_2.2.6)
    - [2.2.7 Decoration](#Section_2.2.7)
    - [2.2.8 DecServerName](#Section_2.2.8)
    - [2.2.9 DecNamespaceName](#Section_2.2.9)
    - [2.2.10 Encoding](#Section_2.2.10)
    - [2.2.11 ClassType](#Section_2.2.11)
    - [2.2.12 ParentClass](#Section_2.2.12)
    - [2.2.13 CurrentClass](#Section_2.2.13)
    - [2.2.14 ClassAndMethodsPart](#Section_2.2.14)
    - [2.2.15 ClassPart](#Section_2.2.15)
    - [2.2.16 ClassHeader](#Section_2.2.16)
    - [2.2.17 DerivationList](#Section_2.2.17)
    - [2.2.18 ClassNameEncoding](#Section_2.2.18)
    - [2.2.19 ClassNameRef](#Section_2.2.19)
    - [2.2.20 ClassQualifierSet](#Section_2.2.20)
    - [2.2.21 PropertyLookupTable](#Section_2.2.21)
    - [2.2.22 PropertyCount](#Section_2.2.22)
    - [2.2.23 PropertyLookup](#Section_2.2.23)
    - [2.2.24 PropertyNameRef](#Section_2.2.24)
    - [2.2.25 PropertyInfoRef](#Section_2.2.25)
    - [2.2.26 NdTable](#Section_2.2.26)
    - [2.2.27 NullAndDefaultFlag](#Section_2.2.27)
    - [2.2.28 NdTableValueTableLength](#Section_2.2.28)
    - [2.2.29 ValueTable](#Section_2.2.29)
    - [2.2.30 PropertyInfo](#Section_2.2.30)
    - [2.2.31 PropertyType](#Section_2.2.31)
    - [2.2.32 Inherited](#Section_2.2.32)
    - [2.2.33 DeclarationOrder](#Section_2.2.33)
    - [2.2.34 ValueTableOffset](#Section_2.2.34)
    - [2.2.35 ClassOfOrigin](#Section_2.2.35)
    - [2.2.36 PropertyQualifierSet](#Section_2.2.36)
    - [2.2.37 ClassHeap](#Section_2.2.37)
    - [2.2.38 MethodsPart](#Section_2.2.38)
    - [2.2.39 MethodCount](#Section_2.2.39)
    - [2.2.40 MethodCountPadding](#Section_2.2.40)
    - [2.2.41 MethodDescription](#Section_2.2.41)
    - [2.2.42 MethodName](#Section_2.2.42)
    - [2.2.43 MethodFlags](#Section_2.2.43)
    - [2.2.44 MethodPadding](#Section_2.2.44)
    - [2.2.45 MethodOrigin](#Section_2.2.45)
    - [2.2.46 MethodQualifiers](#Section_2.2.46)
    - [2.2.47 HeapQualifierSetRef](#Section_2.2.47)
    - [2.2.48 InputSignature](#Section_2.2.48)
    - [2.2.49 OutputSignature](#Section_2.2.49)
    - [2.2.50 MethodSignature](#Section_2.2.50)
    - [2.2.51 HeapMethodSignatureBlockRef](#Section_2.2.51)
    - [2.2.52 MethodHeap](#Section_2.2.52)
    - [2.2.53 InstanceType](#Section_2.2.53)
    - [2.2.54 InstanceFlags](#Section_2.2.54)
    - [2.2.55 InstanceClassName](#Section_2.2.55)
    - [2.2.56 InstanceData](#Section_2.2.56)
    - [2.2.57 InstanceQualifierSet](#Section_2.2.57)
    - [2.2.58 InstanceHeap](#Section_2.2.58)
    - [2.2.59 QualifierSet](#Section_2.2.59)
    - [2.2.60 Qualifier](#Section_2.2.60)
    - [2.2.61 QualifierName](#Section_2.2.61)
    - [2.2.62 QualifierFlavor](#Section_2.2.62)
    - [2.2.63 QualifierType](#Section_2.2.63)
    - [2.2.64 QualifierValue](#Section_2.2.64)
    - [2.2.65 InstancePropQualifierSet](#Section_2.2.65)
    - [2.2.66 Heap](#Section_2.2.66)
    - [2.2.67 HeapItem](#Section_2.2.67)
    - [2.2.68 HeapStringRef](#Section_2.2.68)
    - [2.2.69 HeapRef](#Section_2.2.69)
    - [2.2.70 MethodSignatureBlock](#Section_2.2.70)
    - [2.2.71 EncodedValue](#Section_2.2.71)
    - [2.2.72 NumericValue](#Section_2.2.72)
    - [2.2.73 EncodingLength](#Section_2.2.73)
    - [2.2.74 NoValue](#Section_2.2.74)
    - [2.2.75 BOOL](#Section_2.2.75)
    - [2.2.76 ReservedOctet](#Section_2.2.76)
    - [2.2.77 Signature](#Section_2.2.77)
    - [2.2.78 Encoded-String](#Section_2.2.78)
    - [2.2.79 Encoded-Array](#Section_2.2.79)
    - [2.2.80 DictionaryReference](#Section_2.2.80)
    - [2.2.81 BIT](#Section_2.2.81)
    - [2.2.82 CimType](#Section_2.2.82)
  - [2.3 Special Data Type Encodings](#Section_2.3)
    - [2.3.1 CIM DateTime Type](#Section_2.3.1)
    - [2.3.2 CIM Reference Types](#Section_2.3.2)
    - [2.3.3 CIM Methods](#Section_2.3.3)
    - [2.3.4 Heap Encoding](#Section_2.3.4)
</details>

<details>
<summary>3 Structure Examples</summary>

- [3 Structure Examples](#Section_3)
  - [3.1 Instance Encoding](#Section_3.1)
  - [3.2 Class Encoding with Methods](#Section_3.2)
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
<summary>6 Appendix B: ABNF Encoding Definition</summary>

- [6 Appendix B: ABNF Encoding Definition](#Section_6)
</details>

<details>
<summary>7 Change Tracking</summary>

- [7 Change Tracking](#Section_7)
</details>
<a id="Section_1"></a>
# 1 Introduction

The Windows Management Instrumentation Encoding Version 1.0 Protocol specifies a binary data [**encoding**](#gt_encoding) format that is used by the Windows Management Instrumentation Remote Protocol, specified in [MS-WMI](../MS-WMI/MS-WMI.md) for network communication.

The carrier protocol for this encoding is the [**Distributed Component Object Model (DCOM)**](#gt_distributed-component-object-model-dcom) Remote Protocol, as specified in [MS-DCOM](../MS-DCOM/MS-DCOM.md), which is used in combination with [**Windows Management Instrumentation (WMI)**](#gt_windows-management-instrumentation-wmi) interfaces, as specified in [MS-WMI]. This specification does not specify the Windows Management Instrumentation Remote Protocol operations; it instead specifies the data encoding that is used by the protocol.

WMI uses the [**Common Information Model (CIM)**](#gt_common-information-model-cim), which is published and maintained by the Distributed Management Task Force (DMTF) (see [[DMTF]](https://go.microsoft.com/fwlink/?LinkId=233129)). The Common Information Model (CIM) Infrastructure Specification (as specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848)) defines the object model itself. This specification depends entirely on the metamodel and terminology specified in the DMTF specification set. The reader is referred to the CIM Infrastructure Specification for a description of the CIM metamodel. The [**CIM objects**](#gt_cim-object) that are transferred by the Windows Management Instrumentation Remote Protocol are CIM objects encoded by using the technique specified in this specification.

The DMTF CIM specifications only specify a text-based encoding that is called [**Managed Object Format (MOF)**](#gt_managed-object-format-mof). However, MOF is inefficient for network use. The format specified in this document is an efficient binary format for describing CIM objects within network packets.

Sections 1.7 and 2 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_augmented-backus-naur-form-abnf"></a>
**Augmented Backus-Naur Form (ABNF)**: A modified version of Backus-Naur Form (BNF), commonly used by Internet specifications. ABNF notation balances compactness and simplicity with reasonable representational power. ABNF differs from standard BNF in its definitions and uses of naming rules, repetition, alternatives, order-independence, and value ranges. For more information, see [[RFC5234]](https://go.microsoft.com/fwlink/?LinkId=123096).

<a id="gt_cim-class"></a>
**CIM class**: A [**CIM object**](#gt_cim-object) that represents a [**CIM class**](#gt_cim-class) definition as a [**CIM object**](#gt_cim-object). It is the template representing a manageable entity with a set of properties and methods.

<a id="gt_cim-instance"></a>
**CIM instance**: An instantiation of a [**CIM class**](#gt_cim-class) representing a manageable entity.

<a id="gt_cim-object"></a>
**CIM object**: Refers to a [**CIM class**](#gt_cim-class) or a [**CIM instance**](#gt_cim-instance).

<a id="gt_common-information-model-cim"></a>
**Common Information Model (CIM)**: The Distributed Management Task Force (DMTF) model that describes how to represent real-world computer and network objects. CIM uses an object-oriented paradigm, where managed objects are modeled using the concepts of classes and instances. See [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848).

<a id="gt_common-information-model-cim-class"></a>
**Common Information Model (CIM) class**: A collection of [**Common Information Model (CIM)**](#gt_common-information-model-cim) instances that support the same type, that is, the same CIM properties and CIM methods, as specified in [DMTF-DSP0004].

<a id="gt_common-information-model-cim-instance"></a>
**Common Information Model (CIM) instance**: Provides values for the [**CIM**](#gt_common-information-model-cim) properties associated with the [**CIM instance's**](#gt_c4119a8a-24db-40cc-9657-7cb5c23ecf43) defining [**CIM class**](#gt_cim-class). A [**CIM instance**](#gt_cim-instance) does not carry values for any other [**CIM**](#gt_common-information-model-cim) properties or CIM methods that are not defined in (or inherited by) its defining [**CIM class**](#gt_cim-class). For more information, see [DMTF-DSP0004].

<a id="gt_common-information-model-cim-object"></a>
**Common Information Model (CIM) object**: An object that represents a [**Common Information Model (CIM)**](#gt_common-information-model-cim) object. This can be either a [**CIM class**](#gt_cim-class) or a [**CIM instance**](#gt_cim-instance) of a [**CIM class**](#gt_cim-class).

<a id="gt_common-information-model-cim-property"></a>
**Common Information Model (CIM) property**: Assigns values used to characterize instances of a [**CIM class**](#gt_cim-class). A [**CIM property**](#gt_a95b6b41-8fd2-4d80-8632-1eb34c17a4fe) can be thought of as a pair of Get and Set functions that, when applied to an object, return state and set state, respectively. For more information, see [DMTF-DSP0004].

<a id="gt_common-information-model-cim-qualifier"></a>
**Common Information Model (CIM) qualifier**: Used to characterize named elements, as specified in [DMTF-DSP0004]. For example, there are [**CIM qualifiers**](#gt_de5d4ab8-e295-4a98-bb5c-3aaf70c43ad0) that define the characteristics of a [**CIM property**](#gt_a95b6b41-8fd2-4d80-8632-1eb34c17a4fe) or the key of a [**CIM class**](#gt_cim-class).

<a id="gt_distributed-component-object-model-dcom"></a>
**Distributed Component Object Model (DCOM)**: The Microsoft Component Object Model (COM) specification that defines how components communicate over networks, as specified in [MS-DCOM](../MS-DCOM/MS-DCOM.md).

<a id="gt_domain-name-system-dns"></a>
**Domain Name System (DNS)**: A hierarchical, distributed database that contains mappings of domain names to various types of data, such as IP addresses. DNS enables the location of computers and services by user-friendly names, and it also enables the discovery of other information stored in the database.

<a id="gt_encoding"></a>
**encoding**: The binary layout that is used to represent a [**Common Information Model (CIM) object**](#gt_common-information-model-cim-object), whether a [**CIM class**](#gt_cim-class) or [**CIM instance**](#gt_cim-instance) definition. The [**encoding**](#gt_encoding) is what is actually transferred by the protocol.

<a id="gt_managed-object-format-mof"></a>
**Managed Object Format (MOF)**: A textual encoding for [**Common Information Model (CIM)**](#gt_common-information-model-cim) objects, this representation is not used within protocol operations defined in [MS-WMI](../MS-WMI/MS-WMI.md). MOF is defined in [DMTF-DSP0004] section 3. The MOF text encoding is only used for illustrative purposes. The binary encoding can be translated to and from the MOF format.

<a id="gt_superclasses-and-subclasses"></a>
**superclasses and subclasses**: Types of [**Common Information Model (CIM)**](#gt_common-information-model-cim) classes. A subclass is derived from a superclass. The subclasses inherit all features of its superclass but can add new features or redefine existing ones. A superclass is the [**CIM**](#gt_common-information-model-cim) class from which a [**CIM**](#gt_common-information-model-cim) class inherits.

<a id="gt_windows-management-instrumentation-wmi"></a>
**Windows Management Instrumentation (WMI)**: The Microsoft implementation of [**Common Information Model (CIM)**](#gt_common-information-model-cim), as specified in [DMTF-DSP0004]. WMI allows an administrator to manage local and remote machines and models computer and network objects using an extension of the [**CIM**](#gt_common-information-model-cim) standard.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[DMTF-DSP0004] Distributed Management Task Force, "Common Information Model (CIM) Infrastructure Specification", DSP0004, version 2.3 final, October 2005, [http://www.dmtf.org/standards/published_documents/DSP0004V2.3_final.pdf](https://go.microsoft.com/fwlink/?LinkId=89848)

[IEEE754] IEEE, "IEEE Standard for Binary Floating-Point Arithmetic", IEEE 754-1985, October 1985, [http://ieeexplore.ieee.org/servlet/opac?punumber=2355](https://go.microsoft.com/fwlink/?LinkId=89903)

[MS-DCOM] Microsoft Corporation, "[Distributed Component Object Model (DCOM) Remote Protocol](../MS-DCOM/MS-DCOM.md)".

[MS-WMI] Microsoft Corporation, "[Windows Management Instrumentation Remote Protocol](../MS-WMI/MS-WMI.md)".

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC4234] Crocker, D., Ed., and Overell, P., "Augmented BNF for Syntax Specifications: ABNF", RFC 4234, October 2005, [https://www.rfc-editor.org/info/rfc4234](https://go.microsoft.com/fwlink/?LinkId=90462)

[UNICODE] The Unicode Consortium, "The Unicode Consortium Home Page", [http://www.unicode.org/](https://go.microsoft.com/fwlink/?LinkId=90550)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[DMTF] DMTF, "Distributed Management Task Force (DMTF)", [http://dmtf.org](https://go.microsoft.com/fwlink/?LinkId=233129)

<a id="Section_1.3"></a>
## 1.3 Overview

The carrier protocol, as specified in [MS-WMI](../MS-WMI/MS-WMI.md), is the actual protocol for transferring [**CIM objects**](#gt_cim-object) specified in this specification. This specification defines a binary format that is used within the custom marshaling of the Windows Management Instrumentation Remote Protocol (as specified in [MS-WMI]) when CIM objects are being transferred in a protocol operation.

The WMI Remote Protocol is a management protocol for querying status and controlling the settings of real-world managed entities. These entities are modeled by using CIM objects, as specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848).

For example, a logical drive might be modeled as a [**CIM object**](#gt_cim-object) in which the class of the CIM object is Disk and the various characteristics of the Disk (such as its VolumeLabel, DriveLetter, and the active FileSystem type) are properties in the [**CIM class**](#gt_cim-class). CIM class definitions are thus similar to class definitions in other object-oriented database systems and programming systems.

In the WMI Remote Protocol, each managed entity is assigned a CIM class, and instances of that entity become [**CIM instances**](#gt_cim-instance). Continuing with the previous example, the Disk class can contain three instances: one for drive C, one for drive D, and one for drive E.

To query the status of the real-world CIM objects, the WMI Remote Protocol is used to retrieve these instances by using operations such as GetObject or ExecQuery. If updates are required, the WMI Remote Protocol is used to send the updated [**CIM instance**](#gt_cim-instance) over the wire with the new values. To perform an update, the WMI Remote Protocol writes the complete updated instance, even if only one value is changed. Thus, the WMI Remote Protocol requires an [**encoding**](#gt_encoding) technique of some kind to move CIM objects across the wire when both reading and writing values.

As specified in [DMTF-DSP0004] section 3, [**CIM classes**](#gt_015d0e5e-5166-4987-98b9-9c4128cf55be) and instances are defined and illustrated by using the [**MOF**](#gt_managed-object-format-mof) syntax. This is a text-only format for use by tools and in documentation and is not designed for use in a network protocol.

It is not possible to predefine binary layouts for the various types of CIM objects that can be transferred because the system is fully dynamic. New types of classes can be installed and transmitted over the WMI Remote Protocol by vendors and end users, and the full set of CIM object types is not known by the implementation.

This specification defines a binary encoding format as a representation format for CIM objects. When a client application needs to read a CIM class or instance, a GetObject (as specified in [MS-WMI]) operation is performed, and the CIM object is encoded in the definition in this specification. Similarly, if the CIM instance requires updating, the PutInstance operation (as specified in [MS-WMI]) is used, and the updated CIM instance is encoded by using the format in this specification.

The WMI Remote Protocol can read and write both CIM classes and instances of those classes. This specification details how the CIM classes and their instances are encoded for use in the WMI Remote Protocol.

When retrieving CIM objects, the binary encoding that is transmitted over the WMI Remote Protocol has to be decoded. The binary packet is parsed by using [**Augmented Backus-Naur Form (ABNF)**](#gt_augmented-backus-naur-form-abnf) rules in a top-down, recursive descent manner, starting with the root-level grammar rule specified in section [2.2.1](#Section_2.2.1). The first octets are examined as the input tokens to the parser, the ABNF rules are examined, and the various branches are taken, consuming the octets until the entire packet is decoded. This is equivalent to LL(1) recursive-descent parsing. For more information, see [AHO-ULLMAN] and numerous compiler textbooks.

For example, ABNF shows that the first nonterminal token is an octet sequence 0x12345678 (the Signature rule). If the first octets match this, the next rule is the ObjectEncodingLength rule, which specifies that the next four octets specify the encoding length of the entire packet. After these octets are consumed, the next octets are examined according to matching rules, using the established convention, as specified in [[RFC4234]](https://go.microsoft.com/fwlink/?LinkId=90462).

When encoding CIM objects for transmission, the ABNF grammar is traversed top-down, and the ABNF grammar rules starting in section 2.2.1 are used to emit the correct octets based on the CIM object that needs to be encoded. Decoding uses the same grammar traversal rules except the existing octet sequence is matched against the grammar token by token.

For example, the rules specify that Signature has to be the first block; so the encoder emits the octet sequence 0x12345678 to match the required rule. Next, the EncodingLength is required. The encoder cannot detect how many octets are required to complete the encoding; so some type of placeholder is established, and the emitter continues, encoding the CIM object using the rules until the CIM object is completely examined and encoded. Next, the encoder has to determine whether the CIM object being encoded is a CIM class or a CIM instance. Then the encoder emits the correct octet value using the ObjectFlags rule. Before this octet is emitted, the encoder has to determine whether the encoded CIM object will contain the server name of origin (the DecServerName rule) and the [**CIM**](#gt_common-information-model-cim) namespace name (DecNamespaceName). After it is known whether these values will form part of the encoding, the ObjectFlags octet bit values can be set, and the octet can be emitted to the encoding buffer. The rules are traversed for encoding exactly as for decoding, except that the encoder emits the octets instead of recognizing existing octets.

Implementers that use the ABNF grammar (as specified in [RFC4234]) are recommended to be thoroughly familiar with recursive-descent parsing, concepts of terminal and nonterminal productions, LL(1) grammar theory, and code emission techniques with syntax-directed translators. The techniques for the encoding and decoding are thus equivalent to the techniques used by high-level language compilers.

<a id="Section_1.4"></a>
## 1.4 Relationship to Protocols and Other Structures

Because this specification only specifies an [**encoding**](#gt_encoding), there are no specific relationships to other protocols other than what is specified in [MS-WMI](../MS-WMI/MS-WMI.md).

<a id="Section_1.5"></a>
## 1.5 Applicability Statement

The [**encoding**](#gt_encoding) in this specification is used wherever [**CIM classes**](#gt_015d0e5e-5166-4987-98b9-9c4128cf55be) and [**CIM objects**](#gt_cim-object) are transferred on the wire, as specified in [MS-WMI](../MS-WMI/MS-WMI.md).

<a id="Section_1.6"></a>
## 1.6 Versioning and Localization

Only one version of the encoding currently exists. There are no provisions for multiple encodings or alternate versions.

<a id="Section_1.7"></a>
## 1.7 Vendor-Extensible Fields

The encoding format is not extensible.

<a id="Section_2"></a>
# 2 Structures

Because this specification specifies an [**encoding**](#gt_encoding) that is used by the Windows Management Instrumentation Remote Protocol (as specified in [MS-WMI](../MS-WMI/MS-WMI.md)), no messages or network-level operations are defined.

Annotated object block encoding for the Windows Management Instrumentation Encoding Version 1.0 Protocol is specified in the following sections.

<a id="Section_2.1"></a>
## 2.1 Introduction

The following sections specify annotated object block [**encoding**](#gt_encoding) for the Windows Management Instrumentation Encoding Version 1.0 Protocol.

<a id="Section_2.2"></a>
## 2.2 Annotated Object Block Encoding

[**CIM instance**](#gt_cim-instance) and [**CIM class**](#gt_cim-class) definitions, as specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848) section 2.1, are encoded by using a binary data format. Qualifiers for instance and instance properties are Microsoft extensions to the [**CIM**](#gt_common-information-model-cim) data model. Like qualifiers applied to a class, qualifiers applied to an instance are specific to the instance, and the qualifier need not be specified in the class from which the instance is derived. If the class defines the qualifier, then the instance can redefine the qualifier only if the class allows overriding the qualifier. To capture the semantics of [**CIM classes**](#gt_015d0e5e-5166-4987-98b9-9c4128cf55be) and [**CIM instances**](#gt_cim-instance), the layout of the block reflects the [**CIM object**](#gt_cim-object) structure and is correspondingly complex but completely canonical according to [**ABNF**](#gt_augmented-backus-naur-form-abnf), as specified in section [6](#Section_6).

Because CIM classes and CIM instances have user-name properties and values, the data block can vary significantly, depending on the item that is being encoded. The traversal of the block is precisely equivalent to top-down parsing, using the well-known LL(1) parsing algorithm, and can be implemented in a recursive-descent parser. For more information, see [AHO-ULLMAN] section 4.4.

The representation of the grammar of the packet layout is presented in ABNF notation, as specified in [[RFC4234]](https://go.microsoft.com/fwlink/?LinkId=90462). Terminal tokens are in uppercase characters, such as UINT32, and have a binary [**encoding**](#gt_encoding) rule, as specified in section [2.3](#Section_2.3). All other productions of grammar are defined within ABNF. All the integer, unsigned integer, and floating point numbers that are encountered in the following encoding structures MUST be stored in little-endian format, unless explicitly stated otherwise.

In the definitions in this section, the use of the term offset always refers to an unsigned integer value that represents the distance, in octets, from some base point. An offset of zero indicates a reference to the first octet in the block, and an offset of seven indicates a reference to the eighth octet of the block.

<a id="Section_2.2.1"></a>
### 2.2.1 EncodingUnit

The EncodingUnit object block is the root node block of the encoding that is used for encoding classes or instances if the object is encoded as specified in [MS-WMI](../MS-WMI/MS-WMI.md) section 2.2.4.1. This block is contained within transmission encoding, as specified in [MS-DCOM](../MS-DCOM/MS-DCOM.md) and [MS-WMI] respectively.

EncodingUnit = Signature ObjectEncodingLength ObjectBlock

The **Signature** field (as specified in section [2.2.77](#Section_2.2.77)) acts as a verification signature for the EncodingUnit that is used to encode the [**CIM object**](#gt_cim-object) that follows, according to the algorithm that is specified in this specification. Any other value MUST constitute an error.

[ObjectEncodingLength (section 2.2.4)](#Section_2.2.4) represents the size of the [ObjectBlock (section 2.2.5)](#Section_2.2.5) that contains the encoded [**CIM class**](#gt_cim-class) or [**CIM instance**](#gt_cim-instance).

<a id="Section_2.2.2"></a>
### 2.2.2 EncodingUnitObjectBlock

EncodingUnitObjectBlock is the root node of the encoding that is used for encoding classes or instances if the object is encoded as specified in [MS-WMI](../MS-WMI/MS-WMI.md) section 2.2.14.2 and section 2.2.14.3. During transmission, this block is contained within the ObjectArray structure, as specified in [MS-WMI] section 2.2.14.

EncodingUnitObjectBlock = ObjectBlock

[ObjectBlock](../MS-WMI/MS-WMI.md) contains the binary encoding of the [**CIM object**](#gt_cim-object). The length of ObjectBlock MUST match the length specified in **dwSizeOfData** of WBEMOBJECT_CLASS (as specified in [MS-WMI] section 2.2.14.2) if EncodingUnitObjectBlock is contained within WBEMOBJECT_CLASS; or the length specified in **dwSizeOfData** of WBEMOBJECT_INSTANCE (as specified in [MS-WMI] section 2.2.14.3) if EncodingUnitObjectBlock is contained within WBEMOBJECT_INSTANCE.

<a id="Section_2.2.3"></a>
### 2.2.3 EncodingUnitInstanceNoClass

The EncodingUnitInstanceNoClass is the root node of the encoding that is used for encoding instances if the [**CIM instance**](#gt_cim-instance) is encoded as specified in [MS-WMI](../MS-WMI/MS-WMI.md) section 2.2.14.4. During transmission, this block is contained within the ObjectArray structure, as specified in [MS-WMI] section 2.2.14.

EncodingUnitInstanceNoClass = ObjectFlags [Decoration]

EncodingLength InstanceFlags InstanceClassName NdTable

InstanceData InstanceQualifierSet InstanceHeap

[ObjectFlags](#Section_2.2.6) (section 2.2.6) indicates whether the [Decoration](#Section_2.2.7) (section 2.2.7) block is present as specified in section 2.2.6. When used in EncodingUnitInstanceNoClass, the bit flag [**CIM class**](#gt_cim-class) (0x01) MUST NOT be set in ObjectFlags. Other bit flags of ObjectFlags MUST follow the constraints specified in section 2.2.6.

The Decoration block contains the server and [**CIM**](#gt_common-information-model-cim) namespace from which the object originates.

The [EncodingLength](#Section_2.2.73) field specifies the length, in octets, of itself and all the following fields.

[InstanceFlags](#Section_2.2.54) (section 2.2.54) is reserved and MUST be zero.

The CIM class name to which the CIM instance belongs is referenced by [InstanceClassName](#Section_2.2.55).

The values for the properties of an instance are stored in [NdTable](#Section_2.2.26) and [InstanceData](#Section_2.2.56). The length of NdTable can be calculated as specified in section 2.2.26. Because default values from CIM class definitions can be used in a CIM instance, as specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848), the NdTable bits are set to indicate whether NULL or a default value is in use for each property.

Any qualifier for the instance or for the properties of instance is stored in [InstanceQualifierSet](#Section_2.2.57).

The values for any [Heap](#Section_2.2.66)-referenced items anywhere in the EncodingUnitInstanceNoClass encoding block MUST be contained in the [InstanceHeap](#Section_2.2.58).

Note: EncodingUnitInstanceNoClass contains all the fields of [InstanceType](../MS-WMI/MS-WMI.md) except [CurrentClass](../MS-WMI/MS-WMI.md). To minimize the amount of data transmitted, the [ClassType](../MS-WMI/MS-WMI.md) is sent the first time using WBEMOBJECT_INSTANCE, as specified in [MS-WMI] section 2.2.14.3. When instances of the same class need to be transmitted again, they are sent using WBEMOBJECT_INSTANCE_NOCLASS, as specified in [MS-WMI] section 2.2.14.4, which does not have CurrentClass. To encode or decode EncodingUnitInstanceNoClass, the CurrentClass associated with the WBEMOBJECT_INSTANCE_NOCLASS MUST be found as specified in [MS-WMI] section 2.2.14.4. This CurrentClass MUST be inserted into the data after Decoration, and all the data starting with the CurrentClass MUST be encoded or decoded exactly as InstanceType.

<a id="Section_2.2.4"></a>
### 2.2.4 ObjectEncodingLength

ObjectEncodingLength is a 32-bit unsigned integer that specifies the length of the [ObjectBlock (section 2.2.5)](#Section_2.2.5).

ObjectEncodingLength = UINT32

<a id="Section_2.2.5"></a>
### 2.2.5 ObjectBlock

ObjectBlock is where the actual binary [**encoding**](#gt_encoding) of the [**CIM object**](#gt_cim-object) begins.

ObjectBlock = ObjectFlags [Decoration] Encoding

[ObjectFlags (section 2.2.6)](#Section_2.2.6) indicates whether the [Decoration (section 2.2.7)](#Section_2.2.7) block is present and whether the CIM object is a [**CIM class**](#gt_cim-class) definition or a [**CIM instance**](#gt_cim-instance). The [Encoding (section 2.2.10)](#Section_2.2.10) block contains either a CIM class or CIM instance definition, depending on the value of ObjectFlags.

<a id="Section_2.2.6"></a>
### 2.2.6 ObjectFlags

The ObjectFlags block is used to classify the currently encoded object.

ObjectFlags = OCTET

The octet MUST be a combination of one or more of the following values.

| Value | Meaning |
| --- | --- |
| 0x01 | The object is a [**CIM class**](#gt_cim-class). This flag is mutually exclusive with 0x02. If this flag is set, the [Encoding (section 2.2.10)](#Section_2.2.10) block contains ClassType. |
| 0x02 | The object is a [**CIM instance**](#gt_cim-instance). This flag is mutually exclusive with 0x01. If this flag is set, the Encoding (section 2.2.10) block contains InstanceType. |
| 0x04 | If this flag is set, the object has a [Decoration](#Section_2.2.7) block. |
| - | - |
| - | - |
| 0x10 | If this flag is set, the object is a prototype of the result object for the query, as specified in [MS-WMI](../MS-WMI/MS-WMI.md) (section 2.2.4.1). This flag MUST be used only in combination with the 0x01 flag. This flag MUST NOT be used when returning IWbemClassObject, which is not represented as a Prototype Result Object. |
| 0x40 | If this flag is set, one or more key properties of the class are not present in the Prototype Result Object. This flag MUST be used only in combination with the 0x01 and 0x10 flags. |

ObjectFlags MUST have either the 0x01 or the 0x02 bit set. They are mutually exclusive; both MUST NOT be set simultaneously.

<a id="Section_2.2.7"></a>
### 2.2.7 Decoration

The Decoration block is used to optionally decorate the [**CIM object**](#gt_cim-object) with information that indicates the server and [**CIM**](#gt_common-information-model-cim) namespace from which the CIM object originates. This block MUST be present if the [ObjectFlags (section 2.2.6)](#Section_2.2.6) octet has 0x04 bit flag set; otherwise, it MUST be omitted.

Decoration = DecServerName DecNamespaceName

In the encoded sequence, the strings [DecServerName (section 2.2.8)](#Section_2.2.8) and [DecNamespaceName (section 2.2.9)](#Section_2.2.9) MUST be placed inline. If either string has no value, an empty [Encoded-String](#Section_2.2.78) MUST be present. The two Encoded-String values MUST NOT be omitted, even if empty.

<a id="Section_2.2.8"></a>
### 2.2.8 DecServerName

DecServerName is an [Encoded-String](#Section_2.2.78) that represents the server name from which the [**CIM object**](#gt_cim-object) originates. The format of the string is purely documentary and can be in any format, such as a NetBIOS name, a [**Domain Name System (DNS)**](#gt_domain-name-system-dns) name, an IP address, or any other name that is expected to be useful in determining the origin of the packet.

DecServerName = Encoded-String

<a id="Section_2.2.9"></a>
### 2.2.9 DecNamespaceName

DecNamespaceName is an [Encoded-String](#Section_2.2.78) that represents the [**CIM**](#gt_common-information-model-cim) namespace name from which the [**CIM object**](#gt_cim-object) originates.

DecNamespaceName = Encoded-String

<a id="Section_2.2.10"></a>
### 2.2.10 Encoding

Because the [**encoding**](#gt_encoding) carries a [**CIM class**](#gt_cim-class) or a [**CIM instance**](#gt_cim-instance), the Encoding block is merely a switch to select the correct block.

Encoding = InstanceType / ClassType

The [InstanceType (section 2.2.53)](#Section_2.2.53) block encodes the CIM instance, and the [ClassType (section 2.2.11)](#Section_2.2.11) block encodes the CIM class object.

<a id="Section_2.2.11"></a>
### 2.2.11 ClassType

The ClassType block is used to define a [**CIM class**](#gt_cim-class). It consists of two sequential CIM class definitions. The first block consists of the definition of the [**superclass**](#gt_fbb1e623-a709-400d-8d4a-85df94ad58c3) to the current CIM class. The second block is the actual CIM class definition that is being encoded in the current [EncodingUnit](#Section_2.2.1).

ClassType = ParentClass CurrentClass

That is, if the CIM class hierarchy is

class MyBase { }

class MyDerived : MyBase { }

then the [ParentClass](#Section_2.2.12) block contains the definition of MyBase, and the [CurrentClass](#Section_2.2.13) block contains the definition of MyDerived.

A class might not have a superclass, as specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848) Appendix A. The ParentClass block MUST be present even if the class that is coded in CurrentClass has no superclass. In this case, the ParentClass block MUST be filled with the class name as NULL, zero class names in the derivation list, zero class qualifiers, zero properties, and zero [HeapItems](#Section_78acd48426ff4164a0432a23acd4bd86) in [ClassHeap](#Section_2.2.37).

<a id="Section_2.2.12"></a>
### 2.2.12 ParentClass

ParentClass is the [**CIM class**](#gt_cim-class) that is the immediate parent of the current CIM class, according to the inheritance mechanism specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848).

ParentClass = ClassAndMethodsPart

[ClassAndMethodsPart (section 2.2.14)](#Section_2.2.14) specifies the properties and method signatures for the class.

<a id="Section_2.2.13"></a>
### 2.2.13 CurrentClass

CurrentClass is the encoding of the [**CIM class**](#gt_cim-class) that the [EncodingUnit](#Section_2.2.1) represents. The [ClassType](#Section_2.2.11) block requires the encoding to contain both the encoding of the [ParentClass](#Section_2.2.12) for the class and the CIM class itself, which is specified by this rule.

CurrentClass = ClassAndMethodsPart

The [InstanceType](#Section_2.2.53) block MUST also contain a CurrentClass block as part of its own definition because CurrentClass is reachable through several subrules in this grammar.

<a id="Section_2.2.14"></a>
### 2.2.14 ClassAndMethodsPart

The ClassAndMethodsPart block divides the [**CIM class**](#gt_cim-class) definition into two sections:

- [ClassPart (section 2.2.15)](#Section_2.2.15) contains the data declarations (properties).
- [MethodsPart (section 2.2.38)](#Section_2.2.38) contains the method table.
The semantic meaning of the properties and methods in a class is specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848).

ClassAndMethodsPart = ClassPart [MethodsPart]

MethodsPart (section 2.2.38) MUST always be present if the [ObjectFlags (section 2.2.6)](#Section_2.2.6) value indicates that the outermost object being encoded is a [ClassType (section 2.2.11)](#Section_2.2.11) object. MethodsPart MUST NOT be present if the ObjectFlags indicates that the outermost object being encoded is an [InstanceType (section 2.2.53)](#Section_2.2.53).

<a id="Section_2.2.15"></a>
### 2.2.15 ClassPart

The ClassPart block contains the actual core of a [**CIM class**](#gt_cim-class) definition, as specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848). Each field MUST be located serially after the other.

ClassPart = ClassHeader DerivationList ClassQualifierSet

PropertyLookupTable [NdTable ValueTable] ClassHeap

The [ClassHeader (section 2.2.16)](#Section_2.2.16) contains information about the overall ClassPart block length and the length of various internal blocks. The [DerivationList (section 2.2.17)](#Section_2.2.17) is an encoded array that MUST contain the set of CIM class names that form the list of [**superclasses**](#gt_fbb1e623-a709-400d-8d4a-85df94ad58c3) for the current CIM class.

The [ClassQualifierSet (section 2.2.20)](#Section_2.2.20) is the set of [**CIM qualifiers**](#gt_de5d4ab8-e295-4a98-bb5c-3aaf70c43ad0) for the class.

The [PropertyLookupTable (section 2.2.21)](#Section_2.2.21) is a sorted dispatch table for looking up [**CIM property**](#gt_a95b6b41-8fd2-4d80-8632-1eb34c17a4fe) values and type information. The [NdTable (section 2.2.26)](#Section_2.2.26) indicates whether a particular CIM property has a default value that is locally defined in the current CIM class or whether the default is defined in a superclass. The [ValueTable (section 2.2.29)](#Section_2.2.29) contains values inline for simple numeric properties, or references to the values in the [ClassHeap (section 2.2.37)](#Section_2.2.37) for all other specified values in the [HeapItem](#Section_2.2.67) rule, such as arrays or strings.

NdTable and ValueTable are optional. Their inclusion is controlled by the number of properties in the PropertyLookupTable. If the PropertyLookupTable contains zero properties, NdTable and ValueTable MUST be omitted.

<a id="Section_2.2.16"></a>
### 2.2.16 ClassHeader

ClassHeader contains various details on the [**CIM class**](#gt_cim-class) block.

ClassHeader = EncodingLength ReservedOctet ClassNameRef NdTableValueTableLength

The [EncodingLength (section 2.2.73)](#Section_2.2.73) field applies to the [ClassPart](#Section_2.2.15) as a whole, not just the ClassHeader. The [ReservedOctet (section 2.2.76)](#Section_2.2.76) octet is not used and MUST be zero. The [ClassNameRef (section 2.2.19)](#Section_2.2.19) contains a reference to the string that is the name of the current CIM class. The [NdTableValueTableLength (section 2.2.28)](#Section_2.2.28) is sum of the lengths, in octets, of the encoded "ClassPart::NdTable" and "ClassPart::ValueTable" blocks.

<a id="Section_2.2.17"></a>
### 2.2.17 DerivationList

DerivationList is an encoded array that indicates the list of [**superclasses**](#gt_fbb1e623-a709-400d-8d4a-85df94ad58c3) that form the inheritance chain of the current class. The array contains only the names of the superclasses. The order of classes is significant. The immediate superclass of the current class is followed first by each successive parent class and terminates in the top-most class.

DerivationList = EncodingLength *ClassNameEncoding

[EncodingLength (section 2.2.73)](#Section_2.2.73) includes itself in the total. Therefore, an empty array still contains at least one UINT32 value of 0x4 hexadecimal, which is the length of the EncodingLength item. [ClassNameEncoding (section 2.2.18)](#Section_2.2.18) contains the names of the superclasses.

<a id="Section_2.2.18"></a>
### 2.2.18 ClassNameEncoding

Each ClassNameEncoding is an [Encoded-String](#Section_2.2.78) that is suffixed by a 32-bit value that indicates the length, in character count, of the Encoded-String. This length includes the value of the leading octet flag and NULL terminator—not just the visible character count.

ClassNameEncoding = Encoded-String EncodingLength

<a id="Section_2.2.19"></a>
### 2.2.19 ClassNameRef

ClassNameRef is a reference to the current [**CIM class**](#gt_cim-class) name. It is a [HeapStringRef (section 2.2.68)](#Section_2.2.68) in the [ClassHeap (section 2.2.37)](#Section_2.2.37).

ClassNameRef = HeapStringRef

<a id="Section_2.2.20"></a>
### 2.2.20 ClassQualifierSet

ClassQualifierSet is the [**CIM qualifier**](#gt_de5d4ab8-e295-4a98-bb5c-3aaf70c43ad0) set for the current class.

ClassQualifierSet = QualifierSet

As applied to classes, the ClassQualifierSet is a set of qualifiers, as specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848), that applies to the [**CIM class**](#gt_cim-class) definition as a whole.

[Qualifier1, Qualifier2, ...QualifierN]

class Sample

{

....

}

This usage in [**CIM**](#gt_common-information-model-cim) is distinct from qualifiers that apply to various internal declarations, such as properties and methods.

<a id="Section_2.2.21"></a>
### 2.2.21 PropertyLookupTable

PropertyLookupTable is a simple dispatching table for finding properties. The [PropertyCount (section 2.2.22)](#Section_2.2.22) indicates how many properties follow in the [PropertyLookup (section 2.2.23)](#Section_2.2.23) sequence.

PropertyLookupTable = PropertyCount *PropertyLookup

The PropertyLookup sequence MUST be sorted according to the lexical ordering that is established by the character set, as specified in [[UNICODE]](https://go.microsoft.com/fwlink/?LinkId=90550). This sort order is required because implementations expect to perform binary search operations on the table and these searches require lexical ordering.

<a id="Section_2.2.22"></a>
### 2.2.22 PropertyCount

PropertyCount is the total number of properties in the class. If zero, the optional [NdTable (section 2.2.26)](#Section_2.2.26) and [ValueTable (section 2.2.29)](#Section_2.2.29) blocks (as specified in section [2.2.15](#Section_2.2.15)) MUST be absent.

PropertyCount = UINT32

<a id="Section_2.2.23"></a>
### 2.2.23 PropertyLookup

The PropertyLookup structure represents a data block that allows a lookup of a specific named [**CIM property**](#gt_a95b6b41-8fd2-4d80-8632-1eb34c17a4fe) in a [**CIM class**](#gt_cim-class). The [PropertyNameRef (section 2.2.24)](#Section_2.2.24) item is a reference to the string name of the [Encoded-String](#Section_2.2.78) on the [ClassHeap](#Section_2.2.37) that represents the name of the property. The [PropertyInfoRef (section 2.2.25)](#Section_2.2.25) item is a heap reference to a [PropertyInfo](#Section_2.2.30) item that contains more information about the CIM property, such as its [**CIM**](#gt_common-information-model-cim) type and any associated qualifiers.

PropertyLookup = PropertyNameRef PropertyInfoRef

These items are simple references into the ClassHeap, and each item is only 32 bits in length.

<a id="Section_2.2.24"></a>
### 2.2.24 PropertyNameRef

PropertyNameRef MUST be a heap reference to the [Encoded-String](#Section_2.2.78) for the [**CIM property**](#gt_a95b6b41-8fd2-4d80-8632-1eb34c17a4fe) name.

PropertyNameRef = HeapStringRef

<a id="Section_2.2.25"></a>
### 2.2.25 PropertyInfoRef

PropertyInfoRef MUST be a heap reference to the [PropertyInfo (section 2.2.30)](#Section_2.2.30) item for the property.

PropertyInfoRef = HeapRef

<a id="Section_2.2.26"></a>
### 2.2.26 NdTable

NdTable is an encoded table that represents the behavior of the default value of properties in a [**CIM class**](#gt_cim-class).

Values in the table are ordered similar to the order shown in the [PropertyLookupTable](#Section_2.2.21).

Classes can establish default values for properties, as specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848). In some cases, the default value for a [**CIM property**](#gt_a95b6b41-8fd2-4d80-8632-1eb34c17a4fe) can be defined in a [**superclass**](#gt_fbb1e623-a709-400d-8d4a-85df94ad58c3), for example, by using the [**MOF**](#gt_managed-object-format-mof) syntax for [**CIM**](#gt_common-information-model-cim).

class Base

{

...

sint32 ValueX = 123;

}

class Derived : Base

{

sint32 ValueY = 456;

}

In this example, both ValueX and ValueY have defaults; however, they are established in different classes. Because the derived class contains all the information from the base class, the effective class declaration is similar to the following.

class Derived : Base

{

sint32 ValueX = 123;

sint32 ValueY = 456;

}

However, for many operations that process [**CIM objects**](#gt_cim-object) outside network protocol operations, it is important to distinguish if the default value is inherited or if it is locally defined in the current class. Therefore, this information must be maintained in the [**encoding**](#gt_encoding).

Only 2 bits are required to indicate this information for each property; therefore, the bit fields are packed into octets.

NdTable = *NullAndDefaultFlag

The total number of bits is the number of properties * 2 rounded up to the nearest whole octet count. Specifically, the number of required octets is specified by the following formula.

octetCount = (PropertyCount - 1) / 4 + 1 // a formula, not ABNF

When encoding or decoding NdTable under [ClassPart](#Section_2.2.15), the [PropertyCount](#Section_2.2.22) specified in PropertyLookupTable in the ClassPart MUST be used for calculating length. When encoding or decoding NdTable under [InstanceType](#Section_2.2.53), the PropertyCount specified in **InstanceType.CurrentClass.ClassPart.PropertyLookupTable** MUST be used.

Because of rounding, there might be unused bits in the octet. These bits can have any value.

<a id="Section_2.2.27"></a>
### 2.2.27 NullAndDefaultFlag

NullAndDefaultFlag denotes how the default property value is set and whether that value is NULL.

NullAndDefaultFlag = 2BIT

If bit 0 is set, the default value is NULL. If bit 1 is set, the default value is inherited from some parent [**CIM class**](#gt_cim-class) in the inheritance hierarchy. Combinations of bit 0 and bit 1 result in the default property value behavior in the following table.

| Bit Range | Field | Description |
| --- | --- | --- |
| Variable | SET | SET The default property value is NULL, and it is inherited from a parent class. |
| Variable | SET | NOT SET The default property value is NULL, and it is set by the current class. |
| Variable | NOT SET | SET The default property value is NOT NULL, and it is inherited from a parent class. |
| Variable | NOT SET | NOT SET The default property value is NOT NULL, and it is set by the current class. |

For a specified property, if the preceding table shows either of the bit values as SET, the value of that property is predetermined as NULL or is propagated from the parent. In these cases, the value in the ValueTable for that property is ignored.

<a id="Section_2.2.28"></a>
### 2.2.28 NdTableValueTableLength

NdTableValueTableLength is sum of the lengths, in octets, of the [NdTable](#Section_2.2.26) and [ValueTable](#Section_2.2.29).

NdTableValueTableLength = UINT32

Unlike [EncodingLength](#Section_2.2.73) rules, NdTableValueTableLength does not include its own length.

<a id="Section_2.2.29"></a>
### 2.2.29 ValueTable

The ValueTable encodes the literal values of the properties or references to their values in the heap. However, for a specific property, the value here is relevant only if the corresponding NDTable bits for that property are both not set, that is, 0. Otherwise, the value in ValueTable for the property is ignored.

ValueTable = *EncodedValue

Depending on the type of the [**CIM property**](#gt_a95b6b41-8fd2-4d80-8632-1eb34c17a4fe), each [EncodedValue (section 2.2.71)](#Section_2.2.71) has variable length. The sequence of EncodedValues is packed at the octet level with no alignment or padding.

To find the value for a property, navigate from the [PropertyLookupTable (section 2.2.21)](#Section_2.2.21) to its [PropertyLookup (section 2.2.23)](#Section_2.2.23), and from there get the [PropertyInfoRef (section 2.2.25)](#Section_2.2.25), which gives the [PropertyInfo (section 2.2.30)](#Section_2.2.30). From PropertyInfo, get the [ValueTableOffset (section 2.2.34)](#Section_2.2.34). Use this offset in the ValueTable (section 2.2.29) to discover the value.

If the value is numerical, the value MUST be directly located within this table. If the value is a string or an array type, the value table MUST contain a reference, [HeapRef (section 2.2.69)](#Section_2.2.69), into the [Heap (section 2.2.66)](#Section_2.2.66) to find the actual value.

ValueTable length can be calculated by [NdTableValueTableLength](#Section_2.2.28) minus the length of [NdTable](#Section_2.2.26), as specified in section 2.2.26.

When encoding or decoding ValueTable under [ClassPart](#Section_2.2.15), the NdTableValueTableLength specified in [ClassHeader](#Section_2.2.16) of the ClassPart MUST be used for calculating length. When encoding or decoding ValueTable under [InstanceData](#Section_2.2.56) of [InstanceType](#Section_2.2.53), the NdTableValueTableLength specified in **InstanceType.CurrentClass.ClassPart.ClassHeader** MUST be used.

<a id="Section_2.2.30"></a>
### 2.2.30 PropertyInfo

The PropertyInfo element exists in the heap and is referenced through a [PropertyLookup](#Section_2.2.23) block. It contains information about a property other than its value, such as its data type declaration order, the class in which it was defined in an inheritance hierarchy, and offsets to the value table and qualifier set for the property.

PropertyInfo = PropertyType DeclarationOrder

ValueTableOffset ClassOfOrigin PropertyQualifierSet

<a id="Section_2.2.31"></a>
### 2.2.31 PropertyType

PropertyType encodes the data type of the property.

PropertyType = CimType | Inherited

; Bitwise OR between CimType and Inherited gives the

corresponding PropertyType

CimType MUST have the form that is specified in section [2.2.82](#Section_2.2.82).

<a id="Section_2.2.32"></a>
### 2.2.32 Inherited

Inherited indicates the origin of the property.

Inherited = %0x4000 / %0x0000

If the current property was originally defined in a parent class, Inherited is 0x4000; however, if the property was defined in the current class, Inherited is 0x0000.

<a id="Section_2.2.33"></a>
### 2.2.33 DeclarationOrder

The DeclarationOrder element shows the actual order of the [**CIM property**](#gt_a95b6b41-8fd2-4d80-8632-1eb34c17a4fe) as it appears in the order within the [**CIM**](#gt_common-information-model-cim) declaration of the [**MOF**](#gt_managed-object-format-mof) for the class, as specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848).

DeclarationOrder = UINT16

<a id="Section_2.2.34"></a>
### 2.2.34 ValueTableOffset

ValueTableOffset MUST be the offset in the [ValueTable (section 2.2.29)](#Section_2.2.29) that contains the value for the property. Depending on the type of the property, the ValueTable entry is interpreted differently. The type for the [**CIM property**](#gt_a95b6b41-8fd2-4d80-8632-1eb34c17a4fe) and other information are located in the [PropertyType (section 2.2.31)](#Section_2.2.31) entry, which is a sibling of this ValueTableOffset in the larger [PropertyInfo (section 2.2.30)](#Section_2.2.30) [**encoding**](#gt_encoding).

ValueTableOffset = UINT32

<a id="Section_2.2.35"></a>
### 2.2.35 ClassOfOrigin

ClassOfOrigin defines from which [**CIM class**](#gt_cim-class) in the [DerivationList](#Section_2.2.17) the [**CIM property**](#gt_a95b6b41-8fd2-4d80-8632-1eb34c17a4fe) comes, where 0 indicates the first CIM class in the DerivationList, and so on. If the CIM property is local to the current class, the ClassOfOrigin is equal to the number of items in the DerivationList.

ClassOfOrigin = UINT32

<a id="Section_2.2.36"></a>
### 2.2.36 PropertyQualifierSet

PropertyQualifierSet is a set of qualifiers that apply to the preceding property. There is no count of qualifiers. Qualifiers in the [QualifierSet](#Section_2.2.59) are decoded and recognized until the "QualifierSet::EncodingLength" is exhausted.

PropertyQualifierSet = QualifierSet

<a id="Section_2.2.37"></a>
### 2.2.37 ClassHeap

ClassHeap is structured like any other heap except that the items that are contained in it only apply to the [**CIM class**](#gt_cim-class) definition.

ClassHeap = Heap

Because instances also contain class definitions as part of their [**encoding**](#gt_encoding), it is important to ensure that the heap references are not intermixed between the class and instance parts.

All heap references that occur in the [ClassPart (section 2.2.15)](#Section_2.2.15) block MUST be limited to references in the ClassHeap.

<a id="Section_2.2.38"></a>
### 2.2.38 MethodsPart

The MethodsPart block is the second half of the [ClassType](#Section_2.2.11) [**encoding**](#gt_encoding) rule and defines the methods for the class.

MethodsPart = EncodingLength MethodCount

MethodCountPadding *MethodDescription MethodHeap

A class encoding that has no methods MUST still contain the indicated fields. [MethodCount](#Section_2.2.39) MUST be zero, and there MUST be a zero-length [MethodHeap](#Section_2.2.52) that is encoded according to their respective rules.

<a id="Section_2.2.39"></a>
### 2.2.39 MethodCount

MethodCount is the number of methods in the class.

MethodCount = UINT16

<a id="Section_2.2.40"></a>
### 2.2.40 MethodCountPadding

MethodCountPadding is a two-octet sequence that is not used and SHOULD<1> be set to zero. The recipient MUST ignore this field.

MethodCountPadding = 2OCTET

<a id="Section_2.2.41"></a>
### 2.2.41 MethodDescription

MethodDescription specifies one method.

MethodDescription = MethodName MethodFlags MethodPadding

MethodOrigin MethodQualifiers InputSignature OutputSignature

<a id="Section_2.2.42"></a>
### 2.2.42 MethodName

MethodName MUST be a simple [HeapStringRef](#Section_2.2.68) to the [MethodHeap (section 2.2.52)](#Section_2.2.52) for the method name.

MethodName = HeapStringRef

<a id="Section_2.2.43"></a>
### 2.2.43 MethodFlags

The MethodFlags block defines the flags for the method.

MethodFlags = OCTET

The WBEM_FLAVOR_ORIGIN_PROPAGATED flag (0x20) MUST be set if the method is inherited from the parent class. The method origin is calculated for the current [ClassAndMethodsPart](#Section_2.2.14) (as defined in 2.2.14) that is being encoded and is not related to the [ClassType](#Section_2.2.11) being encoded.

The other bits MUST be set to 0.

<a id="Section_2.2.44"></a>
### 2.2.44 MethodPadding

MethodPadding is reserved and SHOULD be zero.

MethodPadding = 3OCTET

Because the fields are not used, some implementations can place random values in these octets; therefore, values other than zero MUST be ignored.

<a id="Section_2.2.45"></a>
### 2.2.45 MethodOrigin

MethodOrigin is a zero-origin array index to a [**CIM class**](#gt_cim-class) name in the [DerivationList](#Section_2.2.17) that shows which CIM class owns the method.

MethodOrigin = UINT32

A value of zero refers to the first element in the DerivationList. A value of 1 refers to the second element in the DerivationList, and so on. If the method is local to the current class, the MethodOrigin is equal to the number of items in the DerivationList.

<a id="Section_2.2.46"></a>
### 2.2.46 MethodQualifiers

MethodQualifiers is a set of qualifiers that are applicable to the method.

MethodQualifiers = HeapQualifierSetRef

MethodQualifiers MUST be a [HeapQualifierSetRef (section 2.2.47)](#Section_2.2.47) in the [MethodHeap (section 2.2.52)](#Section_2.2.52). The [QualifierSet (section 2.2.59)](#Section_2.2.59) referred to by the HeapQualifierSetRef is the [**CIM qualifiers**](#gt_de5d4ab8-e295-4a98-bb5c-3aaf70c43ad0) set that is applicable to the method. For example, in the following [**CIM class**](#gt_cim-class), the execute CIM qualifier and performance CIM qualifier are method-level qualifiers; however, in and out are parameter-level qualifiers.

class MyClass2 : MyClass

{

[execute, performance={"fast", "sideffects"}]

uint32 Restart([in] string ServiceName, [out] int Status);

}

<a id="Section_2.2.47"></a>
### 2.2.47 HeapQualifierSetRef

HeapQualifierSetRef MUST be a [HeapRef (section 2.2.69)](#Section_2.2.69) to a single [QualifierSet (section 2.2.59)](#Section_2.2.59) in the current heap.

HeapQualifierSetRef = HeapRef

<a id="Section_2.2.48"></a>
### 2.2.48 InputSignature

InputSignature specifies the input signature for the method.

InputSignature = MethodSignature

<a id="Section_2.2.49"></a>
### 2.2.49 OutputSignature

OutputSignature specifies the output signature for the method.

OutputSignature = MethodSignature

<a id="Section_2.2.50"></a>
### 2.2.50 MethodSignature

The [InputSignature](#Section_2.2.48) and [OutputSignature](#Section_2.2.49) fields MUST be a [HeapRef](#Section_2.2.69) to the [MethodSignatureBlock (section 2.2.70)](#Section_2.2.70) in the [MethodHeap (section 2.2.52)](#Section_2.2.52). This is because the input and output signatures for a method are encoded as a [ClassPart](#Section_2.2.15), where each [**CIM property**](#gt_a95b6b41-8fd2-4d80-8632-1eb34c17a4fe) represents a parameter in the method.

MethodSignature = HeapMethodSignatureBlockRef

To encode a MethodSignature as a [**CIM class**](#gt_cim-class) object, the [**encoding**](#gt_encoding) rules, as specified in section [2.3.3](#Section_2.3.3), MUST be used. These rules do not affect the structure of the encoding; instead, they establish conventions for content, such as the name of the class and how to indicate in and out parameter flow by using qualifiers.

<a id="Section_2.2.51"></a>
### 2.2.51 HeapMethodSignatureBlockRef

HeapMethodSignatureBlockRef MUST be a [HeapRef](#Section_2.2.69) to the [MethodSignatureBlock (section 2.2.70)](#Section_2.2.70) in the current [Heap (section 2.2.66)](#Section_2.2.66).

HeapMethodSignatureBlockRef = HeapRef

<a id="Section_2.2.52"></a>
### 2.2.52 MethodHeap

MethodHeap contains information about all the methods, for example, their names, parameters, and types.

MethodHeap = Heap

All [HeapItem](#Section_2.2.67) entries in the [Heap](#Section_2.2.66) MUST be referenced by a valid [HeapRef](#Section_2.2.69) in the [MethodsPart](#Section_2.2.38) [**encoding**](#gt_encoding) block.

<a id="Section_2.2.53"></a>
### 2.2.53 InstanceType

The InstanceType block is used to encode a [**CIM instance**](#gt_cim-instance) of a [**CIM class**](#gt_cim-class).

InstanceType = CurrentClass EncodingLength InstanceFlags

InstanceClassName NdTable InstanceData

InstanceQualifierSet InstanceHeap

As indicated in the [**encoding**](#gt_encoding) rule, a CIM instance is prefixed by the CIM class definition to which it belongs.

The [EncodingLength](#Section_2.2.73) field specifies the length, in octets, of itself and all the following fields. This field is equivalent to the length of the InstanceType block, excluding the [CurrentClass](#Section_2.2.13) block.

[InstanceFlags](#Section_2.2.54) is a reserved octet and MUST be zero.

The CIM class name to which the CIM instance belongs is referenced by [InstanceClassName](#Section_2.2.55).

The actual instance-level data is in [NdTable](#Section_2.2.26) and [InstanceData](#Section_2.2.56); any instance-level qualifiers are in [InstanceQualifierSet](#Section_2.2.57). Because default values from CIM class definitions might be used in a CIM instance, as specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848), the NdTable bits are set to indicate whether NULL or a default value is in use for each property.

The values for any referenced items anywhere in the InstanceType encoding block MUST be contained in the [InstanceHeap](#Section_2.2.58).

<a id="Section_2.2.54"></a>
### 2.2.54 InstanceFlags

InstanceFlags is reserved and MUST be zero.

InstanceFlags = OCTET

<a id="Section_2.2.55"></a>
### 2.2.55 InstanceClassName

InstanceClassName is a string reference to a class name in the [InstanceHeap](#Section_2.2.58).

InstanceClassName = HeapStringRef

<a id="Section_2.2.56"></a>
### 2.2.56 InstanceData

InstanceData values are stored in a [ValueTable](#Section_2.2.29) similar to how classes are stored in a ValueTable. The only difference is that InstanceData values in a ValueTable MUST contain references to the [InstanceHeap](#Section_2.2.58) whenever a [HeapRef](#Section_2.2.69) occurs.

InstanceData = ValueTable

<a id="Section_2.2.57"></a>
### 2.2.57 InstanceQualifierSet

InstanceQualifierSet is the [**CIM qualifier**](#gt_de5d4ab8-e295-4a98-bb5c-3aaf70c43ad0) set that SHOULD apply to the entire instance, as opposed to qualifiers within individual properties.

InstanceQualifierSet = QualifierSet InstancePropQualifierSet

<a id="Section_2.2.58"></a>
### 2.2.58 InstanceHeap

InstanceHeap is the value heap for the current instance.

InstanceHeap = Heap

<a id="Section_2.2.59"></a>
### 2.2.59 QualifierSet

QualifierSet represents a set of qualifiers. Qualifiers are applied to a [**CIM class**](#gt_cim-class); to a [**CIM instance**](#gt_cim-instance); to properties within a CIM class; or to instances, methods, and individual parameters within methods, as specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848).

QualifierSet = EncodingLength *Qualifier

The length of the QualifierSet is indicated by the [EncodingLength](#Section_2.2.73).

This is followed by a series of [**CIM qualifier**](#gt_de5d4ab8-e295-4a98-bb5c-3aaf70c43ad0) values of variable length. Each CIM qualifier value begins where the previous one ends. There are no delimiters between qualifiers; nor is there any indexing mechanism to access a specific qualifier.

Because each CIM qualifier block is a known length, the end of the QualifierSet is reached where the value (EncodingLength – 4) is equal to the length of the set of CIM qualifier blocks that follow it.

<a id="Section_2.2.60"></a>
### 2.2.60 Qualifier

Qualifier defines a single qualifier.

Qualifier = QualifierName QualifierFlavor

QualifierType QualifierValue

The [**CIM qualifier**](#gt_de5d4ab8-e295-4a98-bb5c-3aaf70c43ad0) consists of the name, flavor, and data type of the qualifier, and the actual value, as specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848) section 4.5.4.

<a id="Section_2.2.61"></a>
### 2.2.61 QualifierName

QualifierName is a [**CIM qualifier**](#gt_de5d4ab8-e295-4a98-bb5c-3aaf70c43ad0) name and MUST be a [HeapRef](#Section_2.2.69) to an [Encoded-String](#Section_2.2.78) in the current heap.

QualifierName = HeapStringRef

Class qualifiers MUST be located in the [ClassHeap](#Section_2.2.37); [**CIM instance**](#gt_cim-instance) qualifiers MUST be located in the [InstanceHeap](#Section_2.2.58); and method qualifiers MUST be located in the [MethodHeap](#Section_2.2.52).

<a id="Section_2.2.62"></a>
### 2.2.62 QualifierFlavor

QualifierFlavor indicates the origin and propagation rules for the qualifier.

QualifierFlavor = OCTET

The following bit encodings MUST apply. Services SHOULD ignore any other bit values.<2>

| Bit Range | Field | Description |
| --- | --- | --- |
| Variable | WBEM_FLAVOR_FLAG_PROPAGATE_TO_INSTANCE | WMI specific flavor If set, the qualifier is propagated to instances. If not set, the qualifier is not propagated to instances. 0x01 |
| Variable | WBEM_FLAVOR_FLAG_PROPAGATE_TO_DERIVED_CLASS | ToSubclass The qualifier is propagated to derived classes. 0x02 |
| Variable | WBEM_FLAVOR_NOT_OVERRIDABLE | EnableOverride The qualifier value cannot be overridden in a derived class or an instance. 0x10 |
| Variable | WBEM_FLAVOR_ORIGIN_PROPAGATED | WMI specific flavor If the qualifier is specified for the property of a class, this flavor means that the property was inherited from the parent class. If the qualifier is specified for the property of a class's instance, this flavor means that the property is inherited from the parent class, but has not been modified at the instance level. 0x20 |
| Variable | WBEM_FLAVOR_ORIGIN_SYSTEM | WMI specific flavor This indicates that the property is a WMI standard property. 0x40 |
| Variable | WBEM_FLAVOR_AMENDED | Translatable The qualifier is localized. 0x80 |

The meanings and combinations of usage for the standard [**CIM qualifier**](#gt_de5d4ab8-e295-4a98-bb5c-3aaf70c43ad0) flavors are as specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848).

<a id="Section_2.2.63"></a>
### 2.2.63 QualifierType

QualifierType is a [**CIM qualifier**](#gt_de5d4ab8-e295-4a98-bb5c-3aaf70c43ad0) and MUST be any valid [CimType (section 2.2.82)](#Section_2.2.82).

QualifierType = CimType

<a id="Section_2.2.64"></a>
### 2.2.64 QualifierValue

QualifierValue is the value of a [**CIM qualifier**](#gt_de5d4ab8-e295-4a98-bb5c-3aaf70c43ad0) and MUST be a valid [EncodedValue](#Section_2.2.71) based on the [QualifierType](#Section_2.2.63).

QualifierValue = EncodedValue

<a id="Section_2.2.65"></a>
### 2.2.65 InstancePropQualifierSet

InstancePropQualifierSet is a [**CIM qualifier**](#gt_de5d4ab8-e295-4a98-bb5c-3aaf70c43ad0) set for instances that have properties with instance-level qualifiers. Because this rarely occurs, there is a flag octet that signals whether there are CIM qualifier sets for the properties. Typically there are none, and the flag value MUST be set to 1.

InstancePropQualifierSet = InstPropQualSetFlag *QualifierSet

InstPropQualSetFlag = %x1 / %x2

If the InstPropQualSetFlag is set to 2, the [QualifierSet](#Section_2.2.59) sequence MUST be populated. There MUST be one QualifierSet for each [**CIM property**](#gt_a95b6b41-8fd2-4d80-8632-1eb34c17a4fe) in the class, and the properties are in the same order that occurs in the [PropertyLookupTable](#Section_2.2.21).

If the flag value is set to 2, all the CIM qualifier sets for all the properties MUST be present, even if they are empty. For example, the following [**CIM instance**](#gt_cim-instance) has a CIM qualifier on the CIM property Data1 (the test qualifier).

instance of MyClass

{

Array = {1, 2, 3};

[test] Data1 = "StringField";

Id = 123;

};

The binary [**encoding**](#gt_encoding) of this CIM instance contains CIM qualifier sets for each of its properties regardless whether there are any qualifiers for that property (there is at least an [EncodingLength](#Section_2.2.73) for that qualifier set).

For examples, see section [3.1](#Section_3.1).

<a id="Section_2.2.66"></a>
### 2.2.66 Heap

A Heap consists of a length and a linear series of [HeapItem](#Section_2.2.67) entries. A Heap is loosely defined and consists of the HeapItem blocks in any order. However, there are three separate Heaps that MUST be maintained distinctly: [ClassHeap](#Section_2.2.37) (only applies to [**CIM class**](#gt_cim-class) data), [InstanceHeap](#Section_2.2.58) (only applies to [**CIM instance**](#gt_cim-instance) data), and [MethodHeap](#Section_2.2.52) (only appears within [ClassType](#Section_2.2.11) blocks and only contains information relating to the methods for a CIM class). These Heaps MUST be separate, and they only apply within their respective [**encoding**](#gt_encoding) blocks. That is, ClassHeap only occurs within ClassType, InstanceHeap only occurs within [InstanceType](#Section_2.2.53), and MethodHeap only occurs within [MethodsPart](#Section_2.2.38). This is because ClassHeap (references) to HeapItem entries are encoded as simple integer offsets from the beginning of the relevant Heap, so the actual target Heap is implied by the block in which the [HeapRef](#Section_2.2.69) occurs.

Heap = HeapLength *HeapItem

HeapLength = UINT32 ; 31 bits with MS bit set

HeapLength is a 32-bit value with the most significant bit always set (using little-endian binary encoding for the 32-bit value), so that the length is actually only 31 bits.

The items appear in any order and do not need to be packed. Heaps MAY contain unused octets between HeapItems. As long as any HeapRef type is properly adjusted to point to items within the Heap, such gaps are acceptable and are permitted to accommodate garbage collection mechanisms in the encoders and decoders.

Any HeapRef value MUST be the offset (in total octets) of the corresponding HeapItem, and any HeapItem MUST have exactly one HeapRef in some other data structure that points to it.

HeapItem entries MUST NOT be shared. That is, there MUST NOT exist two HeapRef values that point to the same HeapItem.

<a id="Section_2.2.67"></a>
### 2.2.67 HeapItem

HeapItem is one of the following data block types. Every HeapItem MUST have a corresponding [HeapRef (section 2.2.69)](#Section_2.2.69).

HeapItem = PropertyInfo / Encoded-String /

Encoded-Array / QualifierSet / ObjectBlock / MethodSignatureBlock

The HeapRef that points to a specified HeapItem is not inferable from the HeapItem itself. Although all HeapRefs point to HeapItems, there is no way to navigate from the HeapItem back to the HeapRef that points to it. HeapRefs can only be located by following the various [**encoding**](#gt_encoding) rules in [EncodingUnit (section 2.2.1)](#Section_2.2.1).

<a id="Section_2.2.68"></a>
### 2.2.68 HeapStringRef

HeapStringRef MUST be a reference to an [Encoded-String](#Section_2.2.78) on the current [Heap](#Section_2.2.66).

HeapStringRef = HeapRef

<a id="Section_2.2.69"></a>
### 2.2.69 HeapRef

HeapRef is a reference to any [HeapItem](#Section_2.2.67) and is expressed in 31 bits. If the HeapItem (section 2.2.67) referred to is a string, and the most significant bit of the 32-bit [HeapStringRef (section 2.2.68)](#Section_2.2.68) value is set, the reference is actually to an implied dictionary-based string entry and does not point to a literal [Encoded-String](#Section_2.2.78) within the [Heap](#Section_2.2.66).

HeapRef = UINT32 / DictionaryReference

If the value of HeapRef is 0xFFFFFFFF, then HeapItem is not present and MUST be considered NULL. If the most significant bit of the 32-bit value is clear, the reference is an offset to a HeapItem in the Heap.

<a id="Section_2.2.70"></a>
### 2.2.70 MethodSignatureBlock

MethodSignatureBlock is a block used to encode a set of in parameters or out parameters for a method definition in a [**CIM class**](#gt_cim-class). MethodSignatureBlock is simply an [ObjectBlock](#Section_2.2.5) using the method [**encoding**](#gt_encoding) format rules, as specified in section [2.3.3](#Section_2.3.3). MethodSignatureBlock contains [ObjectEncodingLength](#Section_2.2.4) followed by ObjectBlock. ObjectEncodingLength describes the size in octets of ObjectBlock. ObjectBlock encodes the CIM class describing either the input parameters or the output parameters of a method as described in section 2.3.3.

MethodSignatureBlock = EncodingLength [ObjectBlock]

<a id="Section_2.2.71"></a>
### 2.2.71 EncodedValue

EncodedValue is an encoded value that is used everywhere to represent numerical and string values.

If the value is of type CIM-TYPE-SINT8, CIM-TYPE-UINT8, CIM-TYPE-SINT16, CIM-TYPE-UINT16, CIM-TYPE-SINT32, CIM-TYPE-UINT32, CIM-TYPE-SINT64, CIM-TYPE-UINT64, CIM-TYPE-REAL32 or CIM-TYPE-REAL64 as defined in [CimType (section 2.2.82)](#Section_2.2.82), the EncodedValue is inline as defined in [NumericValue (section 2.2.72)](#Section_2.2.72).

If the value is of type CIM-TYPE-CHAR16, the EncodedValue is a 16-bit value stored as a CIM-TYPE-SINT16.

If the value is of type CIM-TYPE-BOOLEAN, the encoded value is inline as defined in [BOOL (section 2.2.75)](#Section_2.2.75).

If the value is of type CIM-TYPE-STRING, CIM-TYPE-DATETIME, or CIM-TYPE-REFERENCE, the EncodedValue is a [HeapRef (section 2.2.69)](#Section_2.2.69) to that [Encoded-String](#Section_2.2.78). The value of types CIM-TYPE-DATETIME and CIM-TYPE-REFERENCE are encoded as strings, as specified in [2.3.1](#Section_2.3.1) and [2.3.2](#Section_2.3.2) respectively.

If the value type is CimArrayType, the EncodedValue is a HeapRef to the [Encoded-Array](#Section_2.2.79).

If the value type is CIM-TYPE-OBJECT, the EncodedValue is a HeapRef to the object encoded as an [ObjectEncodingLength (section 2.2.4)](#Section_2.2.4) followed by an [ObjectBlock (section 2.2.5)](#Section_2.2.5).

While encoding a class, if a property defined for the class does not have a default value in the class, the OCTETs reserved for the property in the [ValueTable](#Section_2.2.29) MUST be filled with [NoValue (section 2.2.74)](#Section_2.2.74). The number of OCTETs reserved for a property without a default value MUST be equal to the size required for the property type as defined above.

EncodedValue = NumericValue / HeapRef / BOOL / NoValue

<a id="Section_2.2.72"></a>
### 2.2.72 NumericValue

NumericValue is any numerical value, whether integer or real, that is valid within the [**CIM**](#gt_common-information-model-cim) type system.

NumericValue = BYTE / SINT16 / UINT16 / SINT32 /

UINT32 / SINT64 / UINT64 / REAL32 / REAL64

For each of these types, the binary [**encoding**](#gt_encoding) rules are specified in the following table.

The CIM model defines standard numerical data types, as specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848) section 2.2.

| CIM type as specified in [DMTF-DSP0004] | ABNF representation | Binary representation |
| --- | --- | --- |
| uint8 | OCTET, BYTE | An 8-bit unsigned integer. |
| sint8 | OCTET, BYTE | An 8-bit signed integer. |
| uint16 | UINT16 | A 16-bit unsigned integer. |
| sint16 | SINT16 | A 16-bit signed integer. |
| uint32 | UINT32 | A 32-bit unsigned integer. |
| sint32 | SINT32 | A 32-bit signed integer. |
| real32 | REAL32 | A 4-byte floating-point format, as specified in [[IEEE754]](https://go.microsoft.com/fwlink/?LinkId=89903). |
| real64 | REAL64 | An 8-byte floating-point format, as specified in [IEEE754]. |
| sint64 | SINT64 | A 64-bit signed integer. |
| uint64 | UINT64 | A 64-bit unsigned integer. |

- The binary representations MUST be used to encode the specified CIM data types.
- All signed and unsigned integer types that consist of more than one octet MUST be encoded as little-endian.
- The CIM Boolean type has its own encoding that is specified in the [BOOL (section 2.2.75)](#Section_2.2.75) encoding rule.
- Floating point values, as specified in [IEEE754], MUST be encoded as little-endian.
<a id="Section_2.2.73"></a>
### 2.2.73 EncodingLength

EncodingLength is a simple 32-bit unsigned value that establishes the [**encoding**](#gt_encoding) length in octets of one of the other defined units in this specification. This value MUST include its own length as part of any length it is describing. Because of this, the minimum encoding length is 0x4, which is the size of the EncodingLength UINT32.

EncodingLength = UINT32

<a id="Section_2.2.74"></a>
### 2.2.74 NoValue

NoValue is used when a default value does not occur in a [**CIM class**](#gt_cim-class) definition for a specific [**CIM property**](#gt_a95b6b41-8fd2-4d80-8632-1eb34c17a4fe), and a slot in the [ValueTable](#Section_2.2.29) must be filled for that property. In this, all the OCTETs reserved for the property MUST be set to %xFF, and the value is ignored.

<a id="Section_2.2.75"></a>
### 2.2.75 BOOL

BOOL is used to represent logical TRUE or logical FALSE and consists of a 16-bit value.

BOOL = 2OCTET

The [**encoding**](#gt_encoding) for logical FALSE is all bits set to zero (0x0), and the encoding for logical TRUE is all bits set to 1 or 0xFFFF.

<a id="Section_2.2.76"></a>
### 2.2.76 ReservedOctet

ReservedOctet is a reserved OCTET that MUST be set to 0 and is used in several places in the [**encoding**](#gt_encoding).

ReservedOctet = OCTET

<a id="Section_2.2.77"></a>
### 2.2.77 Signature

Signature is the leading signature on the entire [EncodingUnit](#Section_2.2.1) block and MUST consist of a literal 32-bit value.

Signature = UINT32 ;0x12345678 little-endian

This is used to verify that the [**CIM object**](#gt_cim-object) that is being processed conforms to this specification.

<a id="Section_2.2.78"></a>
### 2.2.78 Encoded-String

Encoded-String is a special data type that is the only means of representing strings.

Encoded-String = Encoded-String-Flag *Character Null

Encoded-String-Flag = OCTET

Character = AnsiCharacter / UnicodeCharacter

Null = Character

AnsiCharacter = OCTET

UnicodeCharacter = 2OCTET

The Encoded-String string data type is encoded using an [**encoding**](#gt_encoding) flag that consists of one octet followed by a sequence of character items using one of two formats followed by a null terminator.

The Encoded-String-Flag is set to 0x01 if the sequence of characters that follows consists of UTF-16 characters (as specified in [[UNICODE]](https://go.microsoft.com/fwlink/?LinkId=90550)) followed by a UTF-16 null terminator.

For optimization reasons, the implementation MUST compress the UTF-16 encoding. If all the characters in the string have values (as specified in [UNICODE]) that are from 0 to 255, the string MUST be compressed. The compression is done by representing each character as a single OCTET with its Unicode value. That is, for each Unicode character, only the lower-order byte is included in the output. A terminating null character MUST be represented by a single OCTET. When the string is compressed, Encoded-String-Flag is set to 0x00. This is distinct from UTF-8, which might contain multiple-byte encodings for single characters.

When the string contains characters (as specified in [UNICODE]) outside this range, this optimization MUST NOT be used. For example, the character K (which is UTF+004B) follows.

| 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 1 | 2 | 3 | 4 | 5 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 1 | 0 | 1 | 1 |

The upper 8 bits are all zero bits. If all the characters for a string have this quality, the string MUST be reduced to its 8-bit equivalent on a character-by-character basis.

This compression technique applies to characters in U+0000 through U+00FF and MUST be accompanied by the appropriate Encoded-String-Flag value at the beginning of the encoding.

For any specified [**CIM object**](#gt_cim-object) encoding as a whole, the individual strings might or might not use the optimization, depending precisely on which characters are present in the string.

<a id="Section_2.2.79"></a>
### 2.2.79 Encoded-Array

Encoded-Array is used to encode an array in the [Heap](#Section_2.2.66).

Encoded-Array = ArrayCount *EncodedValue

ArrayCount = UINT32

Encoded-Array consists of a UINT32 value that specifies how many [EncodedValue](#Section_2.2.71) entries follow. Every element of an array MUST be of the same [CimBaseType](#Section_e137e6c6c1cc449ea0b476fabf534480).

ArrayCount MUST be present, but there can be zero EncodedValue entries if ArrayCount is zero.

<a id="Section_2.2.80"></a>
### 2.2.80 DictionaryReference

DictionaryReference is used to encode extremely common strings to prevent them from taking up space in the [Heap](#Section_2.2.66). Whenever a reference to an [Encoded-String](#Section_2.2.78) occurs, if the string matches any of the values listed, the most significant bit MUST be set, and the rest of the offset is replaced by the ordinal position of the string in the following dictionary.

DictionaryReference = %d0 / %d1 / %d2 / %d3 /

%d4 / %d5 / %d6 / %d7 / %d8 / %d9 / %d10

; %d0 Encoded/Decoded as quote character

; %d1 Encoded/Decoded as "key"

; %d2 Encoded/Decoded as ""

; %d3 Encoded/Decoded as "read"

; %d4 Encoded/Decoded as "write"

; %d5 Encoded/Decoded as "volatile"

; %d6 Encoded/Decoded as "provider"

; %d7 Encoded/Decoded as "dynamic"

; %d8 Encoded/Decoded as "cimwin32"

; %d9 Encoded/Decoded as "DWORD"

; %d10 Encoded/Decoded as "CIMTYPE"

For example, if the string dynamic is required, a 32-bit binary value of 0x80000007 is used instead of a normal [HeapRef](#Section_2.2.69).

This technique only applies if the type of the item being pointed to is a string.

<a id="Section_2.2.81"></a>
### 2.2.81 BIT

BIT is a simple bit field that consists of 1 bit, either set or clear.

BIT = %x0 / %x1 ; one bit, either clear or set

It is only used by the [NdTable](#Section_2.2.26) rule.

<a id="Section_2.2.82"></a>
### 2.2.82 CimType

CimType is a 32-bit value of which only the lower 16 bits are used. It indicates the type of the value according to the [**CIM**](#gt_common-information-model-cim) type system.

For any CimType given below, the corresponding values are encoded as specified in [EncodedValue (section 2.2.71)](#Section_2.2.71).

CimType = CimBaseType / CimArrayType

CimBaseType = CIM-TYPE-SINT8 / CIM-TYPE-UINT8 /

CIM-TYPE-SINT16 / CIM-TYPE-UINT16 /

CIM-TYPE-SINT32 / CIM-TYPE-UINT32 /

CIM-TYPE-SINT64 / CIM-TYPE-UINT64 / CIM-TYPE-REAL32 /

CIM-TYPE-REAL64 / CIM-TYPE-BOOLEAN /

CIM-TYPE-STRING / CIM-TYPE-DATETIME /

CIM-TYPE-REFERENCE / CIM-TYPE-CHAR16 /

CIM-TYPE-OBJECT

CimArrayType = CIM-ARRAY-SINT8 / CIM-ARRAY-UINT8 /

CIM-ARRAY-SINT16 / CIM-ARRAY-UINT16 /

CIM-ARRAY-SINT32 / CIM-ARRAY-UINT32 /

CIM-ARRAY-SINT64 / CIM-ARRAY-UINT64 /

CIM-ARRAY-REAL32 / CIM-ARRAY-REAL64 /

CIM-ARRAY-BOOLEAN / CIM-ARRAY-STRING /

CIM-ARRAY-DATETIME / CIM-ARRAY-REFERENCE /

CIM-ARRAY-CHAR16 / CIM-ARRAY-OBJECT

CimArrayFlag = %x20 %x00 ; 0x2000 bit flag

The CimType is a 16-bit [**encoding**](#gt_encoding) unit that always contains a CimBaseType and an optional CimArrayFlag. If the type is actually an array type, the CimBaseType MUST be combined by using the bitwise OR operation with the CimArrayFlag value (0x2000) that results in the most significant octet containing 0x20 and the lower octet containing the value of the CimBaseType.

For example, to encode an array of CIM-TYPE-STRING, the CimType binary encoding would be 0x2008, in which the upper octet indicates that an array is being encoded, and the lower octet indicates that the array is of type CIM-TYPE-STRING.

The values for the individual types are constants specified in the following table. These values are mutually exclusive to each other.

CIM-TYPE-SINT8 = %d16

CIM-TYPE-UINT8 = %d17

CIM-TYPE-SINT16 =%d2

CIM-TYPE-UINT16 =%d18

CIM-TYPE-SINT32 = %d3

CIM-TYPE-UINT32 = %d19

CIM-TYPE-SINT64 = %d20

CIM-TYPE-UINT64 = %d21

CIM-TYPE-REAL32 = %d4

CIM-TYPE-REAL64 = %d5

CIM-TYPE-BOOLEAN = %d11

CIM-TYPE-STRING = %d8

CIM-TYPE-DATETIME = %d101

CIM-TYPE-REFERENCE = %d102

CIM-TYPE-CHAR16 = %d103

CIM-TYPE-OBJECT = %d13

Each base type can be combined with the array bit (0x2000), which results in an array of that base type. CimArrayType values are as follows.

CIM-ARRAY-SINT8 = %d8208

CIM-ARRAY-UINT8 = %d8209

CIM-ARRAY-SINT16 =%d8194

CIM-ARRAY-UINT16 =%d8210

CIM-ARRAY-SINT32 = %d8195

CIM-ARRAY-UINT32 = %d8201

CIM-ARRAY-SINT64 = %d8202

CIM-ARRAY-UINT64 = %d8203

CIM-ARRAY-REAL32 = %d8196

CIM-ARRAY-REAL64 = %d8197

CIM-ARRAY-BOOLEAN = %d8203

CIM-ARRAY-STRING = %d8200

CIM-ARRAY-DATETIME = %d8293

CIM-ARRAY-REFERENCE = %d8294

CIM-ARRAY-CHAR16 = %d8295

CIM-ARRAY-OBJECT = %d8205

CimArrayType can be defined in yet another way, as the following example shows.

CimArrayType = CimBaseType | CimArrayFlag

; Bitwise OR between a CimBaseType and CimArrayFlag gives

corresponding CimArrayType

<a id="Section_2.3"></a>
## 2.3 Special Data Type Encodings

The various [**CIM**](#gt_common-information-model-cim) data types have special binary encodings that are implied by the [**ABNF**](#gt_augmented-backus-naur-form-abnf) rules that are specified in sections [2.2.72](#Section_2.2.72) and [2.2.79](#Section_2.2.79). However, three special cases require further techniques: the [CIM DateTime type](#Section_2.3.1), [CIM reference types](#Section_2.3.2), and the [**encoding**](#gt_encoding) of method signatures for [CIM methods](#Section_2.3.3). These encodings affect only the format of the values and do not introduce new binary-level encoding rules.

<a id="Section_2.3.1"></a>
### 2.3.1 CIM DateTime Type

The CIM DateTime type is a string that has the specific format that is specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848) section 2.2.1.

Because DateTime types are strings, a provision is included in the [**encoding**](#gt_encoding) to ensure that they can be distinguished semantically.

Any datetime value type:

- MUST be encoded as an [Encoded-String](#Section_2.2.78), as specified in [**ABNF**](#gt_augmented-backus-naur-form-abnf).
- MUST contain a [**CIM qualifier**](#gt_de5d4ab8-e295-4a98-bb5c-3aaf70c43ad0) whose name is CIMTYPE, whose type is string, and whose value is datetime.
If the CIM qualifier is omitted, the system MUST treat the DateTime type as a standard string.

<a id="Section_2.3.2"></a>
### 2.3.2 CIM Reference Types

A CIM reference type is a string that contains the [**CIM object**](#gt_cim-object) path to another CIM object, as specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848) section 5.3.2. The CIM reference type is essentially a pointer type that allows [**CIM objects**](#gt_cim-object) to reference one another.

Because references are encoded as strings, a provision is included in the [**encoding**](#gt_encoding) to ensure that they can be distinguished semantically.

Any reference type:

- MUST be encoded as an Encoded-String, as specified in [**ABNF**](#gt_augmented-backus-naur-form-abnf), and MUST conform to the CIM object reference syntax, as specified in [DMTF-DSP0004] section 5.3.2.
- MUST contain a [**CIM qualifier**](#gt_de5d4ab8-e295-4a98-bb5c-3aaf70c43ad0) whose name is CIMTYPE, whose type is string, and whose value is "ref:<cimClass>" where "<cimClass>" MUST be the name of the [**CIM class**](#gt_cim-class) that is being referenced. If the reference is untyped, "<cimClass>" MUST be set to the string value of "ref:object".
The CIMTYPE CIM qualifier MUST be specified.

<a id="Section_2.3.3"></a>
### 2.3.3 CIM Methods

The method signature (that is, the return type) input parameters and output parameters are encoded by using embedded [**CIM object**](#gt_cim-object) encodings. Methods are as specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848) section 4.9 and are specified syntactically in the methodDeclaration rule, as specified in [DMTF-DSP0004] Appendix A.

The method signature consists of two embedded [**CIM objects**](#gt_cim-object) of a [**CIM class**](#gt_cim-class) called __PARAMETERS. Within the embedded objects, the parameters appear as properties. The parameter name as it appears in the method is the [**CIM property**](#gt_a95b6b41-8fd2-4d80-8632-1eb34c17a4fe) name, and the type of the parameter is the CIM property type.

This is illustrated in the following example.

class MyClass2 : MyClass

{

[execute, performance={"fast", "sideffects"}]

uint32 Restart([in] string ServiceName, [out] int32 Status);

}

In the preceding CIM class example, there is a method called Restart. The parameters are encoded in the same way as other CIM class definitions. Each method definition contains two CIM class definitions: one for the input parameters and one for the output parameters. These classes always have the same name, __PARAMETERS, but reflect the parameters of the current method that is being encoded; so there is no immutable definition for the class. In this example, the two CIM class definitions appear as follows.

[abstract]

class __PARAMETERS

{

[in, ID(0)] string ServiceName;

}

[abstract]

class __PARAMETERS

{

[out, ID(1)] sint32 Status

uint32 ReturnValue;

}

**Remarks**

- Both CIM class definitions MUST be marked with an abstract qualifier. The first CIM class definition is used to package any in parameters to the method, and the second is used to package any out parameters.
- There is one definition to contain all input parameters (regardless of where they appear in the method signature) and one definition that encodes all output parameters and the return value.
- The order of declaration in these classes is the order in which the parameters appear. Because the parameters appear in an explicit order in the [**Managed Object Format (MOF)**](#gt_managed-object-format-mof) signature but are split between two separate CIM class definitions in the [**encoding**](#gt_encoding), an ID attribute is added for each parameter. The ID attribute represents the ordinal position of that parameter in the original signature.
- The return value, which has no name in the [**CIM**](#gt_common-information-model-cim) method declaration, does have an explicit name in the output CIM class definition and is always ReturnValue. Because of this reserved name, a method cannot explicitly contain ReturnValue as a named parameter.
- The __PARAMETERS CIM class is not a true CIM class because the format changes for each method and the format is not separately usable as a real CIM class definition. It is just a valid method to reuse the encoding mechanism for classes. Because classes require names, __PARAMETERS is nothing more than that name.
Therefore, a method encoding contains two apparent CIM class definitions (in the InputSignature and OutputSignature rules in [**ABNF**](#gt_augmented-backus-naur-form-abnf)) that encode the parameters for the method.

Any qualifiers on the individual parameters become qualifiers on the properties of those names within the __PARAMETERS CIM class definition.

<a id="Section_2.3.4"></a>
### 2.3.4 Heap Encoding

[HeapItems](#Section_78acd48426ff4164a0432a23acd4bd86) in the [Heap](#Section_2.2.66) typically occur in any order as long as the Heap references to them (that is, any rules that reduce to [HeapRef](#Section_2.2.69)) are correct. For example, [PropertyInfo](#Section_2.2.30) blocks occur in an order that is different from the lexical order of the properties, and [Encoded-String](#Section_2.2.78) occurs at any location. When updates are being implemented, this implementation of the Heap is intended to allow for best-fit algorithms.

Strings that fit into the original Encoded-String, even if they are shorter than the original strings, SHOULD be written into the old location. However, it is not an error if each new string update is written into a new location in the Heap.

Because the Heap is loosely organized, garbage space is inevitably created and the Heap becomes fragmented. There are sequences of octets within the Heap that have no corresponding references to them by any HeapRef, and there might be large sequences of NULL octets near the end of the Heap. This situation is permitted to enable garbage collection algorithms and easy reuse of large blocks without having to perform heap compaction and HeapRef updates for all heap items after each operation. Encoders with such garbage collectors MAY transmit encoded objects without previously performing garbage collection. Decoder implementations MUST be prepared to deal with the presence of Heaps that have not been garbage collected.

The Heap process is important in decoding because code that processes the Heap and HeapItems MUST NOT fault if it encounters blocks that have no reference to them or encounters garbage octets at the end of the Heap.

The client MUST NOT alter a [**CIM class**](#gt_cim-class) definition, including its Heap, after instances for it have been created and are in use. A client MAY only alter a [ClassHeap](#Section_2.2.37) or a [MethodHeap](#Section_2.2.52) when creating or updating a CIM class definition for which no instances currently exist. This is because copied images of the [ClassPart](#Section_2.2.15) are made for [**CIM instances**](#gt_cim-instance) as part of their [**encoding**](#gt_encoding). [**CIM objects**](#gt_cim-object) that have this image altered MUST be rejected by the server.

<a id="Section_3"></a>
# 3 Structure Examples

This section illustrates a simple example of the binary [**encoding**](#gt_encoding) for a simple [**CIM class**](#gt_cim-class) definition and its instances. The [**MOF**](#gt_managed-object-format-mof) textual representation is used, as specified in [[DMTF-DSP0004]](https://go.microsoft.com/fwlink/?LinkId=89848).

Class base

{

[key]

sint32 Id;

};

[Description("MyClass Example")]

class MyClass : Base

{

[read, write]

string Data1;

string Data2 = "defaultValue";

uint32 Array[ ];

};

This example has a simple CIM class hierarchy of two classes: a base CIM class and a derived CIM class called MyClass. The values in square brackets are metadata items called qualifiers. The individual fields are called properties and are identical to member variables, properties, or fields of object-oriented programming languages such as C++, C#, and Java.

The binary encoding is presented for both classes: first base, and then MyClass. Because each CIM class contains the encoding of itself and its base class, this encoding illustrates all the concepts that are involved in encoding classes.

The raw hexadecimal encoding of base is as follows.

1) 78 56 34 12 D0 00 00 00

2) 05 00 44 50 52 41 56 41 54 2D 44 45

3) 56 00 00 52 4F 4F 54 00 1D 00 00 00 00 FF FF FF

4) FF 00 00 00 00 04 00 00 00 04 00 00 00 00 00 00

5) 00 00 00 00 80

6) 0C 00 00 00 00 00 00 00 00 00 00 80

7) 66 00 00 00 00 00 00 00 00 05 00 00 00 04 00

8) 00 00 04 00 00 00 01 00 00 00 06 00 00 00 0A 00

9) 00 00 05 FF FF FF FF 3C 00 00 80 00 42 61 73 65

10) 00 00 49 64 00 03 00 00 00 00 00 00 00 00 00 00

11) 00 00 00 1C 00 00 00 0A 00 00 80 03 08 00 00 00

12) 34 00 00 00 01 00 00 80 13 0B 00 00 00 FF FF 00

13) 73 69 6E 74 33 32 00 0C 00 00 00 00 00 34 00 00

14) 00 00 80 00 80 13 0B 00 00 00 FF FF 00 73 69 6E

15) 74 33 32 00

For the [ObjectEncodingLength](#Section_2.2.4), see the note in section [2.2.1](#Section_2.2.1). The preceding sample ObjectEncodingLength value is 0xD0, which is larger than the actual required number of octets.

The following table decodes base using [**ABNF**](#gt_augmented-backus-naur-form-abnf).

| Bit Range | Field | Description |
| --- | --- | --- |
| Variable | - | - EncodingUnit. |
| Standard [**CIM object**](#gt_cim-object) Signature (line 1). | - | 78 56 34 12 |
| Variable | - | D0 00 00 00 EncodingUnit::ObjectEncodingLength UINT32 length of entire CIM class encoding (0xD0, 208 decimal octets). |
| Variable | - | - [ObjectBlock](#Section_2.2.5). |
| [Decoration](#Section_2.2.7) (line 2, shaded octet). Binary = 00000101. Bit 0 set. This is a CIM class definition (not a [**CIM instance**](#gt_cim-instance)). Bit 2 set. This CIM object is decorated with a server and [**CIM**](#gt_common-information-model-cim) namespace name. | - | 05 |
| The [DecServerName](#Section_2.2.8) ([Encoded-String](#Section_2.2.78)) on lines 2–3 that is the server name decoration that indicates from which machine on the network this CIM object originated. The first octet indicates that this string is encoded in ANSI 8-bit characters, not 16-bit UNICODE, and the value is DPRAVAT-DEV followed by an 8-bit NULL terminator, the last octet. | - | 00 44 50 52 41 56 41 54 2D 44 45 56 00 |
| The [DecNamespaceName](#Section_2.2.9) (Encoded-String) that indicates from which CIM namespace the CIM object originates. The first octet indicates that this string is encoded in ANSI 8-bit characters, not 16-bit UNICODE, and the value is ROOT, followed by an 8-bit NULL terminator, the last octet. | - | 00 52 4F 4F 54 00 |
| Variable | - | - Encoding. |
| Variable | - | 1D 00 00 00 ParentClass::ClassAndMethodsPart::ClassPart::ClassHeader::EncodingLength. This is the length, in octets, of the encoding unit, or 0x1D octets. |
| Variable | - | 00 [ReservedOctet](#Section_2.2.76) (shaded octet line 3). This is required to be zero. |
| Variable | - | FF FF FF FF [ClassNameRef](#Section_2.2.19). This value indicates that there is no parent CIM class name because base is the basest class. |
| Variable | - | 00 00 00 00 [NdTableValueTableLength](#Section_2.2.28) (italics line 4). This is zero, indicating that there is no [NdTable](#Section_2.2.26) or [ValueTable](#Section_2.2.29) for the parent class because there is no parent CIM class to base. |
| [DerivationList](#Section_2.2.17). This indicates the length of the list of [**superclasses**](#gt_fbb1e623-a709-400d-8d4a-85df94ad58c3) to this class. Because the list consists only of the [EncodingLength](#Section_2.2.73) UINT32, it is four octets. The ClassNameEncoding list is empty. | - | 04 00 00 00 |
| ClassQualifierSet::QualifierSet::EncodingLength. There is no [**CIM qualifier**](#gt_de5d4ab8-e295-4a98-bb5c-3aaf70c43ad0) set for the base CIM class of base because it has no base; so this CIM qualifier set is empty and consists of the length only of the EncodingLength UINT32, which is four octets. | - | 04 00 00 00 |
| Variable | - | 00 00 00 00 PropertyLookupTable::PropertyCount (shaded octets, end of line four, beginning of line five). There are zero properties in the base CIM class, which does not exist because base is the basest class. |
| Variable | - | - NdTable and ValueTable are empty and contain no octets because there are no properties. |
| ClassHeap::Heap::HeapLength. [Heaps](#Section_c3ea109f90204bc1b5db8b271bd5e7ea) are always prefixed by their length in 31 bits with the most significant bit set. This indicates a zero-length Heap. | - | 00 00 00 80 |
| Variable | - | 0C 00 00 00 MethodsPart::EncodingLength. There are 12 octets in the encoding of the method table. |
| MethodsPart::MethodCount. A 16-bit value that indicates how many methods are in the class, or zero. | - | 00 00 |
| Variable | - | 00 00 MethodsPart::MethodCountPadding. This is padding and can be zero or any random value. |
| MethodsPart::MethodHeap. The heap length of the method heap, or zero. The most significant bit is always set on HeapLength values, and only 31 bits are significant. This is located on the shaded portion of line 6. | - | 00 00 00 80 |
| Variable | - | - At this point, the nonexistent [ParentClass](#Section_2.2.12) ends, and [CurrentClass](#Section_2.2.13) begins, which is where base is specified. |
| Variable | - | 66 00 00 00 ClassHeader::EncodingLength, indicating that this encoding for base is 0x66 octets in length (102 decimal). Beginning of line 7. |
| Variable | - | 00 ReservedOctet. |
| Variable | - | 00 00 00 00 ClassHeader::ClassNameRef. The offset into the heap of the CIM class name base. The CIM class name is the first item in the heap, or an Encoded-String with the value of base. |
| Variable | - | 05 00 00 00 ClassHeader::NdTableValueTableLength. The NdTable and ValueTable is five octets in length. |
| Variable | - | 04 00 00 00 DerivationList::EncodingLength. There is no list of superclasses because base is the basest class. The encoding length is only four octets, which is the length of the EncodingLength. |
| Variable | - | 04 00 00 00 ClassQualifierSet::QualifierSet::EncodingLength. There are no class-level qualifiers on this class; so the encoding length for the set of qualifiers is just the length of the EncodingLength field, or four octets. |
| PropertyLookupTable::PropertyCount. There is one [**CIM property**](#gt_a95b6b41-8fd2-4d80-8632-1eb34c17a4fe) in this CIM class (italic line 8). | - | 01 00 00 00 |
| Variable | - | - PropertyLookupTable::PropertyLookup. |
| Variable | - | 06 00 00 00 PropertyNameRef. The location in the heap of the Encoded-String of the CIM property name, or offset 6 into the heap. |
| Variable | - | 0A 00 00 00 PropertyInfoRef. The location in the heap of the [PropertyInfo](#Section_2.2.30). |
| NdTable. This has the binary value 00000101. Because there is only one property, only the two least significant bits are valid, and the other bits can be any value. In this case, the bit value 01 indicates that the property has a default value of NULL; however, the default is not inherited from a superclass. | - | 05 |
| Variable | - | FF FF FF FF EncodedValue::NoValue. No value is defined for the CIM property by default in the CIM class definition. |
| Variable | - | 3C 00 00 80 ClassHeap::Heap::HeapLength. |
| Variable | Heap Offset 0 | 00 42 61 73 65 00 Encoded-String base. The first octet indicates ANSI encoding, and the last octet is the null terminator. |
| Variable | Heap Offset 6 | 00 49 64 00 Encoded-String ID, the name of the property. |
| Variable | - | 03 00 00 00 PropertyInfo::PropertyType. CIM-TYPE-SINT32 == 3. |
| Variable | - | 00 00 PropertyInfo::DeclarationOrder. |
| Variable | - | 00 00 00 00 PropertyInfo::ValueTableOffset. The offset in the ValueTable of the default value, or zero. |
| Variable | - | 00 00 00 00 PropertyInfo::ClassOfOrigin. A value of zero indicates the current class. |
| Variable | - | 1C 00 00 00 PropertyQualifierSet::QualifierSet::EncodingLength. There are 1C octets of encoding for the [QualifierSet](#Section_2.2.59) for this property. |
| Qualifier::QualifierName. This is a [DictionaryReference](#Section_2.2.80) instead of a plain [HeapRef](#Section_2.2.69) because the most significant bit is set (0x80). The dictionary reference is cimtype. | - | 0A 00 00 80 |
| Qualifier::QualifierFlavor. Bits 00000011. Bit 0 indicates that the CIM qualifier is a SYSTEM CIM qualifier (key). Bit 1 indicates that the CIM qualifier is recommended to be propagated to derived classes. | - | 03 |
| Variable | - | 08 00 00 00 Qualifier::QualifierType. This indicates CIM-TYPE-STRING, which is the data type of the CIM qualifier. |
| Variable | - | 34 00 00 00 Qualifier::QualifierValue. This is an [EncodedValue](#Section_2.2.71), depending on the type in the previous field. Because the CIM qualifier type is CIM-TYPE-STRING, this value is the HeapRef to an Encoded-String. |
| Variable | - | - Another CIM qualifier follows for the CIM property because all the octets in PropertyQualifierSet::QualifierSet::EncodingLength have not yet been completely used. |
| Qualifier::QualifierName. This is a DictionaryReference instead of a plain HeapRef because the most significant bit is set (0x80). The dictionary reference is key. | - | 01 00 00 80 |
| Variable | - | 13 QualifierFlavor. |
| Variable | - | 0B 00 00 00 QualifierType. CIM-TYPE-BOOLEAN. |
| Variable | - | FF FF EncodedValue for the CIM qualifier that is [BOOL](#Section_2.2.75). The value in this case is logical TRUE (all bits set). |
| Variable | Offset 0x34 | 00 73 69 6E 74 33 32 00 An Encoded-String with a value of sint32. This is the value of the first CIM qualifier in this table. |
| Variable | - | - At this point, the Heap for the CIM class has encoded because all of its EncodingLength has been used. The [MethodsPart](#Section_2.2.38) for the CIM class now begins. |
| Variable | - | 0C 00 00 00 MethodsPart::EncodingLength, or 12 octets. |
| Variable | - | 00 00 MethodsPart::MethodCount, or zero methods. |
| Variable | - | 34 00 MethodsPart::MethodCountPadding. Any two octets with random values. |
| MethodsPart::MethodHeap::Heap::HeapLength. This is a zero-length heap, indicating no methods. The most significant bit is always set for HeapLength values. | - | 00 00 00 80 |
| Variable | - | Remaining Octets The remaining octets are not significant. Also see EncodingUnit (section 2.2.1). |

The raw hexadecimal encoding of MyClass is as follows.

78 56 34 12 2E 02 00 00 05 00 44 50

52 41 56 41 54 2D 44 45 56 00 00 52 4F 4F 54 00

66 00 00 00 00 00 00 00 00 05 00 00 00 04 00 00

00 04 00 00 00 01 00 00 00 06 00 00 00 0A 00 00

00 05 FF FF FF FF 3C 00 00 80 00 42 61 73 65 00

00 49 64 00 03 00 00 00 00 00 00 00 00 00 00 00

00 00 1C 00 00 00 0A 00 00 80 03 08 00 00 00 34

00 00 00 01 00 00 80 13 0B 00 00 00 FF FF 00 73

69 6E 74 33 32 00 0C 00 00 00 00 00 34 00 00 00

00 80 76 01 00 00 00 00 00 00 00 11 00 00 00 0E

00 00 00 00 42 61 73 65 00 06 00 00 00 11 00 00

00 09 00 00 00 00 08 00 00 00 16 00 00 00 04 00

00 00 27 00 00 00 2E 00 00 00 55 00 00 00 5C 00

00 00 99 00 00 00 A0 00 00 00 C7 00 00 00 CB 00

00 00 47 FF FF FF FF FF FF FF FF FD 00 00 00 FF

FF FF FF 11 01 00 80 00 4D 79 43 6C 61 73 73 00

00 44 65 73 63 72 69 70 74 69 6F 6E 00 00 4D 79

43 6C 61 73 73 20 45 78 61 6D 70 6C 65 00 00 41

72 72 61 79 00 13 20 00 00 03 00 0C 00 00 00 01

00 00 00 11 00 00 00 0A 00 00 80 03 08 00 00 00

4D 00 00 00 00 75 69 6E 74 33 32 00 00 44 61 74

61 31 00 08 00 00 00 01 00 04 00 00 00 01 00 00

00 27 00 00 00 0A 00 00 80 03 08 00 00 00 91 00

00 00 03 00 00 80 00 0B 00 00 00 FF FF 04 00 00

80 00 0B 00 00 00 FF FF 00 73 74 72 69 6E 67 00

00 44 61 74 61 32 00 08 00 00 00 02 00 08 00 00

00 01 00 00 00 11 00 00 00 0A 00 00 80 03 08 00

00 00 BF 00 00 00 00 73 74 72 69 6E 67 00 00 49

64 00 03 40 00 00 00 00 00 00 00 00 00 00 00 00

1C 00 00 00 0A 00 00 80 23 08 00 00 00 F5 00 00

00 01 00 00 80 33 0B 00 00 00 FF FF 00 73 69 6E

74 33 32 00 00 64 65 66 61 75 6C 74 56 61 6C 75

65 00 00 00 00 00 00 00 0C 00 00 00 00 00 00 73

00 00 00 80 32 00 00 64 65 66 61 75 6C 74 56 61

6C 75 65 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 80 00 00 00 00

In the following table, this encoding is decoded by using ABNF. Note that the ParentClass part of this encoding is the same as the CurrentClass part of the base CIM class encoding.

| Bit Range | Field | Description |
| --- | --- | --- |
| Variable | - | - EncodingUnit. |
| Variable | - | 78 56 34 12 Signature. |
| Variable | - | 23 02 00 00 EncodingUnit::ObjectEncodingLength UINT32 length of entire CIM class encoding (0x223 octets). |
| Variable | - | - ObjectBlock. |
| Decoration. Bit 0 set == this is a CIM class definition. Bit 2 set == this CIM object is decorated with a server and CIM namespace name. | - | 05 |
| Variable | - | - Decoration. |
| Variable | - | 00 44 50 52 41 56 41 54 2D 44 56 00 DecServerName. This is an Encoded-String that contains the name of the server that transmitted the CIM object DPRAVAT-DEV. |
| Variable | - | 00 52 4F 4F 54 00 DecNamespaceName. This is an Encoded-String that contains the CIM namespace. The CIM object was created from ROOT. |
| Variable | - | - Encoding for the derived CIM class. Base is appended at this location. This is the ClassType::ParentClass block. |
| Variable | - | 66 00 00 00 ParentClass::ClassAndMethodsPart::ClassPart::ClassHeader::EncodingLength. UINT32 length of ClassPart for the base class, 0x66 octets. A separate binary chunk for MyClass follows, appended to this CIM class definition. |
| Variable | - | 00 ReservedOctet. |
| Variable | - | 00 00 00 00 ClassNameRef. Offset to CIM class name in the ClassHeap. |
| Variable | - | 05 00 00 00 NdTableValueTableLength. Length of NdTable and ValueTable for properties (five octets). |
| Variable | - | 04 00 00 00 DerivationList length, including the length of this UINT32. Because this is four octets and all four are used completely with this value, there is no derivation list. |
| Variable | - | 04 00 00 00 ClassQualifierSet::QualifierSet::EncodingLength, including the length of this UINT32. Because all four octets are used completely with this value, there is no QualifierSet. |
| Variable | - | 01 00 00 00 PropertyLookupTable::PropertyCount. This is the CIM property count, not the length, in octets. |
| Variable | - | 06 00 00 00 PropertyLookup::PropertyNameRef. The name of the CIM property [0] in the form of an Encoded-String. The 0x0006 offset is from the beginning of the ClassHeap, not from the beginning of this packet. |
| Variable | - | 0A 00 00 00 PropertyLookup::PropertyInfoRef. The offset for PropertyInfo for Property[0], including any qualifiers. This is the offset from the beginning of the [ClassHeap](#Section_2.2.37), not the beginning of this packet. |
| Variable | - | - NdTable. |
| This has the binary value 00000101. Because there is only one property, only the two least significant bits are valid, and the other bits can be any value. In this case, the bit value 01 indicates that the property has a default value of NULL, but the default is not inherited from a superclass. | - | 05 |
| Variable | - | - ValueTable. |
| Variable | - | FF FF FF FF ValueTable::EncodedValue. There is only one CIM property, and this reserved value indicates that there is no default value. |
| ClassHeap::Heap::HeapLength. The length of heap is 0x3C octets. The most significant bit is set to 1 for all encodings. | - | 3C 00 00 80 |
| Variable | 0x0 | 00 42 61 73 65 00 Encoded-String base, which is the name of the class. |
| Variable | 0x6 | 00 49 64 00 Encoded-String Property[0] name, which is Id. |
| Variable | 0x10 | 03 00 00 00 PropertyInfo::PropertyType. CIM-TYPE-SINT32 == 3. |
| Variable | 0x14 | 00 00 PropertyInfo::DeclarationOrder. This is the 0th property. |
| Variable | 0x16 | 00 00 00 00 PropertyInfo::ValueTableOffset. |
| Variable | 0x1A | 00 00 00 00 PropertyInfo::ClassOfOrigin. CIM class of origin in DerivationList, or the 0th CIM class (this class). |
| Variable | - | 1C 00 00 00 PropertyQualifierSet::QualifierSet::EncodingLength (0x1C octets in length, including itself). |
| Qualifier::QualifierName. CimType dictionary entry encoding, signaled by the most significant bit and the 0xA dictionary entry. This indicates that the current CIM qualifier is the CIMTYPE qualifier, which is required to be attached to every property. | - | 0A 00 00 80 |
| QualifierSet::Qualifier::QualifierFlavor. Here the octet is 03. This means that the bit 0 and bit 1 in the octet are set. Bit 0 set == Propagate to instances. Bit 1 set == Propagate to derived classes. | - | 03 |
| Variable | - | 08 00 00 00 Qualifier::QualifierType. [CimType](#Section_2.2.82) of CIM qualifier value 0x8 == CIM-TYPE-STRING. |
| Variable | - | 34 00 00 00 Qualifier::QualifierValue. A HeapRef to the string of the CIM qualifier value sint32. |
| Qualifier::QualifierName. This is a DictionaryReference instead of a plain HeapRef because the most significant bit is set (0x80). The dictionary reference is key. | - | 01 00 00 80 |
| Variable | - | 13 [QualifierFlavor](#Section_2.2.62). |
| Variable | - | 0B 00 00 00 [QualifierType](#Section_2.2.63). CIM-TYPE-BOOLEAN. |
| Variable | - | FF FF An EncodedValue for the CIM qualifier, which is BOOL. The value in this case is logical TRUE (all bits set). |
| Variable | 0x34 | 00 73 69 6E 74 33 32 00 Encoded-String sint32. |
| Variable | - | 0C 00 00 00 The length of MethodsPart, including itself. |
| Variable | - | 00 00 [MethodCount](#Section_2.2.39) (zero methods). |
| Variable | - | 34 00 Two octets of [MethodPadding](#Section_2.2.44); any values are valid. |
| MethodHeap::Heap::HeapLength. This is the length of Heap. Zero, with the most significant bit set, as for all heaps. | - | 00 00 00 80 |
| Variable | - | - Encoding for the derived CIM class MyClass is appended at this location. This is the ClassType::CurrentClass block. |
| Variable | - | 76 01 00 00 ClassHeader::EncodingLength. Length (0x176 octets). |
| Variable | - | 00 Reserved. Must be zero. |
| Variable | - | 00 00 00 00 The ClassNameRef to CIM class name. This is relative to the upcoming heap for this class, not the previous heap for base. |
| Variable | - | 11 00 00 00 NdTableValueTableLength. |
| Variable | - | 0E 00 00 00 The DerivationList length, in octets, including itself. |
| Variable | - | 00 42 61 73 65 00 The Encoded-String base, which is the superclass to this class. |
| Variable | - | 06 00 00 00 The EncodingLength of the previous string, or six octets (includes both the leading flag and trailing NULL). |
| Variable | - | 11 00 00 00 The ClassQualifierSet::QualifierSet::EncodingLength length, in octets, including itself. |
| Variable | - | 09 00 00 00 [QualifierName](#Section_2.2.61), Heap offset to Encoded-String. |
| Variable | - | 00 QualifierFlavor. 0 == Local. |
| Variable | - | 08 00 00 00 QualifierType. 0x8 == CIM-TYPE-STRING. |
| Variable | - | 16 00 00 00 [QualifierValue](#Section_2.2.64). A HeapRef to the Encoded-String that is the value of the qualifier. |
| Variable | - | 04 00 00 00 PropertyLookupTable::PropertyCount. There are four properties in this class. The properties are sorted in this table, regardless of the order in which they appear in the current CIM class and any of its superclasses. This enables a binary search to be performed while locating properties by name. |
| Variable | - | 27 00 00 00 PropertyInfo::PropertyNameRef. Offset in Heap to the CIM property name. Points to the Encoded-String array. |
| Variable | - | 2E 00 00 00 PropertyInfo::PropertyInfoRef. Offset in Heap of the PropertyInfo table and any associated qualifiers for the property. |
| Variable | - | 55 00 00 00 PropertyInfo::PropertyNameRef. Offset in Heap to the CIM property name. Points to the Encoded-String Data1. |
| Variable | - | 5C 00 00 00 PropertyInfo::PropertyInfoRef. Offset in Heap of the PropertyInfo for Data1 and any associated qualifiers. |
| Variable | - | 99 00 00 00 PropertyInfo::PropertyNameRef. Offset in Heap of the CIM property name. Points to Data2. |
| Variable | - | A0 00 00 00 PropertyInfo::PropertyInfoRef. Offset in Heap of PropertyInfo for Data2 and any associated qualifiers. |
| Variable | - | C7 00 00 00 PropertyInfo::PropertyNameRef. Offset in Heap of the CIM property name. Points to Id. All properties that are inherited from base classes are repeated in the [PropertyLookupTable](#Section_2.2.21) for each derived class. |
| Variable | - | CB 00 00 00 PropertyInfo::PropertyInfoRef. Offset in Heap of PropertyInfo for Id and any associated CIM qualifier sets. |
| Variable | - | 47 NdTable. 01 00 01 11b. Property 0 == 11b NULL, inherits DEFAULT. Property 1 == 01 NULL, no inherited default. Property 2 == 00 Not NULL, no inheritance. Property 3 == 01 Null, no inherited default. The indexes do not refer to the ordinal position in [PropertyLookup](#Section_2.2.23); instead, they refer to the propertyIndex field for the CIM property in the PropertyInfo table for that property. |
| Variable | - | - ValueTable. |
| Variable | 0x0 | FF FF FF FF No default value. |
| Variable | 0x4 | FF FF FF FF No default value. |
| Variable | 0x8 | FD 00 00 00 HeapRef to default value. |
| Variable | 0xC | FF FF FF FF No default value. |
| ClassHeap::Heap::HeapLength. The length is 0x111 octets, and the most significant bit is always set. | - | - |
| Variable | 0x0 | 00 4D 79 43 6C 61 73 73 00 Encoded-String MyClass. |
| Variable | 0x9 | 00 44 65 73 63 72 69 70 74 69 6F 6E 00 Encoded-String Description. |
| Variable | 0x16 | 00 4D 79 43 6C 61 73 73 20 45 78 61 6D 70 6C 65 00 Encoded-String MyClass Example. |
| Variable | 0x27 | 00 41 72 72 61 79 00 Encoded-String Array. |
| Variable | 0x2E | - PropertyInfo for Array property. |
| Variable | - | 13 20 00 00 [PropertyType](#Section_2.2.31) CIM-TYPE-UINT32 and CimArrayFlag. |
| Variable | - | 03 00 DeclarationOrder (starting with 0). Array was the third CIM property after Id, Data1, and Data2. This is the value used in NdTable. |
| Variable | - | 0C 00 00 00 ValueTableOffset Offset into ValueTable for default CIM property value. In this case, the offset points to 0xFFFFFFFF, which means there is no default value. |
| Variable | - | 01 00 00 00 ClassOfOrigin. Class 1 in DerivationList array. |
| Variable | - | 11 00 00 00 PropertyQualifierSet::QualifierSet::EncodingLength, including itself. |
| Qualifier::QualifierName. This is a DictionaryReference instead of a plain HeapRef because the most significant bit is set (0x80). The dictionary reference is cimtype. | - | 0A 00 00 80 |
| Variable | - | 03 QualifierFlavor. |
| Variable | - | 08 00 00 00 QualifierType, which is CIM-TYPE-STRING. |
| Variable | - | 4D 00 00 00 QualifierValue. Because the type is string, the value is a HeapRef. |
| Variable | 0x4D | 00 75 69 6E 74 33 32 00 Encoded-String uint32. |
| Variable | 0x55 | 00 44 61 74 61 31 00 Encoded-String Data1. |
| Variable | 0x5C | - PropertyInfo. |
| Variable | - | 08 00 00 00 PropertyInfo::PropertyType, CIM-TYPE-STRING == 0x8. |
| Variable | - | 01 00 PropertyInfo::DeclarationOrder, zero-origin. Original order was {Id, Data1, Data2, Array}; so this is Property[1]. |
| Variable | - | 04 00 00 00 PropertyInfo::ValueTableOffset. In this case, at that offset is the value 0xFFFFFFFF, which means there is no default. |
| Variable | - | 01 00 00 00 PropertyInfo::ClassOfOrigin. 1 == Current class. |
| Variable | 0x6A | - [PropertyQualifierSet](#Section_2.2.36) for Data1. |
| Variable | - | 27 00 00 00 EncodingLength of CIM qualifier set in octets, including itself. |
| Qualifier::QualifierName. This is a DictionaryReference instead of a plain HeapRef because the most significant bit is set (0x80). The dictionary reference is cimtype. | - | 0A 00 00 80 |
| Variable | - | 03 QualifierFlavor. |
| Variable | - | 08 00 00 00 QualifierType or CIM-TYPE-STRING. |
| Variable | - | 91 00 00 00 QualifierValue::EncodedValue, offset to value in current Heap. |
| Variable | - | - Another CIM qualifier for the current PropertyInfo encoding. |
| Qualifier::QualifierName. This is a DictionaryReference instead of a plain HeapRef because the most significant bit is set (0x80). The dictionary reference is read. | - | 03 00 00 80 |
| Variable | - | 00 QualifierFlavor. |
| Variable | - | 0B 00 00 00 QualifierType is CIM-TYPE-BOOLEAN. |
| Variable | - | FF FF QualifierValue::EncodedValue. This is the encoding for logical TRUE when type is CIM-TYPE-BOOLEAN. 0x0000 is FALSE. |
| Qualifier::QualifierName. This is a DictionaryReference instead of a plain HeapRef because the most significant bit is set (0x80). The dictionary reference is write. | - | 04 00 00 80 |
| Variable | - | 00 QualifierFlavor. No propagate. |
| Variable | - | 0B 00 00 00 QualifierType is CIM-TYPE-BOOLEAN. |
| Variable | - | FF FF QualifierValue::EncodedValue. This is the encoding for logical TRUE when type is CIM-TYPE-BOOLEAN. 0x0000 is FALSE. |
| Variable | 0x91 | 00 73 74 72 69 6E 67 00 Encoded-String string. |
| Variable | 0x99 | 00 44 61 74 61 32 00 Encoded-String Data2. |
| Variable | - | - PropertyInfo. |
| Variable | 0xA0 | 08 00 00 00 PropertyInfo::PropertyType Type is CIM-TYPE-STRING. |
| Variable | - | 02 00 PropertyInfo::DeclarationOrder is 2 out of {0, 1, 2, 3}. |
| Variable | - | 08 00 00 00 PropertyInfo::ValueTableOffset for default value. This points to a HeapRef of 0xFD, which in turn points to DefaultValue. |
| Variable | - | 01 00 00 00 PropertyInfo::ClassOfOrigin points to class[1] in the derivation chain. |
| Variable | - | - PropertyQualifierSet. |
| Variable | - | 11 00 00 00 QualifierSet::EncodingLength. CIM qualifier set is 0x11 octets in length, including itself. |
| Qualifier::QualifierName. This is a DictionaryReference instead of a plain HeapRef because the most significant bit is set (0x80). The dictionary reference is cimtype. | - | 0A 00 00 80 |
| Variable | - | 03 Qualifier::QualifierFlavor, propagate to subclass and instance. |
| Variable | - | 08 00 00 00 QualifierType is CIM-TYPE-STRING. |
| Variable | - | BF 00 00 00 QualifierValue::EncodedValue HeapRef to value. |
| Variable | 0xBF | 00 73 74 72 69 6E 67 00 Encoded-String of string. |
| Variable | 0xC7 | 00 49 64 00 Encoded-String of Id. |
| Variable | - | - PropertyInfo. |
| Variable | 0xCB | 03 40 00 00 PropertyInfo::PropertyType. CIM-TYPE-SINT32 + INHERITED. |
| Variable | - | 00 00 PropertyInfo::DeclarationOrder, CIM property number 0. |
| Variable | - | 00 00 00 00 PropertyInfo::ValueTableOffset default value in ValueTable. |
| Variable | - | 00 00 00 00 PropertyInfo::ClassOfOrigin. CIM class 0 in DerivationList. |
| Variable | - | - PropertyInfo::PropertyQualifierSet. |
| Variable | - | 1C 00 00 00 QualifierSet::EncodingLength in octets, including itself. |
| Qualifier::QualifierName. This is a DictionaryReference instead of a plain HeapRef because the most significant bit is set (0x80). The dictionary reference is cimtype. | - | 0A 00 00 80 |
| Variable | - | 23 Qualifier::QualifierFlavor, inherited and toclass+toinstance. |
| Variable | - | 08 00 00 00 Qualifier::QualifierType is CIM-TYPE-STRING. |
| Variable | - | F5 00 00 00 Qualifier::QualifierValue::Encoded-Value, a HeapRef to value. |
| Qualifier::QualifierName. This is a DictionaryReference instead of a plain HeapRef because the most significant bit is set (0x80). The dictionary reference is key. | - | 01 00 00 80 |
| Variable | - | 33 Qualifier::QualifierFlavor = Not overridable/propagated/toclass/toinstance. |
| Variable | - | 0B 00 00 00 Qualifier::QualifierType is CIM-TYPE-BOOLEAN. |
| Variable | - | FF FF Qualifier::QualifierValue::EncodedValue Default value. |
| Variable | 0xF5 | 00 73 69 6E 74 33 32 00 Encoded-String sint32. |
| Variable | 0xFD | 00 64 65 66 61 75 6C 74 56 61 6C 75 65 00 Encoded-String defaultValue. |
| Variable | 0x10B | 00 00 00 00 00 00 MethodsPart. |
| Variable | - | 0C 00 00 00 MethodsPart::EncodingLength, including itself. |
| Variable | - | 00 00 MethodsPart::MethodCount (no methods in this case). |
| Variable | - | 00 73 MethodsPart:: Padding. Two octets of padding; can be any value. |
| Variable | - | 00 00 00 80 MethodsPart::MethodHeap::HeapLength zero length method heap. |
| Variable | - | - END OF OBJECT |

<a id="Section_3.1"></a>
## 3.1 Instance Encoding

Using the [**CIM class**](#gt_cim-class) example from section [3](#Section_3) as a basis, the following [**CIM instance**](#gt_cim-instance) [**encoding**](#gt_encoding) is presented.

instance of MyClass

{

Id = 123;

Data1 = "StringField";

Array = { 1, 2, 3 };

};

The raw hexadecimal encoding of this CIM instance follows.

78 56 34 12 D3 01 00 00 06 00 44 50

52 41 56 41 54 2D 44 45 56 00 00 52 4F 4F 54 00

76 01 00 00 00 00 00 00 00 11 00 00 00 0E 00 00

00 00 42 61 73 65 00 06 00 00 00 11 00 00 00 09

00 00 00 00 08 00 00 00 16 00 00 00 04 00 00 00

27 00 00 00 2E 00 00 00 55 00 00 00 5C 00 00 00

99 00 00 00 A0 00 00 00 C7 00 00 00 CB 00 00 00

47 FF FF FF FF FF FF FF FF FD 00 00 00 FF FF FF

FF 11 01 00 80 00 4D 79 43 6C 61 73 73 00 00 44

65 73 63 72 69 70 74 69 6F 6E 00 00 4D 79 43 6C

61 73 73 20 45 78 61 6D 70 6C 65 00 00 41 72 72

61 79 00 13 20 00 00 03 00 0C 00 00 00 01 00 00

00 11 00 00 00 0A 00 00 80 03 08 00 00 00 4D 00

00 00 00 75 69 6E 74 33 32 00 00 44 61 74 61 31

00 08 00 00 00 01 00 04 00 00 00 01 00 00 00 27

00 00 00 0A 00 00 80 03 08 00 00 00 91 00 00 00

03 00 00 80 00 0B 00 00 00 FF FF 04 00 00 80 00

0B 00 00 00 FF FF 00 73 74 72 69 6E 67 00 00 44

61 74 61 32 00 08 00 00 00 02 00 08 00 00 00 01

00 00 00 11 00 00 00 0A 00 00 80 03 08 00 00 00

BF 00 00 00 00 73 74 72 69 6E 67 00 00 49 64 00

03 40 00 00 00 00 00 00 00 00 00 00 00 00 1C 00

00 00 0A 00 00 80 23 08 00 00 00 F5 00 00 00 01

00 00 80 33 0B 00 00 00 FF FF 00 73 69 6E 74 33

32 00 00 64 65 66 61 75 6C 74 56 61 6C 75 65 00

00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 20

7B 00 00 00 19 00 00 00 00 00 00 00 09 00 00 00

04 00 00 00 01 26 00 00 80 00 4D 79 43 6C 61 73

73 00 03 00 00 00 01 00 00 00 02 00 00 00

03 00 00 00 00 53 74 72 69 6E 67 46 69

65 6C 64 00

The following table breaks apart this encoding using [**ABNF**](#gt_augmented-backus-naur-form-abnf). Note that the shaded part is the [ClassPart](#Section_2.2.15) encoding of the CIM instance and is identical to the preceding table for MyClass. Encoded instances always contain the CIM class definition encoding as the first part of the block. This allows a CIM instance to be decoded in its entirety without retrieving from, or cross-referencing to, a CIM class definition.

The part of the encoding that differs from the MyClass encoding (and is specific to the CIM instance) is not shaded and is covered in the following table.

| Bit Range | Field | Description |
| --- | --- | --- |
| Variable | - | - EncodingUnit. |
| Standard [**CIM object**](#gt_cim-object) Signature. | - | 78 56 34 12 |
| Variable | - | D3 01 00 00 UINT32 length of the entire CIM class encoding (0x1D3 octets). |
| Variable | - | - [ObjectBlock](#Section_2.2.5). |
| ObjectBlock::decoration. Bit 1 set. this is a CIM instance definition. Bit 2 set. this CIM object is decorated with a server and [**CIM**](#gt_common-information-model-cim) namespace name. | - | 06 |
| Variable | - | - Decoration. |
| Variable | - | 00 44 50 52 41 56 41 54 2D 44 56 00 The [Encoded-String](#Section_2.2.78) that contains the name of the server that transmitted the CIM object DPRAVAT-DEV. |
| Variable | - | 00 52 4F 4F 54 00 The Encoded-String that contains the CIM namespace. The CIM object was created from ROOT. |
| Variable | - | All shaded octets InstanceType::CurrentClass. This is a direct copy of the CIM class encoding for MyClass in the [CurrentClass](#Section_2.2.13) block. |
| Variable | - | 49 00 00 00 InstanceType::EncodingLength. 0x49 octets (73 decimal). |
| Variable | - | 00 00 00 00 InstanceType::InstanceClassName. Points to the CIM class name in heap. |
| Variable | - | 00 InstanceType::Flags. |
| InstanceType::NdTabl. 00100000. Indicates the third [**CIM property**](#gt_a95b6b41-8fd2-4d80-8632-1eb34c17a4fe) has its default value. | - | 20 |
| Variable | - | 7B 00 00 00 InstanceType::InstanceData::ValueTable. The value for CIM property 0. |
| Variable | - | 19 00 00 00 InstanceType::InstanceData::ValueTable. The value for Data1. |
| Variable | - | 00 00 00 00 InstanceType::InstanceData::ValueTable. Data 2 still has the default value. |
| Variable | - | 09 00 00 00 InstanceType::InstanceData::ValueTable. The location of array for Array. |
| InstanceType::InstanceQualifierSet::EncodingLength. This indicates that there is no [**CIM qualifier**](#gt_de5d4ab8-e295-4a98-bb5c-3aaf70c43ad0) set data because the [EncodingLength](#Section_2.2.73) only includes its own size. | - | 04 00 00 00 |
| Variable | *** See notes following this table | 01 InstPropQualSetFlag. There are no property-level qualifiers. |
| InstanceHeap::HeapLength The [Heap](#Section_2.2.66) is 0x26 octets in length, and the most significant bit is set, for all HeapLength values. | - | 26 00 00 80 |
| Variable | Heap offset 0 | 00 4D 79 43 6C 61 73 73 00 Encoded-String MyClass. |
| Variable | Heap offset 9 | 03 00 00 00 [Encoded-Array](#Section_2.2.79)::ArrayCount. There are three elements in the array. |
| Variable | - | 01 00 00 00 UINT32 [0]. |
| Variable | - | 02 00 00 00 UINT32 [1]. |
| Variable | - | 03 00 00 00 UINT32 [2]. |
| Variable | HeapOffset 0x19 | 00 53 73 72 69 6E 67 46 69 65 6C 64 00 The Encoded-String of the value StringField. |

***In the left column of the previous table, a special case can occur with instances that have qualifiers (see the InstancePropQualifierSet rule), as follows.

instance of MyClass

{

Array = {1, 2, 3};

[test] Data1 = "StringField";

Id = 123;

};

The encoding for the preceding CIM instance is required to take into account that a property-level CIM qualifier appears within the instance. When any CIM qualifier appears on any CIM property at the CIM instance level, there is required to be an array of [QualifierSet](#Section_2.2.59) elements, one for each CIM property in the CIM class to which the CIM instance belongs, even if one or more of the CIM properties is not used.

The binary encoding for the preceding CIM instance, detailed in the following table, differs from the previous example, which starts in the preceding table at the row above the row that contains the three asterisks (***) in the left column.

|  | Octet values | Comments |
| --- | --- | --- |
| *** | 02 | InstPropQualSetFlag. If the octet value is 02, one QualifierSet per property is encoded at this location prior to the [InstanceHeap](#Section_2.2.58). |
| - | 04 00 00 00 | QualifierSet: No qualifiers for CIM property 0 because the EncodingLength is four octets, which is the length of the EncodingLength value itself. |
| - | 0F 00 00 00 | QualifierSet CIM property 1 (Data1): There are 15 octets for this QualifierSet. |
| - | 26 00 00 00 | [QualifierName](#Section_2.2.61): The Heap reference to the CIM qualifier name test. |
| - | 0B 00 00 00 | [QualifierType](#Section_2.2.63): CIM-TYPE-BOOL. |
| - | FF FF | Logical TRUE. |
| - | 04 00 00 00 | QualifierSet, none for CIM property 2 (Data2). |
| - | 04 00 00 00 | QualifierSet, none for CIM property 3 (Id). |
| - | 2C 00 00 80 | InstanceHeap::HeapLength. The Heap is longer in order to accommodate the name of the CIM qualifier test. |
| - | ... | The remainder of the Heap. |

<a id="Section_3.2"></a>
## 3.2 Class Encoding with Methods

Classes that contain methods have an extra [**encoding**](#gt_encoding) block called [MethodsPart](#Section_2.2.38) in the [**ABNF**](#gt_augmented-backus-naur-form-abnf) encoding. The MethodsPart only applies to [**CIM objects**](#gt_cim-object) that are encoded as [**CIM class**](#gt_cim-class) definitions and not part of a [**CIM instance**](#gt_cim-instance) encoding—even though instances do contain parts of the CIM class encoding that is related to [**CIM property**](#gt_a95b6b41-8fd2-4d80-8632-1eb34c17a4fe) definitions.

The example CIM class contains one method, Restart, which has input parameters, output parameters, and a uint32 return value. The CIM class is derived from MyClass, as specified in section [3.1](#Section_3.1).

class MyClass2 : MyClass

{

[execute, performance{"fast", "sideffects"}]

uint32 Restart([in] string ServiceName, [out] sint32 Status);

};

The raw hexadecimal encoding of the preceding CIM class definition is shown as follows. The shaded block is the encoding of the parent CIM class MyClass, which is the same as is shown in the Encoded Examples topic.

78 56 34 12 BE 08 00 00

05 00 44 50 52 41 56 41 54 2D 44 45 56 00

00 52 4F 4F 54 00

76 01 00 00 00 00 00 00 00 11 00 00 00 0E 00 00

00 00 42 61 73 65 00 06 00 00 00 11 00 00 00 09

00 00 00 00 08 00 00 00 16 00 00 00 04 00 00 00

27 00 00 00 2E 00 00 00 55 00 00 00 5C 00 00 00

99 00 00 00 A0 00 00 00 C7 00 00 00 CB 00 00 00

47 FF FF FF FF FF FF FF FF FD 00 00 00 FF FF FF

FF 11 01 00 80 00 4D 79 43 6C 61 73 73 00 00 44

65 73 63 72 69 70 74 69 6F 6E 00 00 4D 79 43 6C

61 73 73 20 45 78 61 6D 70 6C 65 00 00 41 72 72

61 79 00 13 20 00 00 03 00 0C 00 00 00 01 00 00

00 11 00 00 00 0A 00 00 80 03 08 00 00 00 4D 00

00 00 00 75 69 6E 74 33 32 00 00 44 61 74 61 31

00 08 00 00 00 01 00 04 00 00 00 01 00 00 00 27

00 00 00 0A 00 00 80 03 08 00 00 00 91 00 00 00

03 00 00 80 00 0B 00 00 00 FF FF 04 00 00 80 00

0B 00 00 00 FF FF 00 73 74 72 69 6E 67 00 00 44

61 74 61 32 00 08 00 00 00 02 00 08 00 00 00 01

00 00 00 11 00 00 00 0A 00 00 80 03 08 00 00 00

BF 00 00 00 00 73 74 72 69 6E 67 00 00 49 64 00

03 40 00 00 00 00 00 00 00 00 00 00 00 00 1C 00

00 00 0A 00 00 80 23 08 00 00 00 F5 00 00 00 01

00 00 80 33 0B 00 00 00 FF FF 00 73 69 6E 74 33

32 00 00 64 65 66 61 75 6C 74 56 61 6C 75 65 00

00 00 00 00 00 00 0C 00 00 00 00 00 00 73 00 00

00 80

80 01 00 00 00 00 00 00 00 11 00 00 00 1b 00 00

00 00 4d 79 43 6c 61 73 73 00 09 00 00 00 00 42

61 73 65 00 06 00 00 00 04 00 00 00 04 00 00 00

0a 00 00 00 11 00 00 00 38 00 00 00 3f 00 00 00

66 00 00 00 6d 00 00 00 94 00 00 00 98 00 00 00

ef ff ff ff ff ff ff ff ff ca 00 00 00 ff ff ff

ff 1b 01 00 80 00 4d 79 43 6c 61 73 73 32 00 00

41 72 72 61 79 00 13 60 00 00 03 00 0c 00 00 00

01 00 00 00 11 00 00 00 0a 00 00 80 23 08 00 00

00 30 00 00 00 00 75 69 6e 74 33 32 00 00 44 61

74 61 31 00 08 40 00 00 01 00 04 00 00 00 01 00

00 00 11 00 00 00 0a 00 00 80 23 08 00 00 00 5e

00 00 00 00 73 74 72 69 6e 67 00 00 44 61 74 61

32 00 08 40 00 00 02 00 08 00 00 00 01 00 00 00

11 00 00 00 0a 00 00 80 23 08 00 00 00 8c 00 00

00 00 73 74 72 69 6e 67 00 00 49 64 00 03 40 00

00 00 00 00 00 00 00 00 00 00 00 1c 00 00 00 0a

00 00 80 23 08 00 00 00 c2 00 00 00 01 00 00 80

33 0b 00 00 00 ff ff 00 73 69 6e 74 33 32 00 00

64 65 66 61 75 6c 74 56 61 6c 75 65 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

6b 05 00 00 01 00 00 00

00 00 00 00 00 00 00 00

02 00 00 00 f7 04 00 00

09 00 00 00 09 02 00 00

47 05 00 80 00 52 65 73 74 61 72 74 00

fc 01 00 00

05 00 44 50 2d 4d 00 00 52 4f 4f 54 5c 64 65

66 61 75 6c 74 00 1d 00 00 00 00

ff ff ff ff

00 00 00 00 04 00 00 00 04 00 00 00

00 00 00 00 00 00 00 80 0c 00 00 00 00 00 00 00

00 00 00 80

b2 01 00 0000 00 00 00 00

05 00 00 00 04 00 00 00

0F 00 00 000e 00 00 0000

0b 00 00 00

ff ff 01 00 00 00

2a 00 00 00 90 00 00 00 19 ff ff ff ff

cf 00 00 80

00 5f 5f 50 41 52 41 4d 45 54 45 52 53 00

00 61 62 73 74 72 61 63 74 00

08 00 00 00 00 00 00 00 00 00 00 00 00 00

04 00 00 00 00 53 65 72 76 69 63 65 4e 61 6d 65 00

00 73 74 72 69 6e 67 00

08 00 00 00 00 00 00 00 00 00 00 00 00 00

11 00 00 00 0a 00 00 80 03

08 00 00 00 37 00 00 00

00 69 6e 00 08 00 00 00 00 00 00 00 00 00

00 00 00 00 1c 00 00 00 0a 00 00 80 03 08 00 00

00 37 00 00 00 5e 00 00 00 00 0b 00 00 00

ff ff 00 49 44 00 08 00 00 00 00 00

00 00 00 00 00 00 00 00 29 00 00 00

0a 00 00 80 03 08 00 00 00 c7 00 00 00

5e 00 00 00 00 0b 00 00 00 ff ff

8c 00 00 00 11 03 00 00 00 00 00 00 00

00 73 74 72 69 6e 67 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00

0c 00 00 00 00 00 5f 5f 00 00 00 80

ea 02 00 00

05 00 44 50 2d 4d 00

00 52 4f 4f 54 5c 64 65 66 61 75 6c 74 00 1d

00 00 00 00 ff ff ff ff 00 00 00 00

04 00 00 00 04 00 00 00 00 00 00 00 00

00 00 80 0c 00 00 00 00 00 00 00 00 00 00 80 a0

02 00 00 00 00 00 00 00 09 00 00 00 04 00 00 00

0f 00 00 00 0e 00 00 00 00 0b 00 00 00 ff ff 02

00 00 00 e1 00 00 00 22 01 00 00 2a 00 00 00 8c

00 00 00 15 ff ff ff ff ff ff ff ff 4c 01 00 80

00 5f 5f 50 41 52 41 4d 45 54 45 52 53 00 00 61

62 73 74 72 61 63 74 00 0d 00 00 00 00 00 00 00

00 00 00 00 00 00 04 00 00 00 00 53 74 61 74 75

73 00 00 6f 62 6a 65 63 74 00 0d 00 00 00 00 00

00 00 00 00 00 00 00 00 11 00 00 00 0a 00 00 80

03 08 00 00 00 32 00 00 00 00 6f 75 74 00 0d 00

00 00 00 00 00 00 00 00 00 00 00 00 1c 00 00 00

0a 00 00 80 03 08 00 00 00 32 00 00 00 59 00 00

00 00 0b 00 00 00 ff ff 00 49 44 00 0d 00 00 00

00 00 00 00 00 00 00 00 00 00 29 00 00 00 0a 00

00 80 03 08 00 00 00 c3 00 00 00 59 00 00 00 00

0b 00 00 00 ff ff 88 00 00 00 11 03 00 00 00 01

00 00 00 00 6f 62 6a 65 63 74 3a 69 6e 74 00 13

00 00 00 01 00 04 00 00 00 00 00 00 00 04 00 00

00 00 52 65 74 75 72 6e 56 61 6c 75 65 00 00 75

69 6e 74 33 32 00 13 00 00 00 01 00 04 00 00 00

00 00 00 00 11 00 00 00 0a 00 00 80 03 08 00 00

00 15 01 00 00 00 75 69 6e 74 33 32 00 00 6f 75

74 00 13 00 00 00 01 00 04 00 00 00 00 00 00 00

1c 00 00 00 0a 00 00 80 03 08 00 00 00 15 01 00

00 1d 01 00 00 00 0b 00 00 00 ff ff 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

0c 00 00 00 00 00 5f 5f 00 00 00 80

1c 00 00 00 13 05 00 00 00 0b 00 00 00 ff ff

1c 05 00 00 00 08 20 00 00 29 05 00 00

00 65 78 65 63 75 74 65 00

00 70 65 72 66 6f 72 6d 61 6e 63 65 00

02 00 00 00 35 05 00 00 3b 05 00 00

00 66 61 73 74 00 00 73 69 64 65 66 66 65 63 74 73 00

20 00 00 29 05 00 00 00 65 78 65 63 75 74 65 00 00

70 65 72 66 6f 72 6d 61 6e 63 65 00 02 00 00 00 35

05 00 00 3b 05 00 00 00 66 61 73 74 00 00 73 69 64

65 66 66 65 63 74 73 00 00 00 00 00

| Bit Range | Field | Description |
| --- | --- | --- |
| Variable | - | - EncodingUnit. |
| Standard [**CIM object**](#gt_cim-object) signature. | - | 78 56 34 12 |
| Variable | - | D3 01 00 00 UINT32 length of the entire CIM class encoding (0x1D3 octets). |
| Variable | - | - [ObjectBlock](#Section_2.2.5). |
| Variable | - | Shaded Bold Portion 76 01 00 00... ...73 00 00 00 80 MyClass encoding. |
| Variable | - | 80 01 00 00 [EncodingLength](#Section_2.2.73) of MyClass2, or 0x180 octets. |
| Variable | - | 00 Reserved. |
| Variable | - | 00 00 00 00 The offset of the CIM class name in the CIM class [Heap](#Section_2.2.66). |
| Variable | - | 11 00 00 00 [NdTableValueTableLength](#Section_2.2.28). |
| Variable | - | 1B 00 00 00 The [DerivationList](#Section_2.2.17) length, in octets. |
| The [Encoded-String](#Section_2.2.78) MyClass, which is the [**superclass**](#gt_fbb1e623-a709-400d-8d4a-85df94ad58c3) of the current class. | - | 00 4D 79 43 6C 61 73 73 00 |
| Variable | - | 09 00 00 00 The length, in octets, of the previous Encoded-String. |
| Variable | - | 00 42 61 73 65 00 The Encoded-String base, which is the superclass of MyClass. |
| Variable | - | 06 00 00 00 The length, in octets, of the previous Encoded-String. |
| Variable | - | 04 00 00 00 ClassQualifierSet::QualifierSet::EncodingLength, including itself. There are no qualifiers; so the octet count is four, which is just enough to encode its own length. |
| Variable | - | 04 00 00 00 PropertyLookupTable::PropertyCount. |
| Variable | - | 0A 00 00 00 PropertyNameRef, CIM property 1. |
| Variable | - | 11 00 00 00 PropertyInfoRef. |
| Variable | - | 38 00 00 00 PropertyNameRef, CIM property 2. |
| Variable | - | 3F 00 00 00 PropertyInfoRef. |
| Variable | - | 66 00 00 00 PropertyNameRef, CIM property 3. |
| Variable | - | 6d 00 00 00 PropertyInfoRef. |
| Variable | - | 94 00 00 00 PropertyNameRef, CIM property 4. |
| Variable | - | 98 00 00 00 PropertyInfoRef, CIM property 4. |
| Variable | - | EF [NdTable](#Section_2.2.26). |
| Variable | - | FF FF FF FF Value Table, CIM property 1. |
| Variable | - | FF FF FF FF Value Table, CIM property 2. |
| Variable | - | CA 00 00 00 Value Table, CIM property 3. |
| Variable | - | FF FF FF FF Value Table, CIM property 4. |
| Variable | - | 1B 01 00 80 ClassHeap::Heap::HeapLength (0x11B octets, 283 decimal). |
| Variable | - | 283 octets in shaded italics 00 4d 79... ...00 00 00 ClassHeap. This is essentially the same encoding that is used for MyClass because MyClass2 only adds a method and no properties. |
| Variable | - | 6b 05 00 00 MethodsPart::EncodingLength. (0x56B octets). |
| Variable | - | 01 00 00 00 MethodCount (only one method). |
| Variable | - | 00 00 00 00 MethodDescription::MethodName. Reference to Encoded-String in [MethodHeap](#Section_2.2.52); this points to Restart. |
| Variable | - | 00 MethodFlags (reserved octet; is required to be 0). |
| Variable | - | 00 00 00 MethodPadding. |
| Variable | - | 02 00 00 00 MethodOrigin (Class[2] in DerivationList) or MyClass2. |
| Variable | - | F7 04 00 00 MethodQualifiers ([HeapRef](#Section_2.2.69) to QualifierSet). |
| Variable | - | 09 00 00 00 InputSignature (HeapRef to MethodSignature) for input parameters. |
| Variable | - | 09 02 00 00 OutputSignature (HeapRef to MethodSignature) for output parameters and return value. |
| MethodHeap::HeapLength, 0x547 octets, with the most significant bit set. | - | 47 05 00 80 |
| Variable | 0000 | 00 52 65 73 74 61 72 74 00 Encoded-String Restart. |
| Variable | 0009 | FC 01 00 00 MethodSignatureBlock::EncodingLength. The ObjectBlock is an embedded ClassPart that represents CIM class __PARAMETERS for the InputSignature. This block is shown indented in the previous raw hexadecimal encoding. |
| Variable | - | 05 ObjectFlags (Class + Decoration). |
| Variable | - | 00 44 50 2d 4d 00 DecServerName: The Encoded-String of DP-M. |
| Variable | - | 00 52 4F 4F 54 5C 64 65 66 61 75 6C 74 00 DecNamespaceName: Encoded-String ROOT\default. |
| Variable | - | - The CIM class encoding for __PARAMETERS begins here. There are ParentClass and CurrentClass parts, in succession. The ParentClass is almost empty. |
| Variable | - | 1d 00 00 00 ClassHeader::EncodingLength. (ParentClass part of ClassType.) |
| Variable | - | 00 ReservedOctet. |
| Variable | - | ff ff ff ff ClassNameRef. This is a simulation of a Heap reference. It indicates no CIM class name because the parent CIM class of __PARAMETERS is currently being encoded and does not exist. |
| Variable | - | 00 00 00 00 NdTableValueTableLength. |
| Variable | - | 04 00 00 00 DerivationList length in octets, including itself (no Derivation). |
| ClassQualifierSet::QualifierSet::EncodingLength, including itself. (No [**CIM qualifier**](#gt_de5d4ab8-e295-4a98-bb5c-3aaf70c43ad0) set.) | - | 04 00 00 00 |
| Variable | - | 00 00 00 00 [PropertyCount](#Section_2.2.22). |
| HeapLength (zero, most significant bit set). | - | 00 00 00 80 |
| Variable | - | 0C 00 00 00 MethodsPart::EncodingLength. |
| Variable | - | 00 00 MethodsPart::MethodCount. |
| Variable | - | 00 00 MethodsPart::MethodCountPadding. |
| Variable | - | 00 00 00 80 MethodsPart::MethodHeap, zero-length heap. |
| Variable | - | b2 01 00 00 ClassPart::EncodingLength (0x1b2, 434 decimal octets). This is the CurrentClass part of the ClassType. |
| Variable | - | 00 ReservedOctet. |
| Variable | - | 00 00 00 00 ClassNameRef (points to __PARAMETERS). |
| Variable | - | 05 00 00 00 NdTableValueTableLength. |
| Variable | - | 04 00 00 00 DerivationList (only itself, so no derivation). |
| Variable | - | 0F 00 00 00 ClassQualifierSet::QualifierSet::EncodingLength. |
| Variable | - | 0E 00 00 00 The [QualifierName](#Section_2.2.61) (reference) points to abstract, a requirement for all classes of type __PARAMETERS. |
| Variable | - | 00 [QualifierFlavor](#Section_2.2.62). |
| Variable | - | 0B 00 00 00 [QualifierType](#Section_2.2.63) (CIM-TYPE-BOOLEAN). |
| Variable | - | FF FF TRUE. |
| Variable | - | 01 00 00 00 PropertyLookupTable::PropertyCount (one in parameter acting as a property). |
| Variable | - | 2a 00 00 00 PropertyNameRef (points to ServiceName). |
| Variable | - | 90 00 00 00 PropertyInfoRef. |
| Variable | - | 19 NdTable. |
| Variable | - | FF FF FF FF [ValueTable](#Section_2.2.29), no default value for the parameter ServiceName. |
| Variable | Heap Offsets in this column | CF 00 00 80 ClassHeap::Heap::HeapLength (0xCF or 207 decimal octets). |
| Variable | 00 | 00 5f 5f 50 41 52 41 4d 45 54 45 52 53 00 Encoded-String __PARAMETERS. |
| Variable | 0E | 00 61 62 73 74 72 61 63 74 00 Encoded-String abstract. |
| Variable | 18 | 08 00 00 00 00 00 00 00 00 00 00 00 00 00 04 00 00 00 Unused. This is part of Heap fragmentation and can be removed if the Heap offsets for all subsequent [HeapItems](#Section_78acd48426ff4164a0432a23acd4bd86) are adjusted. |
| Variable | 2A | 00 53 65 72 76 69 63 65 4e 61 6d 65 00 Encoded-String ServiceName. |
| Variable | 37 | 00 73 74 72 69 6e 67 00 Encoded-String string. |
| Variable | 3F | 08 00 00 00 00 00 00 00 00 00 00 00 00 00 11 00 00 00 PropertyInfo: PropertyType = CIM-TYPE-STRING. DeclarationOrder (0). ValueTableOffset (0). PropertyQualifierSet length 0x11 octets. |
| Variable | 51 | 0a 00 00 80 QualifierName. DictionaryReference CIMTYPE. |
| Variable | 55 | 03 QualifierFlavor. |
| Variable | - | 08 00 00 00 QualifierType (CIM-TYPE-STRING). |
| Variable | 5A | 37 00 00 00 [QualifierValue](#Section_2.2.64) (HeapRef to offset 0x37, or string). |
| Variable | 5E | 00 69 6E 00 Encoded-String in QualifierName (referenced later in the heap). |
| Variable | 62 | 08 00 00 00 00 00 00 00 00 00 00 00 00 00 1C 00 00 00 0a 00 00 80 03 08 00 00 00 37 00 00 00 5e 00 00 00 00 0b 00 00 00 ff ff Unreferenced Heap fragment lost from previous editing or updates. |
| Variable | 8C | 00 49 44 00 Encoded-String ID. |
| Variable | 90 | 08 00 00 00 00 00 00 00 00 00 00 00 00 00 29 00 00 00 PropertyInfo: PropertyType = CIM-TYPE-STRING. DeclarationOrder (0). ValueTableOffset (0). PropertyQualifierSet length 0x29 octets. |
| Variable | - | 0a 00 00 80 QualifierName (DictionaryReference to CIMTYPE). |
| Variable | - | 03 QualifierFlavor. |
| Variable | - | 08 00 00 00 C7 00 00 00 QualifierType (CIM-TYPE-STRING). |
| Variable | 10F | 5E 00 00 00 QualifierValue (Offset 0xC7). |
| Variable | - | 00 QualifierName (Offset 5E points to in). |
| Variable | - | 00 Flavor. |
| Variable | - | 0B 00 00 00 QualifierType (CIM-TYPE-BOOL). |
| Variable | - | FF FF Logical TRUE. |
| Variable | - | 8C 00 00 00 QualifierName (points to ID, an attribute added to all properties that are acting as parameters in a method). |
| Variable | - | 11 QualifierFlavor. |
| Variable | 11F | 03 00 00 00 QualifierType (CIM-TYPE-SINT32). |
| Variable | - | 00 00 00 00 QualifierValue (zero, meaning this is the 0th parameter in the signature). |
| Variable | 127 | 00 73 74 72 69 6e 67 00 Encoded-String string. |
| 00..00 | - | Unreferenced heap fragment lost from previous editing or updates. Heap Space: 174 octets of zero octets. |
| MethodsPart with total EncodingLength 0xC octets. MethodCount is zero, two octets of MethodCountPadding with random values. The MethodHeap is zero length with the most significant bit set. | - | 0c 00 00 00 00 00 5f 5f 00 00 00 80 |
| Variable | - | ea 02 00 00 ... ...5f 5f 00 00 00 80 MethodSignatureBlock: :EncodingLength. (0x2EA, 746 octets). This is the Encoding block for __PARAMETERS for the output parameters and return value. It is decoded in the same way as the Encoding block __PARAMETERS for the input parameters (octet FC 01 00 00 above). |
| Variable | - | 1C 00 00 00 QualifierSet::EncodingLength. |
| Variable | - | 13 05 00 00 QualifierName. |
| Variable | - | 00 QualifierFlavor. |
| Variable | - | 0B 00 00 00 QualifierType (CIM-TYPE-BOOL). |
| Variable | - | FF FF QualifierValue (TRUE). |
| Variable | - | 1C 05 00 00 Qualifier::Name. |
| Variable | - | 00 Flavor. |
| Variable | - | 08 20 00 00 Type (CIM-TYPE-STRING and CimArrayFlag), an array of strings. |
| Variable | - | 29 05 00 00 Location of string array in Heap. |
| Variable | - | 00 65 78 65 63 75 74 65 00 Encoded-String execute. |
| Variable | - | 00 70 65 72 66 6f 72 6d 61 6e 63 65 00 Encoded-String performance. |
| Variable | - | 02 00 00 00 [Encoded-Array](#Section_2.2.79) (two items). |
| Variable | - | 35 05 00 00 The location of the first string in the array (fast). |
| Variable | - | 3B 05 00 00 The location of the second string in the array (side effects). |
| Variable | - | 00 66 61 73 74 00 Encoded-String fast. |
| Variable | - | 00 73 69 64 65 66 66 65 63 74 73 00 Encoded-String side effects. |
| Variable | - | 20 00 00 29 05... ...74 73 00 00 00 00 00 The remaining octets are in italics. The remainder of the packet consists of no information and fills out the entire encoding length. These octets can be removed if the encoding length at the beginning of the encoding is adjusted. |

<a id="Section_4"></a>
# 4 Security Considerations

Because this specification only specifies an [**encoding**](#gt_encoding), there are no security-specific considerations. There are no fields within the encoding associated with security.

<a id="Section_5"></a>
# 5 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

- Windows 2000 operating system
- Windows XP 64-Bit Edition operating system
- Windows XP operating system
- Windows Vista operating system
- Windows Server 2003 operating system
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

<1> Section 2.2.40: Windows sends random data in this field.

<2> Section 2.2.62: Windows ignores other bit values.

<a id="Section_6"></a>
# 6 Appendix B: ABNF Encoding Definition

;

;--- Main block

;

EncodingUnit = Signature ObjectEncodingLength ObjectBlock

ObjectEncodingLength = UINT32

ObjectBlock = ObjectFlags [Decoration] Encoding

ObjectFlags = OCTET

; Bit 0 = Class, Bit 1 = Instance,

; Bit 2 = DecorationBlock is present

Decoration = DecServerName DecNamespaceName

DecServerName = Encoded-String

DecNamespaceName = Encoded-String

Encoding = InstanceType / ClassType

;

;------ CIM class Encoding ----

;

ClassType = ParentClass CurrentClass

ParentClass = ClassAndMethodsPart

CurrentClass = ClassAndMethodsPart

ClassAndMethodsPart = ClassPart [MethodsPart]

; [MethodsPart] is always present if ObjectFlags indicates

; the CIM object is a CIM class definition, and always absent

; if the current CIM object is a CIM instance definition

ClassPart = ClassHeader DerivationList ClassQualifierSet

PropertyLookupTable [NdTable ValueTable] ClassHeap

ClassHeader = EncodingLength ReservedOctet

ClassNameRef NdTableValueTableLength

DerivationList = EncodingLength *ClassNameEncoding

ClassNameEncoding = Encoded-String EncodingLength

ClassNameRef = HeapStringRef

ClassQualifierSet = QualifierSet

; --------------------

PropertyLookupTable = PropertyCount *PropertyLookup

; PropertyLookup entries are sorted by

; CIM Property name so that binary

; searches are possible.

PropertyCount = UINT32

PropertyLookup = PropertyNameRef PropertyInfoRef

PropertyNameRef = HeapStringRef

PropertyInfoRef = HeapRef

;-------------------

NdTable = *NullAndDefaultFlag

NullAndDefaultFlag = 2BIT

;nullness = bit 0, inheritedDefault = bit1

NdTableValueTableLength = UINT32

ValueTable = *EncodedValue

PropertyInfo = PropertyType DeclarationOrder

ValueTableOffset ClassOfOrigin PropertyQualifierSet

PropertyType = CimType

DeclarationOrder = UINT16

ValueTableOffset = UINT32

ClassOfOrigin = UINT32

; Which CIM class in the DerivationList this

; CIM Property comes from %x0 == the current class.

PropertyQualifierSet = QualifierSet

ClassHeap = Heap

;--- Method Encoding ---

MethodsPart = EncodingLength MethodCount

MethodCountPadding *MethodDescription MethodHeap

MethodCount = UINT16

MethodCountPadding = 2OCTET

MethodHeap = Heap

MethodDescription = MethodName MethodFlags MethodPadding

MethodOrigin MethodQualifiers InputSignature OutputSignature

MethodName = HeapStringRef

MethodFlags = OCTET

MethodPadding = 3OCTET

MethodOrigin = UINT32 ; CIM class in DerivationList

MethodQualifiers = HeapQualifierSetRef

InputSignature = MethodSignature

OutputSignature = MethodSignature

MethodSignature = HeapMethodSignatureBlockRef

; --- CIM instance encoding

InstanceType = CurrentClass EncodingLength InstanceFlags

InstanceClassName NdTable InstanceData InstanceQualifierSet

InstanceHeap

InstanceFlags = OCTET

InstanceClassName = HeapStringRef

InstanceData = ValueTable

InstanceQualifierSet = QualifierSet InstancePropQualifierSet

InstanceHeap = Heap

;--- CIM Qualifier Sets ---

QualifierSet = EncodingLength *Qualifier

Qualifier = QualifierName QualifierFlavor

QualifierType QualifierValue

QualifierName = HeapStringRef

QualifierFlavor = OCTET

QualifierType = CimType

QualifierValue = EncodedValue

InstancePropQualifierSet = InstPropQualSetFlag *QualifierSet

InstPropQualSetFlag = %x1 / %x2

; One OCTET. If 1, there is no list of Qualifiers in

; InstanceQualifierSet. If 2, there is a list of Qualifiers.

; The number of qualifiers is equivalent to the number of

; properties in the CIM class definition for the instance.

; The CIM Qualifier sets are in the lexical order for the

; properties, as in the PropertyLookupTable.

;--- Heap ---

Heap = HeapLength *HeapItem

HeapStringRef = HeapRef

HeapQualifierSetRef = HeapRef

ClassPartRef = HeapRef

HeapMethodSignatureBlockRef = HeapRef

HeapRef = UINT32 / DictionaryReference

; The DictionaryReference choice is taken if the

; reference value has the MS bit set. Therefore

; only 31 bits are used for an offset into the heap

; when the DictionaryReference is not being used.

HeapItem = PropertyInfo / Encoded-String / Encoded-Array /

QualifierSet / ObjectBlock / MethodSignatureBlock

MethodSignatureBlock = EncodingLength [ObjectBlock]

EncodedValue = NumericValue / HeapRef / BOOL / NoValue

; Note that values are inline if they are

; NumericValue, BOOL, or NoValue

; If the CimType of the encoded value is CIM-TYPE-STRING

; or an array of any kind,

; then HeapRef points to the value in the heap.

;--- Simple types ----

HeapLength = UINT32

;*MS bit is always set, so length is expressed in lower 31 bits

EncodingLength = UINT32

Encoded-String = Encoded-String-Flag *Character Null;

Encoded-String-Flag = OCTET

Character = AnsiCharacter / UnicodeCharacter

Null = Character

AnsiCharacter = OCTET

UnicodeCharacter = 2OCTET

Encoded-Array = ArrayCount *EncodedValue

ArrayCount = UINT32

; The DictionaryReference is used where HeapRef may appear and the

; EncodedValue type is Encoded-String

; These appear as 32 bit offsets into the Heap with the

; MS bit set to 1 and the lower

; 31 bits set to one of the integer values below

DictionaryReference = %d0 / %d1 / %d2 / %d3 / %d4 / %d5 /

%d6 / %d7 / %d8 / %d9 / %d10

; %d0 Encoded/Decoded as quote character

; %d1 Encoded/Decoded as "key"

; %d2 Encoded/Decoded as ""

; %d3 Encoded/Decoded as "read"

; %d4 Encoded/Decoded as "write"

; %d5 Encoded/Decoded as "volatile"

; %d6 Encoded/Decoded as "provider"

; %d7 Encoded/Decoded as "dynamic"

; %d8 Encoded/Decoded as "cimwin32"

; %d9 Encoded/Decoded as "DWORD"

; %d10 Encoded/Decoded as "CIMTYPE"

ReservedOctet = OCTET ;*doc

Signature = UINT32 ;0x12345678 little-endian ;*doc

NumericValue = BYTE / SINT16 / UINT16 / SINT32 / UINT32 /

SINT64 / UINT64 / REAL32 / REAL64 ;*doc

BYTE = OCTET

UINT32 = 4OCTET

SINT32 = 4OCTET

UINT64 = 8OCTET

SINT64 = 8OCTET

REAL32 = 4OCTET ; IEEE short floating-point format

REAL64 = 8OCTET ; IEEE format

UINT16 = 2OCTET

SINT16 = 2OCTET

BOOL = 2OCTET ;*

OCTET = %x0-FF ;*

BIT = %x0 / %x1 ;*doc

CimType = CimBaseType / CimArrayType

; 32 bit encoding, upper 16 bits not used.

CimArrayFlag = %x20 %x00 ; 0x2000 bit flag

CimBaseType = CIM-TYPE-SINT8 / CIM-TYPE-UINT8 /

CIM-TYPE-SINT16 / CIM-TYPE-UINT16 /

CIM-TYPE-SINT32 / CIM-TYPE-UINT32 /

CIM-TYPE-SINT64 / CIM-TYPE-UINT64 /

CIM-TYPE-REAL32 / CIM-TYPE-REAL64 /

CIM-TYPE-BOOLEAN / CIM-TYPE-STRING /

CIM-TYPE-DATETIME / CIM-TYPE-REFERENCE /

CIM-TYPE-CHAR16 / CIM-TYPE-OBJECT

CimArrayType = CIM-ARRAY-SINT8 / CIM-ARRAY-UINT8 /

CIM-ARRAY-SINT16 / CIM-ARRAY-UINT16 /

CIM-ARRAY-SINT32 / CIM-ARRAY-UINT32 /

CIM-ARRAY-SINT64 / CIM-ARRAY-UINT64 /

CIM-ARRAY-REAL32 / CIM-ARRAY-REAL64 /

CIM-ARRAY-BOOLEAN / CIM-ARRAY-STRING /

CIM-ARRAY-DATETIME / CIM-ARRAY-REFERENCE /

CIM-ARRAY-CHAR16 / CIM-ARRAY-OBJECT

CIM-TYPE-SINT8 = %d16

CIM-TYPE-UINT8 = %d17

CIM-TYPE-SINT16 =%d2

CIM-TYPE-UINT16 =%d18

CIM-TYPE-SINT32 = %d3

CIM-TYPE-UINT32 = %d19

CIM-TYPE-SINT64 = %d20

CIM-TYPE-UINT64 = %d21

CIM-TYPE-REAL32 = %d4

CIM-TYPE-REAL64 = %d5

CIM-TYPE-BOOLEAN = %d11

CIM-TYPE-STRING = %d8

CIM-TYPE-DATETIME = %d101

CIM-TYPE-REFERENCE = %d102

CIM-TYPE-CHAR16 = %d103

CIM-TYPE-OBJECT = %d13

CIM-ARRAY-SINT8 = %d8208

CIM-ARRAY-UINT8 = %d8209

CIM-ARRAY-SINT16 =%d8194

CIM-ARRAY-UINT16 =%d8210

CIM-ARRAY-SINT32 = %d8195

CIM-ARRAY-UINT32 = %d8201

CIM-ARRAY-SINT64 = %d8202

CIM-ARRAY-UINT64 = %d8203

CIM-ARRAY-REAL32 = %d8196

CIM-ARRAY-REAL64 = %d8197

CIM-ARRAY-BOOLEAN = %d8203

CIM-ARRAY-STRING = %d8200

CIM-ARRAY-DATETIME = %d8293

CIM-ARRAY-REFERENCE = %d8294

CIM-ARRAY-CHAR16 = %d8295

CIM-ARRAY-OBJECT = %d8205

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
| [5](#Section_5) Appendix A: Product Behavior | Added Windows Server 2025 to the list of applicable products. | Major |

