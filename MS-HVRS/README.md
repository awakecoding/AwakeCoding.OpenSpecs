# [MS-HVRS]: Hyper-V Remote Storage Profile

Last updated: 9/16/2024

Table of Contents

<details>
<summary>1 Introduction</summary>

- [1 Introduction](#Section_1)
  - [1.1 Glossary](#Section_1.1)
  - [1.2 References](#Section_1.2)
    - [1.2.1 Normative References](#Section_1.2.1)
    - [1.2.2 Informative References](#Section_1.2.2)
  - [1.3 Microsoft Implementations](#Section_1.3)
  - [1.4 Standards Support Requirements](#Section_1.4)
  - [1.5 Notation](#Section_1.5)
</details>

<details>
<summary>2 Standards Support Statements</summary>

- [2 Standards Support Statements](#Section_2)
  - [2.1 Normative Variations](#Section_2.1)
  - [2.2 Clarifications](#Section_2.2)
</details>
[2.2.1 [MS-SMB2] Server Message Block (SMB) Protocols Version 2 and 3 6](#_Toc178222546)

[2.2.2 [MS-FSA] File System Algorithms 6](#_Toc178222547)

[2.2.3 [MS-RSVD] Remote Shared Virtual Disk Protocol 7](#_Toc178222548)

[2.2.4 [MS-SQOS] Storage Quality of Service Protocol 8](#_Toc178222549)

[2.2.5 [MS-FSRVP] File Server Remote VSS Protocol 8](#_Toc178222550)

[2.3 Error Handling](#Section_2.3)
[2.4 Security](#Section_2.4)
[3 Change Tracking](#Section_3)
<a id="Section_1"></a>
# 1 Introduction

Microsoft Hyper-V supports virtual machines whose associated files are hosted on Server Message Block (SMB) Version 3 shares. These files can include virtual machine configuration files, virtual machine saved-state files, and virtual hard-disk files. The Hyper-V Remote Storage Profile clarifies the level of support that Hyper-V requires from SMB Version 3 servers that host these types of files.

<a id="Section_1.1"></a>
## 1.1 Glossary

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[MS-FSA] Microsoft Corporation, "[File System Algorithms](../MS-FSA/MS-FSA.md)".

[MS-FSCC] Microsoft Corporation, "[File System Control Codes](../MS-FSCC/MS-FSCC.md)".

[MS-FSRVP] Microsoft Corporation, "[File Server Remote VSS Protocol](../MS-FSRVP/MS-FSRVP.md)".

[MS-RSVD] Microsoft Corporation, "[Remote Shared Virtual Disk Protocol](../MS-RSVD/MS-RSVD.md)".

[MS-SMB2] Microsoft Corporation, "[Server Message Block (SMB) Protocol Versions 2 and 3](../MS-SMB2/MS-SMB2.md)".

[MS-SQOS] Microsoft Corporation, "[Storage Quality of Service Protocol](../MS-SQOS/MS-SQOS.md)".

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

None.

<a id="Section_1.3"></a>
## 1.3 Microsoft Implementations

- Windows 8 operating system
- Windows Server 2012 operating system
- Windows 8.1 operating system
- Windows Server 2012 R2 operating system
- Windows 10 operating system
- Windows Server 2016 operating system
- Windows Server 2019 operating system
- Windows Server 2022 operating system
- Windows 11 operating system
- Windows Server 2025 operating system
<a id="Section_1.4"></a>
## 1.4 Standards Support Requirements

The conformance requirements for [MS-SMB2](../MS-SMB2/MS-SMB2.md), [MS-FSA](../MS-FSA/MS-FSA.md), [MS-RSVD](../MS-RSVD/MS-RSVD.md), [MS-SQOS](../MS-SQOS/MS-SQOS.md), and [MS-FSRVP](../MS-FSRVP/MS-FSRVP.md) are that all required portions of the specifications are implemented according to the specification, and any optional portions that are included are implemented according to the specification.

<a id="Section_1.5"></a>
## 1.5 Notation

The following notations are used to identify clarifications in section [2.2](#Section_2.2):

| Notation | Explanation |
| --- | --- |
| C#### | This notation identifies a clarification of ambiguity in the target specification. This includes imprecise statements, omitted information, discrepancies, and errata. This does not include data formatting clarifications. |

<a id="Section_2"></a>
# 2 Standards Support Statements

<a id="Section_2.1"></a>
## 2.1 Normative Variations

None.

<a id="Section_2.2"></a>
## 2.2 Clarifications

The following subsections identify clarifications relative to [MS-SMB2](../MS-SMB2/MS-SMB2.md), [MS-FSA](../MS-FSA/MS-FSA.md), [MS-RSVD](../MS-RSVD/MS-RSVD.md), [MS-SQOS](../MS-SQOS/MS-SQOS.md) and [MS-FSRVP](../MS-FSRVP/MS-FSRVP.md).

### [MS-SMB2] Server Message Block (SMB) Protocols Version 2 and 3

C0001:

Windows 8.1 operating system, Windows Server 2012 R2 operating system, Windows 10 operating system, Windows Server 2016 operating system, Windows Server 2019 operating system, Windows Server 2022 operating system, Windows 11 operating system and Windows Server 2025 operating system

The server MUST support the SMB 3.0 or higher dialect, as described in [MS-SMB2](../MS-SMB2/MS-SMB2.md) section 1.7.

C0002:

Windows 8.1, Windows Server 2012 R2, Windows 10, Windows Server 2016, Windows Server 2019, Windows Server 2022, Windows 11 and Windows Server 2025

The server MUST support persistent handles.

C0003:

Windows 8 operating system, Windows Server 2012 operating system, Windows 8.1, Windows Server 2012 R2, Windows 10, Windows Server 2016, Windows Server 2019, Windows Server 2022, Windows 11 and Windows Server 2025

The server MUST support the FSCTL_LMR_REQUEST_RESILIENCY command.

### [MS-FSA] File System Algorithms

C0004:

Windows 8, Windows Server 2012, Windows 8.1, Windows Server 2012 R2, Windows 10, Windows Server 2016, Windows Server 2019, Windows Server 2022, Windows 11 and Windows Server 2025

If the server doesn't support the FSCTL_OFFLOAD_READ and FSCTL_OFFLOAD_WRITE commands, as specified in [MS-FSA](../MS-FSA/MS-FSA.md) sections 2.1.5.10.20 and 2.1.5.10.21, then any small computer system interface (SCSI) ODX commands initiated by the virtual machine operating system fail.

If the server supports the FSCTL_OFFLOAD_READ and FSCTL_OFFLOAD_WRITE commands, then Hyper-V can issue these commands to optimize the performance of virtual disk creation, merge, compaction, and mirroring operations.

C0005:

Windows 8, Windows Server 2012, Windows 8.1, Windows Server 2012 R2, Windows 10, Windows Server 2016, Windows Server 2019, Windows Server 2022, Windows 11 and Windows Server 2025

If the server supports the FSCTL_SET_ZERO_DATA command, as specified in [MS-FSA] section 2.1.5.10.39, then Hyper-V can issue this command to optimize the performance of virtual-disk-creation operations.

C0006:

Windows 8, Windows Server 2012, Windows 8.1, Windows Server 2012 R2, Windows 10, Windows Server 2016, Windows Server 2019, Windows Server 2022, Windows 11 and Windows Server 2025

If the server doesn't support the FSCTL_FILE_LEVEL_TRIM command, as specified in [MS-FSA] section 2.1.5.10.6:

- Support for the SCSI UNMAP command is still advertised to the virtual machine operating system in the response to SCSI INQUIRY commands.
- SCSI UNMAP requests initiated by the virtual machine operating system are still completed successfully to the virtual machine operating system, but they have no side effects (they are not translated into corresponding file system requests to release space allocated to the files backing the virtual disks attached to the virtual machine).
C0007:

Windows 10, Windows Server 2016, Windows Server 2019, Windows Server 2022, Windows 11 and Windows Server 2025

If the server advertises the FILE_SUPPORTS_BLOCK_REFCOUNTING flag for a given Open (as defined in FILE_FS_ATTRIBUTE_INFORMATION), the server MUST support the FSCTL_DUPLICATE_EXTENTS_TO_FILE command, as specified in [MS-FSA] section 2.1.5.10.4.

C0008:

Windows 8, Windows Server 2012, Windows 8.1, Windows Server 2012 R2, Windows 10, Windows Server 2016, Windows Server 2019, Windows Server 2022, Windows 11 and Windows Server 2025

Hyper-V doesn't support virtual disk files with any of the following flags set, as specified in [MS-FSCC](../MS-FSCC/MS-FSCC.md) section 2.6:

- FILE_ATTRIBUTE_COMPRESSED
- FILE_ATTRIBUTE_ENCRYPTED
- FILE_ATTRIBUTE_SPARSE_FILE
C0009:

Windows 10 v1703 operating system, Windows Server 2019, Windows Server 2022, Windows 11 and Windows Server 2025

If the server advertises the FILE_SUPPORTS_SPARSE_VDL flag for a given Open (as specified in [MS-FSCC] section 2.5.1), Hyper-V will support virtual disk files with the FILE_ATTRIBUTE_SPARSE_FILE flag set, as specified in [MS-FSCC] section 2.6.

### [MS-RSVD] Remote Shared Virtual Disk Protocol

C0010:

Windows 8.1, Windows Server 2012 R2, Windows 10, Windows Server 2016, Windows Server 2019, Windows Server 2022, Windows 11 and Windows Server 2025

If the server doesn't support the Remote Shared Virtual Disk Protocol [MS-RSVD](../MS-RSVD/MS-RSVD.md):

- The operation of configuring a Hyper-V virtual machine to be attached to a remote shared virtual disk fails.
- The operation of starting a Hyper-V virtual machine configured to be attached to a remote shared virtual disk fails.
If the server doesn't support version 2 of the Remote Shared Virtual Disk Protocol [MS-RSVD]:

- The backup operation of a remote shared virtual disk, including checkpoints and resilient change tracking, fails.
- The replica operation of a remote shared virtual disk fails.
- Resizing a remote shared virtual disk fails.
### [MS-SQOS] Storage Quality of Service Protocol

C0011:

Windows 10, Windows Server 2016, Windows Server 2019, Windows Server 2022, Windows 11 and Windows Server 2025

If the server doesn't support the Storage Quality of Service Protocol [MS-SQOS](../MS-SQOS/MS-SQOS.md), then any storage Quality of Service policies associated with the virtual disks of a Hyper-V virtual machine are ignored and never enforced. However, this doesn't prevent the virtual machine from successfully starting.

### [MS-FSRVP] File Server Remote VSS Protocol

C0012:

Windows 8, Windows Server 2012, Windows 8.1, Windows Server 2012 R2, Windows 10, Windows Server 2016, Windows Server 2019, Windows Server 2022, Windows 11 and Windows Server 2025

If the server doesn't support the File Server Remote VSS Protocol [MS-FSRVP](../MS-FSRVP/MS-FSRVP.md):

- The operation of a Hyper-V host–initiated backup of a virtual machine attached to a remote shared virtual disk fails.
<a id="Section_2.3"></a>
## 2.3 Error Handling

None.

<a id="Section_2.4"></a>
## 2.4 Security

None.

<a id="Section_3"></a>
# 3 Change Tracking

No table of changes is available. The document is either new or has had no changes since its last release.

