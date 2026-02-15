# [MS-ADA1]: Active Directory Schema Attributes A-L

Last updated: 9/12/2018

Table of Contents

<details>
<summary>1 Introduction</summary>

- [1 Introduction](#Section_1)
  - [1.1 References](#Section_1.1)
</details>

<details>
<summary>2 Attributes</summary>

- [2 Attributes](#Section_2)
  - [2.1 Attribute accountExpires](#Section_2.1)
  - [2.2 Attribute accountNameHistory](#Section_2.2)
  - [2.3 Attribute aCSAggregateTokenRatePerUser](#Section_2.3)
  - [2.4 Attribute aCSAllocableRSVPBandwidth](#Section_2.4)
  - [2.5 Attribute aCSCacheTimeout](#Section_2.5)
  - [2.6 Attribute aCSDirection](#Section_2.6)
  - [2.7 Attribute aCSDSBMDeadTime](#Section_2.7)
  - [2.8 Attribute aCSDSBMPriority](#Section_2.8)
  - [2.9 Attribute aCSDSBMRefresh](#Section_2.9)
  - [2.10 Attribute aCSEnableACSService](#Section_2.10)
  - [2.11 Attribute aCSEnableRSVPAccounting](#Section_2.11)
  - [2.12 Attribute aCSEnableRSVPMessageLogging](#Section_2.12)
  - [2.13 Attribute aCSEventLogLevel](#Section_2.13)
  - [2.14 Attribute aCSIdentityName](#Section_2.14)
  - [2.15 Attribute aCSMaxAggregatePeakRatePerUser](#Section_2.15)
  - [2.16 Attribute aCSMaxDurationPerFlow](#Section_2.16)
  - [2.17 Attribute aCSMaximumSDUSize](#Section_2.17)
  - [2.18 Attribute aCSMaxNoOfAccountFiles](#Section_2.18)
  - [2.19 Attribute aCSMaxNoOfLogFiles](#Section_2.19)
  - [2.20 Attribute aCSMaxPeakBandwidth](#Section_2.20)
  - [2.21 Attribute aCSMaxPeakBandwidthPerFlow](#Section_2.21)
  - [2.22 Attribute aCSMaxSizeOfRSVPAccountFile](#Section_2.22)
  - [2.23 Attribute aCSMaxSizeOfRSVPLogFile](#Section_2.23)
  - [2.24 Attribute aCSMaxTokenBucketPerFlow](#Section_2.24)
  - [2.25 Attribute aCSMaxTokenRatePerFlow](#Section_2.25)
  - [2.26 Attribute aCSMinimumDelayVariation](#Section_2.26)
  - [2.27 Attribute aCSMinimumLatency](#Section_2.27)
  - [2.28 Attribute aCSMinimumPolicedSize](#Section_2.28)
  - [2.29 Attribute aCSNonReservedMaxSDUSize](#Section_2.29)
  - [2.30 Attribute aCSNonReservedMinPolicedSize](#Section_2.30)
  - [2.31 Attribute aCSNonReservedPeakRate](#Section_2.31)
  - [2.32 Attribute aCSNonReservedTokenSize](#Section_2.32)
  - [2.33 Attribute aCSNonReservedTxLimit](#Section_2.33)
  - [2.34 Attribute aCSNonReservedTxSize](#Section_2.34)
  - [2.35 Attribute aCSPermissionBits](#Section_2.35)
  - [2.36 Attribute aCSPolicyName](#Section_2.36)
  - [2.37 Attribute aCSPriority](#Section_2.37)
  - [2.38 Attribute aCSRSVPAccountFilesLocation](#Section_2.38)
  - [2.39 Attribute aCSRSVPLogFilesLocation](#Section_2.39)
  - [2.40 Attribute aCSServerList](#Section_2.40)
  - [2.41 Attribute aCSServiceType](#Section_2.41)
  - [2.42 Attribute aCSTimeOfDay](#Section_2.42)
  - [2.43 Attribute aCSTotalNoOfFlows](#Section_2.43)
  - [2.44 Attribute additionalTrustedServiceNames](#Section_2.44)
  - [2.45 Attribute addressBookRoots](#Section_2.45)
  - [2.46 Attribute addressBookRoots2](#Section_2.46)
  - [2.47 Attribute addressEntryDisplayTable](#Section_2.47)
  - [2.48 Attribute addressEntryDisplayTableMSDOS](#Section_2.48)
  - [2.49 Attribute addressSyntax](#Section_2.49)
  - [2.50 Attribute addressType](#Section_2.50)
  - [2.51 Attribute adminContextMenu](#Section_2.51)
  - [2.52 Attribute adminCount](#Section_2.52)
  - [2.53 Attribute adminDescription](#Section_2.53)
  - [2.54 Attribute adminDisplayName](#Section_2.54)
  - [2.55 Attribute adminMultiselectPropertyPages](#Section_2.55)
  - [2.56 Attribute adminPropertyPages](#Section_2.56)
  - [2.57 Attribute allowedAttributes](#Section_2.57)
  - [2.58 Attribute allowedAttributesEffective](#Section_2.58)
  - [2.59 Attribute allowedChildClasses](#Section_2.59)
  - [2.60 Attribute allowedChildClassesEffective](#Section_2.60)
  - [2.61 Attribute altSecurityIdentities](#Section_2.61)
  - [2.62 Attribute aNR](#Section_2.62)
  - [2.63 Attribute applicationName](#Section_2.63)
  - [2.64 Attribute appliesTo](#Section_2.64)
  - [2.65 Attribute appSchemaVersion](#Section_2.65)
  - [2.66 Attribute assetNumber](#Section_2.66)
  - [2.67 Attribute assistant](#Section_2.67)
  - [2.68 Attribute associatedDomain](#Section_2.68)
  - [2.69 Attribute associatedName](#Section_2.69)
  - [2.70 Attribute assocNTAccount](#Section_2.70)
  - [2.71 Attribute attributeCertificateAttribute](#Section_2.71)
  - [2.72 Attribute attributeDisplayNames](#Section_2.72)
  - [2.73 Attribute attributeID](#Section_2.73)
  - [2.74 Attribute attributeSecurityGUID](#Section_2.74)
  - [2.75 Attribute attributeSyntax](#Section_2.75)
  - [2.76 Attribute attributeTypes](#Section_2.76)
  - [2.77 Attribute audio](#Section_2.77)
  - [2.78 Attribute auditingPolicy](#Section_2.78)
  - [2.79 Attribute authenticationOptions](#Section_2.79)
  - [2.80 Attribute authorityRevocationList](#Section_2.80)
  - [2.81 Attribute auxiliaryClass](#Section_2.81)
  - [2.82 Attribute badPasswordTime](#Section_2.82)
  - [2.83 Attribute badPwdCount](#Section_2.83)
  - [2.84 Attribute birthLocation](#Section_2.84)
  - [2.85 Attribute bootFile](#Section_2.85)
  - [2.86 Attribute bootParameter](#Section_2.86)
  - [2.87 Attribute bridgeheadServerListBL](#Section_2.87)
  - [2.88 Attribute bridgeheadTransportList](#Section_2.88)
  - [2.89 Attribute buildingName](#Section_2.89)
  - [2.90 Attribute builtinCreationTime](#Section_2.90)
  - [2.91 Attribute builtinModifiedCount](#Section_2.91)
  - [2.92 Attribute businessCategory](#Section_2.92)
  - [2.93 Attribute bytesPerMinute](#Section_2.93)
  - [2.94 Attribute c](#Section_2.94)
  - [2.95 Attribute cACertificate](#Section_2.95)
  - [2.96 Attribute cACertificateDN](#Section_2.96)
  - [2.97 Attribute cAConnect](#Section_2.97)
  - [2.98 Attribute canonicalName](#Section_2.98)
  - [2.99 Attribute canUpgradeScript](#Section_2.99)
  - [2.100 Attribute carLicense](#Section_2.100)
  - [2.101 Attribute catalogs](#Section_2.101)
  - [2.102 Attribute categories](#Section_2.102)
  - [2.103 Attribute categoryId](#Section_2.103)
  - [2.104 Attribute cAUsages](#Section_2.104)
  - [2.105 Attribute cAWEBURL](#Section_2.105)
  - [2.106 Attribute certificateAuthorityObject](#Section_2.106)
  - [2.107 Attribute certificateRevocationList](#Section_2.107)
  - [2.108 Attribute certificateTemplates](#Section_2.108)
  - [2.109 Attribute classDisplayName](#Section_2.109)
  - [2.110 Attribute cn](#Section_2.110)
  - [2.111 Attribute co](#Section_2.111)
  - [2.112 Attribute codePage](#Section_2.112)
  - [2.113 Attribute cOMClassID](#Section_2.113)
  - [2.114 Attribute cOMCLSID](#Section_2.114)
  - [2.115 Attribute cOMInterfaceID](#Section_2.115)
  - [2.116 Attribute comment](#Section_2.116)
  - [2.117 Attribute cOMOtherProgId](#Section_2.117)
  - [2.118 Attribute company](#Section_2.118)
  - [2.119 Attribute cOMProgID](#Section_2.119)
  - [2.120 Attribute cOMTreatAsClassId](#Section_2.120)
  - [2.121 Attribute cOMTypelibId](#Section_2.121)
  - [2.122 Attribute cOMUniqueLIBID](#Section_2.122)
  - [2.123 Attribute contentIndexingAllowed](#Section_2.123)
  - [2.124 Attribute contextMenu](#Section_2.124)
  - [2.125 Attribute controlAccessRights](#Section_2.125)
  - [2.126 Attribute cost](#Section_2.126)
  - [2.127 Attribute countryCode](#Section_2.127)
  - [2.128 Attribute createDialog](#Section_2.128)
  - [2.129 Attribute createTimeStamp](#Section_2.129)
  - [2.130 Attribute createWizardExt](#Section_2.130)
  - [2.131 Attribute creationTime](#Section_2.131)
  - [2.132 Attribute creationWizard](#Section_2.132)
  - [2.133 Attribute creator](#Section_2.133)
  - [2.134 Attribute cRLObject](#Section_2.134)
  - [2.135 Attribute cRLPartitionedRevocationList](#Section_2.135)
  - [2.136 Attribute crossCertificatePair](#Section_2.136)
  - [2.137 Attribute currentLocation](#Section_2.137)
  - [2.138 Attribute currentParentCA](#Section_2.138)
  - [2.139 Attribute currentValue](#Section_2.139)
  - [2.140 Attribute currMachineId](#Section_2.140)
  - [2.141 Attribute dBCSPwd](#Section_2.141)
  - [2.142 Attribute dc](#Section_2.142)
  - [2.143 Attribute defaultClassStore](#Section_2.143)
  - [2.144 Attribute defaultGroup](#Section_2.144)
  - [2.145 Attribute defaultHidingValue](#Section_2.145)
  - [2.146 Attribute defaultLocalPolicyObject](#Section_2.146)
  - [2.147 Attribute defaultObjectCategory](#Section_2.147)
  - [2.148 Attribute defaultPriority](#Section_2.148)
  - [2.149 Attribute defaultSecurityDescriptor](#Section_2.149)
  - [2.150 Attribute deltaRevocationList](#Section_2.150)
  - [2.151 Attribute department](#Section_2.151)
  - [2.152 Attribute departmentNumber](#Section_2.152)
  - [2.153 Attribute description](#Section_2.153)
  - [2.154 Attribute desktopProfile](#Section_2.154)
  - [2.155 Attribute destinationIndicator](#Section_2.155)
  - [2.156 Attribute dhcpClasses](#Section_2.156)
  - [2.157 Attribute dhcpFlags](#Section_2.157)
  - [2.158 Attribute dhcpIdentification](#Section_2.158)
  - [2.159 Attribute dhcpMask](#Section_2.159)
  - [2.160 Attribute dhcpMaxKey](#Section_2.160)
  - [2.161 Attribute dhcpObjDescription](#Section_2.161)
  - [2.162 Attribute dhcpObjName](#Section_2.162)
  - [2.163 Attribute dhcpOptions](#Section_2.163)
  - [2.164 Attribute dhcpProperties](#Section_2.164)
  - [2.165 Attribute dhcpRanges](#Section_2.165)
  - [2.166 Attribute dhcpReservations](#Section_2.166)
  - [2.167 Attribute dhcpServers](#Section_2.167)
  - [2.168 Attribute dhcpSites](#Section_2.168)
  - [2.169 Attribute dhcpState](#Section_2.169)
  - [2.170 Attribute dhcpSubnets](#Section_2.170)
  - [2.171 Attribute dhcpType](#Section_2.171)
  - [2.172 Attribute dhcpUniqueKey](#Section_2.172)
  - [2.173 Attribute dhcpUpdateTime](#Section_2.173)
  - [2.174 Attribute directReports](#Section_2.174)
  - [2.175 Attribute displayName](#Section_2.175)
  - [2.176 Attribute displayNamePrintable](#Section_2.176)
  - [2.177 Attribute distinguishedName](#Section_2.177)
  - [2.178 Attribute dITContentRules](#Section_2.178)
  - [2.179 Attribute division](#Section_2.179)
  - [2.180 Attribute dMDLocation](#Section_2.180)
  - [2.181 Attribute dmdName](#Section_2.181)
  - [2.182 Attribute dNReferenceUpdate](#Section_2.182)
  - [2.183 Attribute dnsAllowDynamic](#Section_2.183)
  - [2.184 Attribute dnsAllowXFR](#Section_2.184)
  - [2.185 Attribute dNSHostName](#Section_2.185)
  - [2.186 Attribute dnsNotifySecondaries](#Section_2.186)
  - [2.187 Attribute dNSProperty](#Section_2.187)
  - [2.188 Attribute dnsRecord](#Section_2.188)
  - [2.189 Attribute dnsRoot](#Section_2.189)
  - [2.190 Attribute dnsSecureSecondaries](#Section_2.190)
  - [2.191 Attribute dNSTombstoned](#Section_2.191)
  - [2.192 Attribute documentAuthor](#Section_2.192)
  - [2.193 Attribute documentIdentifier](#Section_2.193)
  - [2.194 Attribute documentLocation](#Section_2.194)
  - [2.195 Attribute documentPublisher](#Section_2.195)
  - [2.196 Attribute documentTitle](#Section_2.196)
  - [2.197 Attribute documentVersion](#Section_2.197)
  - [2.198 Attribute domainCAs](#Section_2.198)
  - [2.199 Attribute domainCrossRef](#Section_2.199)
  - [2.200 Attribute domainID](#Section_2.200)
  - [2.201 Attribute domainIdentifier](#Section_2.201)
  - [2.202 Attribute domainPolicyObject](#Section_2.202)
  - [2.203 Attribute domainPolicyReference](#Section_2.203)
  - [2.204 Attribute domainReplica](#Section_2.204)
  - [2.205 Attribute domainWidePolicy](#Section_2.205)
  - [2.206 Attribute drink](#Section_2.206)
  - [2.207 Attribute driverName](#Section_2.207)
  - [2.208 Attribute driverVersion](#Section_2.208)
  - [2.209 Attribute dSASignature](#Section_2.209)
  - [2.210 Attribute dSCorePropagationData](#Section_2.210)
  - [2.211 Attribute dSHeuristics](#Section_2.211)
  - [2.212 Attribute dSUIAdminMaximum](#Section_2.212)
  - [2.213 Attribute dSUIAdminNotification](#Section_2.213)
  - [2.214 Attribute dSUIShellMaximum](#Section_2.214)
  - [2.215 Attribute dynamicLDAPServer](#Section_2.215)
  - [2.216 Attribute eFSPolicy](#Section_2.216)
  - [2.217 Attribute employeeID](#Section_2.217)
  - [2.218 Attribute employeeNumber](#Section_2.218)
  - [2.219 Attribute employeeType](#Section_2.219)
  - [2.220 Attribute Enabled](#Section_2.220)
  - [2.221 Attribute enabledConnection](#Section_2.221)
  - [2.222 Attribute enrollmentProviders](#Section_2.222)
  - [2.223 Attribute entryTTL](#Section_2.223)
  - [2.224 Attribute extendedAttributeInfo](#Section_2.224)
  - [2.225 Attribute extendedCharsAllowed](#Section_2.225)
  - [2.226 Attribute extendedClassInfo](#Section_2.226)
  - [2.227 Attribute extensionName](#Section_2.227)
  - [2.228 Attribute extraColumns](#Section_2.228)
  - [2.229 Attribute facsimileTelephoneNumber](#Section_2.229)
  - [2.230 Attribute fileExtPriority](#Section_2.230)
  - [2.231 Attribute flags](#Section_2.231)
  - [2.232 Attribute flatName](#Section_2.232)
  - [2.233 Attribute forceLogoff](#Section_2.233)
  - [2.234 Attribute foreignIdentifier](#Section_2.234)
  - [2.235 Attribute friendlyNames](#Section_2.235)
  - [2.236 Attribute fromEntry](#Section_2.236)
  - [2.237 Attribute fromServer](#Section_2.237)
  - [2.238 Attribute frsComputerReference](#Section_2.238)
  - [2.239 Attribute frsComputerReferenceBL](#Section_2.239)
  - [2.240 Attribute fRSControlDataCreation](#Section_2.240)
  - [2.241 Attribute fRSControlInboundBacklog](#Section_2.241)
  - [2.242 Attribute fRSControlOutboundBacklog](#Section_2.242)
  - [2.243 Attribute fRSDirectoryFilter](#Section_2.243)
  - [2.244 Attribute fRSDSPoll](#Section_2.244)
  - [2.245 Attribute fRSExtensions](#Section_2.245)
  - [2.246 Attribute fRSFaultCondition](#Section_2.246)
  - [2.247 Attribute fRSFileFilter](#Section_2.247)
  - [2.248 Attribute fRSFlags](#Section_2.248)
  - [2.249 Attribute fRSLevelLimit](#Section_2.249)
  - [2.250 Attribute fRSMemberReference](#Section_2.250)
  - [2.251 Attribute fRSMemberReferenceBL](#Section_2.251)
  - [2.252 Attribute fRSPartnerAuthLevel](#Section_2.252)
  - [2.253 Attribute fRSPrimaryMember](#Section_2.253)
  - [2.254 Attribute fRSReplicaSetGUID](#Section_2.254)
  - [2.255 Attribute fRSReplicaSetType](#Section_2.255)
  - [2.256 Attribute fRSRootPath](#Section_2.256)
  - [2.257 Attribute fRSRootSecurity](#Section_2.257)
  - [2.258 Attribute fRSServiceCommand](#Section_2.258)
  - [2.259 Attribute fRSServiceCommandStatus](#Section_2.259)
  - [2.260 Attribute fRSStagingPath](#Section_2.260)
  - [2.261 Attribute fRSTimeLastCommand](#Section_2.261)
  - [2.262 Attribute fRSTimeLastConfigChange](#Section_2.262)
  - [2.263 Attribute fRSUpdateTimeout](#Section_2.263)
  - [2.264 Attribute fRSVersion](#Section_2.264)
  - [2.265 Attribute fRSVersionGUID](#Section_2.265)
  - [2.266 Attribute fRSWorkingPath](#Section_2.266)
  - [2.267 Attribute fSMORoleOwner](#Section_2.267)
  - [2.268 Attribute garbageCollPeriod](#Section_2.268)
  - [2.269 Attribute gecos](#Section_2.269)
  - [2.270 Attribute generatedConnection](#Section_2.270)
  - [2.271 Attribute generationQualifier](#Section_2.271)
  - [2.272 Attribute gidNumber](#Section_2.272)
  - [2.273 Attribute givenName](#Section_2.273)
  - [2.274 Attribute globalAddressList](#Section_2.274)
  - [2.275 Attribute globalAddressList2](#Section_2.275)
  - [2.276 Attribute governsID](#Section_2.276)
  - [2.277 Attribute gPCFileSysPath](#Section_2.277)
  - [2.278 Attribute gPCFunctionalityVersion](#Section_2.278)
  - [2.279 Attribute gPCMachineExtensionNames](#Section_2.279)
  - [2.280 Attribute gPCUserExtensionNames](#Section_2.280)
  - [2.281 Attribute gPCWQLFilter](#Section_2.281)
  - [2.282 Attribute gPLink](#Section_2.282)
  - [2.283 Attribute gPOptions](#Section_2.283)
  - [2.284 Attribute groupAttributes](#Section_2.284)
  - [2.285 Attribute groupMembershipSAM](#Section_2.285)
  - [2.286 Attribute groupPriority](#Section_2.286)
  - [2.287 Attribute groupsToIgnore](#Section_2.287)
  - [2.288 Attribute groupType](#Section_2.288)
  - [2.289 Attribute hasMasterNCs](#Section_2.289)
  - [2.290 Attribute hasPartialReplicaNCs](#Section_2.290)
  - [2.291 Attribute helpData16](#Section_2.291)
  - [2.292 Attribute helpData32](#Section_2.292)
  - [2.293 Attribute helpFileName](#Section_2.293)
  - [2.294 Attribute hideFromAB](#Section_2.294)
  - [2.295 Attribute homeDirectory](#Section_2.295)
  - [2.296 Attribute homeDrive](#Section_2.296)
  - [2.297 Attribute homePhone](#Section_2.297)
  - [2.298 Attribute homePostalAddress](#Section_2.298)
  - [2.299 Attribute host](#Section_2.299)
  - [2.300 Attribute houseIdentifier](#Section_2.300)
  - [2.301 Attribute iconPath](#Section_2.301)
  - [2.302 Attribute implementedCategories](#Section_2.302)
  - [2.303 Attribute indexedScopes](#Section_2.303)
  - [2.304 Attribute info](#Section_2.304)
  - [2.305 Attribute initialAuthIncoming](#Section_2.305)
  - [2.306 Attribute initialAuthOutgoing](#Section_2.306)
  - [2.307 Attribute initials](#Section_2.307)
  - [2.308 Attribute installUiLevel](#Section_2.308)
  - [2.309 Attribute instanceType](#Section_2.309)
  - [2.310 Attribute internationalISDNNumber](#Section_2.310)
  - [2.311 Attribute interSiteTopologyFailover](#Section_2.311)
  - [2.312 Attribute interSiteTopologyGenerator](#Section_2.312)
  - [2.313 Attribute interSiteTopologyRenew](#Section_2.313)
  - [2.314 Attribute invocationId](#Section_2.314)
  - [2.315 Attribute ipHostNumber](#Section_2.315)
  - [2.316 Attribute ipNetmaskNumber](#Section_2.316)
  - [2.317 Attribute ipNetworkNumber](#Section_2.317)
  - [2.318 Attribute ipPhone](#Section_2.318)
  - [2.319 Attribute ipProtocolNumber](#Section_2.319)
  - [2.320 Attribute ipsecData](#Section_2.320)
  - [2.321 Attribute ipsecDataType](#Section_2.321)
  - [2.322 Attribute ipsecFilterReference](#Section_2.322)
  - [2.323 Attribute ipsecID](#Section_2.323)
  - [2.324 Attribute ipsecISAKMPReference](#Section_2.324)
  - [2.325 Attribute ipsecName](#Section_2.325)
  - [2.326 Attribute iPSECNegotiationPolicyAction](#Section_2.326)
  - [2.327 Attribute ipsecNegotiationPolicyReference](#Section_2.327)
  - [2.328 Attribute iPSECNegotiationPolicyType](#Section_2.328)
  - [2.329 Attribute ipsecNFAReference](#Section_2.329)
  - [2.330 Attribute ipsecOwnersReference](#Section_2.330)
  - [2.331 Attribute ipsecPolicyReference](#Section_2.331)
  - [2.332 Attribute ipServicePort](#Section_2.332)
  - [2.333 Attribute ipServiceProtocol](#Section_2.333)
  - [2.334 Attribute isCriticalSystemObject](#Section_2.334)
  - [2.335 Attribute isDefunct](#Section_2.335)
  - [2.336 Attribute isDeleted](#Section_2.336)
  - [2.337 Attribute isEphemeral](#Section_2.337)
  - [2.338 Attribute isMemberOfPartialAttributeSet](#Section_2.338)
  - [2.339 Attribute isPrivilegeHolder](#Section_2.339)
  - [2.340 Attribute isRecycled](#Section_2.340)
  - [2.341 Attribute isSingleValued](#Section_2.341)
  - [2.342 Attribute jpegPhoto](#Section_2.342)
  - [2.343 Attribute keywords](#Section_2.343)
  - [2.344 Attribute knowledgeInformation](#Section_2.344)
  - [2.345 Attribute l](#Section_2.345)
  - [2.346 Attribute labeledURI](#Section_2.346)
  - [2.347 Attribute lastBackupRestorationTime](#Section_2.347)
  - [2.348 Attribute lastContentIndexed](#Section_2.348)
  - [2.349 Attribute lastKnownParent](#Section_2.349)
  - [2.350 Attribute lastLogoff](#Section_2.350)
  - [2.351 Attribute lastLogon](#Section_2.351)
  - [2.352 Attribute lastLogonTimestamp](#Section_2.352)
  - [2.353 Attribute lastSetTime](#Section_2.353)
  - [2.354 Attribute lastUpdateSequence](#Section_2.354)
  - [2.355 Attribute lDAPAdminLimits](#Section_2.355)
  - [2.356 Attribute lDAPDisplayName](#Section_2.356)
  - [2.357 Attribute lDAPIPDenyList](#Section_2.357)
  - [2.358 Attribute lSACreationTime](#Section_2.358)
  - [2.359 Attribute lSAModifiedCount](#Section_2.359)
  - [2.360 Attribute legacyExchangeDN](#Section_2.360)
  - [2.361 Attribute linkID](#Section_2.361)
  - [2.362 Attribute linkTrackSecret](#Section_2.362)
  - [2.363 Attribute lmPwdHistory](#Section_2.363)
  - [2.364 Attribute localeID](#Section_2.364)
  - [2.365 Attribute localizationDisplayId](#Section_2.365)
  - [2.366 Attribute localizedDescription](#Section_2.366)
  - [2.367 Attribute localPolicyFlags](#Section_2.367)
  - [2.368 Attribute localPolicyReference](#Section_2.368)
  - [2.369 Attribute location](#Section_2.369)
  - [2.370 Attribute lockoutDuration](#Section_2.370)
  - [2.371 Attribute lockOutObservationWindow](#Section_2.371)
  - [2.372 Attribute lockoutThreshold](#Section_2.372)
  - [2.373 Attribute lockoutTime](#Section_2.373)
  - [2.374 Attribute loginShell](#Section_2.374)
  - [2.375 Attribute logonCount](#Section_2.375)
  - [2.376 Attribute logonHours](#Section_2.376)
  - [2.377 Attribute logonWorkstation](#Section_2.377)
</details>

<details>
<summary>3 Change Tracking</summary>

- [3 Change Tracking](#Section_3)
</details>
<a id="Section_1"></a>
# 1 Introduction

Active Directory Schema Attributes A-L contains a partial list of the objects that exist in the Active Directory schema for **Active Directory Domain Services (AD DS)**; it contains schema objects of type "attribute" whose names start with the letters A through L. Active Directory and all associated terms and concepts are described in [MS-ADTS](../MS-ADTS/MS-ADTS.md).

**Note**: This document is not intended to stand on its own; it is intended to act as an appendix to the Active Directory Technical Specification. For details about the Active Directory schema, see [MS-ADTS] section 3.1.1.2 (Active Directory Schema).

**Note**: The object definitions in this document are also available for download in LDAP Data Interchange Format (LDIF) at the following location: [[MSFT-ADSCHEMA]](https://go.microsoft.com/fwlink/?LinkId=212555).

**Note**: The object definitions in this document contain information about the product in which the objects were first implemented in the Active Directory schema. Unless otherwise specified, objects continue to be available in the Active Directory schema in all subsequent versions of the product according to the list of products in [MS-ADTS] section 1.

<a id="Section_1.1"></a>
## 1.1 References

[JFIF] Hamilton, E., "JPEG File Interchange Format, Version 1.02", September 1992, [http://www.w3.org/Graphics/JPEG/jfif.txt](https://go.microsoft.com/fwlink/?LinkId=89925)

[MS-ADA3] Microsoft Corporation, "[Active Directory Schema Attributes N-Z](../MS-ADA3/MS-ADA3.md)".

[MS-ADOD] Microsoft Corporation, "[Active Directory Protocols Overview](../MS-ADOD/MS-ADOD.md)".

[MS-ADTS] Microsoft Corporation, "[Active Directory Technical Specification](../MS-ADTS/MS-ADTS.md)".

[MS-DTYP] Microsoft Corporation, "[Windows Data Types](../MS-DTYP/MS-DTYP.md)".

[MS-GPIPSEC] Microsoft Corporation, "[Group Policy: IP Security (IPsec) Protocol Extension](../MS-GPIPSEC/MS-GPIPSEC.md)".

[MS-GPOL] Microsoft Corporation, "[Group Policy: Core Protocol](../MS-GPOL/MS-GPOL.md)".

[MS-LSAD] Microsoft Corporation, "[Local Security Authority (Domain Policy) Remote Protocol](../MS-LSAD/MS-LSAD.md)".

[MS-SAMR] Microsoft Corporation, "[Security Account Manager (SAM) Remote Protocol (Client-to-Server)](../MS-SAMR/MS-SAMR.md)".

[MSDN-ACL] Microsoft Corporation, "ACL structure", [http://msdn.microsoft.com/en-us/library/aa374931.aspx](https://go.microsoft.com/fwlink/?LinkId=89950)

[MSDN-CP] Microsoft Corporation, "Code Page Identifiers", [http://msdn.microsoft.com/en-us/library/dd317756(VS.85).aspx](https://go.microsoft.com/fwlink/?LinkId=89981)

[MSDN-ExtUserIntDirObj] Microsoft Corporation, "Extending the User Interface for Directory Objects", [http://msdn.microsoft.com/en-us/library/ms676902.aspx](https://go.microsoft.com/fwlink/?LinkId=107095)

[MSDN-GroupType] Microsoft Corporation, "Group-Type", [http://msdn.microsoft.com/en-us/library/ms675935.aspx](https://go.microsoft.com/fwlink/?LinkId=90016)

[MSFT-ADSCHEMA] Microsoft Corporation, "Combined Active Directory Schema Classes and Attributes for Windows Server", December 2013, [http://www.microsoft.com/downloads/en/details.aspx?displaylang=en&FamilyID=da2fc73a-3d35-484c-9bea-f023dcba7275](https://go.microsoft.com/fwlink/?LinkId=212555)

[RFC2251] Wahl, M., Howes, T., and Kille, S., "Lightweight Directory Access Protocol (v3)", RFC 2251, December 1997, [http://www.ietf.org/rfc/rfc2251.txt](https://go.microsoft.com/fwlink/?LinkId=90325)

[RFC2307] Howard, L., "An Approach for Using LDAP as a Network Information Service", RFC 2307, March 1998, [http://www.ietf.org/rfc/rfc2307.txt](https://go.microsoft.com/fwlink/?LinkId=90333)

[RFC2849] Good, G., "The LDAP Data Interchange Format (LDIF) - Technical Specification", RFC 2849, June 2000, [http://www.ietf.org/rfc/rfc2849.txt](https://go.microsoft.com/fwlink/?LinkId=90389)

[X500] ITU-T, "Information Technology - Open Systems Interconnection - The Directory: Overview of Concepts, Models and Services", Recommendation X.500, August 2005, [http://www.itu.int/rec/T-REC-X.500-200508-S/en](https://go.microsoft.com/fwlink/?LinkId=90589)

**Note** There is a charge to download the specification.

[X509] ITU-T, "Information Technology - Open Systems Interconnection - The Directory: Public-Key and Attribute Certificate Frameworks", Recommendation X.509, August 2005, [http://www.itu.int/rec/T-REC-X.509/en](https://go.microsoft.com/fwlink/?LinkId=90590)

<a id="Section_2"></a>
# 2 Attributes

The following sections specify attributes in the Active Directory schema whose names start with the letters A through L.

These sections normatively specify the schema definition of each attribute and version-specific behavior of those schema definitions (such as when the attribute was added to the schema). Additionally, as an aid to the reader some of the sections include informative notes about how the attribute can be used.

**Note**: Lines of text in the attribute definitions that are excessively long have been "folded" in accordance with [[RFC2849]](https://go.microsoft.com/fwlink/?LinkId=90389) Note 2.

<a id="Section_2.1"></a>
## 2.1 Attribute accountExpires

This attribute specifies the date the account expires. This value represents the number of 100-nanosecond intervals since January 1, 1601, Coordinated Universal Time (Greenwich Mean Time). A value of 0 or 0x7FFFFFFFFFFFFFFF (9223372036854775807) indicates that the account never expires.

cn: Account-Expires

ldapDisplayName: accountExpires

attributeId: 1.2.840.113556.1.4.159

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967915-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

attributeSecurityGuid: 4c164200-20c0-11d0-a768-00aa006e0529

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server operating system.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008 operating system.

<a id="Section_2.2"></a>
## 2.2 Attribute accountNameHistory

This attribute specifies the length of time the account has been active.

cn: Account-Name-History

ldapDisplayName: accountNameHistory

attributeId: 1.2.840.113556.1.4.1307

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 031952ec-3b72-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.3"></a>
## 2.3 Attribute aCSAggregateTokenRatePerUser

This attribute specifies the maximum quality of service token rate for any user for all flows.

cn: ACS-Aggregate-Token-Rate-Per-User

ldapDisplayName: aCSAggregateTokenRatePerUser

attributeId: 1.2.840.113556.1.4.760

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 7f56127d-5301-11d1-a9c5-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.4"></a>
## 2.4 Attribute aCSAllocableRSVPBandwidth

This attribute specifies the maximum bandwidth that can be reserved.

cn: ACS-Allocable-RSVP-Bandwidth

ldapDisplayName: aCSAllocableRSVPBandwidth

attributeId: 1.2.840.113556.1.4.766

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 7f561283-5301-11d1-a9c5-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.5"></a>
## 2.5 Attribute aCSCacheTimeout

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Cache-Timeout

ldapDisplayName: aCSCacheTimeout

attributeId: 1.2.840.113556.1.4.779

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 1cb355a1-56d0-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.6"></a>
## 2.6 Attribute aCSDirection

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Direction

ldapDisplayName: aCSDirection

attributeId: 1.2.840.113556.1.4.757

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 7f56127a-5301-11d1-a9c5-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.7"></a>
## 2.7 Attribute aCSDSBMDeadTime

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-DSBM-DeadTime

ldapDisplayName: aCSDSBMDeadTime

attributeId: 1.2.840.113556.1.4.778

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 1cb355a0-56d0-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.8"></a>
## 2.8 Attribute aCSDSBMPriority

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-DSBM-Priority

ldapDisplayName: aCSDSBMPriority

attributeId: 1.2.840.113556.1.4.776

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 1cb3559e-56d0-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.9"></a>
## 2.9 Attribute aCSDSBMRefresh

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-DSBM-Refresh

ldapDisplayName: aCSDSBMRefresh

attributeId: 1.2.840.113556.1.4.777

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 1cb3559f-56d0-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.10"></a>
## 2.10 Attribute aCSEnableACSService

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Enable-ACS-Service

ldapDisplayName: aCSEnableACSService

attributeId: 1.2.840.113556.1.4.770

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 7f561287-5301-11d1-a9c5-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.11"></a>
## 2.11 Attribute aCSEnableRSVPAccounting

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Enable-RSVP-Accounting

ldapDisplayName: aCSEnableRSVPAccounting

attributeId: 1.2.840.113556.1.4.899

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: f072230e-aef5-11d1-bdcf-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.12"></a>
## 2.12 Attribute aCSEnableRSVPMessageLogging

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Enable-RSVP-Message-Logging

ldapDisplayName: aCSEnableRSVPMessageLogging

attributeId: 1.2.840.113556.1.4.768

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 7f561285-5301-11d1-a9c5-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.13"></a>
## 2.13 Attribute aCSEventLogLevel

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Event-Log-Level

ldapDisplayName: aCSEventLogLevel

attributeId: 1.2.840.113556.1.4.769

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 7f561286-5301-11d1-a9c5-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.14"></a>
## 2.14 Attribute aCSIdentityName

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Identity-Name

ldapDisplayName: aCSIdentityName

attributeId: 1.2.840.113556.1.4.784

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: dab029b6-ddf7-11d1-90a5-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.15"></a>
## 2.15 Attribute aCSMaxAggregatePeakRatePerUser

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Max-Aggregate-Peak-Rate-Per-User

ldapDisplayName: aCSMaxAggregatePeakRatePerUser

attributeId: 1.2.840.113556.1.4.897

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: f072230c-aef5-11d1-bdcf-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.16"></a>
## 2.16 Attribute aCSMaxDurationPerFlow

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Max-Duration-Per-Flow

ldapDisplayName: aCSMaxDurationPerFlow

attributeId: 1.2.840.113556.1.4.761

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 7f56127e-5301-11d1-a9c5-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.17"></a>
## 2.17 Attribute aCSMaximumSDUSize

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Maximum-SDU-Size

ldapDisplayName: aCSMaximumSDUSize

attributeId: 1.2.840.113556.1.4.1314

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 87a2d8f9-3b90-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.18"></a>
## 2.18 Attribute aCSMaxNoOfAccountFiles

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Max-No-Of-Account-Files

ldapDisplayName: aCSMaxNoOfAccountFiles

attributeId: 1.2.840.113556.1.4.901

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: f0722310-aef5-11d1-bdcf-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.19"></a>
## 2.19 Attribute aCSMaxNoOfLogFiles

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Max-No-Of-Log-Files

ldapDisplayName: aCSMaxNoOfLogFiles

attributeId: 1.2.840.113556.1.4.774

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 1cb3559c-56d0-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.20"></a>
## 2.20 Attribute aCSMaxPeakBandwidth

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Max-Peak-Bandwidth

ldapDisplayName: aCSMaxPeakBandwidth

attributeId: 1.2.840.113556.1.4.767

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 7f561284-5301-11d1-a9c5-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.21"></a>
## 2.21 Attribute aCSMaxPeakBandwidthPerFlow

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Max-Peak-Bandwidth-Per-Flow

ldapDisplayName: aCSMaxPeakBandwidthPerFlow

attributeId: 1.2.840.113556.1.4.759

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 7f56127c-5301-11d1-a9c5-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.22"></a>
## 2.22 Attribute aCSMaxSizeOfRSVPAccountFile

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Max-Size-Of-RSVP-Account-File

ldapDisplayName: aCSMaxSizeOfRSVPAccountFile

attributeId: 1.2.840.113556.1.4.902

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: f0722311-aef5-11d1-bdcf-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.23"></a>
## 2.23 Attribute aCSMaxSizeOfRSVPLogFile

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Max-Size-Of-RSVP-Log-File

ldapDisplayName: aCSMaxSizeOfRSVPLogFile

attributeId: 1.2.840.113556.1.4.775

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 1cb3559d-56d0-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.24"></a>
## 2.24 Attribute aCSMaxTokenBucketPerFlow

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Max-Token-Bucket-Per-Flow

ldapDisplayName: aCSMaxTokenBucketPerFlow

attributeId: 1.2.840.113556.1.4.1313

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 81f6e0df-3b90-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.25"></a>
## 2.25 Attribute aCSMaxTokenRatePerFlow

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Max-Token-Rate-Per-Flow

ldapDisplayName: aCSMaxTokenRatePerFlow

attributeId: 1.2.840.113556.1.4.758

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 7f56127b-5301-11d1-a9c5-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.26"></a>
## 2.26 Attribute aCSMinimumDelayVariation

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Minimum-Delay-Variation

ldapDisplayName: aCSMinimumDelayVariation

attributeId: 1.2.840.113556.1.4.1317

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 9c65329b-3b90-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.27"></a>
## 2.27 Attribute aCSMinimumLatency

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Minimum-Latency

ldapDisplayName: aCSMinimumLatency

attributeId: 1.2.840.113556.1.4.1316

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 9517fefb-3b90-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.28"></a>
## 2.28 Attribute aCSMinimumPolicedSize

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Minimum-Policed-Size

ldapDisplayName: aCSMinimumPolicedSize

attributeId: 1.2.840.113556.1.4.1315

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 8d0e7195-3b90-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.29"></a>
## 2.29 Attribute aCSNonReservedMaxSDUSize

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Non-Reserved-Max-SDU-Size

ldapDisplayName: aCSNonReservedMaxSDUSize

attributeId: 1.2.840.113556.1.4.1320

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: aec2cfe3-3b90-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.30"></a>
## 2.30 Attribute aCSNonReservedMinPolicedSize

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Non-Reserved-Min-Policed-Size

ldapDisplayName: aCSNonReservedMinPolicedSize

attributeId: 1.2.840.113556.1.4.1321

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: b6873917-3b90-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.31"></a>
## 2.31 Attribute aCSNonReservedPeakRate

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Non-Reserved-Peak-Rate

ldapDisplayName: aCSNonReservedPeakRate

attributeId: 1.2.840.113556.1.4.1318

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: a331a73f-3b90-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.32"></a>
## 2.32 Attribute aCSNonReservedTokenSize

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Non-Reserved-Token-Size

ldapDisplayName: aCSNonReservedTokenSize

attributeId: 1.2.840.113556.1.4.1319

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: a916d7c9-3b90-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.33"></a>
## 2.33 Attribute aCSNonReservedTxLimit

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Non-Reserved-Tx-Limit

ldapDisplayName: aCSNonReservedTxLimit

attributeId: 1.2.840.113556.1.4.780

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 1cb355a2-56d0-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.34"></a>
## 2.34 Attribute aCSNonReservedTxSize

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Non-Reserved-Tx-Size

ldapDisplayName: aCSNonReservedTxSize

attributeId: 1.2.840.113556.1.4.898

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: f072230d-aef5-11d1-bdcf-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.35"></a>
## 2.35 Attribute aCSPermissionBits

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Permission-Bits

ldapDisplayName: aCSPermissionBits

attributeId: 1.2.840.113556.1.4.765

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 7f561282-5301-11d1-a9c5-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.36"></a>
## 2.36 Attribute aCSPolicyName

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Policy-Name

ldapDisplayName: aCSPolicyName

attributeId: 1.2.840.113556.1.4.772

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 1cb3559a-56d0-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.37"></a>
## 2.37 Attribute aCSPriority

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Priority

ldapDisplayName: aCSPriority

attributeId: 1.2.840.113556.1.4.764

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 7f561281-5301-11d1-a9c5-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.38"></a>
## 2.38 Attribute aCSRSVPAccountFilesLocation

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-RSVP-Account-Files-Location

ldapDisplayName: aCSRSVPAccountFilesLocation

attributeId: 1.2.840.113556.1.4.900

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f072230f-aef5-11d1-bdcf-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.39"></a>
## 2.39 Attribute aCSRSVPLogFilesLocation

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-RSVP-Log-Files-Location

ldapDisplayName: aCSRSVPLogFilesLocation

attributeId: 1.2.840.113556.1.4.773

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 1cb3559b-56d0-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.40"></a>
## 2.40 Attribute aCSServerList

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Server-List

ldapDisplayName: aCSServerList

attributeId: 1.2.840.113556.1.4.1312

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 7cbd59a5-3b90-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.41"></a>
## 2.41 Attribute aCSServiceType

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Service-Type

ldapDisplayName: aCSServiceType

attributeId: 1.2.840.113556.1.4.762

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 7f56127f-5301-11d1-a9c5-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.42"></a>
## 2.42 Attribute aCSTimeOfDay

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Time-Of-Day

ldapDisplayName: aCSTimeOfDay

attributeId: 1.2.840.113556.1.4.756

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 7f561279-5301-11d1-a9c5-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.43"></a>
## 2.43 Attribute aCSTotalNoOfFlows

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: ACS-Total-No-Of-Flows

ldapDisplayName: aCSTotalNoOfFlows

attributeId: 1.2.840.113556.1.4.763

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 7f561280-5301-11d1-a9c5-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.44"></a>
## 2.44 Attribute additionalTrustedServiceNames

This attribute specifies a list of services in the domain that can be trusted. This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: Additional-Trusted-Service-Names

ldapDisplayName: additionalTrustedServiceNames

attributeId: 1.2.840.113556.1.4.889

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 032160be-9824-11d1-aec0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.45"></a>
## 2.45 Attribute addressBookRoots

This attribute is used by Microsoft Exchange Server and is not necessary for Active Directory functioning. It specifies the trees of address book containers to appear in the Messaging Application Programming Interface (MAPI) address book.

cn: Address-Book-Roots

ldapDisplayName: addressBookRoots

attributeId: 1.2.840.113556.1.4.1244

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: f70b6e48-06f4-11d2-aa53-00c04fd7d83a

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.46"></a>
## 2.46 Attribute addressBookRoots2

This attribute is used by Exchange Server and is not necessary for Active Directory functioning. It specifies the trees of address book containers to appear in the MAPI address book. Similar to [addressBookRoots](#Section_08c233c3e9f64e6fa3e90da5683e3975), it differs by being a linked attribute.

cn: Address-Book-Roots2

ldapDisplayName: addressBookRoots2

attributeId: 1.2.840.113556.1.4.2046

attributeSyntax: 2.5.5.1

linkID: 2122

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 508ca374-a511-4e4e-9f4f-856f61a6b7e4

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.47"></a>
## 2.47 Attribute addressEntryDisplayTable

This attribute is used by Exchange Server and is not necessary for Active Directory functioning. It specifies the display table for an address entry.

cn: Address-Entry-Display-Table

ldapDisplayName: addressEntryDisplayTable

attributeId: 1.2.840.113556.1.2.324

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 5fd42461-1262-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 32768

mapiID: 32791

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.48"></a>
## 2.48 Attribute addressEntryDisplayTableMSDOS

This attribute is used by Exchange Server and is not necessary for Active Directory functioning. It specifies the MAPI display table for an address entry for an MS-DOS client.

cn: Address-Entry-Display-Table-MSDOS

ldapDisplayName: addressEntryDisplayTableMSDOS

attributeId: 1.2.840.113556.1.2.400

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 5fd42462-1262-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 32768

mapiID: 32839

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.49"></a>
## 2.49 Attribute addressSyntax

This attribute is used by Exchange Server and is not necessary for Active Directory functioning. It specifies a grammar for encoding the display table properties as a string.

cn: Address-Syntax

ldapDisplayName: addressSyntax

attributeId: 1.2.840.113556.1.2.255

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 5fd42463-1262-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 4096

mapiID: 32792

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.50"></a>
## 2.50 Attribute addressType

This attribute is used by Exchange Server and is not necessary for Active Directory functioning. It specifies a character string describing the format of the user's address. Address types map to address formats. That is, by looking at a recipient's address type, client applications can determine how to format an address appropriate for the recipient.

cn: Address-Type

ldapDisplayName: addressType

attributeId: 1.2.840.113556.1.2.350

attributeSyntax: 2.5.5.4

omSyntax: 20

isSingleValued: TRUE

schemaIdGuid: 5fd42464-1262-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 32

mapiID: 32840

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.51"></a>
## 2.51 Attribute adminContextMenu

This attribute specifies the order number and GUID of the context menu to be used on administration screens. GUID is defined in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4.

cn: Admin-Context-Menu

ldapDisplayName: adminContextMenu

attributeId: 1.2.840.113556.1.4.614

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 553fd038-f32e-11d0-b0bc-00c04fd8dca6

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.52"></a>
## 2.52 Attribute adminCount

This attribute specifies that a given object has had its access control lists (ACLs) changed to a more secure value by the Active Directory system [MS-ADOD](../MS-ADOD/MS-ADOD.md) because it is a member of one of the administrative groups, either directly or transitively. For more information on the ACL structure, see [[MSDN-ACL]](https://go.microsoft.com/fwlink/?LinkId=89950).

cn: Admin-Count

ldapDisplayName: adminCount

attributeId: 1.2.840.113556.1.4.150

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967918-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.53"></a>
## 2.53 Attribute adminDescription

This attribute specifies the description displayed on administration screens.

cn: Admin-Description

ldapDisplayName: adminDescription

attributeId: 1.2.840.113556.1.2.226

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967919-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 1024

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

mapiID: 32842

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.54"></a>
## 2.54 Attribute adminDisplayName

This attribute specifies the name to be displayed on administration screens.

cn: Admin-Display-Name

ldapDisplayName: adminDisplayName

attributeId: 1.2.840.113556.1.2.194

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf96791a-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 256

mapiID: 32843

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.55"></a>
## 2.55 Attribute adminMultiselectPropertyPages

This attribute specifies the GUID of a Component Object Model (COM) object that implements multiselect property pages for the Active Directory Users and Computers snap-in.

cn: Admin-Multiselect-Property-Pages

ldapDisplayName: adminMultiselectPropertyPages

attributeId: 1.2.840.113556.1.4.1690

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 18f9b67d-5ac6-4b3b-97db-d0a406afb7ba

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003 operating system.

<a id="Section_2.56"></a>
## 2.56 Attribute adminPropertyPages

This attribute specifies the GUID of the property pages for an object to be displayed on Active Directory administration screens. For more information, see the document, "Extending the User Interface for Directory Objects" [[MSDN-ExtUserIntDirObj]](https://go.microsoft.com/fwlink/?LinkId=107095).

cn: Admin-Property-Pages

ldapDisplayName: adminPropertyPages

attributeId: 1.2.840.113556.1.4.562

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 52458038-ca6a-11d0-afff-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.57"></a>
## 2.57 Attribute allowedAttributes

This attribute specifies attributes that will be permitted to be assigned to a class.

cn: Allowed-Attributes

ldapDisplayName: allowedAttributes

attributeId: 1.2.840.113556.1.4.913

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: 9a7ad940-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.58"></a>
## 2.58 Attribute allowedAttributesEffective

This attribute specifies a list of attributes that can be modified on the object.

cn: Allowed-Attributes-Effective

ldapDisplayName: allowedAttributesEffective

attributeId: 1.2.840.113556.1.4.914

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: 9a7ad941-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.59"></a>
## 2.59 Attribute allowedChildClasses

This attribute specifies classes that can be contained by a class.

cn: Allowed-Child-Classes

ldapDisplayName: allowedChildClasses

attributeId: 1.2.840.113556.1.4.911

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: 9a7ad942-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.60"></a>
## 2.60 Attribute allowedChildClassesEffective

This attribute specifies a list of classes that can be modified.

cn: Allowed-Child-Classes-Effective

ldapDisplayName: allowedChildClassesEffective

attributeId: 1.2.840.113556.1.4.912

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: 9a7ad943-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.61"></a>
## 2.61 Attribute altSecurityIdentities

This attribute specifies a given user mapping for [[X509]](https://go.microsoft.com/fwlink/?LinkId=90590) certificates or external Kerberos user accounts for the purpose of authentication.

cn: Alt-Security-Identities

ldapDisplayName: altSecurityIdentities

attributeId: 1.2.840.113556.1.4.867

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 00fbf30c-91fe-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: fATTINDEX

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.62"></a>
## 2.62 Attribute aNR

This attribute specifies whether ambiguous name resolution is to be used when choosing between objects.

cn: ANR

ldapDisplayName: aNR

attributeId: 1.2.840.113556.1.4.1208

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 45b01500-c419-11d1-bbc9-0080c76670c0

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.63"></a>
## 2.63 Attribute applicationName

This attribute is used to store the name of the application.

cn: Application-Name

ldapDisplayName: applicationName

attributeId: 1.2.840.113556.1.4.218

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: dd712226-10e4-11d0-a05f-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.64"></a>
## 2.64 Attribute appliesTo

This attribute specifies the list of object classes that an extended right applies to. For more information on Active Directory object classes, see [MS-ADTS](../MS-ADTS/MS-ADTS.md).

cn: Applies-To

ldapDisplayName: appliesTo

attributeId: 1.2.840.113556.1.4.341

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 8297931d-86d3-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 36

rangeUpper: 36

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.65"></a>
## 2.65 Attribute appSchemaVersion

This attribute specifies the schema version of the directory. It is used to provide correct behavior across schema changes. For more information on the schema, see [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.2.

cn: App-Schema-Version

ldapDisplayName: appSchemaVersion

attributeId: 1.2.840.113556.1.4.848

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 96a7dd65-9118-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.66"></a>
## 2.66 Attribute assetNumber

This attribute is used to store the tracking number of the object.

cn: Asset-Number

ldapDisplayName: assetNumber

attributeId: 1.2.840.113556.1.4.283

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: ba305f75-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.67"></a>
## 2.67 Attribute assistant

This attribute can be used to store the distinguished name of an administrative assistant for a user.

cn: Assistant

ldapDisplayName: assistant

attributeId: 1.2.840.113556.1.4.652

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 0296c11c-40da-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: fCOPY

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.68"></a>
## 2.68 Attribute associatedDomain

The associatedDomain attribute type specifies a fully qualified domain name (FQDN) (2) ([MS-ADTS](../MS-ADTS/MS-ADTS.md) section 1.1) associated with an object.

cn: associatedDomain

ldapDisplayName: associatedDomain

attributeId: 0.9.2342.19200300.100.1.37

attributeSyntax: 2.5.5.5

omSyntax: 22

isSingleValued: FALSE

schemaIdGuid: 3320fc38-c379-4c17-a510-1bdf6133c5da

systemOnly: FALSE

searchFlags: 0

rangeUpper: 256

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.69"></a>
## 2.69 Attribute associatedName

The associatedName attribute type specifies an entry in the directory associated with a DNS domain.

cn: associatedName

ldapDisplayName: associatedName

attributeId: 0.9.2342.19200300.100.1.38

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: f7fbfc45-85ab-42a4-a435-780e62f7858b

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.70"></a>
## 2.70 Attribute assocNTAccount

The Windows NT operating system account that applies to this object.

cn: Assoc-NT-Account

ldapDisplayName: assocNTAccount

attributeId: 1.2.840.113556.1.4.1213

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 398f63c0-ca60-11d1-bbd1-0000f81f10c0

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.71"></a>
## 2.71 Attribute attributeCertificateAttribute

A digitally signed or certified identity and set of attributes. Used to bind authorization information to an identity.

cn: attributeCertificateAttribute

ldapDisplayName: attributeCertificateAttribute

attributeId: 2.5.4.58

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: fa4693bb-7bc2-4cb9-81a8-c99c43b7905e

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.72"></a>
## 2.72 Attribute attributeDisplayNames

The name to be displayed for this object.

cn: Attribute-Display-Names

ldapDisplayName: attributeDisplayNames

attributeId: 1.2.840.113556.1.4.748

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: cb843f80-48d9-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.73"></a>
## 2.73 Attribute attributeID

This attribute specifies the unique X.500 object identifier (OID) for identifying an attribute. For more information, see [[X500]](https://go.microsoft.com/fwlink/?LinkId=90589).

cn: Attribute-ID

ldapDisplayName: attributeID

attributeId: 1.2.840.113556.1.2.30

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: TRUE

schemaIdGuid: bf967922-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.74"></a>
## 2.74 Attribute attributeSecurityGUID

This attribute specifies the GUID used to apply security credentials to a set of objects.

cn: Attribute-Security-GUID

ldapDisplayName: attributeSecurityGUID

attributeId: 1.2.840.113556.1.4.149

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf967924-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 16

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.75"></a>
## 2.75 Attribute attributeSyntax

This attribute specifies the OID for the syntax for this attribute.

cn: Attribute-Syntax

ldapDisplayName: attributeSyntax

attributeId: 1.2.840.113556.1.2.32

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: TRUE

schemaIdGuid: bf967925-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.76"></a>
## 2.76 Attribute attributeTypes

A multivalued property containing strings that represent each attribute in the schema.

cn: Attribute-Types

ldapDisplayName: attributeTypes

attributeId: 2.5.21.5

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 9a7ad944-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.77"></a>
## 2.77 Attribute audio

This attribute can be used to store audio.

cn: audio

ldapDisplayName: audio

attributeId: 0.9.2342.19200300.100.1.55

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: d0e1d224-e1a0-42ce-a2da-793ba5244f35

systemOnly: FALSE

searchFlags: 0

rangeUpper: 250000

showInAdvancedViewOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.78"></a>
## 2.78 Attribute auditingPolicy

This attribute specifies the auditing policy for the local policy.

cn: Auditing-Policy

ldapDisplayName: auditingPolicy

attributeId: 1.2.840.113556.1.4.202

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 6da8a4fe-0e52-11d0-a286-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.79"></a>
## 2.79 Attribute authenticationOptions

This attribute specifies the authentication options used in the Active Directory Service Interface (ADSI) to bind to directory services objects.

cn: Authentication-Options

ldapDisplayName: authenticationOptions

attributeId: 1.2.840.113556.1.4.11

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967928-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.80"></a>
## 2.80 Attribute authorityRevocationList

Cross-certificate, certificate revocation list.

cn: Authority-Revocation-List

ldapDisplayName: authorityRevocationList

attributeId: 2.5.4.38

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 1677578d-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeUpper: 10485760

mapiID: 32806

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, rangeUpper is not defined.

<a id="Section_2.81"></a>
## 2.81 Attribute auxiliaryClass

This attribute specifies the list of auxiliary classes to be associated with this class.

cn: Auxiliary-Class

ldapDisplayName: auxiliaryClass

attributeId: 1.2.840.113556.1.2.351

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: bf96792c-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.82"></a>
## 2.82 Attribute badPasswordTime

This attribute specifies the last time and date that an attempt to log on to this account was made with an invalid password. This value is stored as a large integer that represents the number of 100 nanosecond intervals since January 1, 1601 (UTC). A value of zero means that the last invalid password time is unknown.

cn: Bad-Password-Time

ldapDisplayName: badPasswordTime

attributeId: 1.2.840.113556.1.4.49

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf96792d-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.83"></a>
## 2.83 Attribute badPwdCount

This attribute specifies the number of times the user tried to log on to the account by using an incorrect password. A value of 0 indicates that the value is unknown.

cn: Bad-Pwd-Count

ldapDisplayName: badPwdCount

attributeId: 1.2.840.113556.1.4.12

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf96792e-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 5f202010-79a5-11d0-9020-00c04fc2d4cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.84"></a>
## 2.84 Attribute birthLocation

This attribute specifies the location of a system object, such as a file, at the time that it was originally created.

cn: Birth-Location

ldapDisplayName: birthLocation

attributeId: 1.2.840.113556.1.4.332

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 1f0075f9-7e40-11d0-afd6-00c04fd930c9

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 32

rangeUpper: 32

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.85"></a>
## 2.85 Attribute bootFile

This attribute specifies the boot image name.

cn: BootFile

ldapDisplayName: bootFile

attributeId: 1.3.6.1.1.1.1.24

attributeSyntax: 2.5.5.5

omSyntax: 22

isSingleValued: FALSE

schemaIdGuid: e3f3cb4e-0f20-42eb-9703-d2ff26e52667

systemOnly: FALSE

searchFlags: 0

rangeUpper: 10240

Version-Specific Behavior: First implemented on Windows Server 2003 R2 operating system.

<a id="Section_2.86"></a>
## 2.86 Attribute bootParameter

This attribute specifies the rpc.bootparameter.

cn: BootParameter

ldapDisplayName: bootParameter

attributeId: 1.3.6.1.1.1.1.23

attributeSyntax: 2.5.5.5

omSyntax: 22

isSingleValued: FALSE

schemaIdGuid: d72a0750-8c7c-416e-8714-e65f11e908be

systemOnly: FALSE

searchFlags: 0

rangeUpper: 10240

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.87"></a>
## 2.87 Attribute bridgeheadServerListBL

This attribute is the back link attribute of bridgeheadServerList and contains the list of servers that are bridgeheads for Active Directory replication.

cn: Bridgehead-Server-List-BL

ldapDisplayName: bridgeheadServerListBL

attributeId: 1.2.840.113556.1.4.820

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: d50c2cdb-8951-11d1-aebc-0000f80367c1

systemOnly: TRUE

searchFlags: 0

linkID: 99

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.88"></a>
## 2.88 Attribute bridgeheadTransportList

This attribute specifies the replication transports for which this server is an Active Directory bridgehead DC.

cn: Bridgehead-Transport-List

ldapDisplayName: bridgeheadTransportList

attributeId: 1.2.840.113556.1.4.819

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: d50c2cda-8951-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 98

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.89"></a>
## 2.89 Attribute buildingName

This attribute specifies the name of the building where an organization or organizational unit is based.

cn: buildingName

ldapDisplayName: buildingName

attributeId: 0.9.2342.19200300.100.1.48

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: f87fa54b-b2c5-4fd7-88c0-daccb21d93c5

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 256

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.90"></a>
## 2.90 Attribute builtinCreationTime

This attribute is used to support replication to Windows NT 4.0 operating system domains.

cn: Builtin-Creation-Time

ldapDisplayName: builtinCreationTime

attributeId: 1.2.840.113556.1.4.13

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf96792f-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.91"></a>
## 2.91 Attribute builtinModifiedCount

This attribute is used to support replication to Windows NT 4.0 domains.

cn: Builtin-Modified-Count

ldapDisplayName: builtinModifiedCount

attributeId: 1.2.840.113556.1.4.14

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967930-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.92"></a>
## 2.92 Attribute businessCategory

This attribute specifies descriptive text on an organizational unit.

cn: Business-Category

ldapDisplayName: businessCategory

attributeId: 2.5.4.15

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf967931-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 128

mapiID: 32855

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.93"></a>
## 2.93 Attribute bytesPerMinute

This attribute specifies the printer data transfer rate.

cn: Bytes-Per-Minute

ldapDisplayName: bytesPerMinute

attributeId: 1.2.840.113556.1.4.284

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: ba305f76-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.94"></a>
## 2.94 Attribute c

This attribute specifies the country/region in the address of the user. The country/region is represented as the two-character country code based on [ISO-3166].

cn: Country-Name

ldapDisplayName: c

attributeId: 2.5.4.6

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967945-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 3

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 32873

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.95"></a>
## 2.95 Attribute cACertificate

This attribute specifies certificates of trusted certificate authorities (CAs).

cn: CA-Certificate

ldapDisplayName: cACertificate

attributeId: 2.5.4.37

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf967932-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 32768

mapiID: 32771

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.96"></a>
## 2.96 Attribute cACertificateDN

This attribute specifies the full distinguished name from the certificate authority (CA) certificate.

cn: CA-Certificate-DN

ldapDisplayName: cACertificateDN

attributeId: 1.2.840.113556.1.4.697

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 963d2740-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.97"></a>
## 2.97 Attribute cAConnect

This attribute specifies the connection string for binding to a CA.

cn: CA-Connect

ldapDisplayName: cAConnect

attributeId: 1.2.840.113556.1.4.687

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 963d2735-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.98"></a>
## 2.98 Attribute canonicalName

This attribute specifies the name of the object in canonical format; myserver2.fabrikam.com/users/jeffsmith is an example of a distinguished name in canonical format.

This is a constructed attribute. The results returned are identical to those returned by the following Active Directory function: DsCrackNames(NULL, DS_NAME_FLAG_SYNTACTICAL_ONLY, DS_FQDN_1779_NAME, DS_CANONICAL_NAME, ...).

cn: Canonical-Name

ldapDisplayName: canonicalName

attributeId: 1.2.840.113556.1.4.916

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 9a7ad945-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.99"></a>
## 2.99 Attribute canUpgradeScript

This attribute specifies the list of application packages that can be upgraded by this application package or that can upgrade this application package.

cn: Can-Upgrade-Script

ldapDisplayName: canUpgradeScript

attributeId: 1.2.840.113556.1.4.815

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: d9e18314-8939-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.100"></a>
## 2.100 Attribute carLicense

This attribute can be used to store a vehicle license or registration plate.

cn: carLicense

ldapDisplayName: carLicense

attributeId: 2.16.840.1.113730.3.1.1

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: d4159c92-957d-4a87-8a67-8d2934e01649

systemOnly: FALSE

searchFlags: 0

showInAdvancedViewOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.101"></a>
## 2.101 Attribute catalogs

This attribute specifies the list of catalogs indexing storage on a given computer.

cn: Catalogs

ldapDisplayName: catalogs

attributeId: 1.2.840.113556.1.4.675

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 7bfdcb81-4807-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.102"></a>
## 2.102 Attribute categories

This attribute specifies a list of category IDs (GUIDs) for categories that apply to this application.

cn: Categories

ldapDisplayName: categories

attributeId: 1.2.840.113556.1.4.672

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 7bfdcb7e-4807-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 36

rangeUpper: 36

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.103"></a>
## 2.103 Attribute categoryId

This attribute specifies the ID for a component category.

cn: Category-Id

ldapDisplayName: categoryId

attributeId: 1.2.840.113556.1.4.322

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 7d6c0e94-7e20-11d0-afd6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 16

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.104"></a>
## 2.104 Attribute cAUsages

This attribute specifies the list of OID/cryptographic service provider (CSP) name concatenations.

cn: CA-Usages

ldapDisplayName: cAUsages

attributeId: 1.2.840.113556.1.4.690

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 963d2738-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.105"></a>
## 2.105 Attribute cAWEBURL

This attribute specifies the URL for an HTTP connection to a CA.

cn: CA-WEB-URL

ldapDisplayName: cAWEBURL

attributeId: 1.2.840.113556.1.4.688

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 963d2736-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.106"></a>
## 2.106 Attribute certificateAuthorityObject

This attribute specifies a reference to the CA associated with a certificate revocation list (CRL) distribution point.

cn: Certificate-Authority-Object

ldapDisplayName: certificateAuthorityObject

attributeId: 1.2.840.113556.1.4.684

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 963d2732-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

On Windows 2000 Server, rangeUpper is not defined.

<a id="Section_2.107"></a>
## 2.107 Attribute certificateRevocationList

This attribute represents a list of certificates that have been revoked.

cn: Certificate-Revocation-List

ldapDisplayName: certificateRevocationList

attributeId: 2.5.4.39

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 1677579f-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeUpper: 10485760

mapiID: 32790

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, rangeUpper is not defined.

<a id="Section_2.108"></a>
## 2.108 Attribute certificateTemplates

This attribute contains information for a certificate issued by a certificate server.

cn: Certificate-Templates

ldapDisplayName: certificateTemplates

attributeId: 1.2.840.113556.1.4.823

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 2a39c5b1-8960-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.109"></a>
## 2.109 Attribute classDisplayName

This attribute specifies the object name to be displayed on dialogs.

cn: Class-Display-Name

ldapDisplayName: classDisplayName

attributeId: 1.2.840.113556.1.4.610

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 548e1c22-dea6-11d0-b010-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.110"></a>
## 2.110 Attribute cn

This attribute specifies the name that represents an object. It is used to perform searches.

cn: Common-Name

ldapDisplayName: cn

attributeId: 2.5.4.3

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf96793f-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

mapiID: 14863

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.111"></a>
## 2.111 Attribute co

This attribute specifies the country/region in which the user is located.

cn: Text-Country

ldapDisplayName: co

attributeId: 1.2.840.113556.1.2.131

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f0f8ffa7-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 128

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

mapiID: 14886

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.112"></a>
## 2.112 Attribute codePage

This attribute specifies the code page for the user's language of choice. The space of values is the Microsoft code page designation. For more information, see [[MSDN-CP]](https://go.microsoft.com/fwlink/?LinkId=89981).

cn: Code-Page

ldapDisplayName: codePage

attributeId: 1.2.840.113556.1.4.16

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967938-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 0

rangeUpper: 65535

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, rangeLower and rangeUpper are not defined.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.113"></a>
## 2.113 Attribute cOMClassID

This attribute specifies the list of ClassIDs implemented in this application package.

cn: COM-ClassID

ldapDisplayName: cOMClassID

attributeId: 1.2.840.113556.1.4.19

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf96793b-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fATTINDEX

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.114"></a>
## 2.114 Attribute cOMCLSID

This attribute specifies the GUID associated with this object class.

cn: COM-CLSID

ldapDisplayName: cOMCLSID

attributeId: 1.2.840.113556.1.4.249

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 281416d9-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 36

rangeUpper: 36

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.115"></a>
## 2.115 Attribute cOMInterfaceID

This attribute specifies the list of interfaces implemented in this application package.

cn: COM-InterfaceID

ldapDisplayName: cOMInterfaceID

attributeId: 1.2.840.113556.1.4.20

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf96793c-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 36

rangeUpper: 36

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.116"></a>
## 2.116 Attribute comment

This attribute can be used to store a comment for a user.

cn: User-Comment

ldapDisplayName: comment

attributeId: 1.2.840.113556.1.4.156

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a6a-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.117"></a>
## 2.117 Attribute cOMOtherProgId

This attribute specifies the list of other program ID strings for the host class.

cn: COM-Other-Prog-Id

ldapDisplayName: cOMOtherProgId

attributeId: 1.2.840.113556.1.4.253

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 281416dd-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.118"></a>
## 2.118 Attribute company

This attribute can be used to store a company name for a user.

cn: Company

ldapDisplayName: company

attributeId: 1.2.840.113556.1.2.146

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f0f8ff88-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

mapiID: 14870

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.119"></a>
## 2.119 Attribute cOMProgID

This attribute specifies the list of COM object program IDs implemented in this application package.

cn: COM-ProgID

ldapDisplayName: cOMProgID

attributeId: 1.2.840.113556.1.4.21

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf96793d-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.120"></a>
## 2.120 Attribute cOMTreatAsClassId

This attribute specifies the Treat-As string GUID class identifier (CLSID) for the host class.

cn: COM-Treat-As-Class-Id

ldapDisplayName: cOMTreatAsClassId

attributeId: 1.2.840.113556.1.4.251

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 281416db-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 36

rangeUpper: 36

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.121"></a>
## 2.121 Attribute cOMTypelibId

This attribute specifies the list of type library IDs contained in this application package.

cn: COM-Typelib-Id

ldapDisplayName: cOMTypelibId

attributeId: 1.2.840.113556.1.4.254

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 281416de-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 36

rangeUpper: 36

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.122"></a>
## 2.122 Attribute cOMUniqueLIBID

This attribute specifies a single-valued string GUID LIBID for a type library.

cn: COM-Unique-LIBID

ldapDisplayName: cOMUniqueLIBID

attributeId: 1.2.840.113556.1.4.250

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 281416da-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 36

rangeUpper: 36

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.123"></a>
## 2.123 Attribute contentIndexingAllowed

Indicates whether the volume object can be content indexed.

cn: Content-Indexing-Allowed

ldapDisplayName: contentIndexingAllowed

attributeId: 1.2.840.113556.1.4.24

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: bf967943-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.124"></a>
## 2.124 Attribute contextMenu

This attribute specifies the order number and GUID of the context menu to be used for an object.

cn: Context-Menu

ldapDisplayName: contextMenu

attributeId: 1.2.840.113556.1.4.499

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 4d8601ee-ac85-11d0-afe3-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.125"></a>
## 2.125 Attribute controlAccessRights

This attribute is used by DS Security to determine which users can perform specific operations on the host object.

cn: Control-Access-Rights

ldapDisplayName: controlAccessRights

attributeId: 1.2.840.113556.1.4.200

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 6da8a4fc-0e52-11d0-a286-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 16

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.126"></a>
## 2.126 Attribute cost

This attribute contains the relative cost for routing messages through a particular site connector.

cn: Cost

ldapDisplayName: cost

attributeId: 1.2.840.113556.1.2.135

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967944-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

mapiID: 32872

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.127"></a>
## 2.127 Attribute countryCode

This attribute specifies the country code for the user's language of choice.

cn: Country-Code

ldapDisplayName: countryCode

attributeId: 1.2.840.113556.1.4.25

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 5fd42471-1262-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 0

rangeUpper: 65535

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, rangeLower and rangeUpper are not defined.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.128"></a>
## 2.128 Attribute createDialog

This attribute specifies the GUID of the dialog for creating an associated object.

cn: Create-Dialog

ldapDisplayName: createDialog

attributeId: 1.2.840.113556.1.4.810

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 2b09958a-8931-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.129"></a>
## 2.129 Attribute createTimeStamp

This attribute specifies the date this object was created. This value is replicated.

cn: Create-Time-Stamp

ldapDisplayName: createTimeStamp

attributeId: 2.5.18.1

attributeSyntax: 2.5.5.11

omSyntax: 24

isSingleValued: TRUE

schemaIdGuid: 2df90d73-009f-11d2-aa4c-00c04fd7d83a

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.130"></a>
## 2.130 Attribute createWizardExt

The GUID of wizard extensions for creating an associated object.

cn: Create-Wizard-Ext

ldapDisplayName: createWizardExt

attributeId: 1.2.840.113556.1.4.812

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 2b09958b-8931-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.131"></a>
## 2.131 Attribute creationTime

This attribute specifies the date and time that the object was created.

cn: Creation-Time

ldapDisplayName: creationTime

attributeId: 1.2.840.113556.1.4.26

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967946-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.132"></a>
## 2.132 Attribute creationWizard

This attribute specifies the wizard to activate when creating objects of this class.

cn: Creation-Wizard

ldapDisplayName: creationWizard

attributeId: 1.2.840.113556.1.4.498

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 4d8601ed-ac85-11d0-afe3-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.133"></a>
## 2.133 Attribute creator

This attribute specifies the person who created the object.

cn: Creator

ldapDisplayName: creator

attributeId: 1.2.840.113556.1.4.679

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 7bfdcb85-4807-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.134"></a>
## 2.134 Attribute cRLObject

This attribute specifies the reference to the CRL object associated with a CA.

cn: CRL-Object

ldapDisplayName: cRLObject

attributeId: 1.2.840.113556.1.4.689

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 963d2737-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.135"></a>
## 2.135 Attribute cRLPartitionedRevocationList

This attribute specifies the public key infrastructure–revocation lists.

cn: CRL-Partitioned-Revocation-List

ldapDisplayName: cRLPartitionedRevocationList

attributeId: 1.2.840.113556.1.4.683

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 963d2731-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeUpper: 10485760

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, rangeUpper is not defined.

<a id="Section_2.136"></a>
## 2.136 Attribute crossCertificatePair

This attribute specifies the version 3 (v3) cross-certificate.

cn: Cross-Certificate-Pair

ldapDisplayName: crossCertificatePair

attributeId: 2.5.4.40

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 167757b2-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeUpper: 32768

mapiID: 32805

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, rangeUpper is not defined.

<a id="Section_2.137"></a>
## 2.137 Attribute currentLocation

This attribute specifies the computer location for an object that has moved.

cn: Current-Location

ldapDisplayName: currentLocation

attributeId: 1.2.840.113556.1.4.335

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 1f0075fc-7e40-11d0-afd6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 32

rangeUpper: 32

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.138"></a>
## 2.138 Attribute currentParentCA

This attribute specifies a reference to the CAs that issued the current certificates for a CA.

cn: Current-Parent-CA

ldapDisplayName: currentParentCA

attributeId: 1.2.840.113556.1.4.696

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 963d273f-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.139"></a>
## 2.139 Attribute currentValue

This attribute is used to store the new value of a secret object. Secret objects are specified in [MS-LSAD](../MS-LSAD/MS-LSAD.md) section 3.1.1.4. The format of the value of this attribute is outside the scope of the state model, and values stored in this attribute cannot be retrieved via the Lightweight Directory Access Protocol (LDAP). Instead, secret objects are retrieved and written as specified in [MS-LSAD] section 3.1.1.4.

cn: Current-Value

ldapDisplayName: currentValue

attributeId: 1.2.840.113556.1.4.27

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf967947-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.140"></a>
## 2.140 Attribute currMachineId

This attribute specifies the ID of the machine where a Link-Track-Vol-Entry object is located.

cn: Curr-Machine-Id

ldapDisplayName: currMachineId

attributeId: 1.2.840.113556.1.4.337

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 1f0075fe-7e40-11d0-afd6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 16

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.141"></a>
## 2.141 Attribute dBCSPwd

This attribute specifies the account's LAN Manager password.

For more information, see [MS-SAMR](../MS-SAMR/MS-SAMR.md) section 3.1.1.8.6.

cn: DBCS-Pwd

ldapDisplayName: dBCSPwd

attributeId: 1.2.840.113556.1.4.55

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf96799c-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.142"></a>
## 2.142 Attribute dc

This attribute specifies the naming attribute for domain and DNS objects. Usually displayed as dc=DomainName.

cn: Domain-Component

ldapDisplayName: dc

attributeId: 0.9.2342.19200300.100.1.25

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 19195a55-6da0-11d0-afd3-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 255

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.143"></a>
## 2.143 Attribute defaultClassStore

This attribute specifies the default Class Store for a given user.

cn: Default-Class-Store

ldapDisplayName: defaultClassStore

attributeId: 1.2.840.113556.1.4.213

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: bf967948-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.144"></a>
## 2.144 Attribute defaultGroup

This attribute specifies the group to which this object is assigned when it is created.

cn: Default-Group

ldapDisplayName: defaultGroup

attributeId: 1.2.840.113556.1.4.480

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 720bc4e2-a54a-11d0-afdf-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.145"></a>
## 2.145 Attribute defaultHidingValue

This attribute specifies a Boolean value that specifies the default setting of the showInAdvancedViewOnly property of new instances of this class.

cn: Default-Hiding-Value

ldapDisplayName: defaultHidingValue

attributeId: 1.2.840.113556.1.4.518

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: b7b13116-b82e-11d0-afee-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.146"></a>
## 2.146 Attribute defaultLocalPolicyObject

This attribute specifies a reference to a policy object that defines the local policy for the host object.

cn: Default-Local-Policy-Object

ldapDisplayName: defaultLocalPolicyObject

attributeId: 1.2.840.113556.1.4.57

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: bf96799f-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.147"></a>
## 2.147 Attribute defaultObjectCategory

This attribute specifies the value to use for the objectCategory attribute (see [MS-ADA3](../MS-ADA3/MS-ADA3.md) section 2.39) if one is not specified on object instantiation. For more information on the defaultObjectCategory attribute, see [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.2.4.8.

cn: Default-Object-Category

ldapDisplayName: defaultObjectCategory

attributeId: 1.2.840.113556.1.4.783

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 26d97367-6070-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.148"></a>
## 2.148 Attribute defaultPriority

The default priority (for example, of a process or a print job).

cn: Default-Priority

ldapDisplayName: defaultPriority

attributeId: 1.2.840.113556.1.4.232

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 281416c8-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.149"></a>
## 2.149 Attribute defaultSecurityDescriptor

This attribute specifies the security descriptor to be assigned to the object when it is created.

cn: Default-Security-Descriptor

ldapDisplayName: defaultSecurityDescriptor

attributeId: 1.2.840.113556.1.4.224

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 807a6d30-1669-11d0-a064-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 32767

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.150"></a>
## 2.150 Attribute deltaRevocationList

This list contains certificates revoked since the last delta update.

cn: Delta-Revocation-List

ldapDisplayName: deltaRevocationList

attributeId: 2.5.4.53

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 167757b5-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeUpper: 10485760

mapiID: 35910

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, rangeUpper is not defined.

<a id="Section_2.151"></a>
## 2.151 Attribute department

This attribute contains the name of the user's department.

cn: Department

ldapDisplayName: department

attributeId: 1.2.840.113556.1.2.141

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf96794f-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

mapiID: 14872

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.152"></a>
## 2.152 Attribute departmentNumber

This attribute can be used to store a department number within an organization.

cn: departmentNumber

ldapDisplayName: departmentNumber

attributeId: 2.16.840.1.113730.3.1.2

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: be9ef6ee-cbc7-4f22-b27b-96967e7ee585

systemOnly: FALSE

searchFlags: 0

showInAdvancedViewOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.153"></a>
## 2.153 Attribute description

This attribute specifies the description to display for an object.

cn: Description

ldapDisplayName: description

attributeId: 2.5.4.13

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf967950-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 1024

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

mapiID: 32879

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.154"></a>
## 2.154 Attribute desktopProfile

This attribute specifies the location of the desktop profile for a user or group of users.

cn: Desktop-Profile

ldapDisplayName: desktopProfile

attributeId: 1.2.840.113556.1.4.346

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: eea65906-8ac6-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.155"></a>
## 2.155 Attribute destinationIndicator

This is part of the [[X500]](https://go.microsoft.com/fwlink/?LinkId=90589) specification.

cn: Destination-Indicator

ldapDisplayName: destinationIndicator

attributeId: 2.5.4.27

attributeSyntax: 2.5.5.5

omSyntax: 19

isSingleValued: FALSE

schemaIdGuid: bf967951-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 128

mapiID: 32880

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.156"></a>
## 2.156 Attribute dhcpClasses

cn: dhcp-Classes

ldapDisplayName: dhcpClasses

attributeId: 1.2.840.113556.1.4.715

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 963d2750-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.157"></a>
## 2.157 Attribute dhcpFlags

cn: dhcp-Flags

ldapDisplayName: dhcpFlags

attributeId: 1.2.840.113556.1.4.700

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 963d2741-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.158"></a>
## 2.158 Attribute dhcpIdentification

cn: dhcp-Identification

ldapDisplayName: dhcpIdentification

attributeId: 1.2.840.113556.1.4.701

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 963d2742-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.159"></a>
## 2.159 Attribute dhcpMask

cn: dhcp-Mask

ldapDisplayName: dhcpMask

attributeId: 1.2.840.113556.1.4.706

attributeSyntax: 2.5.5.5

omSyntax: 19

isSingleValued: FALSE

schemaIdGuid: 963d2747-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.160"></a>
## 2.160 Attribute dhcpMaxKey

cn: dhcp-MaxKey

ldapDisplayName: dhcpMaxKey

attributeId: 1.2.840.113556.1.4.719

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 963d2754-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.161"></a>
## 2.161 Attribute dhcpObjDescription

cn: dhcp-Obj-Description

ldapDisplayName: dhcpObjDescription

attributeId: 1.2.840.113556.1.4.703

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 963d2744-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.162"></a>
## 2.162 Attribute dhcpObjName

cn: dhcp-Obj-Name

ldapDisplayName: dhcpObjName

attributeId: 1.2.840.113556.1.4.702

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 963d2743-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.163"></a>
## 2.163 Attribute dhcpOptions

cn: dhcp-Options

ldapDisplayName: dhcpOptions

attributeId: 1.2.840.113556.1.4.714

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 963d274f-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.164"></a>
## 2.164 Attribute dhcpProperties

cn: dhcp-Properties

ldapDisplayName: dhcpProperties

attributeId: 1.2.840.113556.1.4.718

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 963d2753-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.165"></a>
## 2.165 Attribute dhcpRanges

cn: dhcp-Ranges

ldapDisplayName: dhcpRanges

attributeId: 1.2.840.113556.1.4.707

attributeSyntax: 2.5.5.5

omSyntax: 19

isSingleValued: FALSE

schemaIdGuid: 963d2748-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.166"></a>
## 2.166 Attribute dhcpReservations

cn: dhcp-Reservations

ldapDisplayName: dhcpReservations

attributeId: 1.2.840.113556.1.4.709

attributeSyntax: 2.5.5.5

omSyntax: 19

isSingleValued: FALSE

schemaIdGuid: 963d274a-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.167"></a>
## 2.167 Attribute dhcpServers

This attribute contains a list of servers authorized in the enterprise. This attribute is sent by the Dynamic Host Configuration Protocol (DHCP) server and can contain either the name of the server or its IP address.

cn: dhcp-Servers

ldapDisplayName: dhcpServers

attributeId: 1.2.840.113556.1.4.704

attributeSyntax: 2.5.5.5

omSyntax: 19

isSingleValued: FALSE

schemaIdGuid: 963d2745-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

extendedCharsAllowed: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, extendedCharsAllowed is not defined.

<a id="Section_2.168"></a>
## 2.168 Attribute dhcpSites

cn: dhcp-Sites

ldapDisplayName: dhcpSites

attributeId: 1.2.840.113556.1.4.708

attributeSyntax: 2.5.5.5

omSyntax: 19

isSingleValued: FALSE

schemaIdGuid: 963d2749-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.169"></a>
## 2.169 Attribute dhcpState

cn: dhcp-State

ldapDisplayName: dhcpState

attributeId: 1.2.840.113556.1.4.717

attributeSyntax: 2.5.5.5

omSyntax: 19

isSingleValued: FALSE

schemaIdGuid: 963d2752-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.170"></a>
## 2.170 Attribute dhcpSubnets

cn: dhcp-Subnets

ldapDisplayName: dhcpSubnets

attributeId: 1.2.840.113556.1.4.705

attributeSyntax: 2.5.5.5

omSyntax: 19

isSingleValued: FALSE

schemaIdGuid: 963d2746-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.171"></a>
## 2.171 Attribute dhcpType

The type of DHCP server. This attribute is sent by the DHCP server during authorization and is currently being set to 0.

cn: dhcp-Type

ldapDisplayName: dhcpType

attributeId: 1.2.840.113556.1.4.699

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 963d273b-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: fATTINDEX

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.172"></a>
## 2.172 Attribute dhcpUniqueKey

cn: dhcp-Unique-Key

ldapDisplayName: dhcpUniqueKey

attributeId: 1.2.840.113556.1.4.698

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 963d273a-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.173"></a>
## 2.173 Attribute dhcpUpdateTime

cn: dhcp-Update-Time

ldapDisplayName: dhcpUpdateTime

attributeId: 1.2.840.113556.1.4.720

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 963d2755-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.174"></a>
## 2.174 Attribute directReports

This attribute contains the list of users who directly report to a user. The users listed as reports are those who have their property-manager property set to this user. Each item in the list is a linked reference to the object that represents the corresponding user.

cn: Reports

ldapDisplayName: directReports

attributeId: 1.2.840.113556.1.2.436

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: bf967a1c-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

linkID: 43

mapiID: 32782

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.175"></a>
## 2.175 Attribute displayName

This attribute specifies the display name for an object, usually the combination of the user's first name, middle initial, and last name.

cn: Display-Name

ldapDisplayName: displayName

attributeId: 1.2.840.113556.1.2.13

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967953-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fANR | fATTINDEX

rangeLower: 0

rangeUpper: 256

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.176"></a>
## 2.176 Attribute displayNamePrintable

This attribute specifies the printable display name for an object, usually the combination of the user's first name, middle initial, and last name.

cn: Display-Name-Printable

ldapDisplayName: displayNamePrintable

attributeId: 1.2.840.113556.1.2.353

attributeSyntax: 2.5.5.5

omSyntax: 19

isSingleValued: TRUE

schemaIdGuid: bf967954-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 256

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

mapiID: 14847

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.177"></a>
## 2.177 Attribute distinguishedName

This attribute is the same as the distinguished name for an object and is included on all objects in Active Directory. It is also used by Exchange Server. See [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.1.4 for more information.

cn: Obj-Dist-Name

ldapDisplayName: distinguishedName

attributeId: 2.5.4.49

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: bf9679e4-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

mapiID: 32828

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.178"></a>
## 2.178 Attribute dITContentRules

This attribute specifies the permissible content of entries of a particular structural object class via the identification of an optional set of auxiliary object classes, as well as mandatory, optional, and precluded attributes. Collective attributes shall be included in DIT-Content-Rules, as specified in [[RFC2251]](https://go.microsoft.com/fwlink/?LinkId=90325) section 3.2.1.

cn: DIT-Content-Rules

ldapDisplayName: dITContentRules

attributeId: 2.5.21.2

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 9a7ad946-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.179"></a>
## 2.179 Attribute division

This attribute can be used to store the name of a division for a user.

cn: Division

ldapDisplayName: division

attributeId: 1.2.840.113556.1.4.261

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: fe6136a0-2073-11d0-a9c2-00aa006c33ed

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 0

rangeUpper: 256

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.180"></a>
## 2.180 Attribute dMDLocation

This attribute specifies the distinguished name to the schema partition.

cn: DMD-Location

ldapDisplayName: dMDLocation

attributeId: 1.2.840.113556.1.2.36

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: f0f8ff8b-1191-11d0-a060-00aa006c33ed

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.181"></a>
## 2.181 Attribute dmdName

This attribute specifies a name used to identify the schema partition.

cn: DMD-Name

ldapDisplayName: dmdName

attributeId: 1.2.840.113556.1.2.598

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 167757b9-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 1024

mapiID: 35926

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.182"></a>
## 2.182 Attribute dNReferenceUpdate

If an object is renamed, this attribute is used to track all the previous and current names assigned to the object so that linked objects can still find it.

cn: DN-Reference-Update

ldapDisplayName: dNReferenceUpdate

attributeId: 1.2.840.113556.1.4.1242

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 2df90d86-009f-11d2-aa4c-00c04fd7d83a

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.183"></a>
## 2.183 Attribute dnsAllowDynamic

cn: Dns-Allow-Dynamic

ldapDisplayName: dnsAllowDynamic

attributeId: 1.2.840.113556.1.4.378

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: e0fa1e65-9b45-11d0-afdd-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.184"></a>
## 2.184 Attribute dnsAllowXFR

cn: Dns-Allow-XFR

ldapDisplayName: dnsAllowXFR

attributeId: 1.2.840.113556.1.4.379

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: e0fa1e66-9b45-11d0-afdd-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.185"></a>
## 2.185 Attribute dNSHostName

This attribute specifies the name of a computer as registered in DNS.

cn: DNS-Host-Name

ldapDisplayName: dNSHostName

attributeId: 1.2.840.113556.1.4.619

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 72e39547-7b18-11d1-adef-00c04fd8d5cd

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 2048

attributeSecurityGuid: 72e39547-7b18-11d1-adef-00c04fd8d5cd

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attributeSecurityGuid is not defined.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.186"></a>
## 2.186 Attribute dnsNotifySecondaries

cn: Dns-Notify-Secondaries

ldapDisplayName: dnsNotifySecondaries

attributeId: 1.2.840.113556.1.4.381

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: FALSE

schemaIdGuid: e0fa1e68-9b45-11d0-afdd-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.187"></a>
## 2.187 Attribute dNSProperty

Written onto dnsZone objects. This attribute is used to store zone properties in BLOB format.

cn: DNS-Property

ldapDisplayName: dNSProperty

attributeId: 1.2.840.113556.1.4.1306

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 675a15fe-3b70-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.188"></a>
## 2.188 Attribute dnsRecord

This attribute is written onto dnsNode objects. Used to store DNS resource record definitions in BLOB format.

cn: Dns-Record

ldapDisplayName: dnsRecord

attributeId: 1.2.840.113556.1.4.382

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: e0fa1e69-9b45-11d0-afdd-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.189"></a>
## 2.189 Attribute dnsRoot

The uppermost fully qualified domain name (FQDN) (1) ([MS-ADTS](../MS-ADTS/MS-ADTS.md) section 1.1) assigned to a domain naming context. This is set on a crossRef object and is used, among other things, for referral generation. A search through an entire domain tree is initiated at the Dns-Root object. This attribute can be multivalued, in which case multiple referrals are generated.

cn: Dns-Root

ldapDisplayName: dnsRoot

attributeId: 1.2.840.113556.1.4.28

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf967959-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 1

rangeUpper: 255

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.190"></a>
## 2.190 Attribute dnsSecureSecondaries

cn: Dns-Secure-Secondaries

ldapDisplayName: dnsSecureSecondaries

attributeId: 1.2.840.113556.1.4.380

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: FALSE

schemaIdGuid: e0fa1e67-9b45-11d0-afdd-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.191"></a>
## 2.191 Attribute dNSTombstoned

Set to TRUE if this object has been tombstoned. This attribute exists to make searching for tombstoned records easier and faster.

Tombstoned objects are objects that have been deleted but not yet removed from the directory. When the value is missing or FALSE, the DNS node is active. When the value is TRUE, the DNS node has been logically deleted, but the dnsNode object is kept alive to avoid excess replication traffic and to replicate node deletions between DNS servers.

cn: DNS-Tombstoned

ldapDisplayName: dNSTombstoned

attributeId: 1.2.840.113556.1.4.1414

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: d5eb2eb7-be4e-463b-a214-634a44d7392e

systemOnly: FALSE

searchFlags: fATTINDEX

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.192"></a>
## 2.192 Attribute documentAuthor

cn: documentAuthor

ldapDisplayName: documentAuthor

attributeId: 0.9.2342.19200300.100.1.14

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: f18a8e19-af5f-4478-b096-6f35c27eb83f

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.193"></a>
## 2.193 Attribute documentIdentifier

cn: documentIdentifier

ldapDisplayName: documentIdentifier

attributeId: 0.9.2342.19200300.100.1.11

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 0b21ce82-ff63-46d9-90fb-c8b9f24e97b9

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 256

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.194"></a>
## 2.194 Attribute documentLocation

cn: documentLocation

ldapDisplayName: documentLocation

attributeId: 0.9.2342.19200300.100.1.15

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: b958b14e-ac6d-4ec4-8892-be70b69f7281

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 256

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.195"></a>
## 2.195 Attribute documentPublisher

This attribute specifies the person and/or organization that published a document.

cn: documentPublisher

ldapDisplayName: documentPublisher

attributeId: 0.9.2342.19200300.100.1.56

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 170f09d7-eb69-448a-9a30-f1afecfd32d7

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 256

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.196"></a>
## 2.196 Attribute documentTitle

cn: documentTitle

ldapDisplayName: documentTitle

attributeId: 0.9.2342.19200300.100.1.12

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: de265a9c-ff2c-47b9-91dc-6e6fe2c43062

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 256

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.197"></a>
## 2.197 Attribute documentVersion

cn: documentVersion

ldapDisplayName: documentVersion

attributeId: 0.9.2342.19200300.100.1.13

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 94b3a8a9-d613-4cec-9aad-5fbcc1046b43

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 256

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.198"></a>
## 2.198 Attribute domainCAs

The Domain-Certificate-Authorities attribute contains a list of certificate authorities for a given domain.

cn: Domain-Certificate-Authorities

ldapDisplayName: domainCAs

attributeId: 1.2.840.113556.1.4.668

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 7bfdcb7a-4807-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.199"></a>
## 2.199 Attribute domainCrossRef

This is a reference from a trusted domain object to the cross-reference object of the trusted domain.

cn: Domain-Cross-Ref

ldapDisplayName: domainCrossRef

attributeId: 1.2.840.113556.1.4.472

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: b000ea7b-a086-11d0-afdd-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.200"></a>
## 2.200 Attribute domainID

Reference to a domain associated with a CA.

cn: Domain-ID

ldapDisplayName: domainID

attributeId: 1.2.840.113556.1.4.686

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 963d2734-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.201"></a>
## 2.201 Attribute domainIdentifier

The domain security identifier (SID), as defined in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.4.2, identifying the domain. The SID can be represented in any of the three formats described in that section, depending on the type of protocol being used to carry the information.

cn: Domain-Identifier

ldapDisplayName: domainIdentifier

attributeId: 1.2.840.113556.1.4.755

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 7f561278-5301-11d1-a9c5-0000f80367c1

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.202"></a>
## 2.202 Attribute domainPolicyObject

Reference to the policy object defining the Local Security Authority (LSA) policy for the host domain.

cn: Domain-Policy-Object

ldapDisplayName: domainPolicyObject

attributeId: 1.2.840.113556.1.4.32

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: bf96795d-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.203"></a>
## 2.203 Attribute domainPolicyReference

The distinguished name of a domain policy object that a policy object copies from.

cn: Domain-Policy-Reference

ldapDisplayName: domainPolicyReference

attributeId: 1.2.840.113556.1.4.422

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 80a67e2a-9f22-11d0-afdd-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: a29b89fe-c7e8-11d0-9bae-00c04fd92ef5

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.204"></a>
## 2.204 Attribute domainReplica

A Unicode string attribute that gives the NetBIOS name of the PDC at the time of upgrade from Windows NT 4.0, otherwise the default value is NULL.

cn: Domain-Replica

ldapDisplayName: domainReplica

attributeId: 1.2.840.113556.1.4.158

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf96795e-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 32767

attributeSecurityGuid: b8119fd0-04f6-4762-ab7a-4986c76b3f9a

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attributeSecurityGuid is not defined.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.205"></a>
## 2.205 Attribute domainWidePolicy

This attribute is for user-extensible policy to be replicated to the clients.

cn: Domain-Wide-Policy

ldapDisplayName: domainWidePolicy

attributeId: 1.2.840.113556.1.4.421

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 80a67e29-9f22-11d0-afdd-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: a29b89fd-c7e8-11d0-9bae-00c04fd92ef5

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.206"></a>
## 2.206 Attribute drink

cn: drink

ldapDisplayName: drink

attributeId: 0.9.2342.19200300.100.1.5

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 1a1aa5b5-262e-4df6-af04-2cf6b0d80048

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 256

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.207"></a>
## 2.207 Attribute driverName

cn: Driver-Name

ldapDisplayName: driverName

attributeId: 1.2.840.113556.1.4.229

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 281416c5-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.208"></a>
## 2.208 Attribute driverVersion

cn: Driver-Version

ldapDisplayName: driverVersion

attributeId: 1.2.840.113556.1.4.276

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: ba305f6e-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.209"></a>
## 2.209 Attribute dSASignature

The DSA-Signature of an object is the [Invocation-ID](#Section_3ac24cae9ec74ba7987821fd42a0371b) of the last directory to modify the object.

cn: DSA-Signature

ldapDisplayName: dSASignature

attributeId: 1.2.840.113556.1.2.74

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 167757bc-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

mapiID: 32887

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.210"></a>
## 2.210 Attribute dSCorePropagationData

This attribute is for internal use only.

cn: DS-Core-Propagation-Data

ldapDisplayName: dSCorePropagationData

attributeId: 1.2.840.113556.1.4.1357

attributeSyntax: 2.5.5.11

omSyntax: 24

isSingleValued: FALSE

schemaIdGuid: d167aa4b-8b08-11d2-9939-0000f87a57d4

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.211"></a>
## 2.211 Attribute dSHeuristics

This attribute contains global settings for the entire forest. For more information on global settings, see [MS-ADTS](../MS-ADTS/MS-ADTS.md).

cn: DS-Heuristics

ldapDisplayName: dSHeuristics

attributeId: 1.2.840.113556.1.2.212

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f0f8ff86-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.212"></a>
## 2.212 Attribute dSUIAdminMaximum

This is the default maximum number of objects that will be shown in a container by the administration user interface (UI).

cn: DS-UI-Admin-Maximum

ldapDisplayName: dSUIAdminMaximum

attributeId: 1.2.840.113556.1.4.1344

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: ee8d0ae0-6f91-11d2-9905-0000f87a57d4

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.213"></a>
## 2.213 Attribute dSUIAdminNotification

This attribute specifies a list of the GUIDs of COM objects that support a callback interface that DSAdmin calls when an action has occurred on an object through the UI.

cn: DS-UI-Admin-Notification

ldapDisplayName: dSUIAdminNotification

attributeId: 1.2.840.113556.1.4.1343

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: f6ea0a94-6f91-11d2-9905-0000f87a57d4

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.214"></a>
## 2.214 Attribute dSUIShellMaximum

This attribute specifies the default maximum number of objects that will be shown in a container by the shell UI.

cn: DS-UI-Shell-Maximum

ldapDisplayName: dSUIShellMaximum

attributeId: 1.2.840.113556.1.4.1345

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: fcca766a-6f91-11d2-9905-0000f87a57d4

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.215"></a>
## 2.215 Attribute dynamicLDAPServer

This attribute specifies the fully qualified domain name (FQDN) (1) ([MS-ADTS](../MS-ADTS/MS-ADTS.md) section 1.1) of the server-handling dynamic properties for this account.

cn: Dynamic-LDAP-Server

ldapDisplayName: dynamicLDAPServer

attributeId: 1.2.840.113556.1.4.537

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 52458021-ca6a-11d0-afff-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.216"></a>
## 2.216 Attribute eFSPolicy

The Encrypting File System (EFS) Policy.

cn: EFSPolicy

ldapDisplayName: eFSPolicy

attributeId: 1.2.840.113556.1.4.268

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 8e4eb2ec-4712-11d0-a1a0-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: a29b89fd-c7e8-11d0-9bae-00c04fd92ef5

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.217"></a>
## 2.217 Attribute employeeID

This attribute specifies the ID of an employee.

cn: Employee-ID

ldapDisplayName: employeeID

attributeId: 1.2.840.113556.1.4.35

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967962-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.218"></a>
## 2.218 Attribute employeeNumber

This attribute specifies the number assigned to an employee other than the ID.

cn: Employee-Number

ldapDisplayName: employeeNumber

attributeId: 1.2.840.113556.1.2.610

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: a8df73ef-c5ea-11d1-bbcb-0080c76670c0

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 512

mapiID: 35943

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, the following attributes are defined differently.

systemFlags: FLAG_SCHEMA_BASE_OBJECT

<a id="Section_2.219"></a>
## 2.219 Attribute employeeType

This attribute specifies the job category for an employee.

cn: Employee-Type

ldapDisplayName: employeeType

attributeId: 1.2.840.113556.1.2.613

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: a8df73f0-c5ea-11d1-bbcb-0080c76670c0

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 256

mapiID: 35945

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, the following attributes are defined differently.

systemFlags: FLAG_SCHEMA_BASE_OBJECT

<a id="Section_2.220"></a>
## 2.220 Attribute Enabled

This attribute is used to signify whether a given crossRef is enabled.

cn: Enabled

ldapDisplayName: Enabled

attributeId: 1.2.840.113556.1.2.557

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: a8df73f2-c5ea-11d1-bbcb-0080c76670c0

systemOnly: FALSE

searchFlags: 0

mapiID: 35873

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.221"></a>
## 2.221 Attribute enabledConnection

This attribute specifies whether a connection is available for use.

cn: Enabled-Connection

ldapDisplayName: enabledConnection

attributeId: 1.2.840.113556.1.4.36

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: bf967963-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.222"></a>
## 2.222 Attribute enrollmentProviders

Public key infrastructure (PKI) certificate templates.

cn: Enrollment-Providers

ldapDisplayName: enrollmentProviders

attributeId: 1.2.840.113556.1.4.825

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 2a39c5b3-8960-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.223"></a>
## 2.223 Attribute entryTTL

This operational attribute is maintained by the server and appears to be present in every dynamic entry. The attribute is not present when the entry does not contain the dynamicObject object class. The value of this attribute is the time in seconds that the entry will continue to exist before disappearing from the directory.

In the absence of intervening "refresh" operations, the values returned by reading the attribute in two successive searches are guaranteed to be nonincreasing. The smallest permissible value is 0, indicating that the entry can disappear without warning. The attribute is marked NO-USER-MODIFICATION because it can be changed only by using the refresh operation.

cn: Entry-TTL

ldapDisplayName: entryTTL

attributeId: 1.3.6.1.4.1.1466.101.119.3

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: d213decc-d81a-4384-aac2-dcfcfd631cf8

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 31557600

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.224"></a>
## 2.224 Attribute extendedAttributeInfo

This attribute specifies a multivalued property containing strings that represent additional information for each attribute.

cn: Extended-Attribute-Info

ldapDisplayName: extendedAttributeInfo

attributeId: 1.2.840.113556.1.4.909

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 9a7ad947-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.225"></a>
## 2.225 Attribute extendedCharsAllowed

This attribute specifies whether extended characters are allowed in the value of this attribute. Applies only to IA5, numeric, printable, and teletex string attributes.

cn: Extended-Chars-Allowed

ldapDisplayName: extendedCharsAllowed

attributeId: 1.2.840.113556.1.2.380

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: bf967966-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

mapiID: 32935

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, the following attributes are defined differently.

systemOnly: TRUE

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.226"></a>
## 2.226 Attribute extendedClassInfo

This attribute specifies a multivalued property containing strings that represent additional information for each class. Each value contains the governsID, lDAPDisplayName, and schemaIDGUID of the class.

cn: Extended-Class-Info

ldapDisplayName: extendedClassInfo

attributeId: 1.2.840.113556.1.4.908

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 9a7ad948-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.227"></a>
## 2.227 Attribute extensionName

This attribute specifies the name of a property page used to extend the UI of a directory object.

cn: Extension-Name

ldapDisplayName: extensionName

attributeId: 1.2.840.113556.1.2.227

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf967972-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 255

mapiID: 32937

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.228"></a>
## 2.228 Attribute extraColumns

This is a multivalued attribute whose value(s) consist of a 5 tuple: (attribute name), (column title), (default visibility (0,1)), (column width (-1 for auto width)), and 0 (reserved for future use). This value is used by the Active Directory Users and Computers console.

cn: Extra-Columns

ldapDisplayName: extraColumns

attributeId: 1.2.840.113556.1.4.1687

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: d24e2846-1dd9-4bcf-99d7-a6227cc86da7

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.229"></a>
## 2.229 Attribute facsimileTelephoneNumber

Contains the telephone number of the user's business fax machine.

cn: Facsimile-Telephone-Number

ldapDisplayName: facsimileTelephoneNumber

attributeId: 2.5.4.23

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967974-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 14883

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.230"></a>
## 2.230 Attribute fileExtPriority

This attribute specifies a list of file extensions in an application package and their associated priorities.

cn: File-Ext-Priority

ldapDisplayName: fileExtPriority

attributeId: 1.2.840.113556.1.4.816

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: d9e18315-8939-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: fATTINDEX

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.231"></a>
## 2.231 Attribute flags

To be used by the object to store bit information.

cn: Flags

ldapDisplayName: flags

attributeId: 1.2.840.113556.1.4.38

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967976-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.232"></a>
## 2.232 Attribute flatName

For Windows NT domains, the flat name is the NetBIOS name. For links with non–Windows NT domains, the flat name is the identifying name of that domain or it is NULL.

cn: Flat-Name

ldapDisplayName: flatName

attributeId: 1.2.840.113556.1.4.511

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: b7b13117-b82e-11d0-afee-0000f80367c1

systemOnly: FALSE

searchFlags: fATTINDEX

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.233"></a>
## 2.233 Attribute forceLogoff

This attribute is used in computing the kickoff time. Logoff time minus Force Log Off equals kickoff time.

cn: Force-Logoff

ldapDisplayName: forceLogoff

attributeId: 1.2.840.113556.1.4.39

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967977-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: b8119fd0-04f6-4762-ab7a-4986c76b3f9a

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attributeSecurityGuid is not defined.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.234"></a>
## 2.234 Attribute foreignIdentifier

This attribute specifies the security properties used by a foreign system.

cn: Foreign-Identifier

ldapDisplayName: foreignIdentifier

attributeId: 1.2.840.113556.1.4.356

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 3e97891e-8c01-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.235"></a>
## 2.235 Attribute friendlyNames

This attribute specifies a list of default friendly name definitions supported by a catalog.

cn: Friendly-Names

ldapDisplayName: friendlyNames

attributeId: 1.2.840.113556.1.4.682

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 7bfdcb88-4807-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.236"></a>
## 2.236 Attribute fromEntry

This is a constructed attribute that is TRUE if the object is writable, and FALSE if it is read-only (for example, a global catalog replica instance).

cn: From-Entry

ldapDisplayName: fromEntry

attributeId: 1.2.840.113556.1.4.910

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: FALSE

schemaIdGuid: 9a7ad949-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.237"></a>
## 2.237 Attribute fromServer

This attribute specifies the distinguished name of the replication source server.

cn: From-Server

ldapDisplayName: fromServer

attributeId: 1.2.840.113556.1.4.40

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: bf967979-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fATTINDEX

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.238"></a>
## 2.238 Attribute frsComputerReference

This File Replication service (FRS) attribute contains a reference to a replica set member's computer object.

cn: Frs-Computer-Reference

ldapDisplayName: frsComputerReference

attributeId: 1.2.840.113556.1.4.869

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 2a132578-9373-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 102

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.239"></a>
## 2.239 Attribute frsComputerReferenceBL

This FRS attribute is a back link attribute of [Attribute frsComputerReference](#Section_2.238) and contains a reference to replica sets to which this computer belongs.

cn: Frs-Computer-Reference-BL

ldapDisplayName: frsComputerReferenceBL

attributeId: 1.2.840.113556.1.4.870

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 2a132579-9373-11d1-aebc-0000f80367c1

systemOnly: TRUE

searchFlags: 0

linkID: 103

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.240"></a>
## 2.240 Attribute fRSControlDataCreation

This FRS attribute contains a Warning/Error level pair for file data creation (megabyte (MB) per second).

cn: FRS-Control-Data-Creation

ldapDisplayName: fRSControlDataCreation

attributeId: 1.2.840.113556.1.4.871

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 2a13257a-9373-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 32

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.241"></a>
## 2.241 Attribute fRSControlInboundBacklog

This FRS attribute contains a Warning/Error level pair for inbound backlog (number of files).

cn: FRS-Control-Inbound-Backlog

ldapDisplayName: fRSControlInboundBacklog

attributeId: 1.2.840.113556.1.4.872

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 2a13257b-9373-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 32

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.242"></a>
## 2.242 Attribute fRSControlOutboundBacklog

This FRS attribute contains a Warning/Error level pair for outbound backlog (number of files).

cn: FRS-Control-Outbound-Backlog

ldapDisplayName: fRSControlOutboundBacklog

attributeId: 1.2.840.113556.1.4.873

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 2a13257c-9373-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 32

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.243"></a>
## 2.243 Attribute fRSDirectoryFilter

This FRS attribute contains a list of directories excluded from file replication (for example, the "temp" directory or the "obj" directory).

cn: FRS-Directory-Filter

ldapDisplayName: fRSDirectoryFilter

attributeId: 1.2.840.113556.1.4.484

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 1be8f171-a9ff-11d0-afe2-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 2048

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.244"></a>
## 2.244 Attribute fRSDSPoll

This FRS attribute contains the DS polling interval for the file replication engine.

cn: FRS-DS-Poll

ldapDisplayName: fRSDSPoll

attributeId: 1.2.840.113556.1.4.490

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 1be8f177-a9ff-11d0-afe2-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.245"></a>
## 2.245 Attribute fRSExtensions

This FRS attribute contains binary data used by file replication.

cn: FRS-Extensions

ldapDisplayName: fRSExtensions

attributeId: 1.2.840.113556.1.4.536

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 52458020-ca6a-11d0-afff-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 65536

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.246"></a>
## 2.246 Attribute fRSFaultCondition

This FRS attribute contains the fault condition for a member.

cn: FRS-Fault-Condition

ldapDisplayName: fRSFaultCondition

attributeId: 1.2.840.113556.1.4.491

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 1be8f178-a9ff-11d0-afe2-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.247"></a>
## 2.247 Attribute fRSFileFilter

This FRS attribute contains the list of file extensions excluded from file replication.

cn: FRS-File-Filter

ldapDisplayName: fRSFileFilter

attributeId: 1.2.840.113556.1.4.483

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 1be8f170-a9ff-11d0-afe2-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 2048

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.248"></a>
## 2.248 Attribute fRSFlags

This FRS attribute contains the FRS option flags.

cn: FRS-Flags

ldapDisplayName: fRSFlags

attributeId: 1.2.840.113556.1.4.874

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 2a13257d-9373-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.249"></a>
## 2.249 Attribute fRSLevelLimit

This FRS attribute contains the limit depth of the directory tree to replicate for file replication.

cn: FRS-Level-Limit

ldapDisplayName: fRSLevelLimit

attributeId: 1.2.840.113556.1.4.534

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 5245801e-ca6a-11d0-afff-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.250"></a>
## 2.250 Attribute fRSMemberReference

This FRS attribute contains a reference to the member object for this subscriber.

cn: FRS-Member-Reference

ldapDisplayName: fRSMemberReference

attributeId: 1.2.840.113556.1.4.875

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 2a13257e-9373-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 104

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.251"></a>
## 2.251 Attribute fRSMemberReferenceBL

This FRS attribute is the back link attribute of [Attribute fRSMemberReference](#Section_2.250) and contains a reference to subscriber objects for this member.

cn: FRS-Member-Reference-BL

ldapDisplayName: fRSMemberReferenceBL

attributeId: 1.2.840.113556.1.4.876

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 2a13257f-9373-11d1-aebc-0000f80367c1

systemOnly: TRUE

searchFlags: 0

linkID: 105

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.252"></a>
## 2.252 Attribute fRSPartnerAuthLevel

This FRS attribute contains the remote procedure call (RPC) security level.

cn: FRS-Partner-Auth-Level

ldapDisplayName: fRSPartnerAuthLevel

attributeId: 1.2.840.113556.1.4.877

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 2a132580-9373-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.253"></a>
## 2.253 Attribute fRSPrimaryMember

This FRS attribute contains a reference to the primary member of a replica set.

cn: FRS-Primary-Member

ldapDisplayName: fRSPrimaryMember

attributeId: 1.2.840.113556.1.4.878

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 2a132581-9373-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 106

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.254"></a>
## 2.254 Attribute fRSReplicaSetGUID

This FRS attribute contains a GUID that identifies an FRS replica set.

cn: FRS-Replica-Set-GUID

ldapDisplayName: fRSReplicaSetGUID

attributeId: 1.2.840.113556.1.4.533

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 5245801a-ca6a-11d0-afff-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 16

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.255"></a>
## 2.255 Attribute fRSReplicaSetType

This FRS attribute contains a code that indicates whether this is a system volume (SYSVOL) replica set, a distributed file system (DFS) replica set, or other replica set.

cn: FRS-Replica-Set-Type

ldapDisplayName: fRSReplicaSetType

attributeId: 1.2.840.113556.1.4.31

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 26d9736b-6070-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.256"></a>
## 2.256 Attribute fRSRootPath

This FRS attribute contains a path to the root of the replicated file system tree.

cn: FRS-Root-Path

ldapDisplayName: fRSRootPath

attributeId: 1.2.840.113556.1.4.487

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 1be8f174-a9ff-11d0-afe2-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 2048

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.257"></a>
## 2.257 Attribute fRSRootSecurity

This FRS attribute contains a security descriptor of the replica set root for file replication.

cn: FRS-Root-Security

ldapDisplayName: fRSRootSecurity

attributeId: 1.2.840.113556.1.4.535

attributeSyntax: 2.5.5.15

omSyntax: 66

isSingleValued: TRUE

schemaIdGuid: 5245801f-ca6a-11d0-afff-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 65535

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.258"></a>
## 2.258 Attribute fRSServiceCommand

This FRS attribute contains a Unicode string that an administrator can set to pass a command to every replica set member.

cn: FRS-Service-Command

ldapDisplayName: fRSServiceCommand

attributeId: 1.2.840.113556.1.4.500

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: ddac0cee-af8f-11d0-afeb-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 512

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.259"></a>
## 2.259 Attribute fRSServiceCommandStatus

This FRS attribute contains the response from the last command issued to a member.

cn: FRS-Service-Command-Status

ldapDisplayName: fRSServiceCommandStatus

attributeId: 1.2.840.113556.1.4.879

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 2a132582-9373-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 512

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.260"></a>
## 2.260 Attribute fRSStagingPath

This FRS attribute contains a path to the file replication staging area.

cn: FRS-Staging-Path

ldapDisplayName: fRSStagingPath

attributeId: 1.2.840.113556.1.4.488

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 1be8f175-a9ff-11d0-afe2-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 2048

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.261"></a>
## 2.261 Attribute fRSTimeLastCommand

This FRS attribute contains the time in which the last command was executed.

cn: FRS-Time-Last-Command

ldapDisplayName: fRSTimeLastCommand

attributeId: 1.2.840.113556.1.4.880

attributeSyntax: 2.5.5.11

omSyntax: 23

isSingleValued: TRUE

schemaIdGuid: 2a132583-9373-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.262"></a>
## 2.262 Attribute fRSTimeLastConfigChange

This FRS attribute contains the time in which the last configuration change was accepted.

cn: FRS-Time-Last-Config-Change

ldapDisplayName: fRSTimeLastConfigChange

attributeId: 1.2.840.113556.1.4.881

attributeSyntax: 2.5.5.11

omSyntax: 23

isSingleValued: TRUE

schemaIdGuid: 2a132584-9373-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.263"></a>
## 2.263 Attribute fRSUpdateTimeout

This FRS attribute contains the maximum time, in minutes, to wait to complete an update before giving up.

cn: FRS-Update-Timeout

ldapDisplayName: fRSUpdateTimeout

attributeId: 1.2.840.113556.1.4.485

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 1be8f172-a9ff-11d0-afe2-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.264"></a>
## 2.264 Attribute fRSVersion

This FRS attribute contains the version number and build date.

cn: FRS-Version

ldapDisplayName: fRSVersion

attributeId: 1.2.840.113556.1.4.882

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 2a132585-9373-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 32

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.265"></a>
## 2.265 Attribute fRSVersionGUID

If this FRS attribute is present, changing its value indicates that a configuration change has been made on this replica set.

cn: FRS-Version-GUID

ldapDisplayName: fRSVersionGUID

attributeId: 1.2.840.113556.1.4.43

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 26d9736c-6070-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 16

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.266"></a>
## 2.266 Attribute fRSWorkingPath

This FRS attribute contains the path to the file replication database.

cn: FRS-Working-Path

ldapDisplayName: fRSWorkingPath

attributeId: 1.2.840.113556.1.4.486

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 1be8f173-a9ff-11d0-afe2-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 2048

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.267"></a>
## 2.267 Attribute fSMORoleOwner

The fSMORoleOwner attribute stores the distinguished name of a DSA object as described in [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.1.11 (FSMO Roles).

cn: FSMO-Role-Owner

ldapDisplayName: fSMORoleOwner

attributeId: 1.2.840.113556.1.4.369

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 66171887-8f3c-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: fATTINDEX

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.268"></a>
## 2.268 Attribute garbageCollPeriod

This attribute is located on the CN=Directory Service,CN=Windows NT,CN=Services,CN=Configuration,... object. It represents the period, in hours, between DS garbage collection runs.

cn: Garbage-Coll-Period

ldapDisplayName: garbageCollPeriod

attributeId: 1.2.840.113556.1.2.301

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 5fd424a1-1262-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

mapiID: 32943

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.269"></a>
## 2.269 Attribute gecos

The **GECOS** field (the common name, as specified in [[RFC2307]](https://go.microsoft.com/fwlink/?LinkId=90333) section 3).

cn: Gecos

ldapDisplayName: gecos

attributeId: 1.3.6.1.1.1.1.2

attributeSyntax: 2.5.5.5

omSyntax: 22

isSingleValued: TRUE

schemaIdGuid: a3e03f1f-1d55-4253-a0af-30c2a784e46e

systemOnly: FALSE

searchFlags: 0

rangeUpper: 10240

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.270"></a>
## 2.270 Attribute generatedConnection

Set to TRUE if this connection was created by autotopology generation.

cn: Generated-Connection

ldapDisplayName: generatedConnection

attributeId: 1.2.840.113556.1.4.41

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: bf96797a-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.271"></a>
## 2.271 Attribute generationQualifier

Indicates a person's generation; for example, junior (Jr.) or II.

cn: Generation-Qualifier

ldapDisplayName: generationQualifier

attributeId: 2.5.4.44

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 16775804-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

mapiID: 35923

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.272"></a>
## 2.272 Attribute gidNumber

An integer uniquely identifying a group in an administrative domain, as specified in [[RFC2307]](https://go.microsoft.com/fwlink/?LinkId=90333).

cn: GidNumber

ldapDisplayName: gidNumber

attributeId: 1.3.6.1.1.1.1.1

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: c5b95f0c-ec9e-41c4-849c-b46597ed6696

systemOnly: FALSE

searchFlags: fATTINDEX

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.273"></a>
## 2.273 Attribute givenName

Contains the given name (first name) of the user.

cn: Given-Name

ldapDisplayName: givenName

attributeId: 2.5.4.42

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f0f8ff8e-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: fANR | fATTINDEX

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

mapiID: 14854

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.274"></a>
## 2.274 Attribute globalAddressList

This attribute is used on an Exchange Server container to store the distinguished name of a newly created global address list (GAL). Once this attribute has at least one entry, the implementer can enable MAPI clients to use a GAL.

cn: Global-Address-List

ldapDisplayName: globalAddressList

attributeId: 1.2.840.113556.1.4.1245

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: f754c748-06f4-11d2-aa53-00c04fd7d83a

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.275"></a>
## 2.275 Attribute globalAddressList2

This attribute is used on an Exchange Server container to store the distinguished name of a newly created GAL. Once this attribute has at least one entry, the implementer can enable MAPI clients to use a GAL. Similar to [globalAddressList](#Section_b28249c9896443ee870308dfafafdc7f), it differs by being a linked attribute.

cn: Global-Address-List2

ldapDisplayName: globalAddressList2

attributeId: 1.2.840.113556.1.4.2047

attributeSyntax: 2.5.5.1

linkID: 2124

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 4898f63d-4112-477c-8826-3ca00bd8277d

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.276"></a>
## 2.276 Attribute governsID

This attribute specifies the unique object ID of the class defined by this class-schema object.

cn: Governs-ID

ldapDisplayName: governsID

attributeId: 1.2.840.113556.1.2.22

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: TRUE

schemaIdGuid: bf96797d-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.277"></a>
## 2.277 Attribute gPCFileSysPath

This attribute specifies the Universal Naming Convention (UNC) path to the Group Policy Object template located in the system volume (SYSVOL).

cn: GPC-File-Sys-Path

ldapDisplayName: gPCFileSysPath

attributeId: 1.2.840.113556.1.4.894

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f30e3bc1-9ff0-11d1-b603-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.278"></a>
## 2.278 Attribute gPCFunctionalityVersion

This attribute specifies the version of the Group Policy Object Editor that created this object.

cn: GPC-Functionality-Version

ldapDisplayName: gPCFunctionalityVersion

attributeId: 1.2.840.113556.1.4.893

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: f30e3bc0-9ff0-11d1-b603-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.279"></a>
## 2.279 Attribute gPCMachineExtensionNames

This attribute is used by the Group Policy Object (GPO) for machine policies.

cn: GPC-Machine-Extension-Names

ldapDisplayName: gPCMachineExtensionNames

attributeId: 1.2.840.113556.1.4.1348

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 32ff8ecc-783f-11d2-9916-0000f87a57d4

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.280"></a>
## 2.280 Attribute gPCUserExtensionNames

This attribute is used by the GPO for user policies.

cn: GPC-User-Extension-Names

ldapDisplayName: gPCUserExtensionNames

attributeId: 1.2.840.113556.1.4.1349

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 42a75fc6-783f-11d2-9916-0000f87a57d4

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.281"></a>
## 2.281 Attribute gPCWQLFilter

This attribute is used to store a string that contains a GUID for the filter and a Windows Management Instrumentation (WMI) namespace path.

cn: GPC-WQL-Filter

ldapDisplayName: gPCWQLFilter

attributeId: 1.2.840.113556.1.4.1694

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 7bd4c7a6-1add-4436-8c04-3999a880154c

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.282"></a>
## 2.282 Attribute gPLink

This attribute specifies a value used by the Group Policy Core Protocol. See [MS-GPOL](../MS-GPOL/MS-GPOL.md) section 2.2.2.

cn: GP-Link

ldapDisplayName: gPLink

attributeId: 1.2.840.113556.1.4.891

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f30e3bbe-9ff0-11d1-b603-0000f80367c1

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.283"></a>
## 2.283 Attribute gPOptions

Options that affect all Group Policy associated with the object hosting this property.

cn: GP-Options

ldapDisplayName: gPOptions

attributeId: 1.2.840.113556.1.4.892

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: f30e3bbf-9ff0-11d1-b603-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.284"></a>
## 2.284 Attribute groupAttributes

cn: Group-Attributes

ldapDisplayName: groupAttributes

attributeId: 1.2.840.113556.1.4.152

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf96797e-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fATTINDEX

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.285"></a>
## 2.285 Attribute groupMembershipSAM

Windows NT security. Down-level Windows NT support.

cn: Group-Membership-SAM

ldapDisplayName: groupMembershipSAM

attributeId: 1.2.840.113556.1.4.166

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf967980-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.286"></a>
## 2.286 Attribute groupPriority

cn: Group-Priority

ldapDisplayName: groupPriority

attributeId: 1.2.840.113556.1.4.345

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: eea65905-8ac6-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.287"></a>
## 2.287 Attribute groupsToIgnore

cn: Groups-to-Ignore

ldapDisplayName: groupsToIgnore

attributeId: 1.2.840.113556.1.4.344

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: eea65904-8ac6-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.288"></a>
## 2.288 Attribute groupType

This attribute contains a set of flags that define the type and scope of a group object. For more information about the possible values for this attribute, see the Remarks section of [[MSDN-GroupType]](https://go.microsoft.com/fwlink/?LinkId=90016).

cn: Group-Type

ldapDisplayName: groupType

attributeId: 1.2.840.113556.1.4.750

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 9a9a021e-4a5b-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: fPRESERVEONDELETE | fATTINDEX

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.289"></a>
## 2.289 Attribute hasMasterNCs

This attribute contains the distinguished names of naming contexts. Forward link for the Mastered-By attribute.

cn: Has-Master-NCs

ldapDisplayName: hasMasterNCs

attributeId: 1.2.840.113556.1.2.14

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: bf967982-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

linkID: 76

mapiID: 32950

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.290"></a>
## 2.290 Attribute hasPartialReplicaNCs

Sibling to [Has-Master-NCs](#Section_051f12ad8cc84fa9a45291303d8c4388). The Has-Partial-Replica-NCs attribute reflects the distinguished name for all other-domain NCs that have been replicated into a global catalog (GC).

cn: Has-Partial-Replica-NCs

ldapDisplayName: hasPartialReplicaNCs

attributeId: 1.2.840.113556.1.2.15

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: bf967981-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

linkID: 74

mapiID: 32949

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.291"></a>
## 2.291 Attribute helpData16

This attribute was used for the Win16 Help file format for Exchange Server 4.0. It is not used for any other versions of Exchange Server.

cn: Help-Data16

ldapDisplayName: helpData16

attributeId: 1.2.840.113556.1.2.402

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 5fd424a7-1262-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 32768

mapiID: 32826

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.292"></a>
## 2.292 Attribute helpData32

This attribute was used for the Win32 Help file format for Exchange Server 4.0. It is not used for any other versions of Exchange Server.

cn: Help-Data32

ldapDisplayName: helpData32

attributeId: 1.2.840.113556.1.2.9

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 5fd424a8-1262-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 32768

mapiID: 32784

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.293"></a>
## 2.293 Attribute helpFileName

This attribute was used for Exchange Server 4.0. It contained the name that is used for the file when the provider downloaded Help data to a client computer. It is not used for any other versions of Exchange Server.

cn: Help-File-Name

ldapDisplayName: helpFileName

attributeId: 1.2.840.113556.1.2.327

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 5fd424a9-1262-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 13

mapiID: 32827

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.294"></a>
## 2.294 Attribute hideFromAB

This is a defunct attribute and is not to be used.

cn: Hide-From-AB

ldapDisplayName: hideFromAB

attributeId: 1.2.840.113556.1.4.1780

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: ec05b750-a977-4efe-8e8d-ba6c1a6e33a8

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.295"></a>
## 2.295 Attribute homeDirectory

This attribute specifies the home directory for the account. This value can be a null string.

cn: Home-Directory

ldapDisplayName: homeDirectory

attributeId: 1.2.840.113556.1.4.44

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967985-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

attributeSecurityGuid: 5f202010-79a5-11d0-9020-00c04fc2d4cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.296"></a>
## 2.296 Attribute homeDrive

This attribute specifies the drive letter to which to map the UNC path specified by [homeDirectory](#Section_10d700cb29544446a9b469113344421c). The drive letter is specified in the form "<DriveLetter>:" where <DriveLetter> is the letter of the drive to map. The <DriveLetter> is a single, uppercase letter and the colon (:) is required.

cn: Home-Drive

ldapDisplayName: homeDrive

attributeId: 1.2.840.113556.1.4.45

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967986-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

attributeSecurityGuid: 5f202010-79a5-11d0-9020-00c04fc2d4cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.297"></a>
## 2.297 Attribute homePhone

The user's main home telephone number.

cn: Phone-Home-Primary

ldapDisplayName: homePhone

attributeId: 0.9.2342.19200300.100.1.20

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f0f8ffa1-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 14857

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, the following attributes are defined differently.

systemFlags: 0

<a id="Section_2.298"></a>
## 2.298 Attribute homePostalAddress

This attribute specifies a user's home address.

cn: Address-Home

ldapDisplayName: homePostalAddress

attributeId: 1.2.840.113556.1.2.617

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 16775781-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 4096

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 14941

Version-Specific Behavior: First implemented on Windows 2000 Server.

On Windows 2000 Server, the following attribute is defined differently.

systemFlags: FLAG_SCHEMA_BASE_OBJECT

<a id="Section_2.299"></a>
## 2.299 Attribute host

This attribute type specifies a host computer.

cn: host

ldapDisplayName: host

attributeId: 0.9.2342.19200300.100.1.9

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 6043df71-fa48-46cf-ab7c-cbd54644b22d

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 256

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.300"></a>
## 2.300 Attribute houseIdentifier

The houseIdentifier attribute specifies a linguistic construct used to identify a particular building; for example, a house number or house name relative to a street, avenue, town, or city.

cn: houseIdentifier

ldapDisplayName: houseIdentifier

attributeId: 2.5.4.51

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: a45398b7-c44a-4eb6-82d3-13c10946dbfe

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 32768

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.301"></a>
## 2.301 Attribute iconPath

This attribute specifies the source for loading an icon.

cn: Icon-Path

ldapDisplayName: iconPath

attributeId: 1.2.840.113556.1.4.219

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: f0f8ff83-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 2048

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.302"></a>
## 2.302 Attribute implementedCategories

This attribute specifies a list of component category IDs that this object implements.

cn: Implemented-Categories

ldapDisplayName: implementedCategories

attributeId: 1.2.840.113556.1.4.320

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 7d6c0e92-7e20-11d0-afd6-00c04fd930c9

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 16

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.303"></a>
## 2.303 Attribute indexedScopes

This attribute specifies the list of indexed directory scopes (for example, C:\ or D:\).

cn: IndexedScopes

ldapDisplayName: indexedScopes

attributeId: 1.2.840.113556.1.4.681

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 7bfdcb87-4807-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.304"></a>
## 2.304 Attribute info

This attribute specifies the user's comments. This string can be a null string.

cn: Comment

ldapDisplayName: info

attributeId: 1.2.840.113556.1.2.81

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf96793e-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 1024

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 12292

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.305"></a>
## 2.305 Attribute initialAuthIncoming

This attribute is not necessary for Active Directory functioning, and this protocol does not define a format beyond that required by the schema.

cn: Initial-Auth-Incoming

ldapDisplayName: initialAuthIncoming

attributeId: 1.2.840.113556.1.4.539

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 52458023-ca6a-11d0-afff-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.306"></a>
## 2.306 Attribute initialAuthOutgoing

This attribute is used to contain information about an initial outgoing authentication sent by the authentication server for this domain to the client that requested authentication. The server that uses this attribute receives the authorization from the authentication server and sends it to the client.

cn: Initial-Auth-Outgoing

ldapDisplayName: initialAuthOutgoing

attributeId: 1.2.840.113556.1.4.540

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 52458024-ca6a-11d0-afff-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.307"></a>
## 2.307 Attribute initials

This attribute contains the initials for parts of the user's full name. This can be used as the middle initial in the Windows address book.

cn: Initials

ldapDisplayName: initials

attributeId: 2.5.4.43

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f0f8ff90-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 6

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

mapiID: 14858

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.308"></a>
## 2.308 Attribute installUiLevel

This attribute specifies information for the type (level) of installation that is used for the user interface. Possible installation levels are as follows: 2 INSTALLUILEVEL_NONE (silent installation), 3 INSTALLUILEVEL_BASIC (simple installation with error handling), 4 INSTALLUILEVEL_REDUCED (authored UI, wizard dialogs suppressed), and 5 INSTALLUILEVEL_FULL (authored UI with wizards, progress, and errors).

cn: Install-Ui-Level

ldapDisplayName: installUiLevel

attributeId: 1.2.840.113556.1.4.847

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 96a7dd64-9118-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.309"></a>
## 2.309 Attribute instanceType

A bit field that dictates how the object is instantiated on a particular server. The value of this attribute can differ on different replicas even if the replicas are in sync. This attribute can be zero or a combination of one or more of the following bit flags.

| Bit Range | Field | Description |
| --- | --- | --- |
| Variable | 0x00000001 | The head of naming context. |
| Variable | 0x00000002 | This replica is not instantiated. |
| Variable | 0x00000004 | The object is writable on this directory. |
| Variable | 0x00000008 | The naming context above this one on this directory is held. |
| Variable | 0x00000010 | The naming context is being constructed for the first time via replication. |
| Variable | 0x00000020 | The naming context is being removed from the local directory system agent (DSA). |

cn: Instance-Type

ldapDisplayName: instanceType

attributeId: 1.2.840.113556.1.2.1

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf96798c-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

mapiID: 32957

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.310"></a>
## 2.310 Attribute internationalISDNNumber

This attribute specifies an international ISDN number associated with an object.

cn: International-ISDN-Number

ldapDisplayName: internationalISDNNumber

attributeId: 2.5.4.25

attributeSyntax: 2.5.5.6

omSyntax: 18

isSingleValued: FALSE

schemaIdGuid: bf96798d-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 16

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 32958

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.311"></a>
## 2.311 Attribute interSiteTopologyFailover

This attribute indicates how much time can transpire since the last keep-alive message for the intersite topology generator to be considered dead.

cn: Inter-Site-Topology-Failover

ldapDisplayName: interSiteTopologyFailover

attributeId: 1.2.840.113556.1.4.1248

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: b7c69e60-2cc7-11d2-854e-00a0c983f608

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

**Note**: This attribute is used for the server-to-server replication implementation only; the meaning is not significant to Windows clients.

<a id="Section_2.312"></a>
## 2.312 Attribute interSiteTopologyGenerator

This attribute specifies support failover for the machine designated as the one that runs Knowledge Consistency Checker (KCC) intersite topology generation in a given site.

cn: Inter-Site-Topology-Generator

ldapDisplayName: interSiteTopologyGenerator

attributeId: 1.2.840.113556.1.4.1246

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: b7c69e5e-2cc7-11d2-854e-00a0c983f608

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

**Note**: This attribute is used for the server-to-server replication implementation only; the meaning is not significant to Windows clients.

<a id="Section_2.313"></a>
## 2.313 Attribute interSiteTopologyRenew

This attribute indicates how often the intersite topology generator updates the keep-alive message that is sent to domain controllers that are contained in the same site.

cn: Inter-Site-Topology-Renew

ldapDisplayName: interSiteTopologyRenew

attributeId: 1.2.840.113556.1.4.1247

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: b7c69e5f-2cc7-11d2-854e-00a0c983f608

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

**Note**: This attribute is used for the server-to-server replication implementation only; the meaning is not significant to Windows clients.

<a id="Section_2.314"></a>
## 2.314 Attribute invocationId

This attribute is used to uniquely identify the specific version of the directory database associated with a domain controller.

cn: Invocation-Id

ldapDisplayName: invocationId

attributeId: 1.2.840.113556.1.2.115

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf96798e-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fATTINDEX

mapiID: 32959

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, the following attributes are defined differently.

searchFlags: 0

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.315"></a>
## 2.315 Attribute ipHostNumber

This attribute specifies the IP address as a dotted decimal, omitting leading zeros.

cn: IpHostNumber

ldapDisplayName: ipHostNumber

attributeId: 1.3.6.1.1.1.1.19

attributeSyntax: 2.5.5.5

omSyntax: 22

isSingleValued: FALSE

schemaIdGuid: de8bb721-85dc-4fde-b687-9657688e667e

systemOnly: FALSE

searchFlags: 0

rangeUpper: 128

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.316"></a>
## 2.316 Attribute ipNetmaskNumber

This attribute specifies the IP netmask as a dotted decimal, omitting leading zeros.

cn: IpNetmaskNumber

ldapDisplayName: ipNetmaskNumber

attributeId: 1.3.6.1.1.1.1.21

attributeSyntax: 2.5.5.5

omSyntax: 22

isSingleValued: TRUE

schemaIdGuid: 6ff64fcd-462e-4f62-b44a-9a5347659eb9

systemOnly: FALSE

searchFlags: 0

rangeUpper: 128

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.317"></a>
## 2.317 Attribute ipNetworkNumber

This attribute specifies the IP network as a dotted decimal, omitting leading zeros.

cn: IpNetworkNumber

ldapDisplayName: ipNetworkNumber

attributeId: 1.3.6.1.1.1.1.20

attributeSyntax: 2.5.5.5

omSyntax: 22

isSingleValued: TRUE

schemaIdGuid: 4e3854f4-3087-42a4-a813-bb0c528958d3

systemOnly: FALSE

searchFlags: 0

rangeUpper: 128

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.318"></a>
## 2.318 Attribute ipPhone

This attribute specifies the TCP/IP address for the telephone. It is used by telephony.

cn: Phone-Ip-Primary

ldapDisplayName: ipPhone

attributeId: 1.2.840.113556.1.4.721

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 4d146e4a-48d4-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, rangeUpper is not defined.

<a id="Section_2.319"></a>
## 2.319 Attribute ipProtocolNumber

This attribute is part of the protocols map and stores the unique number that identifies the protocol.

cn: IpProtocolNumber

ldapDisplayName: ipProtocolNumber

attributeId: 1.3.6.1.1.1.1.17

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: ebf5c6eb-0e2d-4415-9670-1081993b4211

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.320"></a>
## 2.320 Attribute ipsecData

The Ipsec-Data attribute is for internal use only.

cn: Ipsec-Data

ldapDisplayName: ipsecData

attributeId: 1.2.840.113556.1.4.623

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: b40ff81f-427a-11d1-a9c2-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.321"></a>
## 2.321 Attribute ipsecDataType

The Ipsec-Data-Type attribute is for internal use only.

cn: Ipsec-Data-Type

ldapDisplayName: ipsecDataType

attributeId: 1.2.840.113556.1.4.622

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: b40ff81e-427a-11d1-a9c2-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.322"></a>
## 2.322 Attribute ipsecFilterReference

The Ipsec-Filter-Reference attribute.

cn: Ipsec-Filter-Reference

ldapDisplayName: ipsecFilterReference

attributeId: 1.2.840.113556.1.4.629

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: b40ff823-427a-11d1-a9c2-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.323"></a>
## 2.323 Attribute ipsecID

The Ipsec-ID attribute.

cn: Ipsec-ID

ldapDisplayName: ipsecID

attributeId: 1.2.840.113556.1.4.621

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: b40ff81d-427a-11d1-a9c2-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.324"></a>
## 2.324 Attribute ipsecISAKMPReference

The Ipsec-ISAKMP-Reference attribute (see [MS-GPIPSEC](../MS-GPIPSEC/MS-GPIPSEC.md) section 2.2.1.1.1).

cn: Ipsec-ISAKMP-Reference

ldapDisplayName: ipsecISAKMPReference

attributeId: 1.2.840.113556.1.4.626

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: b40ff820-427a-11d1-a9c2-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.325"></a>
## 2.325 Attribute ipsecName

The Ipsec-Name attribute.

cn: Ipsec-Name

ldapDisplayName: ipsecName

attributeId: 1.2.840.113556.1.4.620

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: b40ff81c-427a-11d1-a9c2-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.326"></a>
## 2.326 Attribute iPSECNegotiationPolicyAction

The IPSEC-Negotiation-Policy-Action attribute.

cn: IPSEC-Negotiation-Policy-Action

ldapDisplayName: iPSECNegotiationPolicyAction

attributeId: 1.2.840.113556.1.4.888

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 07383075-91df-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.327"></a>
## 2.327 Attribute ipsecNegotiationPolicyReference

The Ipsec-Negotiation-Policy-Reference attribute.

cn: Ipsec-Negotiation-Policy-Reference

ldapDisplayName: ipsecNegotiationPolicyReference

attributeId: 1.2.840.113556.1.4.628

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: b40ff822-427a-11d1-a9c2-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.328"></a>
## 2.328 Attribute iPSECNegotiationPolicyType

The IPSEC-Negotiation-Policy-Type attribute.

cn: IPSEC-Negotiation-Policy-Type

ldapDisplayName: iPSECNegotiationPolicyType

attributeId: 1.2.840.113556.1.4.887

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 07383074-91df-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.329"></a>
## 2.329 Attribute ipsecNFAReference

The Ipsec-NFA-Reference attribute (see [MS-GPIPSEC](../MS-GPIPSEC/MS-GPIPSEC.md) section 2.2.1.1.1).

cn: Ipsec-NFA-Reference

ldapDisplayName: ipsecNFAReference

attributeId: 1.2.840.113556.1.4.627

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: b40ff821-427a-11d1-a9c2-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.330"></a>
## 2.330 Attribute ipsecOwnersReference

The Ipsec-Owners-Reference attribute.

cn: Ipsec-Owners-Reference

ldapDisplayName: ipsecOwnersReference

attributeId: 1.2.840.113556.1.4.624

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: b40ff824-427a-11d1-a9c2-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.331"></a>
## 2.331 Attribute ipsecPolicyReference

The Ipsec-Policy-Reference attribute.

cn: Ipsec-Policy-Reference

ldapDisplayName: ipsecPolicyReference

attributeId: 1.2.840.113556.1.4.517

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: b7b13118-b82e-11d0-afee-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.332"></a>
## 2.332 Attribute ipServicePort

This is a part of the services map and contains the port at which the UNIX service is available.

cn: IpServicePort

ldapDisplayName: ipServicePort

attributeId: 1.3.6.1.1.1.1.15

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: ff2daebf-f463-495a-8405-3e483641eaa2

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.333"></a>
## 2.333 Attribute ipServiceProtocol

This is a part of the services map and stores the protocol number for a UNIX service.

cn: IpServiceProtocol

ldapDisplayName: ipServiceProtocol

attributeId: 1.3.6.1.1.1.1.16

attributeSyntax: 2.5.5.5

omSyntax: 22

isSingleValued: FALSE

schemaIdGuid: cd96ec0b-1ed6-43b4-b26b-f170b645883f

systemOnly: FALSE

searchFlags: 0

rangeUpper: 1024

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.334"></a>
## 2.334 Attribute isCriticalSystemObject

If TRUE, the object hosting this attribute is replicated during installation of a new replica.

cn: Is-Critical-System-Object

ldapDisplayName: isCriticalSystemObject

attributeId: 1.2.840.113556.1.4.868

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 00fbf30d-91fe-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.335"></a>
## 2.335 Attribute isDefunct

If TRUE, the class or attribute is no longer usable. Old versions of this object can exist, but new ones cannot be created.

cn: Is-Defunct

ldapDisplayName: isDefunct

attributeId: 1.2.840.113556.1.4.661

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 28630ebe-41d5-11d1-a9c1-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.336"></a>
## 2.336 Attribute isDeleted

If TRUE, this object has been marked for deletion and will be removed from the Active Directory system [MS-ADOD](../MS-ADOD/MS-ADOD.md).

cn: Is-Deleted

ldapDisplayName: isDeleted

attributeId: 1.2.840.113556.1.2.48

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: bf96798f-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

mapiID: 32960

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.337"></a>
## 2.337 Attribute isEphemeral

cn: Is-Ephemeral

ldapDisplayName: isEphemeral

attributeId: 1.2.840.113556.1.4.1212

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: f4c453f0-c5f1-11d1-bbcb-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.338"></a>
## 2.338 Attribute isMemberOfPartialAttributeSet

If TRUE, this attribute is replicated to the global catalog.

cn: Is-Member-Of-Partial-Attribute-Set

ldapDisplayName: isMemberOfPartialAttributeSet

attributeId: 1.2.840.113556.1.4.639

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 19405b9d-3cfa-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.339"></a>
## 2.339 Attribute isPrivilegeHolder

This attribute specifies a back link to privileges held by a given principal.

cn: Is-Privilege-Holder

ldapDisplayName: isPrivilegeHolder

attributeId: 1.2.840.113556.1.4.638

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 19405b9c-3cfa-11d1-a9c0-0000f80367c1

systemOnly: TRUE

searchFlags: 0

linkID: 71

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.340"></a>
## 2.340 Attribute isRecycled

If TRUE, this object has been marked for permanent deletion. Additionally, if the Recycle Bin optional feature is enabled, the value TRUE marks an object that cannot be undeleted. It will be removed from the Active Directory system [MS-ADOD](../MS-ADOD/MS-ADOD.md).

cn: Is-Recycled

ldapDisplayName: isRecycled

attributeId: 1.2.840.113556.1.4.2058

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 8fb59256-55f1-444b-aacb-f5b482fe3459

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

isMemberOfPartialAttributeSet: TRUE

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows Server 2008 R2 operating system.

<a id="Section_2.341"></a>
## 2.341 Attribute isSingleValued

If TRUE, this attribute can only store one value.

cn: Is-Single-Valued

ldapDisplayName: isSingleValued

attributeId: 1.2.840.113556.1.2.33

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: bf967992-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

mapiID: 32961

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.342"></a>
## 2.342 Attribute jpegPhoto

Used to store one or more images of a person by using the JPEG File Interchange Format, as specified in [[JFIF]](https://go.microsoft.com/fwlink/?LinkId=89925).

cn: jpegPhoto

ldapDisplayName: jpegPhoto

attributeId: 0.9.2342.19200300.100.1.60

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bac80572-09c4-4fa9-9ae6-7628d7adbe0e

systemOnly: FALSE

searchFlags: 0

showInAdvancedViewOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.343"></a>
## 2.343 Attribute keywords

This attribute specifies a list of keywords that can be used to locate a given connection point.

cn: Keywords

ldapDisplayName: keywords

attributeId: 1.2.840.113556.1.4.48

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf967993-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 1

rangeUpper: 256

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.344"></a>
## 2.344 Attribute knowledgeInformation

This attribute specifies a human-readable accumulated description of knowledge that is mastered by a specific DSA.

cn: Knowledge-Information

ldapDisplayName: knowledgeInformation

attributeId: 2.5.4.2

attributeSyntax: 2.5.5.4

omSyntax: 20

isSingleValued: FALSE

schemaIdGuid: 1677581f-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

mapiID: 32963

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.345"></a>
## 2.345 Attribute l

This attribute represents the name of a locality, such as a town or city.

cn: Locality-Name

ldapDisplayName: l

attributeId: 2.5.4.7

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf9679a2-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY | fATTINDEX

rangeLower: 1

rangeUpper: 128

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 14887

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.346"></a>
## 2.346 Attribute labeledURI

This attribute specifies a Uniform Resource Identifier (URI) followed by a label. The label is used to describe the resource to which the URI points, and it is intended as a friendly name.

cn: labeledURI

ldapDisplayName: labeledURI

attributeId: 1.3.6.1.4.1.250.1.57

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: c569bb46-c680-44bc-a273-e6c227d71b45

systemOnly: FALSE

searchFlags: 0

showInAdvancedViewOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.347"></a>
## 2.347 Attribute lastBackupRestorationTime

This attribute specifies when the last system restore occurred.

cn: Last-Backup-Restoration-Time

ldapDisplayName: lastBackupRestorationTime

attributeId: 1.2.840.113556.1.4.519

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 1fbb0be8-ba63-11d0-afef-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.348"></a>
## 2.348 Attribute lastContentIndexed

This attribute specifies the time this volume was last content-indexed.

cn: Last-Content-Indexed

ldapDisplayName: lastContentIndexed

attributeId: 1.2.840.113556.1.4.50

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967995-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.349"></a>
## 2.349 Attribute lastKnownParent

This attribute specifies the distinguished name of the last known parent of an orphaned or deleted object.

cn: Last-Known-Parent

ldapDisplayName: lastKnownParent

attributeId: 1.2.840.113556.1.4.781

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 52ab8670-5709-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.350"></a>
## 2.350 Attribute lastLogoff

This attribute specifies the last time the user logged off. This value is stored as a large integer that represents the number of 100 nanosecond intervals since January 1, 1601 (UTC). A value of zero means that the last logoff time is unknown.

cn: Last-Logoff

ldapDisplayName: lastLogoff

attributeId: 1.2.840.113556.1.4.51

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967996-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 5f202010-79a5-11d0-9020-00c04fc2d4cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.351"></a>
## 2.351 Attribute lastLogon

This attribute specifies the last time the user logged on. This value is stored as a large integer that represents the number of 100 nanosecond intervals since January 1, 1601 (UTC). A value of zero means that the last logon time is unknown.

cn: Last-Logon

ldapDisplayName: lastLogon

attributeId: 1.2.840.113556.1.4.52

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967997-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 5f202010-79a5-11d0-9020-00c04fc2d4cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.352"></a>
## 2.352 Attribute lastLogonTimestamp

This is the time that the user last logged on to the domain. Whenever a user logs on, the value of this attribute is read from the DC. If msDS-LogonTimeSyncInterval is nonzero, and the value is older than (current_time - msDS-LogonTimeSyncInterval), the value is updated with the current time. The initial update, after the domain functional level is raised to DS_BEHAVIOR_WIN2003 or higher, is calculated as 14 days minus a random percentage of 5 days.

**Note**: This attribute is present on objects only when the domain functional level is DS_BEHAVIOR_WIN2003 or higher.

cn: Last-Logon-Timestamp

ldapDisplayName: lastLogonTimestamp

attributeId: 1.2.840.113556.1.4.1696

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: c0e20a04-0e5a-4ff3-9482-5efeaecd7060

systemOnly: FALSE

searchFlags: fATTINDEX

attributeSecurityGuid: 5f202010-79a5-11d0-9020-00c04fc2d4cf

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows Server 2003.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.353"></a>
## 2.353 Attribute lastSetTime

This attribute specifies the last time the secret was changed.

cn: Last-Set-Time

ldapDisplayName: lastSetTime

attributeId: 1.2.840.113556.1.4.53

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967998-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.354"></a>
## 2.354 Attribute lastUpdateSequence

This attribute specifies the update sequence number for the last item in the class store that was changed.

cn: Last-Update-Sequence

ldapDisplayName: lastUpdateSequence

attributeId: 1.2.840.113556.1.4.330

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 7d6c0e9c-7e20-11d0-afd6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.355"></a>
## 2.355 Attribute lDAPAdminLimits

This attribute contains a set of attribute-value pairs defining LDAP server administrative limits.

cn: LDAP-Admin-Limits

ldapDisplayName: lDAPAdminLimits

attributeId: 1.2.840.113556.1.4.843

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 7359a352-90f7-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.356"></a>
## 2.356 Attribute lDAPDisplayName

This attribute specifies the name used by LDAP clients, such as the ADSI LDAP provider, to read and write the attribute by using the LDAP protocol.

cn: LDAP-Display-Name

ldapDisplayName: lDAPDisplayName

attributeId: 1.2.840.113556.1.2.460

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf96799a-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fPRESERVEONDELETE | fATTINDEX

rangeLower: 1

rangeUpper: 256

mapiID: 33137

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.357"></a>
## 2.357 Attribute lDAPIPDenyList

This attribute holds a list of binary IP addresses that are denied access to an LDAP server.

cn: LDAP-IPDeny-List

ldapDisplayName: lDAPIPDenyList

attributeId: 1.2.840.113556.1.4.844

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 7359a353-90f7-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.358"></a>
## 2.358 Attribute lSACreationTime

This attribute is used to support replication to Windows NT 4.0 domains.

cn: LSA-Creation-Time

ldapDisplayName: lSACreationTime

attributeId: 1.2.840.113556.1.4.66

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf9679ad-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.359"></a>
## 2.359 Attribute lSAModifiedCount

This attribute is used to support replication to Windows NT 4.0 domains.

cn: LSA-Modified-Count

ldapDisplayName: lSAModifiedCount

attributeId: 1.2.840.113556.1.4.67

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf9679ae-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.360"></a>
## 2.360 Attribute legacyExchangeDN

This attribute specifies the distinguished name previously used by Exchange Server.

cn: Legacy-Exchange-DN

ldapDisplayName: legacyExchangeDN

attributeId: 1.2.840.113556.1.4.655

attributeSyntax: 2.5.5.4

omSyntax: 20

isSingleValued: TRUE

schemaIdGuid: 28630ebc-41d5-11d1-a9c1-0000f80367c1

systemOnly: FALSE

searchFlags: fPRESERVEONDELETE| fANR | fATTINDEX

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.361"></a>
## 2.361 Attribute linkID

This attribute specifies an integer that indicates that the attribute is a linked attribute. An even integer is a forward link and an odd integer is a back link.

cn: Link-ID

ldapDisplayName: linkID

attributeId: 1.2.840.113556.1.2.50

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf96799b-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

mapiID: 32965

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.362"></a>
## 2.362 Attribute linkTrackSecret

This attribute specifies a link to a secret key that allows an encrypted file to be translated into plain text.

cn: Link-Track-Secret

ldapDisplayName: linkTrackSecret

attributeId: 1.2.840.113556.1.4.269

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 2ae80fe2-47b4-11d0-a1a4-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.363"></a>
## 2.363 Attribute lmPwdHistory

The password history of the user in LAN Manager (LM) one-way format (OWF). The LM OWF is used for compatibility with LAN Manager 2.x clients, Windows 95 operating system, and Windows 98 operating system.

For more information about usage, refer to [MS-SAMR](../MS-SAMR/MS-SAMR.md) sections 3.1.1.6 and 3.1.1.9.1.

cn: Lm-Pwd-History

ldapDisplayName: lmPwdHistory

attributeId: 1.2.840.113556.1.4.160

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf96799d-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.364"></a>
## 2.364 Attribute localeID

This attribute specifies a list of locale IDs supported by this application. A locale ID represents a geographic location; for example, a country/region, a city, or a county.

cn: Locale-ID

ldapDisplayName: localeID

attributeId: 1.2.840.113556.1.4.58

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: FALSE

schemaIdGuid: bf9679a1-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.365"></a>
## 2.365 Attribute localizationDisplayId

This attribute is used to index the Extrts.mc file to get the localized [displayName](#Section_54c39467cda24af1945413b81d30399a) for the objects, for UI purposes.

cn: Localization-Display-Id

ldapDisplayName: localizationDisplayId

attributeId: 1.2.840.113556.1.4.1353

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: a746f0d1-78d0-11d2-9916-0000f87a57d4

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.366"></a>
## 2.366 Attribute localizedDescription

This attribute specifies the localization ID and display name for an object.

cn: Localized-Description

ldapDisplayName: localizedDescription

attributeId: 1.2.840.113556.1.4.817

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: d9e18316-8939-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.367"></a>
## 2.367 Attribute localPolicyFlags

This attribute specifies flags that determine where a machine gets its policy ([Local-Policy-Reference](#Section_19987e835981433ba8ebf5b858c5bfa5)).

cn: Local-Policy-Flags

ldapDisplayName: localPolicyFlags

attributeId: 1.2.840.113556.1.4.56

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf96799e-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.368"></a>
## 2.368 Attribute localPolicyReference

This attribute specifies the distinguished name of a local policy object that a policy object copies from.

cn: Local-Policy-Reference

ldapDisplayName: localPolicyReference

attributeId: 1.2.840.113556.1.4.457

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 80a67e4d-9f22-11d0-afdd-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: a29b8a01-c7e8-11d0-9bae-00c04fd92ef5

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.369"></a>
## 2.369 Attribute location

This attribute specifies the user's location, such as an office number.

cn: Location

ldapDisplayName: location

attributeId: 1.2.840.113556.1.4.222

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 09dcb79f-165f-11d0-a064-00aa006c33ed

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 0

rangeUpper: 1024

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.370"></a>
## 2.370 Attribute lockoutDuration

This attribute specifies the amount of time an account is locked due to the [Lockout-Threshold](#Section_8424289e0a60433eabd702ff0c1afd1b) being exceeded. This value is stored as a large integer. It represents the negative of the number of 100 nanosecond intervals that elapse, from the time the Lockout-Threshold is exceeded, before the account is unlocked.

cn: Lockout-Duration

ldapDisplayName: lockoutDuration

attributeId: 1.2.840.113556.1.4.60

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf9679a5-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: c7407360-20bf-11d0-a768-00aa006e0529

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, rangeUpper is not defined.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.371"></a>
## 2.371 Attribute lockOutObservationWindow

This attribute specifies the waiting period after which the [Lockout Threshold (section 2.372)](#Section_8424289e0a60433eabd702ff0c1afd1b) is reset. The valid values are <None> and 00:00:00:01 through the [Lockout Duration (section 2.370)](#Section_5952c7f3dd4a4219bcb1dba53eb9266e) value.

cn: Lock-Out-Observation-Window

ldapDisplayName: lockOutObservationWindow

attributeId: 1.2.840.113556.1.4.61

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf9679a4-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: c7407360-20bf-11d0-a768-00aa006e0529

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.372"></a>
## 2.372 Attribute lockoutThreshold

This attribute specifies the number of invalid logon attempts that are permitted before the account is locked out.

cn: Lockout-Threshold

ldapDisplayName: lockoutThreshold

attributeId: 1.2.840.113556.1.4.73

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf9679a6-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeUpper: 65535

attributeSecurityGuid: c7407360-20bf-11d0-a768-00aa006e0529

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.373"></a>
## 2.373 Attribute lockoutTime

This attribute specifies the date and time (UTC) that this account was locked out. This value is stored as a large integer that represents the number of 100 nanosecond intervals since January 1, 1601 (UTC). A value of zero means that the account is not currently locked out.

cn: Lockout-Time

ldapDisplayName: lockoutTime

attributeId: 1.2.840.113556.1.4.662

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 28630ebf-41d5-11d1-a9c1-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.374"></a>
## 2.374 Attribute loginShell

This attribute specifies the path to the logon shell. For more information, see [[RFC2307]](https://go.microsoft.com/fwlink/?LinkId=90333) section 2.2.

cn: LoginShell

ldapDisplayName: loginShell

attributeId: 1.3.6.1.1.1.1.4

attributeSyntax: 2.5.5.5

omSyntax: 22

isSingleValued: TRUE

schemaIdGuid: a553d12c-3231-4c5e-8adf-8d189697721e

systemOnly: FALSE

searchFlags: 0

rangeUpper: 1024

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.375"></a>
## 2.375 Attribute logonCount

This attribute specifies the number of times that the account has successfully logged on. A value of 0 indicates that the value is unknown.

cn: Logon-Count

ldapDisplayName: logonCount

attributeId: 1.2.840.113556.1.4.169

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf9679aa-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 5f202010-79a5-11d0-9020-00c04fc2d4cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.376"></a>
## 2.376 Attribute logonHours

This attribute specifies the hours that the user is allowed to log on to the domain.

cn: Logon-Hours

ldapDisplayName: logonHours

attributeId: 1.2.840.113556.1.4.64

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf9679ab-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

attributeSecurityGuid: 5f202010-79a5-11d0-9020-00c04fc2d4cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.377"></a>
## 2.377 Attribute logonWorkstation

For more information, see the userWorkstations attribute in [MS-ADA3](../MS-ADA3/MS-ADA3.md).

cn: Logon-Workstation

ldapDisplayName: logonWorkstation

attributeId: 1.2.840.113556.1.4.65

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf9679ac-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

attributeSecurityGuid: 5f202010-79a5-11d0-9020-00c04fc2d4cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_3"></a>
# 3 Change Tracking

This section identifies changes that were made to this document since the last release. Changes are classified as Major, Minor, or None.

The revision class **Major** means that the technical content in the document was significantly revised. Major changes affect protocol interoperability or implementation. Examples of major changes are:

- A document revision that incorporates changes to interoperability requirements.
- A document revision that captures changes to protocol functionality.
The revision class **Minor** means that the meaning of the technical content was clarified. Minor changes do not affect protocol interoperability or implementation. Examples of minor changes are updates to clarify ambiguity at the sentence, paragraph, or table level.

The revision class **None** means that no new technical changes were introduced. Minor editorial and formatting changes may have been made, but the relevant technical content is identical to the last released version.

The changes made to this document are listed in the following table. For more information, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com).

| Section | Description | Revision class |
| --- | --- | --- |
| [1](../MS-ADTS/MS-ADTS.md) Introduction | Added a reference to [MS-ADTS] for the list of applicable products. | Minor |

