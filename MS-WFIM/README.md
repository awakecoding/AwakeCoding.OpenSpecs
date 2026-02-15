# [MS-WFIM]: Workflow Instance Management Protocol

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
  - [2.2 Common Message Syntax](#Section_2.2)
    - [2.2.1 Namespaces](#Section_2.2.1)
    - [2.2.2 Messages](#Section_2.2.2)
    - [2.2.3 Elements](#Section_2.2.3)
    - [2.2.4 Complex Types](#Section_2.2.4)
    - [2.2.5 Simple Types](#Section_2.2.5)
    - [2.2.6 Attributes](#Section_2.2.6)
    - [2.2.7 Groups](#Section_2.2.7)
    - [2.2.8 Attribute Groups](#Section_2.2.8)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 IWorkflowInstanceManagement Server Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
      - [3.1.1.1 Active State](#Section_3.1.1.1)
      - [3.1.1.2 Suspended State](#Section_3.1.1.2)
      - [3.1.1.3 Completed State](#Section_3.1.1.3)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Message Processing Events and Sequencing Rules](#Section_3.1.4)
      - [3.1.4.1 Run](#Section_3.1.4.1)
        - [3.1.4.1.1 Messages](#Section_3.1.4.1.1)
          - [3.1.4.1.1.1 IWorkflowInstanceManagement_Run_InputMessage](#Section_3.1.4.1.1.1)
          - [3.1.4.1.1.2 IWorkflowInstanceManagement_Run_OutputMessage](#Section_3.1.4.1.1.2)
        - [3.1.4.1.2 Elements](#Section_3.1.4.1.2)
          - [3.1.4.1.2.1 Run](#Section_3.1.4.1.2.1)
          - [3.1.4.1.2.2 RunResponse](#Section_3.1.4.1.2.2)
      - [3.1.4.2 TransactedRun](#Section_3.1.4.2)
        - [3.1.4.2.1 Messages](#Section_3.1.4.2.1)
          - [3.1.4.2.1.1 IWorkflowInstanceManagement_TransactedRun_InputMessage](#Section_3.1.4.2.1.1)
          - [3.1.4.2.1.2 IWorkflowInstanceManagement_TransactedRun_OutputMessage](#Section_3.1.4.2.1.2)
        - [3.1.4.2.2 Elements](#Section_3.1.4.2.2)
          - [3.1.4.2.2.1 TransactedRun](#Section_3.1.4.2.2.1)
          - [3.1.4.2.2.2 TransactedRunResponse](#Section_3.1.4.2.2.2)
      - [3.1.4.3 Abandon](#Section_3.1.4.3)
        - [3.1.4.3.1 Messages](#Section_3.1.4.3.1)
          - [3.1.4.3.1.1 IWorkflowInstanceManagement_Abandon_InputMessage](#Section_3.1.4.3.1.1)
          - [3.1.4.3.1.2 IWorkflowInstanceManagement_Abandon_OutputMessage](#Section_3.1.4.3.1.2)
        - [3.1.4.3.2 Elements](#Section_3.1.4.3.2)
          - [3.1.4.3.2.1 Abandon](#Section_3.1.4.3.2.1)
          - [3.1.4.3.2.2 AbandonResponse](#Section_3.1.4.3.2.2)
      - [3.1.4.4 Cancel](#Section_3.1.4.4)
        - [3.1.4.4.1 Messages](#Section_3.1.4.4.1)
          - [3.1.4.4.1.1 IWorkflowInstanceManagement_Cancel_InputMessage](#Section_3.1.4.4.1.1)
          - [3.1.4.4.1.2 IWorkflowInstanceManagement_Cancel_OutputMessage](#Section_3.1.4.4.1.2)
        - [3.1.4.4.2 Elements](#Section_3.1.4.4.2)
          - [3.1.4.4.2.1 Cancel](#Section_3.1.4.4.2.1)
          - [3.1.4.4.2.2 CancelResponse](#Section_3.1.4.4.2.2)
      - [3.1.4.5 TransactedCancel](#Section_3.1.4.5)
        - [3.1.4.5.1 Messages](#Section_3.1.4.5.1)
          - [3.1.4.5.1.1 IWorkflowInstanceManagement_TransactedCancel_InputMessage](#Section_3.1.4.5.1.1)
          - [3.1.4.5.1.2 IWorkflowInstanceManagement_TransactedCancel_OutputMessage](#Section_3.1.4.5.1.2)
        - [3.1.4.5.2 Elements](#Section_3.1.4.5.2)
          - [3.1.4.5.2.1 TransactedCancel](#Section_3.1.4.5.2.1)
          - [3.1.4.5.2.2 TransactedCancelResponse](#Section_3.1.4.5.2.2)
      - [3.1.4.6 Terminate](#Section_3.1.4.6)
        - [3.1.4.6.1 Messages](#Section_3.1.4.6.1)
          - [3.1.4.6.1.1 IWorkflowInstanceManagement_Terminate_InputMessage](#Section_3.1.4.6.1.1)
          - [3.1.4.6.1.2 IWorkflowInstanceManagement_Terminate_OutputMessage](#Section_3.1.4.6.1.2)
        - [3.1.4.6.2 Elements](#Section_3.1.4.6.2)
          - [3.1.4.6.2.1 Terminate](#Section_3.1.4.6.2.1)
          - [3.1.4.6.2.2 TerminateResponse](#Section_3.1.4.6.2.2)
      - [3.1.4.7 TransactedTerminate](#Section_3.1.4.7)
        - [3.1.4.7.1 Messages](#Section_3.1.4.7.1)
          - [3.1.4.7.1.1 IWorkflowInstanceManagement_TransactedTerminate_InputMessage](#Section_3.1.4.7.1.1)
          - [3.1.4.7.1.2 IWorkflowInstanceManagement_TransactedTerminate_OutputMessage](#Section_3.1.4.7.1.2)
        - [3.1.4.7.2 Elements](#Section_3.1.4.7.2)
          - [3.1.4.7.2.1 TransactedTerminate](#Section_3.1.4.7.2.1)
          - [3.1.4.7.2.2 TransactedTerminateResponse](#Section_3.1.4.7.2.2)
      - [3.1.4.8 Suspend](#Section_3.1.4.8)
        - [3.1.4.8.1 Messages](#Section_3.1.4.8.1)
          - [3.1.4.8.1.1 IWorkflowInstanceManagement_Suspend_InputMessage](#Section_3.1.4.8.1.1)
          - [3.1.4.8.1.2 IWorkflowInstanceManagement_Suspend_OutputMessage](#Section_3.1.4.8.1.2)
        - [3.1.4.8.2 Elements](#Section_3.1.4.8.2)
          - [3.1.4.8.2.1 Suspend](#Section_3.1.4.8.2.1)
          - [3.1.4.8.2.2 SuspendResponse](#Section_3.1.4.8.2.2)
      - [3.1.4.9 TransactedSuspend](#Section_3.1.4.9)
        - [3.1.4.9.1 Messages](#Section_3.1.4.9.1)
          - [3.1.4.9.1.1 IWorkflowInstanceManagement_TransactedSuspend_InputMessage](#Section_3.1.4.9.1.1)
          - [3.1.4.9.1.2 IWorkflowInstanceManagement_TransactedSuspend_OutputMessage](#Section_3.1.4.9.1.2)
        - [3.1.4.9.2 Elements](#Section_3.1.4.9.2)
          - [3.1.4.9.2.1 TransactedSuspend](#Section_3.1.4.9.2.1)
          - [3.1.4.9.2.2 TransactedSuspendResponse](#Section_3.1.4.9.2.2)
      - [3.1.4.10 Unsuspend](#Section_3.1.4.10)
        - [3.1.4.10.1 Messages](#Section_3.1.4.10.1)
          - [3.1.4.10.1.1 IWorkflowInstanceManagement_Unsuspend_InputMessage](#Section_3.1.4.10.1.1)
          - [3.1.4.10.1.2 IWorkflowInstanceManagement_Unsuspend_OutputMessage](#Section_3.1.4.10.1.2)
        - [3.1.4.10.2 Elements](#Section_3.1.4.10.2)
          - [3.1.4.10.2.1 Unsuspend](#Section_3.1.4.10.2.1)
          - [3.1.4.10.2.2 UnsuspendResponse](#Section_3.1.4.10.2.2)
      - [3.1.4.11 TransactedUnsuspend](#Section_3.1.4.11)
        - [3.1.4.11.1 Messages](#Section_3.1.4.11.1)
          - [3.1.4.11.1.1 IWorkflowInstanceManagement_TransactedUnsuspend_InputMessage](#Section_3.1.4.11.1.1)
          - [3.1.4.11.1.2 IWorkflowInstanceManagement_TransactedUnsuspend_OutputMessage](#Section_3.1.4.11.1.2)
        - [3.1.4.11.2 Elements](#Section_3.1.4.11.2)
          - [3.1.4.11.2.1 TransactedUnsuspend](#Section_3.1.4.11.2.1)
          - [3.1.4.11.2.2 TransactedUnsuspendResponse](#Section_3.1.4.11.2.2)
      - [3.1.4.12 Update](#Section_3.1.4.12)
        - [3.1.4.12.1 Messages](#Section_3.1.4.12.1)
          - [3.1.4.12.1.1 IWorkflowInstanceManagement_Update_InputMessage](#Section_3.1.4.12.1.1)
          - [3.1.4.12.1.2 IWorkflowInstanceManagement_Update_OutputMessage](#Section_3.1.4.12.1.2)
        - [3.1.4.12.2 Elements](#Section_3.1.4.12.2)
          - [3.1.4.12.2.1 Update](#Section_3.1.4.12.2.1)
          - [3.1.4.12.2.2 UpdateResponse](#Section_3.1.4.12.2.2)
      - [3.1.4.13 TransactedUpdate](#Section_3.1.4.13)
        - [3.1.4.13.1 Messages](#Section_3.1.4.13.1)
          - [3.1.4.13.1.1 IWorkflowInstanceManagement_TransactedUpdate_InputMessage](#Section_3.1.4.13.1.1)
          - [3.1.4.13.1.2 IWorkflowInstanceManagement_TransactedUpdate_OutputMessage](#Section_3.1.4.13.1.2)
        - [3.1.4.13.2 Elements](#Section_3.1.4.13.2)
          - [3.1.4.13.2.1 TransactedUpdate](#Section_3.1.4.13.2.1)
          - [3.1.4.13.2.2 TransactedUpdateResponse](#Section_3.1.4.13.2.2)
    - [3.1.5 Timer Events](#Section_3.1.5)
    - [3.1.6 Other Local Events](#Section_3.1.6)
  - [3.2 IWorkflowInstanceManagement Client Details](#Section_3.2)
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
<summary>6 Appendix A: Full WSDL</summary>

- [6 Appendix A: Full WSDL](#Section_6)
  - [6.1 Workflow Instance Management Protocol WSDL](#Section_6.1)
  - [6.2 Workflow Instance Management Schema for the WSDL](#Section_6.2)
  - [6.3 Workflow Identity Management Schema for the WSDL](#Section_6.3)
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

This document specifies the Workflow Instance Management Protocol, which defines a set of SOAP messages for the management of [**durable program instances**](#gt_durable-program-instance), such as suspending, resuming, or canceling an instance.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_durable-program"></a>
**durable program**: A program whose lifetime is not bound to a single operating system process. For more information about these processes, see [[PROCESS]](https://go.microsoft.com/fwlink/?LinkId=90251). The execution of the [**durable program**](#gt_durable-program) starts in one process with a durable state, survives process termination, and can continue to execute in another process at a later point in time.

<a id="gt_durable-program-instance"></a>
**durable program instance**: An identifiable occurrence of the execution of a [**durable program**](#gt_durable-program). The [**durable program instance**](#gt_durable-program-instance) captures the complete state of the execution. The execution of a [**durable program instance**](#gt_durable-program-instance) is limited to a single process at a time.

<a id="gt_globally-unique-identifier-guid"></a>
**globally unique identifier (GUID)**: A term used interchangeably with universally unique identifier (UUID) in Microsoft protocol technical documents (TDs). Interchanging the usage of these terms does not imply or require a specific algorithm or mechanism to generate the value. Specifically, the use of this term does not imply or require that the algorithms described in [[RFC4122]](https://go.microsoft.com/fwlink/?LinkId=90460) or [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824) must be used for generating the [**GUID**](#gt_globally-unique-identifier-guid). See also universally unique identifier (UUID).

<a id="gt_management-operation"></a>
**management operation**: An operation on a [**durable program instance**](#gt_durable-program-instance) that is not related to the business logic of the [**durable program**](#gt_durable-program).

<a id="gt_soap"></a>
**SOAP**: A lightweight protocol for exchanging structured information in a decentralized, distributed environment. [**SOAP**](#gt_soap) uses XML technologies to define an extensible messaging framework, which provides a message construct that can be exchanged over a variety of underlying protocols. The framework has been designed to be independent of any particular programming model and other implementation-specific semantics. SOAP 1.2 supersedes SOAP 1.1. See [[SOAP1.2-1/2003]](https://go.microsoft.com/fwlink/?LinkId=90521).

<a id="gt_soap-fault"></a>
**SOAP fault**: A container for error and status information within a [**SOAP message**](#gt_soap-message). See [[SOAP1.2-1/2007]](https://go.microsoft.com/fwlink/?LinkId=94664) section 5.4 for more information.

<a id="gt_soap-message"></a>
**SOAP message**: An XML document consisting of a mandatory SOAP envelope, an optional SOAP header, and a mandatory SOAP body. See [SOAP1.2-1/2007] section 5 for more information.

<a id="gt_web-services-description-language-wsdl"></a>
**Web Services Description Language (WSDL)**: An XML format for describing network services as a set of endpoints that operate on messages that contain either document-oriented or procedure-oriented information. The operations and messages are described abstractly and are bound to a concrete network protocol and message format in order to define an endpoint. Related concrete endpoints are combined into abstract endpoints, which describe a network service. WSDL is extensible, which allows the description of endpoints and their messages regardless of the message formats or network protocols that are used.

<a id="gt_wsdl-message"></a>
**WSDL message**: An abstract, typed definition of the data that is communicated during a [**WSDL operation**](#gt_wsdl-operation) [[WSDL]](https://go.microsoft.com/fwlink/?LinkId=90577). Also, an element that describes the data being exchanged between web service providers and clients.

<a id="gt_wsdl-operation"></a>
**WSDL operation**: A single action or function of a web service. The execution of a WSDL operation typically requires the exchange of messages between the service requestor and the service provider.

<a id="gt_wsdl-port-type"></a>
**WSDL port type**: A named set of logically-related, abstract [**Web Services Description Language (WSDL)**](#gt_web-services-description-language-wsdl) operations and messages.

<a id="gt_xml-namespace"></a>
**XML namespace**: A collection of names that is used to identify elements, types, and attributes in XML documents identified in a URI reference [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453). A combination of XML namespace and local name allows XML documents to use elements, types, and attributes that have the same names but come from different sources. For more information, see [[XMLNS-2ED]](https://go.microsoft.com/fwlink/?LinkId=90602).

<a id="gt_xml-schema-xsd"></a>
**XML Schema (XSD)**: A language that defines the elements, attributes, namespaces, and data types for XML documents as defined by [[XMLSCHEMA1/2]](https://go.microsoft.com/fwlink/?LinkId=90607) and [[W3C-XSD]](https://go.microsoft.com/fwlink/?LinkId=90563) standards. An XML schema uses XML syntax for its language.

<a id="gt_xml-schema-definition-xsd"></a>
**XML schema definition (XSD)**: The World Wide Web Consortium (W3C) standard language that is used in defining XML schemas. Schemas are useful for enforcing structure and constraining the types of data that can be used validly within other XML documents. XML schema definition refers to the fully specified and currently recommended standard for use in authoring XML schemas.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[MS-DTCO] Microsoft Corporation, "[MSDTC Connection Manager: OleTx Transaction Protocol](../MS-DTCO/MS-DTCO.md)".

[MS-DTYP] Microsoft Corporation, "[Windows Data Types](../MS-DTYP/MS-DTYP.md)".

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [http://www.rfc-editor.org/rfc/rfc2119.txt](https://go.microsoft.com/fwlink/?LinkId=90317)

[SOAP1.1] Box, D., Ehnebuske, D., Kakivaya, G., et al., "Simple Object Access Protocol (SOAP) 1.1", W3C Note, May 2000, [http://www.w3.org/TR/2000/NOTE-SOAP-20000508/](https://go.microsoft.com/fwlink/?LinkId=90520)

[SOAP1.2-1/2007] Gudgin, M., Hadley, M., Mendelsohn, N., et al., "SOAP Version 1.2 Part 1: Messaging Framework (Second Edition)", W3C Recommendation, April 2007, [http://www.w3.org/TR/2007/REC-soap12-part1-20070427/](https://go.microsoft.com/fwlink/?LinkId=94664)

[SOAP1.2-2/2007] Gudgin, M., Hadley, M., Mendelsohn, N., et al., "SOAP Version 1.2 Part 2: Adjuncts (Second Edition)", W3C Recommendation, April 2007, [http://www.w3.org/TR/2007/REC-soap12-part2-20070427](https://go.microsoft.com/fwlink/?LinkId=119124)

[WSDL] Christensen, E., Curbera, F., Meredith, G., and Weerawarana, S., "Web Services Description Language (WSDL) 1.1", W3C Note, March 2001, [http://www.w3.org/TR/2001/NOTE-wsdl-20010315](https://go.microsoft.com/fwlink/?LinkId=90577)

[XMLNS-2ED] Bray, T., Hollander, D., Layman, A., and Tobin, R., Eds., "Namespaces in XML 1.0 (Second Edition)", W3C Recommendation, August 2006, [http://www.w3.org/TR/2006/REC-xml-names-20060816/](https://go.microsoft.com/fwlink/?LinkId=90602)

[XMLSCHEMA1] Thompson, H., Beech, D., Maloney, M., and Mendelsohn, N., Eds., "XML Schema Part 1: Structures", W3C Recommendation, May 2001, [http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/](https://go.microsoft.com/fwlink/?LinkId=90608)

[XMLSCHEMA2] Biron, P.V., Ed. and Malhotra, A., Ed., "XML Schema Part 2: Datatypes", W3C Recommendation, May 2001, [http://www.w3.org/TR/2001/REC-xmlschema-2-20010502/](https://go.microsoft.com/fwlink/?LinkId=90610)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[MS-NETOD] Microsoft Corporation, "[Microsoft .NET Framework Protocols Overview](../MS-NETOD/MS-NETOD.md)".

[MS-WSPOL] Microsoft Corporation, "[Web Services: Policy Assertions and WSDL Extensions](../MS-WSPOL/MS-WSPOL.md)".

[MS-WSRVCAT] Microsoft Corporation, "[WS-AtomicTransaction (WS-AT) Version 1.0 Protocol Extensions](../MS-WSRVCAT/MS-WSRVCAT.md)".

[MSDOCS-.NETSysReqs] Microsoft Corporation, ".NET Framework system requirements", [https://docs.microsoft.com/en-us/dotnet/framework/get-started/system-requirements](https://go.microsoft.com/fwlink/?linkid=861790)

[MSFT-LifecyclePolicy] Microsoft Corporation, "Search Product LIfecycle: .NET Framework", [https://support.microsoft.com/en-us/lifecycle/search?sort=PN&alpha=.NET%20Framework&Filter=FilterNO](https://go.microsoft.com/fwlink/?linkid=861933)

[WSS1] Nadalin, A., Kaler, C., Hallam-Baker, P., et al., "Web Services Security: SOAP Message Security 1.0 (WS-Security 2004)", March 2004, [http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-soap-message-security-1.0.pdf](https://go.microsoft.com/fwlink/?LinkId=131547)

<a id="Section_1.3"></a>
## 1.3 Overview

The familiar control operations of starting, pausing, and terminating processes are sufficient for managing programs where execution is contained within a single process; however, these operations are insufficient when the program is durable because a [**durable program**](#gt_durable-program) spans multiple processes over time. A similar control mechanism that is not scoped to a single process is required for managing durable programs. The Workflow Instance Management Protocol specifies such a control mechanism.

[**Durable program instances**](#gt_durable-program-instance) can be hosted on a variety of execution environments or hosts, for example on a desktop computer, a server farm, and so on. The Workflow Instance Management Protocol is provided on durable program hosts that support messaging (that is, messaging hosts) for the external control of various lifetime and execution aspects of the durable program instances running on that host. External control consists of operations for terminating, suspending, and resuming the execution of durable program instances where the client for these operations is typically system administration tooling.

The Workflow Instance Management Protocol defines a set of request and reply [**SOAP messages**](#gt_soap-message) that specify these external control operations. This specification also describes the interdependencies of these operations and how they relate to an abstract model of the durable program instance state.

For example, consider an expense approval durable program that is running in a messaging host. The host for the expense approval durable program exposes an expense approval messaging endpoint. The expense approval endpoint and its protocol are part of the definition of the expense approval application. The host can also expose a messaging endpoint that supports the Workflow Instance Management Protocol. This is a generic, infrastructural endpoint provided by the host for the administration of instances of the expense approval durable program. Using this infrastructural endpoint, an administrator of the application can have available tooling that uses the Workflow Instance Management Protocol to control the execution of instances of the expense approval workflows. Using the **Abandon**, **Cancel**, **Terminate**, **Suspend**, and **Unsuspend** operations defined in this protocol, the tooling enables the administrator to perform tasks, such as terminating a particular Instance or temporarily suspending its execution.

In some scenarios, operations in the Workflow Instance Management Protocol are used by the system internals itself. For example, the **Run** operation can be utilized internally by the system for recovery after system failure.

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

The Workflow Instance Management Protocol can be used with [**SOAP**](#gt_soap)-formatted messages. The following figure shows a protocol stack:

![Protocol stack for the Workflow Instance Management Protocol](media/image1.png)

Figure 1: Protocol stack for the Workflow Instance Management Protocol

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

The Workflow Instance Management Protocol requires that:

- The client role can communicate with the server role so that messages can be exchanged between client and server.
- The server role can create and host [**durable program instances**](#gt_durable-program-instance) and associate a unique identifier to each durable program instance.
- The client role can determine the unique identifier associated by the server role to the durable program instance on which [**management operation(s)**](#gt_7c01ec77-5c84-42ed-a329-ee6b90fcf014) need to be performed. This unique identifier is used by the client to identify the target instance of the management operation on the server.
<a id="Section_1.6"></a>
## 1.6 Applicability Statement

The Workflow Instance Management Protocol is applicable to scenarios where management of [**durable program instances**](#gt_durable-program-instance) is required. The client and server use this protocol to perform [**management operations**](#gt_management-operation) on durable program instances.

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

This document covers versioning issues in the following areas:

- **Supported Transports**: This protocol uses multiple transports with SOAP as specified in section [2.1](#Section_2.1).
- **Protocol Versions**: This protocol has only one [**WSDL port type**](#gt_wsdl-port-type) version with a single set of operations. The use of these operations is specified in section [3.2](#Section_3.2).
- **Capability Negotiation**: The Workflow Instance Management Protocol does not support negotiation of the version to use. Instead, an implementation has to be configured to process messages only as described in section 2.1.
<a id="Section_1.8"></a>
## 1.8 Vendor-Extensible Fields

There are no vendor-extensible fields in this protocol.

<a id="Section_1.9"></a>
## 1.9 Standards Assignments

None.

<a id="Section_2"></a>
# 2 Messages

<a id="Section_2.1"></a>
## 2.1 Transport

The Workflow Instance Management Protocol can be used over any transport protocol that supports transmitting messages that are specified by the following protocols:

- SOAP 1.1 [[SOAP1.1]](https://go.microsoft.com/fwlink/?LinkId=90520)
- SOAP 1.2 [[SOAP1.2-1/2007]](https://go.microsoft.com/fwlink/?LinkId=94664)
This specification uses the term [**SOAP**](#gt_soap) to mean either SOAP 1.1 or SOAP 1.2. An implementation of the Workflow Instance Management Protocol MUST support the processing of messages that are specified by either of these SOAP versions.

<a id="Section_2.2"></a>
## 2.2 Common Message Syntax

This section contains common definitions used by this protocol. The syntax of the definitions uses [**XML schema (XSD)**](#gt_xml-schema-xsd) as defined in [[XMLSCHEMA1]](https://go.microsoft.com/fwlink/?LinkId=90608) and [[XMLSCHEMA2]](https://go.microsoft.com/fwlink/?LinkId=90610), and Web Services Description Language as defined in [[WSDL]](https://go.microsoft.com/fwlink/?LinkId=90577).

<a id="Section_2.2.1"></a>
### 2.2.1 Namespaces

This specification defines and references various [**XML namespaces**](#gt_xml-namespace) using the mechanisms specified in [[XMLNS-2ED]](https://go.microsoft.com/fwlink/?LinkId=90602). Although this specification associates a specific XML namespace prefix for each XML namespace that is used, the choice of any particular XML namespace prefix is implementation-specific and is not significant for interoperability.

| Prefix | Namespace URI | Reference |
| --- | --- | --- |
| soap | http://schemas.xmlsoap.org/wsdl/soap/ | [[SOAP1.1]](https://go.microsoft.com/fwlink/?LinkId=90520) |
| Soapenc | http://schemas.xmlsoap.org/soap/encoding/ | [SOAP1.1] |
| Wsu | http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd | - |
| Xsd | http://www.w3.org/2001/XMLSchema | - |
| soap12 | http://schemas.xmlsoap.org/wsdl/soap12/ | [[SOAP1.2-1/2007]](https://go.microsoft.com/fwlink/?LinkId=94664), [[SOAP1.2-2/2007]](https://go.microsoft.com/fwlink/?LinkId=119124) |
| Tns | http://schemas.datacontract.org/2008/10/WorkflowServices | - |
| Wsa | http://schemas.xmlsoap.org/ws/2004/08/addressing | - |
| Wsp | http://schemas.xmlsoap.org/ws/2004/09/policy | - |
| Wsap | http://schemas.xmlsoap.org/ws/2004/08/addressing/policy | - |
| Wsaw | http://www.w3.org/2006/05/addressing/wsdl | - |
| Msc | http://schemas.microsoft.com/ws/2005/12/wsdl/contract | [MS-WSPOL](../MS-WSPOL/MS-WSPOL.md) |
| wsa10 | http://www.w3.org/2005/08/addressing | - |
| Wsx | http://schemas.xmlsoap.org/ws/2004/09/mex | - |
| Wsam | http://www.w3.org/2007/05/addressing/metadata | - |
| Wsdl | http://schemas.xmlsoap.org/wsdl/ | [[WSDL]](https://go.microsoft.com/fwlink/?LinkId=90577) |
| Xs | http://www.w3.org/2001/XMLSchema | [[XMLSCHEMA1]](https://go.microsoft.com/fwlink/?LinkId=90608), [[XMLSCHEMA2]](https://go.microsoft.com/fwlink/?LinkId=90610) |
| q4 | http://schemas.microsoft.com/2003/10/Serialization/ | - |

<a id="Section_2.2.2"></a>
### 2.2.2 Messages

This specification does not define any common [**XSD**](#gt_xml-schema-definition-xsd) message definitions.

<a id="Section_2.2.3"></a>
### 2.2.3 Elements

This specification does not define any common [**XSD**](#gt_xml-schema-definition-xsd) element definitions.

<a id="Section_2.2.4"></a>
### 2.2.4 Complex Types

This specification does not define any common [**XSD**](#gt_xml-schema-definition-xsd) complex-type definitions.

<a id="Section_2.2.5"></a>
### 2.2.5 Simple Types

This specification does not define any common [**XSD**](#gt_xml-schema-definition-xsd) simple-type definitions.

<a id="Section_2.2.6"></a>
### 2.2.6 Attributes

This specification does not define any common [**XSD**](#gt_xml-schema-definition-xsd) attribute definitions.

<a id="Section_2.2.7"></a>
### 2.2.7 Groups

This specification does not define any common [**XSD**](#gt_xml-schema-definition-xsd) group definitions.

<a id="Section_2.2.8"></a>
### 2.2.8 Attribute Groups

This specification does not define any common [**XSD**](#gt_xml-schema-definition-xsd) attribute group definitions.

<a id="Section_3"></a>
# 3 Protocol Details

The client side of this protocol is simply a pass-through mechanism. That is, no additional timers or other state is required on the client side of this protocol. Calls made by the higher-layer protocol or application are passed directly to the transport, and the results returned by the transport are passed directly back to the higher-layer protocol or application.

<a id="Section_3.1"></a>
## 3.1 IWorkflowInstanceManagement Server Details

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

This section describes a conceptual model of possible data organization that an implementation maintains to participate in this protocol. The described organization is provided to facilitate the explanation of how the protocol behaves. This document does not mandate that implementations adhere to this model as long as their external behavior is consistent with that described in this document.

The server MUST maintain the following data element:

- **Durable Program Instance Table:** A table that associates a [**globally unique identifier (GUID)**](#gt_globally-unique-identifier-guid), as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4, to a [**durable program instance**](#gt_durable-program-instance) and durable program instance state. The durable program instance state is an enumeration that identifies the current state of the durable program instance:
- Active
- Suspended
- Completed
The following table shows the relationship between durable program instance states and Workflow Instance Management Protocol operations. The table identifies the durable program instance state when the operation completes, based on the durable program instance state when the operation was invoked.

![Durable program instance states when operation is invoked and completed](media/image2.png)

Figure 2: Durable program instance states when operation is invoked and completed

<a id="Section_3.1.1.1"></a>
#### 3.1.1.1 Active State

The [**durable program instance**](#gt_durable-program-instance) is in the active state before it reaches the completed state and when it is not in the suspended state. In the active state, the durable program instance SHOULD execute and process application messages.

<a id="Section_3.1.1.2"></a>
#### 3.1.1.2 Suspended State

In the suspended state, the [**durable program instance**](#gt_durable-program-instance) MUST NOT execute.

<a id="Section_3.1.1.3"></a>
#### 3.1.1.3 Completed State

The completed state is a final state of the [**durable program instance**](#gt_durable-program-instance). The durable program instance MUST NOT execute in this state.

In a typical implementation, other parts of the system will interact with the durable program instance and can cause the state to be changed. The current state of the durable program instance can also be a snapshot into a durable store, where durability affects the system in the sense that a durable program instance can be reloaded from the durable store, or can be reset to the last durable state. As a result, the Workflow Instance Management Protocol does not prescribe a durable program instance state machine. In the absence of any other interactions, an implementation MAY<1> implement the following durable program instance state machine.

![Durable program instance state machine](media/image3.png)

Figure 3: Durable program instance state machine

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

None.

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

When a server role is initialized:

- The **Durable Program Instance Table** MUST be set to a value that is obtained from an implementation-specific source.
- A listening infrastructural endpoint is created.
When a [**durable program instance**](#gt_durable-program-instance) is initialized:

- An entry for the durable program instance MUST be made in the **Durable Program Instance Table**.
- A [**GUID**](#gt_globally-unique-identifier-guid) to identify the durable program instance MUST be set to a value that is obtained from an implementation-specific source.
- The durable program instance state MUST be set to one of the enumerated values: active, suspended, or completed.
<a id="Section_3.1.4"></a>
### 3.1.4 Message Processing Events and Sequencing Rules

The following table summarizes the list of [**WSDL operations**](#gt_wsdl-operation) as defined by this specification:

| Operation | Description |
| --- | --- |
| **Abandon** | SHOULD forcefully stop the execution of the [**durable program instance**](#gt_durable-program-instance) and indicate to the system that the durable program instance SHOULD be disposed. |
| **Cancel** | Transitions a durable program instance from the active or suspended state to the completed state. The operation SHOULD gracefully cancel any remaining work and clean up resources being used by the durable program instance. |
| **Run** | SHOULD provide the durable program instance an opportunity to execute. |
| **Suspend** | Transitions a durable program instance from the active state to the suspended state. |
| **Terminate** | Transitions a durable program instance from the active or suspended state to the completed state. It SHOULD perform the minimum possible work needed to transition the durable program instance to the completed state. |
| **TransactedCancel** | Performs the **Cancel** operation under a transaction (flowed in from the client or locally created). If the system maintains the durable state of the durable program instance, the durable state MUST be updated during execution of this operation. |
| **TransactedRun** | Performs the **Run** operation under a transaction (flowed in from the client or locally created). If the system maintains the durable state of the durable program instance, the durable state MUST be updated during execution of this operation. |
| **TransactedSuspend** | Performs the **Suspend** operation under a transaction (flowed in from the client or locally created). If the system maintains the durable state of the durable program instance, the durable state MUST be updated during execution of this operation. |
| **TransactedTerminate** | Performs the **Terminate** operation under a transaction (flowed in from the client or locally created). If the system maintains the durable state of the durable program instance, the durable state MUST be updated during execution of this operation. |
| **TransactedUnsuspend** | Performs the **Unsuspend** operation under a transaction (flowed in from the client or locally created). If the system maintains the durable state of the durable program instance, the durable state MUST be updated during execution of this operation. |
| **TransactedUpdate** | Performs the **Update** operation under a transaction (flowed in from the client or locally created). |
| **Unsuspend** | Transitions a durable program instance from the suspended state to the active state. |
| **Update** | Transitions the identity of a durable program instance from its current identity to an updated identity. |

<a id="Section_3.1.4.1"></a>
#### 3.1.4.1 Run

The [**WSDL**](#gt_web-services-description-language-wsdl) definition of the **Run** operation is as follows.

<wsdl:operation name="Run">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/Run"

message="tns:IWorkflowInstanceManagement_Run_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/RunResponse"

message="tns:IWorkflowInstanceManagement_Run_OutputMessage" />

</wsdl:operation>

The **Run** operation SHOULD provide the [**durable program instance**](#gt_durable-program-instance) with an opportunity to execute in an implementation-specific manner. A [**GUID**](#gt_globally-unique-identifier-guid) MUST be passed to the operation as the value of the <instanceId> element to identify the durable program instance on which the operation is to be performed. The operation SHOULD return a [**SOAP fault**](#gt_soap-fault) message if one or more of the following conditions exist:

- The value of the <instanceId> element is not in the correct format, as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4.
- The <instanceId> element is absent.
- The value of the <instanceId> element does not exist in the **Durable Program Instance Table** on the server.
- The durable program instance associated with the value of the <instanceId> element is in the suspended state.
- The durable program instance associated with the value of the <instanceId> element is in the completed state.
- The server encounters an internal error while executing the **Run** operation.
<a id="Section_3.1.4.1.1"></a>
##### 3.1.4.1.1 Messages

The following table summarizes the set of [**WSDL message**](#gt_wsdl-message) definitions that are specific to this operation.

| Message | Description |
| --- | --- |
| [IWorkflowInstanceManagement_Run_InputMessage](#Section_3.1.4.1.1.1) | Sent from the client to invoke the **Run** operation. |
| [IWorkflowInstanceManagement_Run_OutputMessage](#Section_3.1.4.1.1.2) | Sent from the server as a reply to IWorkflowInstanceManagement_Run_InputMessage. |

<a id="Section_3.1.4.1.1.1"></a>
###### 3.1.4.1.1.1 IWorkflowInstanceManagement_Run_InputMessage

The IWorkflowInstanceManagement_Run_InputMessage message is the request message for the **Run** operation. The client SHOULD send this message to invoke the **Run** operation.

<wsdl:message name="IWorkflowInstanceManagement_Run_InputMessage">

<wsdl:part name="parameters" element="tns:Run" />

</wsdl:message>

**Run**: The <Run> element, as specified in section [3.1.4.1.2.1](#Section_3.1.4.1.2.1).

<a id="Section_3.1.4.1.1.2"></a>
###### 3.1.4.1.1.2 IWorkflowInstanceManagement_Run_OutputMessage

The IWorkflowInstanceManagement_Run_OutputMessage message is the reply message for the **Run** operation. The message indicates that the **Run** operation has successfully completed.

<wsdl:message name="IWorkflowInstanceManagement_Run_OutputMessage">

<wsdl:part name="parameters" element="tns:RunResponse" />

</wsdl:message>

**RunResponse**: The <RunResponse> element, as specified in section [3.1.4.1.2.2](#Section_3.1.4.1.2.2).

<a id="Section_3.1.4.1.2"></a>
##### 3.1.4.1.2 Elements

The following table summarizes the [**XSD**](#gt_xml-schema-definition-xsd) element definitions that are specific to this operation.

| Element | Description |
| --- | --- |
| <Run> | Contains the body of the [IWorkflowInstanceManagement_Run_InputMessage](#Section_3.1.4.1.1.1) message. |
| <RunResponse> | Contains the body of the [IWorkflowInstanceManagement_Run_OutputMessage](#Section_3.1.4.1.1.2) message. |

<a id="Section_3.1.4.1.2.1"></a>
###### 3.1.4.1.2.1 Run

<Run> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has a child element <instanceId>. The XSD definition of the <Run> element is as follows:

<xs:element name="Run">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId"

xmlns:q4="http://schemas.microsoft.com/2003/10/Serialization/" type="q4:guid" />

</xs:sequence>

</xs:complexType>

</xs:element>

**instanceId**: The value of this element is of type [**GUID**](#gt_globally-unique-identifier-guid) and SHOULD match the identifier associated with the [**durable program instance**](#gt_durable-program-instance) in the **Durable Program Instance Table** on which this operation SHOULD be performed.

<a id="Section_3.1.4.1.2.2"></a>
###### 3.1.4.1.2.2 RunResponse

<RunResponse> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has no child elements. The XSD definition of the <RunResponse> element is as follows:

<xs:element name="RunResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<a id="Section_3.1.4.2"></a>
#### 3.1.4.2 TransactedRun

The [**WSDL**](#gt_web-services-description-language-wsdl) definition of the **TransactedRun** operation is as follows:

<wsdl:operation name="TransactedRun">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/TransactedRun"

message="tns:IWorkflowInstanceManagement_TransactedRun_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/TransactedRunResponse"

message="tns:IWorkflowInstanceManagement_TransactedRun_OutputMessage" />

</wsdl:operation>

**TransactedRun** is an atomic operation that SHOULD provide the [**durable program instance**](#gt_durable-program-instance) with an opportunity to execute in an implementation-specific manner. The operation SHOULD be performed under the scope of a transaction flowed in from the client, if one is flowed in, using a protocol that is recognized by the client and server roles, such as [MS-WSRVCAT](../MS-WSRVCAT/MS-WSRVCAT.md).<2>

If the system maintains the durable state of the durable program instance, then the durable state MUST be updated during execution of this operation. If the durable store is a transactional resource manager, the same transaction SHOULD be used for the durable state change. Failure to make the durable state change MUST result in failure of the operation.

The durable program instance SHOULD start executing when in the active state. A [**GUID**](#gt_globally-unique-identifier-guid) MUST be passed to the operation as the value of the <instanceId> element to identify the durable program instance on which the operation is to be performed. The operation SHOULD return a [**SOAP fault**](#gt_soap-fault) message if one or more of the following conditions exist:

- The value of the <instanceId> element is not in the correct format, as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4.
- The <instanceId> element is absent.
- The value of the <instanceId> element does not exist in the **Durable Program Instance Table** on the server.
- The durable program instance associated with the value of the <instanceId> element is in the suspended state.
- The durable program instance associated with the value of the <instanceId> element is in the completed state.
- The server encounters an internal error while executing the **TransactedRun** operation.
<a id="Section_3.1.4.2.1"></a>
##### 3.1.4.2.1 Messages

The following table summarizes the set of [**WSDL message**](#gt_wsdl-message) definitions that are specific to this operation.

| Message | Description |
| --- | --- |
| [IWorkflowInstanceManagement_TransactedRun_InputMessage](#Section_3.1.4.2.1.1) | Sent from the client to invoke the **TransactedRun** operation. |
| [IWorkflowInstanceManagement_TransactedRun_OutputMessage](#Section_3.1.4.2.1.2) | Sent from the server as a reply to IWorkflowInstanceManagement_TransactedRun_InputMessage. |

<a id="Section_3.1.4.2.1.1"></a>
###### 3.1.4.2.1.1 IWorkflowInstanceManagement_TransactedRun_InputMessage

The IWorkflowInstanceManagement_TransactedRun_InputMessage message is the request message for the **TransactedRun** operation. The client SHOULD send this message to invoke the **TransactedRun** operation.

<wsdl:message name="IWorkflowInstanceManagement_TransactedRun_InputMessage">

<wsdl:part name="parameters" element="tns:TransactedRun" />

</wsdl:message>

**TransactedRun**: The <TransactedRun> element, as specified in section [3.1.4.2.2.1](#Section_3.1.4.2.2.1).

<a id="Section_3.1.4.2.1.2"></a>
###### 3.1.4.2.1.2 IWorkflowInstanceManagement_TransactedRun_OutputMessage

The IWorkflowInstanceManagement_TransactedRun_OutputMessage message is the reply message for the **TransactedRun** operation. The message indicates that the **TransactedRun** operation has successfully completed.

<wsdl:message name="IWorkflowInstanceManagement_TransactedRun_OutputMessage">

<wsdl:part name="parameters" element="tns:TransactedRunResponse" />

</wsdl:message>

**TransactedRunResponse**: The <TransactedRunResponse> element, as specified in section [3.1.4.2.2.2](#Section_3.1.4.2.2.2).

<a id="Section_3.1.4.2.2"></a>
##### 3.1.4.2.2 Elements

The following table summarizes the [**XSD**](#gt_xml-schema-definition-xsd) element definitions that are specific to this operation.

| Element | Description |
| --- | --- |
| <TransactedRun> | Contains the body of the [IWorkflowInstanceManagement_TransactedRun_InputMessage message](#Section_3.1.4.2.1.1). |
| <TransactedRunResponse> | Contains the body of the [IWorkflowInstanceManagement_TransactedRun_OutputMessage](#Section_3.1.4.2.1.2) message. |

<a id="Section_3.1.4.2.2.1"></a>
###### 3.1.4.2.2.1 TransactedRun

<TransactedRun> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has a child element <instanceId>. The XSD definition of the <TransactedRun> element is as follows:

<xs:element name="TransactedRun">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId"

xmlns:q4="http://schemas.microsoft.com/2003/10/Serialization/" type="q4:guid" />

</xs:sequence>

</xs:complexType>

</xs:element>

**instanceId**: The value of this element is of type [**GUID**](#gt_globally-unique-identifier-guid) and SHOULD match the identifier associated with the [**durable program instance**](#gt_durable-program-instance) in the **Durable Program Instance Table** on which this operation SHOULD be performed.

<a id="Section_3.1.4.2.2.2"></a>
###### 3.1.4.2.2.2 TransactedRunResponse

<TransactedRunResponse> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has no child elements. The XSD definition of the <TransactedRunResponse> element is as follows:

<xs:element name="TransactedRunResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<a id="Section_3.1.4.3"></a>
#### 3.1.4.3 Abandon

The [**WSDL**](#gt_web-services-description-language-wsdl) definition of the **Abandon** operation is as follows:

<wsdl:operation name="Abandon">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/Abandon"

message="tns:IWorkflowInstanceManagement_Abandon_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/AbandonResponse"

message="tns:IWorkflowInstanceManagement_Abandon_OutputMessage" />

</wsdl:operation>

The **Abandon** operation SHOULD forcefully stop the execution of the [**durable program instance**](#gt_durable-program-instance) and indicate to the system that the current durable program instance execution image SHOULD be disposed. If the system maintains the durable state of the durable program instances, then the durable state SHOULD NOT be updated during execution of this operation.

For example, in an expense report processing system, an administrator might decide to **Abandon** all active reports and ask for them to be resubmitted. A [**GUID**](#gt_globally-unique-identifier-guid) MUST be passed to the operation as the value of the <instanceId> element to identify the durable program instance on which the operation is to be performed. The operation SHOULD return a [**SOAP fault**](#gt_soap-fault) message if one or more of the following conditions exist:

- The value of the <instanceId> element is not in the correct format, as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4.
- The <instanceId> element is absent.
- The value of the <instanceId> element does not exist in the **Durable Program Instance Table** on the server.
- The durable program instance associated with the value of the <instanceId> element is in the completed state.
- The server encounters an internal error while executing the **Abandon** operation.
<a id="Section_3.1.4.3.1"></a>
##### 3.1.4.3.1 Messages

The following table summarizes the set of [**WSDL message**](#gt_wsdl-message) definitions that are specific to this operation.

| Message | Description |
| --- | --- |
| [IWorkflowInstanceManagement_Abandon_InputMessage](#Section_3.1.4.3.1.1) | Sent from the client to invoke the **Abandon** operation. |
| [IWorkflowInstanceManagement_Abandon_OutputMessage](#Section_3.1.4.3.1.2) | Sent from the server as a reply to IWorkflowInstanceManagement_Abandon_InputMessage. |

<a id="Section_3.1.4.3.1.1"></a>
###### 3.1.4.3.1.1 IWorkflowInstanceManagement_Abandon_InputMessage

The IWorkflowInstanceManagement_Abandon_InputMessage message is the request message for the **Abandon** operation. The client role SHOULD send this message to invoke the **Abandon** operation.

<wsdl:message name="IWorkflowInstanceManagement_Abandon_InputMessage">

<wsdl:part name="parameters" element="tns:Abandon" />

</wsdl:message>

**Abandon**: The <Abandon> element, as specified in section [3.1.4.1.2.2](#Section_3.1.4.1.2.2).

<a id="Section_3.1.4.3.1.2"></a>
###### 3.1.4.3.1.2 IWorkflowInstanceManagement_Abandon_OutputMessage

The IWorkflowInstanceManagement_Abandon_OutputMessage message is the reply message for the **Abandon** operation. The message indicates that the **Abandon** operation has successfully completed.

<wsdl:message name="IWorkflowInstanceManagement_Abandon_OutputMessage">

<wsdl:part name="parameters" element="tns:AbandonResponse" />

</wsdl:message>

**AbandonResponse**: The <AbandonResponse> element, as specified in section [3.1.4.3.2.2](#Section_3.1.4.3.2.2).

<a id="Section_3.1.4.3.2"></a>
##### 3.1.4.3.2 Elements

The following table summarizes the [**XSD**](#gt_xml-schema-definition-xsd) element definitions that are specific to this operation.

| Element | Description |
| --- | --- |
| <Abandon> | Contains the body of the [IWorkflowInstanceManagement_Abandon_InputMessage](#Section_3.1.4.3.1.1) message. |
| <AbandonResponse> | Contains the body of the [IWorkflowInstanceManagement_Abandon_OutputMessage](#Section_3.1.4.3.1.2) message. |

<a id="Section_3.1.4.3.2.1"></a>
###### 3.1.4.3.2.1 Abandon

<Abandon> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has two child elements: <instanceId> and <reason>. The XSD definition of the <Abandon> element is as follows:

<xs:element name="Abandon">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId"

xmlns:q4="http://schemas.microsoft.com/2003/10/Serialization/" type="q4:guid" />

<xs:element minOccurs="0" name="reason" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

**instanceId**: The value of this element is of type [**GUID**](#gt_globally-unique-identifier-guid) and SHOULD match the identifier that is associated with the [**durable program instance**](#gt_durable-program-instance) in the **Durable Program Instance Table** on which this operation SHOULD be performed.

**reason**: The value of this element is a description of the reason for performing the **Abandon** operation.

<a id="Section_3.1.4.3.2.2"></a>
###### 3.1.4.3.2.2 AbandonResponse

<AbandonResponse> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has no child elements. The XSD definition of the <AbandonResponse> element is as follows:

<xs:element name="AbandonResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<a id="Section_3.1.4.4"></a>
#### 3.1.4.4 Cancel

The [**WSDL**](#gt_web-services-description-language-wsdl) definition of the **Cancel** operation is as follows:

<wsdl:operation name="Cancel">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/Cancel"

message="tns:IWorkflowInstanceManagement_Cancel_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/CancelResponse"

message="tns:IWorkflowInstanceManagement_Cancel_OutputMessage" />

</wsdl:operation>

The **Cancel** operation transitions a [**durable program instance**](#gt_durable-program-instance) from the active or suspended state to the completed state. The operation SHOULD gracefully cancel any remaining work and clean up resources being used by the durable program instance, such as open network connections. Completed is a final state and the durable program instance MUST NOT execute in the completed state. A [**GUID**](#gt_globally-unique-identifier-guid) MUST be passed to the operation as the value of the <instanceId> element to identify the durable program instance on which the operation is to be performed. The operation SHOULD return a [**SOAP fault**](#gt_soap-fault) message if one or more of the following conditions exist:

- The value of the <instanceId> element is not in the correct format, as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4.
- The <instanceId> element is absent.
- The value of the <instanceId> element does not exist in the **Durable Program Instance Table** on the server.
- The durable program instance associated with the value of the <instanceId> element is in the completed state.
- The server encounters an internal error while executing the **Cancel** operation.
<a id="Section_3.1.4.4.1"></a>
##### 3.1.4.4.1 Messages

The following table summarizes the set of [**WSDL message**](#gt_wsdl-message) definitions that are specific to this operation.

| Message | Description |
| --- | --- |
| [IWorkflowInstanceManagement_Cancel_InputMessage](#Section_3.1.4.4.1.1) | Sent from the client to invoke the **Cancel** operation. |
| [IWorkflowInstanceManagement_Cancel_OutputMessage](#Section_3.1.4.4.1.2) | Sent from the server as a reply to IWorkflowInstanceManagement_Cancel_InputMessage. |

<a id="Section_3.1.4.4.1.1"></a>
###### 3.1.4.4.1.1 IWorkflowInstanceManagement_Cancel_InputMessage

The IWorkflowInstanceManagement_Cancel_InputMessage message is the request message for the **Cancel** operation. The client role SHOULD send this message to invoke the **Cancel** operation.

<wsdl:message name="IWorkflowInstanceManagement_Cancel_InputMessage">

<wsdl:part name="parameters" element="tns:Cancel" />

</wsdl:message>

**Cancel**: The <Cancel> element, as specified in section [3.1.4.4.2.1](#Section_3.1.4.4.2.1).

<a id="Section_3.1.4.4.1.2"></a>
###### 3.1.4.4.1.2 IWorkflowInstanceManagement_Cancel_OutputMessage

The IWorkflowInstanceManagement_Cancel_OutputMessage message is the reply message for the **Cancel** operation. The message indicates that the **Cancel** operation has successfully completed. The SOAP:body of this message consists of the <CancelResponse> element.

<wsdl:message name="IworkflowInstanceManagement_Cancel_OutputMessage">

<wsdl:part name="parameters" element="tns:CancelResponse" />

</wsdl:message>

**CancelResponse**: The <CancelResponse> element, as specified in section [3.1.4.4.2.2](#Section_3.1.4.4.2.2).

<a id="Section_3.1.4.4.2"></a>
##### 3.1.4.4.2 Elements

The following table summarizes the [**XSD**](#gt_xml-schema-definition-xsd) element definitions that are specific to this operation.

| Element | Description |
| --- | --- |
| <Cancel> | Contains the body of the [IWorkflowInstanceManagement_Cancel_InputMessage](#Section_3.1.4.4.1.1) message. |
| <CancelResponse> | Contains the body of the [IWorkflowInstanceManagement_Cancel_OutputMessage](#Section_3.1.4.4.1.2) message. |

<a id="Section_3.1.4.4.2.1"></a>
###### 3.1.4.4.2.1 Cancel

<Cancel> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has a child element <instanceId>. The XSD definition of the <Cancel> element is as follows:

<xs:element name="Cancel">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId"

xmlns:q4="http://schemas.microsoft.com/2003/10/Serialization/" type="q4:guid" />

</xs:sequence>

</xs:complexType>

</xs:element>

**instanceId**: The value of this element is of type [**GUID**](#gt_globally-unique-identifier-guid) and SHOULD match the identifier that is associated with the [**durable program instance**](#gt_durable-program-instance) in the **Durable Program Instance Table** on which this operation SHOULD be performed.

<a id="Section_3.1.4.4.2.2"></a>
###### 3.1.4.4.2.2 CancelResponse

<CancelResponse> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has no child elements. The XSD definition of the <CancelResponse> element is as follows:

<xs:element name="CancelResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<a id="Section_3.1.4.5"></a>
#### 3.1.4.5 TransactedCancel

Following is the [**WSDL**](#gt_web-services-description-language-wsdl) definition of the **TransactedCancel** operation:

<wsdl:operation name="TransactedCancel">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/TransactedCancel"

message="tns:IWorkflowInstanceManagement_TransactedCancel_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/TransactedCancelResponse"

message="tns:IWorkflowInstanceManagement_TransactedCancel_OutputMessage" />

</wsdl:operation>

**TransactedCancel** is an atomic operation that transitions the [**durable program instance**](#gt_durable-program-instance) from the active or suspended state to the completed state. The operation SHOULD gracefully cancel any remaining work and clean up resources being used by the durable program instance. This operation SHOULD be performed under the scope of a transaction flowed in from the client, if one is flowed in, using a protocol that is recognized by the client and server roles, such as [MS-WSRVCAT](../MS-WSRVCAT/MS-WSRVCAT.md).

If the system maintains the durable state of the durable program instance, then the durable state MUST be updated during execution of this operation. If the durable store is a transactional resource manager, then the same transaction SHOULD be used for the durable state change. Failure to make the durable state change MUST result in failure of the operation.

A [**GUID**](#gt_globally-unique-identifier-guid) MUST be passed to the operation as the value of the <instanceId> element to identify the durable program instance on which the operation is to be performed.

The operation SHOULD return a [**SOAP fault**](#gt_soap-fault) message if one or more of the following conditions exist:

- The value of the <instanceId> element is not in the correct format, as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4.
- The <instanceId> element is absent.
- The value of the <instanceId> element does not exist in the **Durable Program Instance Table** on the server.
- The durable program instance associated with the value of the <instanceId> element is in the completed state.
- The server encounters an internal error while executing the **TransactedCancel** operation.
<a id="Section_3.1.4.5.1"></a>
##### 3.1.4.5.1 Messages

The following table summarizes the set of [**WSDL message**](#gt_wsdl-message) definitions that are specific to this operation.

| Message | Description |
| --- | --- |
| [IWorkflowInstanceManagement_TransactedCancel_InputMessage](#Section_3.1.4.5.1.1) | Sent from the client to invoke the **TransactedCancel** operation. |
| [IWorkflowInstanceManagement_TransactedCancel_OutputMessage](#Section_3.1.4.5.1.2) | Sent from the server as a reply to IWorkflowInstanceManagement_TransactedCancel_InputMessage. |

<a id="Section_3.1.4.5.1.1"></a>
###### 3.1.4.5.1.1 IWorkflowInstanceManagement_TransactedCancel_InputMessage

The IWorkflowInstanceManagement_TransactedCancel_InputMessage message is the request message for the **TransactedCancel** operation. The client role SHOULD send this message to invoke the **TransactedCancel** operation.

<wsdl:message name="IWorkflowInstanceManagement_TransactedCancel_InputMessage">

<wsdl:part name="parameters" element="tns:TransactedCancel" />

</wsdl:message>

**TransactedCancel**: The <TransactedCancel> element, as specified in section [3.1.4.5.2.1](#Section_3.1.4.5.2.1).

<a id="Section_3.1.4.5.1.2"></a>
###### 3.1.4.5.1.2 IWorkflowInstanceManagement_TransactedCancel_OutputMessage

The IWorkflowInstanceManagement_TransactedCancel_OutputMessage message is the reply message for the **TransactedCancel** operation. The message indicates that the **TransactedCancel** operation has successfully completed.

<wsdl:message name="IWorkflowInstanceManagement_TransactedCancel_OutputMessage">

<wsdl:part name="parameters" element="tns:TransactedCancelResponse" />

</wsdl:message>

**TransactedCancelResponse**: The <TransactedCancelResponse> element, as specified in section [3.1.4.5.2.2](#Section_3.1.4.5.2.2).

<a id="Section_3.1.4.5.2"></a>
##### 3.1.4.5.2 Elements

The following table summarizes the [**XSD**](#gt_xml-schema-definition-xsd) element definitions that are specific to this operation.

| Element | Description |
| --- | --- |
| <TransactedCancel> | Contains the body of the [IWorkflowInstanceManagement_TransactedCancel_InputMessage](#Section_3.1.4.5.1.1) message. |
| <TransactedCancelResponse> | Contains the body of the [IWorkflowInstanceManagement_TransactedCancel_OutputMessage](#Section_3.1.4.5.1.2) message. |

<a id="Section_3.1.4.5.2.1"></a>
###### 3.1.4.5.2.1 TransactedCancel

<TransactedCancel> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has a child element <instanceId>. The XSD definition of the <TransactedCancel> element is as follows:

<xs:element name="TransactedCancel">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId"

xmlns:q4="http://schemas.microsoft.com/2003/10/Serialization/" type="q4:guid" />

</xs:sequence>

</xs:complexType>

</xs:element>

**instanceId**: The value of this element is of type [**GUID**](#gt_globally-unique-identifier-guid) and SHOULD match the identifier that is associated with the [**durable program instance**](#gt_durable-program-instance) in the **Durable Program Instance Table** on which this operation SHOULD be performed.

<a id="Section_3.1.4.5.2.2"></a>
###### 3.1.4.5.2.2 TransactedCancelResponse

<TransactedCancelResponse> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has no child elements. The XSD definition of the <TransactedCancelResponse> element is as follows:

<xs:element name="TransactedCancelResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<a id="Section_3.1.4.6"></a>
#### 3.1.4.6 Terminate

Following is the [**WSDL**](#gt_web-services-description-language-wsdl) definition of the **Terminate** operation:

<wsdl:operation name="Terminate">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/Terminate"

message="tns:IWorkflowInstanceManagement_Terminate_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/TerminateResponse"

message="tns:IWorkflowInstanceManagement_Terminate_OutputMessage" />

</wsdl:operation>

The **Terminate** operation transitions a [**durable program instance**](#gt_durable-program-instance) from the active or suspended state to the completed state. It SHOULD perform the minimal possible work needed to transition the durable program instance to the completed state. A [**GUID**](#gt_globally-unique-identifier-guid) MUST be passed to the operation as the value of the <instanceId> element to identify the durable program instance on which the operation is to be performed. The operation SHOULD return a [**SOAP fault**](#gt_soap-fault) message if one or more of the following conditions exist:

- The value of the <instanceId> element is not in the correct format, as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4.
- The <instanceId> element is absent.
- The value of the <instanceId> element does not exist in the **Durable Program Instance Table** on the server.
- The durable program instance associated with the value of the <instanceId> element is in the completed state.
- The server encounters an internal error while executing the Terminate operation.
<a id="Section_3.1.4.6.1"></a>
##### 3.1.4.6.1 Messages

The following table summarizes the set of [**WSDL message**](#gt_wsdl-message) definitions that are specific to this operation.

| Message | Description |
| --- | --- |
| [IWorkflowInstanceManagement_Terminate_InputMessage](#Section_3.1.4.6.1.1) | Sent from the client to invoke the **Terminate** operation. |
| [IWorkflowInstanceManagement_Terminate_OutputMessage](#Section_3.1.4.6.1.2) | Sent from the server as a reply to IWorkflowInstanceManagement_Terminate_InputMessage. |

<a id="Section_3.1.4.6.1.1"></a>
###### 3.1.4.6.1.1 IWorkflowInstanceManagement_Terminate_InputMessage

The IWorkflowInstanceManagement_Terminate_InputMessage message is the request message for the **Terminate** operation. The client SHOULD send this message to invoke the **Terminate** operation.

<wsdl:message name="IWorkflowInstanceManagement_Terminate_InputMessage">

<wsdl:part name="parameters" element="tns:Terminate" />

</wsdl:message>

**Terminate**: The <Terminate> element, as specified in section [3.1.4.6.2.1](#Section_3.1.4.6.2.1).

<a id="Section_3.1.4.6.1.2"></a>
###### 3.1.4.6.1.2 IWorkflowInstanceManagement_Terminate_OutputMessage

The IWorkflowInstanceManagement_Terminate_OutputMessage message is the reply message for the **Terminate** operation. The message indicates that the **Terminate** operation has successfully completed.

<wsdl:message name="IWorkflowInstanceManagement_Terminate_OutputMessage">

<wsdl:part name="parameters" element="tns:TerminateResponse" />

</wsdl:message>

**TerminateResponse**: The <TerminateResponse> element, as specified in section [3.1.4.6.2.2](#Section_3.1.4.6.2.2).

<a id="Section_3.1.4.6.2"></a>
##### 3.1.4.6.2 Elements

The following table summarizes the [**XSD**](#gt_xml-schema-definition-xsd) element definitions that are specific to this operation.

| Element | Description |
| --- | --- |
| <Terminate> | Contains the body of the [IWorkflowInstanceManagement_Terminate_InputMessage](#Section_3.1.4.6.1.1) message. |
| <TerminateResponse> | Contains the body of the [IWorkflowInstanceManagement_Terminate_OutputMessage](#Section_3.1.4.6.1.2) message. |

<a id="Section_3.1.4.6.2.1"></a>
###### 3.1.4.6.2.1 Terminate

<Terminate> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has two child elements: <instanceId> and <reason>. The XSD definition of the <Terminate> element is as follows:

<xs:element name="Terminate">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId"

xmlns:q4="http://schemas.microsoft.com/2003/10/Serialization/" type="q4:guid" />

<xs:element minOccurs="0" name="reason" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

**instanceId**: The value of this element is of type [**GUID**](#gt_globally-unique-identifier-guid) and SHOULD match the identifier that is associated with the [**durable program instance**](#gt_durable-program-instance) in the **Durable Program Instance Table** on which this operation SHOULD be performed.

**reason**: The value of this element is a description of the reason for performing the **Terminate** operation.

<a id="Section_3.1.4.6.2.2"></a>
###### 3.1.4.6.2.2 TerminateResponse

<TerminateResponse> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has no child elements. The XSD definition of the <TerminateResponse> element is as follows:

<xs:element name="TerminateResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<a id="Section_3.1.4.7"></a>
#### 3.1.4.7 TransactedTerminate

The [**WSDL**](#gt_web-services-description-language-wsdl) definition of the **TransactedTerminate** operation is as follows:

<wsdl:operation name="TransactedTerminate">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/TransactedTerminate"

message="tns:IWorkflowInstanceManagement_TransactedTerminate_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/TransactedTerminateResponse"

message="tns:IWorkflowInstanceManagement_TransactedTerminate_OutputMessage" />

</wsdl:operation>

**TransactedTerminate** is an atomic operation that transitions a [**durable program instance**](#gt_durable-program-instance) from the active or suspended state to the completed state. It SHOULD perform the minimal possible work needed to transition the durable program instance to the completed state. This operation SHOULD be performed under the scope of a transaction flowed in from the client, if one is flowed in, using a protocol that is recognized by the client and server roles, such as [MS-WSRVCAT](../MS-WSRVCAT/MS-WSRVCAT.md).

If the system maintains the durable state of the durable program instance, then the durable state MUST be updated during execution of this operation. If the durable store is a transactional resource manager, then the same transaction SHOULD be used for the durable state change. Failure to make the durable state change MUST result in failure of the operation.

A [**GUID**](#gt_globally-unique-identifier-guid) MUST be passed to the operation as the value of the <instanceId> element to identify the durable program instance on which the operation is to be performed.

The operation SHOULD return a [**SOAP fault**](#gt_soap-fault) message if one or more of the following conditions exist:

- The value of the <instanceId> element is not in the correct format, as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4.
- The <instanceId> element is absent.
- The value of the <instanceId> element does not exist in the **Durable Program Instance Table** on the server.
- The durable program instance associated with the value of the <instanceId> element is in the completed state.
- The server encounters an internal error while executing the **TransactedTerminate** operation.
<a id="Section_3.1.4.7.1"></a>
##### 3.1.4.7.1 Messages

The following table summarizes the set of [**WSDL message**](#gt_wsdl-message) definitions that are specific to this operation.

| Message | Description |
| --- | --- |
| [IWorkflowInstanceManagement_TransactedTerminate_InputMessage](#Section_3.1.4.7.1.1) | Sent from the client to invoke the **TransactedTerminate** operation. |
| [IWorkflowInstanceManagement_TransactedTerminate_OutputMessage](#Section_3.1.4.7.1.2) | Sent from the server as a reply to IWorkflowInstanceManagement_TransactedTerminate_InputMessage. |

<a id="Section_3.1.4.7.1.1"></a>
###### 3.1.4.7.1.1 IWorkflowInstanceManagement_TransactedTerminate_InputMessage

The IWorkflowInstanceManagement_TransactedTerminate_InputMessage message is the request message for the **TransactedTerminate** operation. The client SHOULD send this message to invoke the **TransactedTerminate** operation.

<wsdl:message name="IWorkflowInstanceManagement_TransactedTerminate_InputMessage">

<wsdl:part name="parameters" element="tns:TransactedTerminate" />

</wsdl:message>

**TransactedTerminate**: The <TransactedTerminate> element, as specified in section [3.1.4.7.2.1](#Section_3.1.4.7.2.1).

<a id="Section_3.1.4.7.1.2"></a>
###### 3.1.4.7.1.2 IWorkflowInstanceManagement_TransactedTerminate_OutputMessage

The IWorkflowInstanceManagement_TransactedTerminate_OutputMessage message is the reply message for the **TransactedTerminate** operation. The message indicates that the **TransactedTerminate** operation has successfully completed.

<wsdl:message name="IWorkflowInstanceManagement_TransactedTerminate_OutputMessage">

<wsdl:part name="parameters" element="tns:TransactedTerminateResponse" />

</wsdl:message>

**TransactedTerminateResponse:** The <TransactedTerminateResponse> element, as specified in section [3.1.4.7.2.2](#Section_3.1.4.7.2.2).

<a id="Section_3.1.4.7.2"></a>
##### 3.1.4.7.2 Elements

The following table summarizes the [**XSD**](#gt_xml-schema-definition-xsd) element definitions that are specific to this operation.

| Element | Description |
| --- | --- |
| <TransactedTerminate> | Contains the body of the [IWorkflowInstanceManagement_TransactedTerminate_InputMessage](#Section_3.1.4.7.1.1) message. |
| <TransactedTerminateResponse> | Contains the body of the [IWorkflowInstanceManagement_TransactedTerminate_OutputMessage](#Section_3.1.4.7.1.2) message. |

<a id="Section_3.1.4.7.2.1"></a>
###### 3.1.4.7.2.1 TransactedTerminate

<TransactedTerminate> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has a child element <instanceId>. The XSD definition of the <TransactedTerminate> element is as follows:

<xs:element name="TransactedTerminate">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId"

xmlns:q4="http://schemas.microsoft.com/2003/10/Serialization/" type="q4:guid" />

<xs:element minOccurs="0" name="reason" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

**instanceId**: The value of this element is of type [**GUID**](#gt_globally-unique-identifier-guid) and SHOULD match the identifier that is associated with the [**durable program instance**](#gt_durable-program-instance) in the **Durable Program Instance Table** on which this operation SHOULD be performed.

**reason**: The value of this element is a description of the reason for performing the **TransactedTerminate** operation.

<a id="Section_3.1.4.7.2.2"></a>
###### 3.1.4.7.2.2 TransactedTerminateResponse

<TransactedTerminateResponse> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has no child elements. The XSD definition of the <TransactedTerminateResponse> element is as follows:

<xs:element name="TransactedTerminateResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<a id="Section_3.1.4.8"></a>
#### 3.1.4.8 Suspend

The [**WSDL**](#gt_web-services-description-language-wsdl) definition of the **Suspend** operation is as follows:

<wsdl:operation name="Suspend">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/Suspend"

message="tns:IWorkflowInstanceManagement_Suspend_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/SuspendResponse"

message="tns:IWorkflowInstanceManagement_Suspend_OutputMessage" />

</wsdl:operation>

The **Suspend** operation transitions a [**durable program instance**](#gt_durable-program-instance) from the active state to the suspended state. The durable program instance MUST NOT execute when in the suspended state.

The operation SHOULD return a [**SOAP fault**](#gt_soap-fault) message if one or more of the following conditions exist:

- The value of the <instanceId> element is not in the correct format, as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4.
- The <instanceId> element is absent.
- The value of the <instanceId> element does not exist in the **Durable Program Instance Table** on the server.
- The durable program instance associated with the value of the <instanceId> element is in the completed state.
- The <reason> element is missing, empty, or has the xsi:nil attribute set to a value of true.
- The server encounters an internal error while executing the **Suspend** operation.
A [**GUID**](#gt_globally-unique-identifier-guid) MUST be passed to the operation as the value of the <instanceId> element to identify the durable program instance on which the operation is to be performed. If the durable program instance associated with the identifier passed to the **Suspend** operation is already in the suspended state, the state is not modified.

<a id="Section_3.1.4.8.1"></a>
##### 3.1.4.8.1 Messages

The following table summarizes the set of [**WSDL message**](#gt_wsdl-message) definitions that are specific to this operation.

| Message | Description |
| --- | --- |
| [IWorkflowInstanceManagement_Suspend_InputMessage](#Section_3.1.4.8.1.1) | Sent from the client to invoke the **Suspend** operation. |
| [IWorkflowInstanceManagement_Suspend_OutputMessage](#Section_3.1.4.8.1.2) | Sent from the server as a reply to IWorkflowInstanceManagement_Suspend_InputMessage. |

<a id="Section_3.1.4.8.1.1"></a>
###### 3.1.4.8.1.1 IWorkflowInstanceManagement_Suspend_InputMessage

The IWorkflowInstanceManagement_Suspend_InputMessage message is the request message for the **Suspend** operation. The client SHOULD send this message to invoke the **Suspend** operation.

<wsdl:message name="IWorkflowInstanceManagement_Suspend_InputMessage">

<wsdl:part name="parameters" element="tns:Suspend" />

</wsdl:message>

**Suspend**: The <Suspend> element, as specified in section [3.1.4.8.2.1](#Section_3.1.4.8.2.1).

<a id="Section_3.1.4.8.1.2"></a>
###### 3.1.4.8.1.2 IWorkflowInstanceManagement_Suspend_OutputMessage

The IWorkflowInstanceManagement_Suspend_OutputMessage message is the reply message for the **Suspend** operation. The message indicates that the **Suspend** operation has successfully completed.

<wsdl:message name="IWorkflowInstanceManagement_Suspend_OutputMessage">

<wsdl:part name="parameters" element="tns:SuspendResponse" />

</wsdl:message>

**SuspendResponse**: The <SuspendResponse> element, as specified in section [3.1.4.8.2.2](#Section_3.1.4.8.2.2).

<a id="Section_3.1.4.8.2"></a>
##### 3.1.4.8.2 Elements

The following table summarizes the [**XSD**](#gt_xml-schema-definition-xsd) element definitions that are specific to this operation.

| Element | Description |
| --- | --- |
| <Suspend> | Contains the body of the [IWorkflowInstanceManagement_Suspend_InputMessage](#Section_3.1.4.8.1.1) message. |
| <SuspendResponse> | Contains the body of the [IWorkflowInstanceManagement_Suspend_OutputMessage](#Section_3.1.4.8.1.2) message. |

<a id="Section_3.1.4.8.2.1"></a>
###### 3.1.4.8.2.1 Suspend

<Suspend> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has two child elements: <instanceId> and <reason>. The XSD definition of the <Suspend> element is as follows:

<xs:element name="Suspend">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId"

xmlns:q4="http://schemas.microsoft.com/2003/10/Serialization/" type="q4:guid" />

<xs:element minOccurs="0" name="reason" nillable="true" type="xs:string" /> </xs:sequence>

</xs:complexType>

</xs:element>

**instanceId**: The value of this element is of type [**GUID**](#gt_globally-unique-identifier-guid) and SHOULD match the identifier that is associated with the [**durable program instance**](#gt_durable-program-instance) in the **Durable Program Instance Table** on which this operation SHOULD be performed.

**reason**: The value of this element is a description of the reason for performing the **Suspend** operation.

<a id="Section_3.1.4.8.2.2"></a>
###### 3.1.4.8.2.2 SuspendResponse

<SuspendResponse> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has no child elements. The XSD definition of the <SuspendResponse> element is as follows:

<xs:element name="SuspendResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<a id="Section_3.1.4.9"></a>
#### 3.1.4.9 TransactedSuspend

The [**WSDL**](#gt_web-services-description-language-wsdl) definition of the **TransactedSuspend** operation is as follows:

<wsdl:operation name="TransactedSuspend">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/TransactedSuspend"

message="tns:IWorkflowInstanceManagement_TransactedSuspend_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/TransactedSuspendResponse"

message="tns:IWorkflowInstanceManagement_TransactedSuspend_OutputMessage" />

</wsdl:operation>

**TransactedSuspend** is an atomic operation that SHOULD perform the following tasks under the scope of a transaction flowed in from the client, if one is flowed in, using a protocol that is recognized by the client and server roles, such as [MS-WSRVCAT](../MS-WSRVCAT/MS-WSRVCAT.md):

- Transitions a [**durable program instance**](#gt_durable-program-instance) from the active state to the suspended state. If the durable program instance is already in the suspended state, then this task is not performed. The durable program instance MUST NOT execute when in the suspended state.
- The operation SHOULD return a [**SOAP fault**](#gt_soap-fault) message if one or more of the following conditions exist:
- The value of the <instanceId> element is not in the correct format, as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4.
- The <instanceId> element is absent.
- The value of the <instanceId> element does not exist in the **Durable Program Instance Table** on the server.
- The durable program instance associated with the value of the <instanceId> element is in the completed state.
- The <reason> element is missing, empty, or has the xsi:nil attribute set to a value of true.
- The server encounters an internal error while executing the **TransactedSuspend** operation.
- If the system maintains the durable state of the durable program instance, then the durable state MUST be updated during execution of this operation. If the durable store is a transactional resource manager, then the same transaction SHOULD be used for the durable state change. Failure to make the durable state change MUST result in failure of the operation.
A [**GUID**](#gt_globally-unique-identifier-guid) MUST be passed to the operation as the value of the <instanceId> element to identify the durable program instance on which the operation is to be performed. If the durable program instance associated with the identifier passed to the **Suspend** operation is already in the suspended state, then the state is not modified.

<a id="Section_3.1.4.9.1"></a>
##### 3.1.4.9.1 Messages

The following table summarizes the set of [**WSDL message**](#gt_wsdl-message) definitions that are specific to this operation.

| Message | Description |
| --- | --- |
| [IWorkflowInstanceManagement_TransactedSuspend_InputMessage](#Section_3.1.4.9.1.1) | Sent from the client to invoke the **TransactedSuspend** operation. |
| [IWorkflowInstanceManagement_TransactedSuspend_OutputMessage](#Section_3.1.4.9.1.2) | Sent from the server as a reply to IWorkflowInstanceManagement_TransactedSuspend_InputMessage. |

<a id="Section_3.1.4.9.1.1"></a>
###### 3.1.4.9.1.1 IWorkflowInstanceManagement_TransactedSuspend_InputMessage

The IWorkflowInstanceManagement_TransactedSuspend_InputMessage message is the request message for the **TransactedSuspend** operation. The client SHOULD send this message to invoke the **TransactedSuspend** operation.

<wsdl:message name="IWorkflowInstanceManagement_TransactedSuspend_InputMessage">

<wsdl:part name="parameters" element="tns:TransactedSuspend" />

</wsdl:message>

**TransactedSuspend**: The <TransactedSuspend> element, as specified in section [3.1.4.9.2.1](#Section_3.1.4.9.2.1).

<a id="Section_3.1.4.9.1.2"></a>
###### 3.1.4.9.1.2 IWorkflowInstanceManagement_TransactedSuspend_OutputMessage

The IWorkflowInstanceManagement_TransactedSuspend_OutputMessage message is the reply message for the **TransactedSuspend** operation. The message indicates that the **TransactedSuspend** operation has successfully completed.

<wsdl:message name="IWorkflowInstanceManagement_TransactedSuspend_OutputMessage">

<wsdl:part name="parameters" element="tns:TransactedSuspendResponse" />

</wsdl:message>

**TransactedSuspendResponse**: The <TransactedSuspendResponse> element, as specified in section [3.1.4.9.2.2](#Section_3.1.4.9.2.2).

<a id="Section_3.1.4.9.2"></a>
##### 3.1.4.9.2 Elements

The following table summarizes the [**XSD**](#gt_xml-schema-definition-xsd) element definitions that are specific to this operation.

| Element | Description |
| --- | --- |
| <TransactedSuspend> | Contains the body of the [IWorkflowInstanceManagement_TransactedSuspend_InputMessage](#Section_3.1.4.9.1.1) message. |
| <TransactedSuspendResponse> | Contains the body of the [IWorkflowInstanceManagement_TransactedSuspend_OutputMessage](#Section_3.1.4.9.1.2) message. |

<a id="Section_3.1.4.9.2.1"></a>
###### 3.1.4.9.2.1 TransactedSuspend

<TransactedSuspend> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has two child elements: <instanceId> and <reason>. The XSD definition of the <TransactedSuspend> element is as follows:

<xs:element name="TransactedSuspend">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId"

xmlns:q4="http://schemas.microsoft.com/2003/10/Serialization/" type="q4:guid" />

<xs:element minOccurs="0" name="reason" nillable="true" type="xs:string" /> </xs:sequence>

</xs:complexType>

</xs:element>

**instanceId**: The value of this element is of type [**GUID**](#gt_globally-unique-identifier-guid) and SHOULD match the identifier that is associated with the [**durable program instance**](#gt_durable-program-instance) in the **Durable Program Instance Table** on which this operation SHOULD be performed.

**reason**: The value of this element is a description of the reason for performing the **TransactedSuspend** operation.

<a id="Section_3.1.4.9.2.2"></a>
###### 3.1.4.9.2.2 TransactedSuspendResponse

<TransactedSuspendResponse> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has no child elements. The XSD definition of the <TransactedSuspendResponse> element is as follows:

<xs:element name="TransactedSuspendResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<a id="Section_3.1.4.10"></a>
#### 3.1.4.10 Unsuspend

The [**WSDL**](#gt_web-services-description-language-wsdl) definition of the **Unsuspend** operation is as follows:

<wsdl:operation name="Unsuspend">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/Unsuspend"

message="tns:IWorkflowInstanceManagement_Unsuspend_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/UnsuspendResponse"

message="tns:IWorkflowInstanceManagement_Unsuspend_OutputMessage" />

</wsdl:operation>

The **Unsuspend** operation transitions a [**durable program instance**](#gt_durable-program-instance) from the suspended state to the active state. A [**GUID**](#gt_globally-unique-identifier-guid) MUST be passed to the operation as the value of the <instanceId> element to identify the durable program instance on which the operation is to be performed. The operation has no effect if the durable program instance associated with the provided identifier is already in the active state.

A GUID MUST be passed to the operation as the value of the <instanceId> element to identify the durable program instance on which the operation is to be performed. The operation SHOULD return a [**SOAP fault**](#gt_soap-fault) message if one or more of the following conditions exist:

- The value of the <instanceId> element is not in the correct format, as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4.
- The <instanceId> element is absent.
- The value of the <instanceId> element does not exist in the **Durable Program Instance Table** on the server.
- The durable program instance associated with the value of the <instanceId> element is in the completed state.
- The server encounters an internal error while executing the **Unsuspend** operation.
<a id="Section_3.1.4.10.1"></a>
##### 3.1.4.10.1 Messages

The following table summarizes the set of [**WSDL message**](#gt_wsdl-message) definitions that are specific to this operation.

| Message | Description |
| --- | --- |
| [IWorkflowInstanceManagement_Unsuspend_InputMessage](#Section_3.1.4.10.1.1) | Sent from the client to invoke the **Unsuspend** operation. |
| [IWorkflowInstanceManagement_Unsuspend_OutputMessage](#Section_3.1.4.10.1.2) | Sent from the server as a reply to IWorkflowInstanceManagement_Unsuspend_InputMessage. |

<a id="Section_3.1.4.10.1.1"></a>
###### 3.1.4.10.1.1 IWorkflowInstanceManagement_Unsuspend_InputMessage

The IWorkflowInstanceManagement_Unsuspend_InputMessage message is the request message for the **Unsuspend** operation. The client SHOULD send this message to invoke the **Unsuspend** operation.

<wsdl:message name="IWorkflowInstanceManagement_Unsuspend_InputMessage">

<wsdl:part name="parameters" element="tns:Unsuspend" />

</wsdl:message>

**Unsuspend**: The <Unsuspend> element, as specified in section [3.1.4.10.2.1](#Section_3.1.4.10.2.1).

<a id="Section_3.1.4.10.1.2"></a>
###### 3.1.4.10.1.2 IWorkflowInstanceManagement_Unsuspend_OutputMessage

The IWorkflowInstanceManagement_Unsuspend_OutputMessage message is the reply message for the **Unsuspend** operation. The message indicates that the **Unsuspend** operation has successfully completed.

<wsdl:message name="IWorkflowInstanceManagement_Unsuspend_OutputMessage">

<wsdl:part name="parameters" element="tns:UnsuspendResponse" />

</wsdl:message>

**UnsuspendResponse:** The <UnsuspendResponse> element, as specified in section [3.1.4.10.2.2](#Section_3.1.4.10.2.2).

<a id="Section_3.1.4.10.2"></a>
##### 3.1.4.10.2 Elements

The following table summarizes the [**XSD**](#gt_xml-schema-definition-xsd) element definitions that are specific to this operation.

| Element | Description |
| --- | --- |
| <Unsuspend> | Contains the body of the [IWorkflowInstanceManagement_Unsuspend_InputMessage](#Section_3.1.4.10.1.1) message. |
| <UnsuspendResponse> | Contains the body of the [IWorkflowInstanceManagement_Unsuspend_OutputMessage](#Section_3.1.4.10.1.2) message. |

<a id="Section_3.1.4.10.2.1"></a>
###### 3.1.4.10.2.1 Unsuspend

<Unsuspend> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has a child element <instanceId>. The XSD definition of the <Unsuspend> element is as follows:

<xs:element name="Unsuspend">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId"

xmlns:q4="http://schemas.microsoft.com/2003/10/Serialization/" type="q4:guid" />

</xs:sequence>

</xs:complexType>

</xs:element>

**instanceId**: The value of this element is of type [**GUID**](#gt_globally-unique-identifier-guid) and SHOULD match the identifier that is associated with the [**durable program instance**](#gt_durable-program-instance) in the **Durable Program Instance Table** on which this operation SHOULD be performed.

<a id="Section_3.1.4.10.2.2"></a>
###### 3.1.4.10.2.2 UnsuspendResponse

<UnsuspendResponse> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has no child elements. The XSD definition of the <UnsuspendResponse> element is as follows:

<xs:element name="UnsuspendResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<a id="Section_3.1.4.11"></a>
#### 3.1.4.11 TransactedUnsuspend

The [**WSDL**](#gt_web-services-description-language-wsdl) definition of the **TransactedUnsuspend** operation is as follows:

<wsdl:operation name="TransactedUnsuspend">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/TransactedUnsuspend"

message="tns:IWorkflowInstanceManagement_TransactedUnsuspend_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/TransactedUnsuspendResponse"

message="tns:IWorkflowInstanceManagement_TransactedUnsuspend_OutputMessage" />

</wsdl:operation>

**TransactedUnsuspend** is an atomic operation that transitions a [**durable program instance**](#gt_durable-program-instance) from the suspended state to the active state. The operation SHOULD be performed under the scope of a transaction flowed in from the client, if one is flowed in, using a protocol that is recognized by the client and server roles, such as [MS-WSRVCAT](../MS-WSRVCAT/MS-WSRVCAT.md).

If the system maintains the durable state of the durable program instance, then the durable state MUST be updated during execution of this operation. If the durable store is a transactional resource manager, then the same transaction SHOULD be used for the durable state change. Failure to make the durable state change MUST result in failure of the operation.

The durable program instance SHOULD start executing when in the active state. A [**GUID**](#gt_globally-unique-identifier-guid) MUST be passed to the operation as the value of the <instanceId> element to identify the durable program instance on which the operation is to be performed.

The operation SHOULD return a [**SOAP fault**](#gt_soap-fault) message if one or more of the following conditions exist:

- The value of the <instanceId> element is not in the correct format, as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4.
- The <instanceId> element is absent.
- The value of the <instanceId> element does not exist in the **Durable Program Instance Table** on the server.
- The durable program instance associated with the value of the <instanceId> element is in the completed state.
- The server encounters an internal error while executing the **TransactedUnsuspend** operation.
<a id="Section_3.1.4.11.1"></a>
##### 3.1.4.11.1 Messages

The following table summarizes the set of [**WSDL message**](#gt_wsdl-message) definitions that are specific to this operation.

| Message | Description |
| --- | --- |
| [IWorkflowInstanceManagement_TransactedUnsuspend_InputMessage](#Section_3.1.4.11.1.1) | Sent from the client to invoke the **TransactedUnsuspend** operation. |
| [IWorkflowInstanceManagement_TransactedUnsuspend_OutputMessage](#Section_3.1.4.11.1.2) | Sent from the server as a reply to IWorkflowInstanceManagement_TransactedUnsuspend_InputMessage. |

<a id="Section_3.1.4.11.1.1"></a>
###### 3.1.4.11.1.1 IWorkflowInstanceManagement_TransactedUnsuspend_InputMessage

The IWorkflowInstanceManagement_TransactedUnsuspend_InputMessage message is the request message for the **TransactedUnsuspend** operation. The client SHOULD send this message to invoke the **TransactedUnsuspend** operation.

<wsdl:message name="IWorkflowInstanceManagement_TransactedUnsuspend_InputMessage">

<wsdl:part name="parameters" element="tns:TransactedUnsuspend" />

</wsdl:message>

**TransactedUnsuspend**: The <TransactedUnsuspend> element, as specified in section [3.1.4.11.2.1](#Section_3.1.4.11.2.1).

<a id="Section_3.1.4.11.1.2"></a>
###### 3.1.4.11.1.2 IWorkflowInstanceManagement_TransactedUnsuspend_OutputMessage

The IWorkflowInstanceManagement_TransactedUnsuspend_OutputMessage message is the reply message for the **TransactedUnsuspend** operation. The message indicates that the **TransactedUnsuspend** operation has successfully completed.

<wsdl:message name="IWorkflowInstanceManagement_TransactedUnsuspend_OutputMessage">

<wsdl:part name="parameters" element="tns:TransactedUnsuspendResponse" />

</wsdl:message>

<a id="Section_3.1.4.11.2"></a>
##### 3.1.4.11.2 Elements

The following table summarizes the [**XSD**](#gt_xml-schema-definition-xsd) element definitions that are specific to this operation.

| Element | Description |
| --- | --- |
| <TransactedUnsuspend> | Contains the body of the [IWorkflowInstanceManagement_TransactedUnsuspend_InputMessage](#Section_3.1.4.11.1.1) message. |
| <TransactedUnsuspendResponse> | Contains the body of the [IWorkflowInstanceManagement_TransactedUnsuspend_OutputMessage](#Section_3.1.4.11.1.2) message. |

<a id="Section_3.1.4.11.2.1"></a>
###### 3.1.4.11.2.1 TransactedUnsuspend

<TransactedUnsuspend> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has a child element <instanceId>. The XSD definition of the <TransactedUnsuspend> element is as follows:

<xs:element name="TransactedUnsuspend">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId"

xmlns:q4="http://schemas.microsoft.com/2003/10/Serialization/" type="q4:guid" />

</xs:sequence>

</xs:complexType>

</xs:element>

**instanceId**: The value of this element is of type [**GUID**](#gt_globally-unique-identifier-guid) and SHOULD match the identifier that is associated with the [**durable program instance**](#gt_durable-program-instance) in the **Durable Program Instance Table** on which this operation SHOULD be performed.

<a id="Section_3.1.4.11.2.2"></a>
###### 3.1.4.11.2.2 TransactedUnsuspendResponse

<TransactedUnsuspendResponse> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has no child elements. The XSD definition of the <TransactedUnsuspendResponse> element is as follows:

<xs:element name="TransactedUnsuspendResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<a id="Section_3.1.4.12"></a>
#### 3.1.4.12 Update

The [**WSDL**](#gt_web-services-description-language-wsdl) definition of the **Update** operation is as follows:

<wsdl:operation name="Update">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/Update"

message="tns:IWorkflowInstanceManagement_Update_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/UpdateResponse"

message="tns:IWorkflowInstanceManagement_Update_OutputMessage" />

</wsdl:operation>

The **Update** operation SHOULD provide the [**durable program instance**](#gt_durable-program-instance) with the opportunity to update its identity. A [**GUID**](#gt_globally-unique-identifier-guid) MUST be passed to the operation as the value of the <instanceId> element to identify the durable program instance on which the operation is to be performed. The operation SHOULD return a [**SOAP fault**](#gt_soap-fault) message if one or more of the following conditions exist:

- The value of the <instanceId> element is not in the correct format, as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4.
- The <instanceId> element is absent.
- The value of the <instanceId> element does not exist in the **Durable Program Instance Table** on the server.
<a id="Section_3.1.4.12.1"></a>
##### 3.1.4.12.1 Messages

The following table summarizes the set of [**WSDL message**](#gt_wsdl-message) definitions that are specific to this operation.

| Message | Description |
| --- | --- |
| [IWorkflowInstanceManagement_Update_InputMessage](#Section_3.1.4.12.1.1) | Sent from the client to invoke the **Update** operation. |
| [IWorkflowInstanceManagement_Update_OutputMessage](#Section_3.1.4.12.1.2) | Sent from the server as a reply to IWorkflowInstanceManagement_Update_InputMessage. |

<a id="Section_3.1.4.12.1.1"></a>
###### 3.1.4.12.1.1 IWorkflowInstanceManagement_Update_InputMessage

The IWorkflowInstanceManagement_Update_InputMessage message is the request message for the **Update** operation. The client SHOULD send this message to invoke the **Update** operation.

<wsdl:message name="IWorkflowInstanceManagement_Update_InputMessage">

<wsdl:part name="parameters" element="tns:Update" />

</wsdl:message>

**Update**: The <Update> element, as specified in section [3.1.4.12.2.1](#Section_3.1.4.12.2.1).

<a id="Section_3.1.4.12.1.2"></a>
###### 3.1.4.12.1.2 IWorkflowInstanceManagement_Update_OutputMessage

The IWorkflowInstanceManagement_Update_OutputMessage message is the reply message for the **Update** operation. This message indicates that the **Update** operation has successfully completed.

<wsdl:message name="IWorkflowInstanceManagement_Update_OutputMessage">

<wsdl:part name="parameters" element="tns:UpdateResponse" />

</wsdl:message>

**UpdateResponse**: The <UpdateResponse> element, as specified in section [3.1.4.12.2.2](#Section_3.1.4.12.2.2).

<a id="Section_3.1.4.12.2"></a>
##### 3.1.4.12.2 Elements

The following table summarizes the [**XSD**](#gt_xml-schema-definition-xsd) element definitions that are specific to this operation.

| Element | Description |
| --- | --- |
| <Update> | Contains the body of the [IWorkflowInstanceManagement_Update_InputMessage](#Section_3.1.4.12.1.1) message. |
| <UpdateResponse> | Contains the body of the [IWorkflowInstanceManagement_Update_OutputMessage](#Section_3.1.4.12.1.2) message. |

<a id="Section_3.1.4.12.2.1"></a>
###### 3.1.4.12.2.1 Update

<Update> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has two child elements, <instanceId> and <updateDefinitionIdentity>. The XSD definition of the <Update> element is as follows:

<xs:element name="Update">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId" type="q3:guid"

xmlns:q3="http://schemas.microsoft.com/2003/10/Serialization/" />

<xs:element minOccurs="0" name="updatedDefinitionIdentity" nillable="true"

type="q4:WorkflowIdentity"

xmlns:q4="http://schemas.datacontract.org/2004/07/System.Activities" />

</xs:sequence>

</xs:complexType>

</xs:element>

**instanceId**: The value of this element is of type [**GUID**](#gt_globally-unique-identifier-guid) and SHOULD match the identifier that is associated with the [**durable program instance**](#gt_durable-program-instance) in the **Durable Program Instance Table** on which this operation SHOULD be performed.

**updateDefinitionIdentity**: The value of this element is of type WorkflowIdentity and SHOULD match the identity of the durable program instance on which the <Update> operation SHOULD be performed.

<a id="Section_3.1.4.12.2.2"></a>
###### 3.1.4.12.2.2 UpdateResponse

<UpdateResponse> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has no child elements. The XSD definition of the <UpdateResponse> element is as follows:

<xs:element name="UpdateResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<a id="Section_3.1.4.13"></a>
#### 3.1.4.13 TransactedUpdate

The [**WSDL**](#gt_web-services-description-language-wsdl) definition of the **TransactedUpdate** operation is as follows:

<wsdl:operation name="TransactedUpdate">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/TransactedUpdate"

message="tns:IWorkflowInstanceManagement_TransactedUpdate_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/

WorkflowServices/IWorkflowInstanceManagement/TransactedUpdateResponse"

message="tns:IWorkflowInstanceManagement_TransactedUpdate_OutputMessage" />

</wsdl:operation>

**TransactedUpdate** is an atomic operation that SHOULD update the identity of the [**durable program instance**](#gt_durable-program-instance). The operation SHOULD be performed under the scope of a transaction flowed in from the client, if one is flowed in, using a protocol that is recognized by the client and server, such as the one specified in [MS-WSRVCAT](../MS-WSRVCAT/MS-WSRVCAT.md). A [**GUID**](#gt_globally-unique-identifier-guid) MUST be passed to the operation as the value of the <instanceId> element to identify the durable program instance on which the operation is to be performed. The operation SHOULD return a [**SOAP fault**](#gt_soap-fault) message if one or more of the following conditions exist:

- The value of the <instanceId> element is not in the correct format, as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4.
- The <instanceId> element is absent.
- The value of the <instanceId> element does not exist in the **Durable Program Instance Table** on the server.
- The server encounters an internal error while executing the **TransactedUpdate** operation.
<a id="Section_3.1.4.13.1"></a>
##### 3.1.4.13.1 Messages

The following table summarizes the set of [**WSDL message**](#gt_wsdl-message) definitions that are specific to this operation.

| Message | Description |
| --- | --- |
| [IWorkflowInstanceManagement_TransactedUpdate_InputMessage](#Section_3.1.4.13.1.1) | Sent from the client to invoke the **TransactedUpdate** operation. |
| [IWorkflowInstanceManagement_TransactedUpdate_OutputMessage](#Section_3.1.4.13.1.2) | Sent from the server as a reply to the IWorkflowInstanceManagement_TransactedUpdate_InputMessage message. |

<a id="Section_3.1.4.13.1.1"></a>
###### 3.1.4.13.1.1 IWorkflowInstanceManagement_TransactedUpdate_InputMessage

The IWorkflowInstanceManagement_TransactedUpdate_InputMessage message is the request message for the **TransactedUpdate** operation. The client SHOULD send this message to invoke the **TransactedUpdate** operation.

<wsdl:message name="IWorkflowInstanceManagement_TransactedUpdate_InputMessage">

<wsdl:part name="parameters" element="tns:TransactedUpdate" />

</wsdl:message>

**TransactedUpdate**: The <TransactedUpdate> element, as specified in section [3.1.4.13.2.1](#Section_3.1.4.13.2.1).

<a id="Section_3.1.4.13.1.2"></a>
###### 3.1.4.13.1.2 IWorkflowInstanceManagement_TransactedUpdate_OutputMessage

The IWorkflowInstanceManagement_TransactedUpdate_OutputMessage message is the reply message for the **TransactedUpdate** operation. This message indicates that the **TransactedUpdate** operation has successfully completed.

<wsdl:message name="IWorkflowInstanceManagement_TransactedUpdate_OutputMessage">

<wsdl:part name="parameters" element="tns:TransactedUpdateResponse" />

</wsdl:message>

**TransactedUpdateResponse**: The <TransactedUpdateResponse> element, as specified in section [3.1.4.13.2.2](#Section_3.1.4.13.2.2).

<a id="Section_3.1.4.13.2"></a>
##### 3.1.4.13.2 Elements

The following table summarizes the [**XSD**](#gt_xml-schema-definition-xsd) element definitions that are specific to this operation.

| Element | Description |
| --- | --- |
| <TransactedUpdate> | Contains the body of the [IWorkflowInstanceManagement_TransactedUpdate_InputMessage](#Section_3.1.4.13.1.1) message. |
| <TransactedUpdateResponse> | Contains the body of the [IWorkflowInstanceManagement_TransactedUpdate_OutputMessage](#Section_3.1.4.13.1.2) message. |

<a id="Section_3.1.4.13.2.1"></a>
###### 3.1.4.13.2.1 TransactedUpdate

<TransactedUpdate> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has two child elements <instanceId> and <updateDefinitionIdentity>. The XSD definition of the <TransactedUpdate> element is as follows:

<xs:element name="TransactedUpdate">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId" type="q1:guid"

xmlns:q1="http://schemas.microsoft.com/2003/10/Serialization/" />

<xs:element minOccurs="0" name="updatedDefinitionIdentity" nillable="true"

type="q2:WorkflowIdentity"

xmlns:q2="http://schemas.datacontract.org/2004/07/System.Activities" />

</xs:sequence>

</xs:complexType>

</xs:element>

**instanceId**: The value of this element is of type [**GUID**](#gt_globally-unique-identifier-guid) and SHOULD match the identifier that is associated with the [**durable program instance**](#gt_durable-program-instance) in the **Durable Program Instance Table** on which this operation SHOULD be performed.

**updateDefinitionIdentity**: The value of this element is of type WorkflowIdentity and SHOULD match the identity of the durable program instance on which the <TransactedUpdate> operation SHOULD be performed.

<a id="Section_3.1.4.13.2.2"></a>
###### 3.1.4.13.2.2 TransactedUpdateResponse

<TransactedUpdateResponse> is an [**XSD**](#gt_xml-schema-definition-xsd) element that has no child elements. The XSD definition of the <TransactedUpdateResponse> element is as follows:

<xs:element name="TransactedUpdateResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<a id="Section_3.1.5"></a>
### 3.1.5 Timer Events

None.

<a id="Section_3.1.6"></a>
### 3.1.6 Other Local Events

None.

<a id="Section_3.2"></a>
## 3.2 IWorkflowInstanceManagement Client Details

The client side of this protocol is simply a pass-through mechanism. That is, no additional timers or other state is required on the client side of this protocol. Calls made by the higher-layer protocol or application are passed directly to the transport, and the results returned by the transport are passed directly back to the higher-layer protocol or application.

<a id="Section_4"></a>
# 4 Protocol Examples

The following is an example message exchange using the Workflow Instance Management Protocol to suspend a [**durable program instance**](#gt_durable-program-instance).

A SOAP request message is sent from the client to the server:

<s:Envelope xmlns:a="http://www.w3.org/2005/08/addressing" xmlns:s="http://www.w3.org/2003/05/soap-envelope">

<s:Header>

<a:Action s:mustUnderstand="1">http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/Suspend</a:Action>

<a:MessageID>urn:uuid:8afb36d3-9a6e-47df-9313-f005242ea3ed</a:MessageID>

<a:ReplyTo>

<a:Address>http://www.w3.org/2005/08/addressing/anonymous</a:Address>

</a:ReplyTo>

<a:To s:mustUnderstand="1">net.pipe://localhost/workflowControlServiceEndpoint/2308/c50fb3bb-6c52-43b3-af57-8acb43a487b7</a:To>

</s:Header>

<s:Body>

<Suspend xmlns="http://schemas.datacontract.org/2008/10/WorkflowServices">

<instanceId>349be129-fb36-49e5-abb8-76b9831fc7b6</instanceId>

<reason>

Suspend the instance

</reason>

</Suspend>

</s:Body>

</s:Envelope>

A SOAP response message is sent from the server to the client after successfully processing the request:

<s:Envelope xmlns:a="http://www.w3.org/2005/08/addressing" xmlns:s="http://www.w3.org/2003/05/soap-envelope">

<s:Header>

<a:Action s:mustUnderstand="1">http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/SuspendResponse</a:Action>

<a:RelatesTo>urn:uuid:89a7d122-208f-443b-8f16-44bfe7fb684e</a:RelatesTo>

</s:Header>

<s:Body>

<SuspendResponse xmlns="http://schemas.datacontract.org/2008/10/WorkflowServices" />

</s:Body>

</s:Envelope>

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

Secure the Workflow Instance Management Protocol by using the security mechanisms provided by the underlying layers including WS-* security mechanisms, such as [[WSS1]](https://go.microsoft.com/fwlink/?LinkId=131547) and those provided by the transport, such as HTTPS.

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

None.

<a id="Section_6"></a>
# 6 Appendix A: Full WSDL

| WSDL or schema name | Prefix | Section |
| --- | --- | --- |
| Workflow Instance Management Protocol WSDL | wsdl: | Section [6.1](#Section_6.1) |
| Workflow Instance Management Schema for the WSDL | xs: | Section [6.2](#Section_6.2) |
| Workflow Identity Management Schema for the WSDL | xs: | Section [6.3](#Section_6.3) |

For ease of implementation the full [**WSDL**](#gt_web-services-description-language-wsdl) with schemas are provided in the following sections.

<a id="Section_6.1"></a>
## 6.1 Workflow Instance Management Protocol WSDL

<?xml version="1.0" encoding="utf-8"?>

<wsdl:definitions xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:tns="http://schemas.datacontract.org/2008/10/WorkflowServices" xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing" xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:wsap="http://schemas.xmlsoap.org/ws/2004/08/addressing/policy" xmlns:wsaw="http://www.w3.org/2006/05/addressing/wsdl" xmlns:msc="http://schemas.microsoft.com/ws/2005/12/wsdl/contract" xmlns:wsa10="http://www.w3.org/2005/08/addressing" xmlns:wsx="http://schemas.xmlsoap.org/ws/2004/09/mex" xmlns:wsam="http://www.w3.org/2007/05/addressing/metadata" targetNamespace="http://schemas.datacontract.org/2008/10/WorkflowServices" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">

<wsdl:types>

<xsd:schema targetNamespace="http://schemas.datacontract.org/2008/10/WorkflowServices/Imports">

<xsd:import namespace="http://schemas.datacontract.org/2008/10/WorkflowServices" />

<xsd:import namespace="http://schemas.microsoft.com/2003/10/Serialization/" />

</xsd:schema>

</wsdl:types>

<wsdl:message name="IWorkflowInstanceManagement_TransactedUnsuspend_InputMessage">

<wsdl:part name="parameters" element="tns:TransactedUnsuspend" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_TransactedUnsuspend_OutputMessage">

<wsdl:part name="parameters" element="tns:TransactedUnsuspendResponse" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_Abandon_InputMessage">

<wsdl:part name="parameters" element="tns:Abandon" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_Abandon_OutputMessage">

<wsdl:part name="parameters" element="tns:AbandonResponse" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_Cancel_InputMessage">

<wsdl:part name="parameters" element="tns:Cancel" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_Cancel_OutputMessage">

<wsdl:part name="parameters" element="tns:CancelResponse" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_Run_InputMessage">

<wsdl:part name="parameters" element="tns:Run" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_Run_OutputMessage">

<wsdl:part name="parameters" element="tns:RunResponse" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_Suspend_InputMessage">

<wsdl:part name="parameters" element="tns:Suspend" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_Suspend_OutputMessage">

<wsdl:part name="parameters" element="tns:SuspendResponse" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_Terminate_InputMessage">

<wsdl:part name="parameters" element="tns:Terminate" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_Terminate_OutputMessage">

<wsdl:part name="parameters" element="tns:TerminateResponse" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_Unsuspend_InputMessage">

<wsdl:part name="parameters" element="tns:Unsuspend" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_Unsuspend_OutputMessage">

<wsdl:part name="parameters" element="tns:UnsuspendResponse" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_TransactedCancel_InputMessage">

<wsdl:part name="parameters" element="tns:TransactedCancel" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_TransactedCancel_OutputMessage">

<wsdl:part name="parameters" element="tns:TransactedCancelResponse" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_TransactedRun_InputMessage">

<wsdl:part name="parameters" element="tns:TransactedRun" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_TransactedRun_OutputMessage">

<wsdl:part name="parameters" element="tns:TransactedRunResponse" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_TransactedSuspend_InputMessage">

<wsdl:part name="parameters" element="tns:TransactedSuspend" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_TransactedSuspend_OutputMessage">

<wsdl:part name="parameters" element="tns:TransactedSuspendResponse" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_TransactedTerminate_InputMessage">

<wsdl:part name="parameters" element="tns:TransactedTerminate" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_TransactedTerminate_OutputMessage">

<wsdl:part name="parameters" element="tns:TransactedTerminateResponse" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_TransactedUpdate_InputMessage">

<wsdl:part name="parameters" element="tns:TransactedUpdate" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_TransactedUpdate_OutputMessage">

<wsdl:part name="parameters" element="tns:TransactedUpdateResponse" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_Update_InputMessage">

<wsdl:part name="parameters" element="tns:Update" />

</wsdl:message>

<wsdl:message name="IWorkflowInstanceManagement_Update_OutputMessage">

<wsdl:part name="parameters" element="tns:UpdateResponse" />

</wsdl:message>

<wsdl:portType name="IWorkflowInstanceManagement">

<wsdl:operation name="TransactedUnsuspend">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TransactedUnsuspend" message="tns:IWorkflowInstanceManagement_TransactedUnsuspend_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TransactedUnsuspendResponse" message="tns:IWorkflowInstanceManagement_TransactedUnsuspend_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="Abandon">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/Abandon" message="tns:IWorkflowInstanceManagement_Abandon_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/AbandonResponse" message="tns:IWorkflowInstanceManagement_Abandon_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="Cancel">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/Cancel" message="tns:IWorkflowInstanceManagement_Cancel_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/CancelResponse" message="tns:IWorkflowInstanceManagement_Cancel_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="Run">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/Run" message="tns:IWorkflowInstanceManagement_Run_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/RunResponse" message="tns:IWorkflowInstanceManagement_Run_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="Suspend">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/Suspend" message="tns:IWorkflowInstanceManagement_Suspend_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/SuspendResponse" message="tns:IWorkflowInstanceManagement_Suspend_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="Terminate">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/Terminate" message="tns:IWorkflowInstanceManagement_Terminate_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TerminateResponse" message="tns:IWorkflowInstanceManagement_Terminate_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="Unsuspend">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/Unsuspend" message="tns:IWorkflowInstanceManagement_Unsuspend_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/UnsuspendResponse" message="tns:IWorkflowInstanceManagement_Unsuspend_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="TransactedCancel">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TransactedCancel" message="tns:IWorkflowInstanceManagement_TransactedCancel_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TransactedCancelResponse" message="tns:IWorkflowInstanceManagement_TransactedCancel_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="TransactedRun">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TransactedRun" message="tns:IWorkflowInstanceManagement_TransactedRun_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TransactedRunResponse" message="tns:IWorkflowInstanceManagement_TransactedRun_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="TransactedSuspend">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TransactedSuspend" message="tns:IWorkflowInstanceManagement_TransactedSuspend_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TransactedSuspendResponse" message="tns:IWorkflowInstanceManagement_TransactedSuspend_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="TransactedTerminate">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TransactedTerminate" message="tns:IWorkflowInstanceManagement_TransactedTerminate_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TransactedTerminateResponse" message="tns:IWorkflowInstanceManagement_TransactedTerminate_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="Update">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/Update" message="tns:IWorkflowInstanceManagement_Update_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/UpdateResponse" message="tns:IWorkflowInstanceManagement_Update_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="TransactedUpdate">

<wsdl:input wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TransactedUpdate" message="tns:IWorkflowInstanceManagement_TransactedUpdate_InputMessage" />

<wsdl:output wsaw:Action="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TransactedUpdateResponse" message="tns:IWorkflowInstanceManagement_TransactedUpdate_OutputMessage" />

</wsdl:operation>

</wsdl:portType>

<wsdl:binding name="DefaultBinding_IWorkflowInstanceManagement" type="tns:IWorkflowInstanceManagement">

<soap:binding transport="http://schemas.xmlsoap.org/soap/http" />

<wsdl:operation name="TransactedUnsuspend">

<soap:operation soapAction="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TransactedUnsuspend" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="Abandon">

<soap:operation soapAction="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/Abandon" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="Cancel">

<soap:operation soapAction="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/Cancel" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="Run">

<soap:operation soapAction="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/Run" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="Suspend">

<soap:operation soapAction="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/Suspend" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="Terminate">

<soap:operation soapAction="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/Terminate" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="Unsuspend">

<soap:operation soapAction="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/Unsuspend" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="TransactedCancel">

<soap:operation soapAction="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TransactedCancel" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="TransactedRun">

<soap:operation soapAction="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TransactedRun" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="TransactedSuspend">

<soap:operation soapAction="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TransactedSuspend" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="TransactedTerminate">

<soap:operation soapAction="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TransactedTerminate" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="TransactedUpdate">

<soap:operation soapAction="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/TransactedUpdate" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="Update">

<soap:operation soapAction="http://schemas.datacontract.org/2008/10/WorkflowServices/IWorkflowInstanceManagement/Update" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

</wsdl:binding>

</wsdl:definitions>

<a id="Section_6.2"></a>
## 6.2 Workflow Instance Management Schema for the WSDL

<?xml version="1.0" encoding="utf-8"?>

<xs:schema xmlns:tns="http://schemas.datacontract.org/2008/10/WorkflowServices" elementFormDefault="qualified" targetNamespace="http://schemas.datacontract.org/2008/10/WorkflowServices" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:import namespace="http://schemas.microsoft.com/2003/10/Serialization/" />

<xs:element name="TransactedUnsuspend">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId" xmlns:q1="http://schemas.microsoft.com/2003/10/Serialization/" type="q1:guid" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="TransactedUnsuspendResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<xs:element name="Abandon">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId" xmlns:q2="http://schemas.microsoft.com/2003/10/Serialization/" type="q2:guid" />

<xs:element minOccurs="0" name="reason" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="AbandonResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<xs:element name="Cancel">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId" xmlns:q3="http://schemas.microsoft.com/2003/10/Serialization/" type="q3:guid" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="CancelResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<xs:element name="Run">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId" xmlns:q4="http://schemas.microsoft.com/2003/10/Serialization/" type="q4:guid" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="RunResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<xs:element name="Suspend">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId" xmlns:q5="http://schemas.microsoft.com/2003/10/Serialization/" type="q5:guid" />

<xs:element minOccurs="0" name="reason" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="SuspendResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<xs:element name="Terminate">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId" xmlns:q6="http://schemas.microsoft.com/2003/10/Serialization/" type="q6:guid" />

<xs:element minOccurs="0" name="reason" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="TerminateResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<xs:element name="Unsuspend">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId" xmlns:q7="http://schemas.microsoft.com/2003/10/Serialization/" type="q7:guid" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="UnsuspendResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<xs:element name="TransactedCancel">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId" xmlns:q8="http://schemas.microsoft.com/2003/10/Serialization/" type="q8:guid" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="TransactedCancelResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<xs:element name="TransactedRun">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId" xmlns:q9="http://schemas.microsoft.com/2003/10/Serialization/" type="q9:guid" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="TransactedRunResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<xs:element name="TransactedSuspend">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId" xmlns:q10="http://schemas.microsoft.com/2003/10/Serialization/" type="q10:guid" />

<xs:element minOccurs="0" name="reason" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="TransactedSuspendResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<xs:element name="TransactedTerminate">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId" xmlns:q11="http://schemas.microsoft.com/2003/10/Serialization/" type="q11:guid" />

<xs:element minOccurs="0" name="reason" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="TransactedTerminateResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<xs:element name="TransactedUpdate">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId" type="q1:guid" xmlns:q1="http://schemas.microsoft.com/2003/10/Serialization/" />

<xs:element minOccurs="0" name="updatedDefinitionIdentity" nillable="true" type="q2:WorkflowIdentity" xmlns:q2="http://schemas.datacontract.org/2004/07/System.Activities" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="TransactedUpdateResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<xs:element name="Update">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="instanceId" type="q3:guid" xmlns:q3="http://schemas.microsoft.com/2003/10/Serialization/" />

<xs:element minOccurs="0" name="updatedDefinitionIdentity" nillable="true" type="q4:WorkflowIdentity" xmlns:q4="http://schemas.datacontract.org/2004/07/System.Activities" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="UpdateResponse">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

</xs:schema>

<?xml version="1.0" encoding="utf-8"?>

<xs:schema xmlns:tns="http://schemas.microsoft.com/2003/10/Serialization/" attributeFormDefault="qualified" elementFormDefault="qualified" targetNamespace="http://schemas.microsoft.com/2003/10/Serialization/" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:element name="anyType" nillable="true" type="xs:anyType" />

<xs:element name="anyURI" nillable="true" type="xs:anyURI" />

<xs:element name="base64Binary" nillable="true" type="xs:base64Binary" />

<xs:element name="boolean" nillable="true" type="xs:boolean" />

<xs:element name="byte" nillable="true" type="xs:byte" />

<xs:element name="dateTime" nillable="true" type="xs:dateTime" />

<xs:element name="decimal" nillable="true" type="xs:decimal" />

<xs:element name="double" nillable="true" type="xs:double" />

<xs:element name="float" nillable="true" type="xs:float" />

<xs:element name="int" nillable="true" type="xs:int" />

<xs:element name="long" nillable="true" type="xs:long" />

<xs:element name="QName" nillable="true" type="xs:QName" />

<xs:element name="short" nillable="true" type="xs:short" />

<xs:element name="string" nillable="true" type="xs:string" />

<xs:element name="unsignedByte" nillable="true" type="xs:unsignedByte" />

<xs:element name="unsignedInt" nillable="true" type="xs:unsignedInt" />

<xs:element name="unsignedLong" nillable="true" type="xs:unsignedLong" />

<xs:element name="unsignedShort" nillable="true" type="xs:unsignedShort" />

<xs:element name="char" nillable="true" type="tns:char" />

<xs:simpleType name="char">

<xs:restriction base="xs:int" />

</xs:simpleType>

<xs:element name="duration" nillable="true" type="tns:duration" />

<xs:simpleType name="duration">

<xs:restriction base="xs:duration">

<xs:pattern value="\-?P(\d*D)?(T(\d*H)?(\d*M)?(\d*(\.\d*)?S)?)?" />

<xs:minInclusive value="-P10675199DT2H48M5.4775808S" />

<xs:maxInclusive value="P10675199DT2H48M5.4775807S" />

</xs:restriction>

</xs:simpleType>

<xs:element name="guid" nillable="true" type="tns:guid" />

<xs:simpleType name="guid">

<xs:restriction base="xs:string">

<xs:pattern value="[\da-fA-F]{8}-[\da-fA-F]{4}-[\da-fA-F]{4}-[\da-fA-F]{4}-[\da-fA-F]{12}" />

</xs:restriction>

</xs:simpleType>

<xs:attribute name="FactoryType" type="xs:QName" />

<xs:attribute name="Id" type="xs:ID" />

<xs:attribute name="Ref" type="xs:IDREF" />

</xs:schema>

<a id="Section_6.3"></a>
## 6.3 Workflow Identity Management Schema for the WSDL

<?xml version="1.0" encoding="utf-8"?>

<xs:schema xmlns:tns="http://schemas.datacontract.org/2004/07/System.Activities" targetNamespace="http://schemas.datacontract.org/2004/07/System.Activities" xmlns:xs="http://www.w3.org/2001/XMLSchema" elementFormDefault="qualified">

<xs:complexType name="WorkflowIdentity">

<xs:sequence>

<xs:element name="name" type="xs:string" minOccurs="0" nillable="true">

<xs:annotation>

<xs:appinfo>

<DefaultValue xmlns="http://schemas.microsoft.com/2003/10/Serialization/" EmitDefaultValue="false"/>

</xs:appinfo>

</xs:annotation>

</xs:element>

<xs:element name="package" type="xs:string" minOccurs="0" nillable="true">

<xs:annotation>

<xs:appinfo>

<DefaultValue xmlns="http://schemas.microsoft.com/2003/10/Serialization/" EmitDefaultValue="false"/>

</xs:appinfo>

</xs:annotation>

</xs:element>

<xs:element name="version" type="xs:string" minOccurs="0" nillable="true">

<xs:annotation>

<xs:appinfo>

<DefaultValue xmlns="http://schemas.microsoft.com/2003/10/Serialization/" EmitDefaultValue="false"/>

</xs:appinfo>

</xs:annotation>

</xs:element>

</xs:sequence>

</xs:complexType>

<xs:element name="WorkflowIdentity" type="tns:WorkflowIdentity" nillable="true"/> </xs:schema>

<a id="Section_7"></a>
# 7 Appendix B: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

This document specifies version-specific details in the Microsoft .NET Framework. For information about which versions of .NET Framework are available in each released Windows product or as supplemental software, see [MS-NETOD](../MS-NETOD/MS-NETOD.md) section 4.

The terms "earlier" and "later", when used with a product version, refer to either all preceding versions or all subsequent versions, respectively. The term "through" refers to the inclusive range of versions. Applicable Microsoft products are listed chronologically in this section.

- Microsoft .NET Framework 4.0
- Microsoft .NET Framework 4.5
- Microsoft .NET Framework 4.6
- Microsoft .NET Framework 4.7
- Microsoft .NET Framework 4.8
Exceptions, if any, are noted in this section. If an update version, service pack or Knowledge Base (KB) number appears with a product name, the behavior changed in that update. The new behavior also applies to subsequent updates unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<1> Section 3.1.1.3: The .NET Framework 4.0 implementation of the Workflow Instance Management Protocol includes features that interact with [**durable program instances**](#gt_durable-program-instance) in the system and cause the following changes to their state:

- Persistence: The persistence of the complete state of a durable program instance to a persistence store, thus causing the creation of a "durable instance" which can later be restored in memory.
- Unhandled Exception behavior: In the case of an unhandled exception from a durable program instance, a preconfigured set of actions can be performed on the in-memory, or durable, durable program instance. For example, the user can configure the system to cause the errant durable program instance to transition to the suspended state.
- Idle behavior: The persistence of durable program instances that are blocked on some stimuli after a user-configured duration of time, and eventually causing the unloading of these durable program instances from memory after a user-configured duration of time.
These features result in the following consequences for the .NET Framework 4.0 implementation of the Workflow Instance Management Protocol:

- The **Abandon** operation disposes the in-memory durable program instance. If the Persistence feature is enabled and a persistence record exists for the durable program instance, then the durable program instance can be reloaded from the persistence store and execution can be continued from that point. The state of the reloaded durable program instance will be the state that was stored in the persisted record for the Instance. If no persistence record exists for the durable program instance, then the durable program instance is effectively transitioned to the final state.
- The **Run** and **TransactedRun** operations load the durable program instance from the persistence store if not already in memory, the Persistence feature is enabled, and a persistence record for the durable program instance exists in the store. These two operations have no effect if the durable program instance is already in memory.
- The **TransactedSuspend**, **TransactedCancel**, **TransactedTerminate**, and **TransactedUnsuspend** operations persist the durable program instance if the Persistence feature is enabled. The **Suspend**, **Cancel**, **Terminate**, and **Unsuspend** operations do not persist the durable program instance, and therefore, the durable state will not be up-to-date after these non-transacted operations. As a result, a sequence of commands, such as **Suspend**, **Abandon**, **Run**, might result in the in-memory durable program instance being in a different state as compared with a sequence of commands, such as **TransactedSuspend**, **Abandon**, **Run**, since the **Abandon** operation will remove the in-memory instance and the **Run** operation will reload the durable instance from the last persisted record.
<2> Section 3.1.4.2: The .NET Framework 4.0 implementation supports the WS-AtomicTransaction (WS-AT) Version 1.0 Protocol Extensions [MS-WSRVCAT](../MS-WSRVCAT/MS-WSRVCAT.md) and the MSDTC Connection Manager: OleTx Transaction Protocol [MS-DTCO](../MS-DTCO/MS-DTCO.md) for flowing transactions using the **TransactedRun**, **TransactedSuspend**, **TransactedUnsuspend**, **TransactedCancel**, and **TransactedTerminate** operations. If no transaction is flowed in, a local transaction is created to provide atomic semantics.

**Note:** In Windows Server 2008 operating system with Service Pack 2 (SP2), .NET Framework is not supported in the Server Core Role. In Windows Server 2008 R2 operating system with Service Pack 1 (SP1) and later, .NET Framework 4.0 is not supported, and .NET Framework has limited support in the Server Core Role. Support for .NET Framework 4.7 was introduced in the Windows 10 v1703 operating system. For more information on support see [[MSDOCS-.NETSysReqs]](https://go.microsoft.com/fwlink/?linkid=861790). For related information on Microsoft Lifecycle Policy for .NET Framework, see [[MSFT-LifecyclePolicy]](https://go.microsoft.com/fwlink/?linkid=861933).

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
| [3.1.4.2](#Section_3.1.4.2) TransactedRun | 8336 : Updated product support note in product behavior note 2. | Major |
| [7](#Section_7) Appendix B: Product Behavior | 8336 : Added boilerplate statement for product note language: and later. | Major |
| 7 Appendix B: Product Behavior | Added .NET 4.8 to the list of applicable products. | Major |

