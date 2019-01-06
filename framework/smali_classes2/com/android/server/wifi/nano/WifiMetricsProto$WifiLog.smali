.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;,
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    }
.end annotation


# static fields
.field public static final FAILURE_WIFI_DISABLED:I = 0x4

.field public static final SCAN_FAILURE_INTERRUPTED:I = 0x2

.field public static final SCAN_FAILURE_INVALID_CONFIGURATION:I = 0x3

.field public static final SCAN_SUCCESS:I = 0x1

.field public static final SCAN_UNKNOWN:I = 0x0

.field public static final WIFI_ASSOCIATED:I = 0x3

.field public static final WIFI_DISABLED:I = 0x1

.field public static final WIFI_DISCONNECTED:I = 0x2

.field public static final WIFI_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;


# instance fields
.field public alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

.field public availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

.field public backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

.field public connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

.field public connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

.field public fullBandAllSingleScanListenerResults:I

.field public isLocationEnabled:Z

.field public isScanningAlwaysEnabled:Z

.field public isWifiNetworksAvailableNotificationOn:Z

.field public numBackgroundScans:I

.field public numConnectivityWatchdogBackgroundBad:I

.field public numConnectivityWatchdogBackgroundGood:I

.field public numConnectivityWatchdogPnoBad:I

.field public numConnectivityWatchdogPnoGood:I

.field public numEmptyScanResults:I

.field public numEnterpriseNetworkScanResults:I

.field public numEnterpriseNetworks:I

.field public numHalCrashes:I

.field public numHiddenNetworkScanResults:I

.field public numHiddenNetworks:I

.field public numHotspot2R1NetworkScanResults:I

.field public numHotspot2R2NetworkScanResults:I

.field public numLastResortWatchdogAvailableNetworksTotal:I

.field public numLastResortWatchdogBadAssociationNetworksTotal:I

.field public numLastResortWatchdogBadAuthenticationNetworksTotal:I

.field public numLastResortWatchdogBadDhcpNetworksTotal:I

.field public numLastResortWatchdogBadOtherNetworksTotal:I

.field public numLastResortWatchdogSuccesses:I

.field public numLastResortWatchdogTriggers:I

.field public numLastResortWatchdogTriggersWithBadAssociation:I

.field public numLastResortWatchdogTriggersWithBadAuthentication:I

.field public numLastResortWatchdogTriggersWithBadDhcp:I

.field public numLastResortWatchdogTriggersWithBadOther:I

.field public numNetworksAddedByApps:I

.field public numNetworksAddedByUser:I

.field public numNonEmptyScanResults:I

.field public numOneshotScans:I

.field public numOpenNetworkConnectMessageFailedToSend:I

.field public numOpenNetworkRecommendationUpdates:I

.field public numOpenNetworkScanResults:I

.field public numOpenNetworks:I

.field public numPasspointNetworks:I

.field public numPasspointProviderInstallSuccess:I

.field public numPasspointProviderInstallation:I

.field public numPasspointProviderUninstallSuccess:I

.field public numPasspointProviderUninstallation:I

.field public numPasspointProviders:I

.field public numPasspointProvidersSuccessfullyConnected:I

.field public numPersonalNetworkScanResults:I

.field public numPersonalNetworks:I

.field public numSavedNetworks:I

.field public numScans:I

.field public numTotalScanResults:I

.field public numWifiOnFailureDueToHal:I

.field public numWifiOnFailureDueToWificond:I

.field public numWifiToggledViaAirplane:I

.field public numWifiToggledViaSettings:I

.field public numWificondCrashes:I

.field public openNetworkRecommenderBlacklistSize:I

.field public partialAllSingleScanListenerResults:I

.field public pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

.field public recordDurationSec:I

.field public rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

.field public rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

.field public scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

.field public softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

.field public staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

.field public totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

.field public wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

.field public wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .registers 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    if-nez v0, :cond_11

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    sput-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    :cond_10
    monitor-exit v1

    :cond_11
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 16

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v12

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-eqz v13, :cond_22

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v13, v13

    if-lez v13, :cond_22

    const/4 v11, 0x0

    :goto_e
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v13, v13

    if-ge v11, v13, :cond_22

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    aget-object v2, v13, v11

    if-eqz v2, :cond_1f

    const/4 v13, 0x1

    invoke-static {v13, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_1f
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_22
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    if-eqz v13, :cond_2e

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    const/4 v14, 0x2

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_2e
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    if-eqz v13, :cond_3a

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    const/4 v14, 0x3

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_3a
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    if-eqz v13, :cond_46

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    const/4 v14, 0x4

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_46
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    if-eqz v13, :cond_52

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    const/4 v14, 0x5

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_52
    iget-boolean v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    if-eqz v13, :cond_5e

    iget-boolean v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    const/4 v14, 0x6

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v13

    add-int/2addr v12, v13

    :cond_5e
    iget-boolean v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    if-eqz v13, :cond_6a

    iget-boolean v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    const/4 v14, 0x7

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v13

    add-int/2addr v12, v13

    :cond_6a
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    if-eqz v13, :cond_77

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    const/16 v14, 0x8

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_77
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    if-eqz v13, :cond_84

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    const/16 v14, 0x9

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_84
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    if-eqz v13, :cond_91

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    const/16 v14, 0xa

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_91
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    if-eqz v13, :cond_9e

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    const/16 v14, 0xb

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_9e
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    if-eqz v13, :cond_ab

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    const/16 v14, 0xc

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_ab
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    if-eqz v13, :cond_b8

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    const/16 v14, 0xd

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_b8
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    if-eqz v13, :cond_c5

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    const/16 v14, 0xe

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_c5
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    if-eqz v13, :cond_d2

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    const/16 v14, 0xf

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_d2
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v13, :cond_f1

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v13, v13

    if-lez v13, :cond_f1

    const/4 v11, 0x0

    :goto_dc
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v13, v13

    if-ge v11, v13, :cond_f1

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v8, v13, v11

    if-eqz v8, :cond_ee

    const/16 v13, 0x10

    invoke-static {v13, v8}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_ee
    add-int/lit8 v11, v11, 0x1

    goto :goto_dc

    :cond_f1
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v13, :cond_110

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v13, v13

    if-lez v13, :cond_110

    const/4 v11, 0x0

    :goto_fb
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v13, v13

    if-ge v11, v13, :cond_110

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v9, v13, v11

    if-eqz v9, :cond_10d

    const/16 v13, 0x11

    invoke-static {v13, v9}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_10d
    add-int/lit8 v11, v11, 0x1

    goto :goto_fb

    :cond_110
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v13, :cond_12f

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v13, v13

    if-lez v13, :cond_12f

    const/4 v11, 0x0

    :goto_11a
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v13, v13

    if-ge v11, v13, :cond_12f

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v8, v13, v11

    if-eqz v8, :cond_12c

    const/16 v13, 0x12

    invoke-static {v13, v8}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_12c
    add-int/lit8 v11, v11, 0x1

    goto :goto_11a

    :cond_12f
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v13, :cond_14e

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v13, v13

    if-lez v13, :cond_14e

    const/4 v11, 0x0

    :goto_139
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v13, v13

    if-ge v11, v13, :cond_14e

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v9, v13, v11

    if-eqz v9, :cond_14b

    const/16 v13, 0x13

    invoke-static {v13, v9}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_14b
    add-int/lit8 v11, v11, 0x1

    goto :goto_139

    :cond_14e
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    if-eqz v13, :cond_15b

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    const/16 v14, 0x14

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_15b
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    if-eqz v13, :cond_168

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    const/16 v14, 0x15

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_168
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    if-eqz v13, :cond_175

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    const/16 v14, 0x16

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_175
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    if-eqz v13, :cond_182

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    const/16 v14, 0x17

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_182
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    if-eqz v13, :cond_18f

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    const/16 v14, 0x18

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_18f
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    if-eqz v13, :cond_19c

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    const/16 v14, 0x19

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_19c
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    if-eqz v13, :cond_1a9

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    const/16 v14, 0x1a

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_1a9
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    if-eqz v13, :cond_1b6

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    const/16 v14, 0x1b

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_1b6
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    if-eqz v13, :cond_1c3

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    const/16 v14, 0x1c

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_1c3
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    if-eqz v13, :cond_1d0

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    const/16 v14, 0x1d

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_1d0
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    if-eqz v13, :cond_1dd

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    const/16 v14, 0x1e

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_1dd
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    if-eqz v13, :cond_1ea

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    const/16 v14, 0x1f

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_1ea
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    if-eqz v13, :cond_1f7

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    const/16 v14, 0x20

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_1f7
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    if-eqz v13, :cond_204

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    const/16 v14, 0x21

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_204
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    if-eqz v13, :cond_211

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    const/16 v14, 0x22

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_211
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v13, :cond_230

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v13, v13

    if-lez v13, :cond_230

    const/4 v11, 0x0

    :goto_21b
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v13, v13

    if-ge v11, v13, :cond_230

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v4, v13, v11

    if-eqz v4, :cond_22d

    const/16 v13, 0x23

    invoke-static {v13, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_22d
    add-int/lit8 v11, v11, 0x1

    goto :goto_21b

    :cond_230
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    if-eqz v13, :cond_23d

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    const/16 v14, 0x24

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_23d
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    if-eqz v13, :cond_24a

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    const/16 v14, 0x25

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_24a
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    if-eqz v13, :cond_257

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    const/16 v14, 0x26

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_257
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    if-eqz v13, :cond_264

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    const/16 v14, 0x27

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_264
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    if-eqz v13, :cond_271

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    const/16 v14, 0x28

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_271
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    if-eqz v13, :cond_27e

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    const/16 v14, 0x29

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_27e
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    if-eqz v13, :cond_28b

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    const/16 v14, 0x2a

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_28b
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    if-eqz v13, :cond_298

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    const/16 v14, 0x2b

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_298
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    if-eqz v13, :cond_2a5

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    const/16 v14, 0x2c

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_2a5
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    if-eqz v13, :cond_2b2

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    const/16 v14, 0x2d

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_2b2
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    if-eqz v13, :cond_2bf

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    const/16 v14, 0x2e

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_2bf
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-eqz v13, :cond_2de

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v13, v13

    if-lez v13, :cond_2de

    const/4 v11, 0x0

    :goto_2c9
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v13, v13

    if-ge v11, v13, :cond_2de

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    aget-object v0, v13, v11

    if-eqz v0, :cond_2db

    const/16 v13, 0x2f

    invoke-static {v13, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_2db
    add-int/lit8 v11, v11, 0x1

    goto :goto_2c9

    :cond_2de
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-eqz v13, :cond_2fd

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v13, v13

    if-lez v13, :cond_2fd

    const/4 v11, 0x0

    :goto_2e8
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v13, v13

    if-ge v11, v13, :cond_2fd

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    aget-object v10, v13, v11

    if-eqz v10, :cond_2fa

    const/16 v13, 0x30

    invoke-static {v13, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_2fa
    add-int/lit8 v11, v11, 0x1

    goto :goto_2e8

    :cond_2fd
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-eqz v13, :cond_31c

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v13, v13

    if-lez v13, :cond_31c

    const/4 v11, 0x0

    :goto_307
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_31c

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    aget-object v5, v13, v11

    if-eqz v5, :cond_319

    const/16 v13, 0x31

    invoke-static {v13, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_319
    add-int/lit8 v11, v11, 0x1

    goto :goto_307

    :cond_31c
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-eqz v13, :cond_33b

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v13, v13

    if-lez v13, :cond_33b

    const/4 v11, 0x0

    :goto_326
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v13, v13

    if-ge v11, v13, :cond_33b

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    aget-object v6, v13, v11

    if-eqz v6, :cond_338

    const/16 v13, 0x32

    invoke-static {v13, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_338
    add-int/lit8 v11, v11, 0x1

    goto :goto_326

    :cond_33b
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v13, :cond_35a

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v13, v13

    if-lez v13, :cond_35a

    const/4 v11, 0x0

    :goto_345
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v13, v13

    if-ge v11, v13, :cond_35a

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v4, v13, v11

    if-eqz v4, :cond_357

    const/16 v13, 0x33

    invoke-static {v13, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_357
    add-int/lit8 v11, v11, 0x1

    goto :goto_345

    :cond_35a
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-eqz v13, :cond_379

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v13, v13

    if-lez v13, :cond_379

    const/4 v11, 0x0

    :goto_364
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v13, v13

    if-ge v11, v13, :cond_379

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    aget-object v7, v13, v11

    if-eqz v7, :cond_376

    const/16 v13, 0x34

    invoke-static {v13, v7}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_376
    add-int/lit8 v11, v11, 0x1

    goto :goto_364

    :cond_379
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    if-eqz v13, :cond_386

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    const/16 v14, 0x35

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_386
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    if-eqz v13, :cond_393

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    const/16 v14, 0x36

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_393
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    if-eqz v13, :cond_3a0

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    const/16 v14, 0x37

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_3a0
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    if-eqz v13, :cond_3ad

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    const/16 v14, 0x38

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_3ad
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-eqz v13, :cond_3ba

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    const/16 v14, 0x39

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_3ba
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    if-eqz v13, :cond_3c7

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    const/16 v14, 0x3a

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_3c7
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    if-eqz v13, :cond_3d4

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    const/16 v14, 0x3b

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_3d4
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    if-eqz v13, :cond_3e1

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    const/16 v14, 0x3c

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_3e1
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    if-eqz v13, :cond_3ee

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    const/16 v14, 0x3d

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_3ee
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    if-eqz v13, :cond_3fb

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    const/16 v14, 0x3e

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_3fb
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    if-eqz v13, :cond_408

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    const/16 v14, 0x3f

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_408
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_427

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_427

    const/4 v11, 0x0

    :goto_412
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_427

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    if-eqz v3, :cond_424

    const/16 v13, 0x40

    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_424
    add-int/lit8 v11, v11, 0x1

    goto :goto_412

    :cond_427
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_446

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_446

    const/4 v11, 0x0

    :goto_431
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_446

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    if-eqz v3, :cond_443

    const/16 v13, 0x41

    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_443
    add-int/lit8 v11, v11, 0x1

    goto :goto_431

    :cond_446
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_465

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_465

    const/4 v11, 0x0

    :goto_450
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_465

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    if-eqz v3, :cond_462

    const/16 v13, 0x42

    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_462
    add-int/lit8 v11, v11, 0x1

    goto :goto_450

    :cond_465
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_484

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_484

    const/4 v11, 0x0

    :goto_46f
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_484

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    if-eqz v3, :cond_481

    const/16 v13, 0x43

    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_481
    add-int/lit8 v11, v11, 0x1

    goto :goto_46f

    :cond_484
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_4a3

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_4a3

    const/4 v11, 0x0

    :goto_48e
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_4a3

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    if-eqz v3, :cond_4a0

    const/16 v13, 0x44

    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_4a0
    add-int/lit8 v11, v11, 0x1

    goto :goto_48e

    :cond_4a3
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_4c2

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_4c2

    const/4 v11, 0x0

    :goto_4ad
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_4c2

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    if-eqz v3, :cond_4bf

    const/16 v13, 0x45

    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_4bf
    add-int/lit8 v11, v11, 0x1

    goto :goto_4ad

    :cond_4c2
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_4e1

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_4e1

    const/4 v11, 0x0

    :goto_4cc
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_4e1

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    if-eqz v3, :cond_4de

    const/16 v13, 0x46

    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_4de
    add-int/lit8 v11, v11, 0x1

    goto :goto_4cc

    :cond_4e1
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_500

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_500

    const/4 v11, 0x0

    :goto_4eb
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_500

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    if-eqz v3, :cond_4fd

    const/16 v13, 0x47

    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_4fd
    add-int/lit8 v11, v11, 0x1

    goto :goto_4eb

    :cond_500
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_51f

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_51f

    const/4 v11, 0x0

    :goto_50a
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_51f

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    if-eqz v3, :cond_51c

    const/16 v13, 0x48

    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_51c
    add-int/lit8 v11, v11, 0x1

    goto :goto_50a

    :cond_51f
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_53e

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_53e

    const/4 v11, 0x0

    :goto_529
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_53e

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    if-eqz v3, :cond_53b

    const/16 v13, 0x49

    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_53b
    add-int/lit8 v11, v11, 0x1

    goto :goto_529

    :cond_53e
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    if-eqz v13, :cond_54b

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    const/16 v14, 0x4a

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_54b
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    if-eqz v13, :cond_558

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    const/16 v14, 0x4b

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_558
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    if-eqz v13, :cond_565

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    const/16 v14, 0x4c

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_565
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v13, :cond_584

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v13, v13

    if-lez v13, :cond_584

    const/4 v11, 0x0

    :goto_56f
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v13, v13

    if-ge v11, v13, :cond_584

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v1, v13, v11

    if-eqz v1, :cond_581

    const/16 v13, 0x4d

    invoke-static {v13, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_581
    add-int/lit8 v11, v11, 0x1

    goto :goto_56f

    :cond_584
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v13, :cond_5a3

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v13, v13

    if-lez v13, :cond_5a3

    const/4 v11, 0x0

    :goto_58e
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v13, v13

    if-ge v11, v13, :cond_5a3

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v1, v13, v11

    if-eqz v1, :cond_5a0

    const/16 v13, 0x4e

    invoke-static {v13, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_5a0
    add-int/lit8 v11, v11, 0x1

    goto :goto_58e

    :cond_5a3
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    if-eqz v13, :cond_5b0

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    const/16 v14, 0x4f

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_5b0
    iget-boolean v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    if-eqz v13, :cond_5bd

    iget-boolean v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    const/16 v14, 0x50

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v13

    add-int/2addr v12, v13

    :cond_5bd
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    if-eqz v13, :cond_5ca

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    const/16 v14, 0x51

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_5ca
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    if-eqz v13, :cond_5d7

    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    const/16 v14, 0x52

    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    :cond_5d7
    return v12
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v16

    sparse-switch v16, :sswitch_data_d2e

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v17

    if-nez v17, :cond_0

    return-object p0

    :sswitch_12
    return-object p0

    :sswitch_13
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-object/from16 v17, v0

    if-nez v17, :cond_60

    const/4 v4, 0x0

    :goto_26
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v7, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-eqz v4, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v7, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_41
    :goto_41
    array-length v0, v7

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_6a

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;-><init>()V

    aput-object v17, v7, v4

    aget-object v17, v7, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_26

    :cond_6a
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;-><init>()V

    aput-object v17, v7, v4

    aget-object v17, v7, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    goto :goto_0

    :sswitch_7f
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    goto/16 :goto_0

    :sswitch_8b
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    goto/16 :goto_0

    :sswitch_97
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    goto/16 :goto_0

    :sswitch_a3
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    goto/16 :goto_0

    :sswitch_af
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    goto/16 :goto_0

    :sswitch_bb
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    goto/16 :goto_0

    :sswitch_c7
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    goto/16 :goto_0

    :sswitch_d3
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    goto/16 :goto_0

    :sswitch_df
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    goto/16 :goto_0

    :sswitch_eb
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    goto/16 :goto_0

    :sswitch_f7
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    goto/16 :goto_0

    :sswitch_103
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    goto/16 :goto_0

    :sswitch_10f
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    goto/16 :goto_0

    :sswitch_11b
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    goto/16 :goto_0

    :sswitch_127
    const/16 v17, 0x82

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-object/from16 v17, v0

    if-nez v17, :cond_174

    const/4 v4, 0x0

    :goto_13a
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v13, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v4, :cond_155

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v13, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_155
    :goto_155
    array-length v0, v13

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_17e

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v17, v13, v4

    aget-object v17, v13, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_155

    :cond_174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_13a

    :cond_17e
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v17, v13, v4

    aget-object v17, v13, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    goto/16 :goto_0

    :sswitch_194
    const/16 v17, 0x8a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-object/from16 v17, v0

    if-nez v17, :cond_1e1

    const/4 v4, 0x0

    :goto_1a7
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v14, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v4, :cond_1c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v14, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1c2
    :goto_1c2
    array-length v0, v14

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_1eb

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v17, v14, v4

    aget-object v17, v14, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c2

    :cond_1e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_1a7

    :cond_1eb
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v17, v14, v4

    aget-object v17, v14, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    goto/16 :goto_0

    :sswitch_201
    const/16 v17, 0x92

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-object/from16 v17, v0

    if-nez v17, :cond_24e

    const/4 v4, 0x0

    :goto_214
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v13, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v4, :cond_22f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v13, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_22f
    :goto_22f
    array-length v0, v13

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_258

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v17, v13, v4

    aget-object v17, v13, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_22f

    :cond_24e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_214

    :cond_258
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v17, v13, v4

    aget-object v17, v13, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    goto/16 :goto_0

    :sswitch_26e
    const/16 v17, 0x9a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-object/from16 v17, v0

    if-nez v17, :cond_2bb

    const/4 v4, 0x0

    :goto_281
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v14, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v4, :cond_29c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v14, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_29c
    :goto_29c
    array-length v0, v14

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_2c5

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v17, v14, v4

    aget-object v17, v14, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_29c

    :cond_2bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_281

    :cond_2c5
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v17, v14, v4

    aget-object v17, v14, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    goto/16 :goto_0

    :sswitch_2db
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    goto/16 :goto_0

    :sswitch_2e7
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    goto/16 :goto_0

    :sswitch_2f3
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    goto/16 :goto_0

    :sswitch_2ff
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    goto/16 :goto_0

    :sswitch_30b
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    goto/16 :goto_0

    :sswitch_317
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    goto/16 :goto_0

    :sswitch_323
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    goto/16 :goto_0

    :sswitch_32f
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    goto/16 :goto_0

    :sswitch_33b
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    goto/16 :goto_0

    :sswitch_347
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    goto/16 :goto_0

    :sswitch_353
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    goto/16 :goto_0

    :sswitch_35f
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    goto/16 :goto_0

    :sswitch_36b
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    goto/16 :goto_0

    :sswitch_377
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    goto/16 :goto_0

    :sswitch_383
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    goto/16 :goto_0

    :sswitch_38f
    const/16 v17, 0x11a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-object/from16 v17, v0

    if-nez v17, :cond_3dc

    const/4 v4, 0x0

    :goto_3a2
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v9, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v4, :cond_3bd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3bd
    :goto_3bd
    array-length v0, v9

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_3e6

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v17, v9, v4

    aget-object v17, v9, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_3bd

    :cond_3dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_3a2

    :cond_3e6
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v17, v9, v4

    aget-object v17, v9, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    goto/16 :goto_0

    :sswitch_3fc
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    goto/16 :goto_0

    :sswitch_408
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    goto/16 :goto_0

    :sswitch_414
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    goto/16 :goto_0

    :sswitch_420
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    goto/16 :goto_0

    :sswitch_42c
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    goto/16 :goto_0

    :sswitch_438
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    goto/16 :goto_0

    :sswitch_444
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    goto/16 :goto_0

    :sswitch_450
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    goto/16 :goto_0

    :sswitch_45c
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    goto/16 :goto_0

    :sswitch_468
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    goto/16 :goto_0

    :sswitch_474
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    goto/16 :goto_0

    :sswitch_480
    const/16 v17, 0x17a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    move-object/from16 v17, v0

    if-nez v17, :cond_4cd

    const/4 v4, 0x0

    :goto_493
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v5, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-eqz v4, :cond_4ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4ae
    :goto_4ae
    array-length v0, v5

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_4d7

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    aput-object v17, v5, v4

    aget-object v17, v5, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_4ae

    :cond_4cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_493

    :cond_4d7
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    aput-object v17, v5, v4

    aget-object v17, v5, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    goto/16 :goto_0

    :sswitch_4ed
    const/16 v17, 0x182

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    move-object/from16 v17, v0

    if-nez v17, :cond_53a

    const/4 v4, 0x0

    :goto_500
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v15, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-eqz v4, :cond_51b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v15, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_51b
    :goto_51b
    array-length v0, v15

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_544

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;-><init>()V

    aput-object v17, v15, v4

    aget-object v17, v15, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_51b

    :cond_53a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_500

    :cond_544
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;-><init>()V

    aput-object v17, v15, v4

    aget-object v17, v15, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    goto/16 :goto_0

    :sswitch_55a
    const/16 v17, 0x18a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_5a7

    const/4 v4, 0x0

    :goto_56d
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v10, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-eqz v4, :cond_588

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v10, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_588
    :goto_588
    array-length v0, v10

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_5b1

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;-><init>()V

    aput-object v17, v10, v4

    aget-object v17, v10, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_588

    :cond_5a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_56d

    :cond_5b1
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;-><init>()V

    aput-object v17, v10, v4

    aget-object v17, v10, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    goto/16 :goto_0

    :sswitch_5c7
    const/16 v17, 0x192

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-object/from16 v17, v0

    if-nez v17, :cond_614

    const/4 v4, 0x0

    :goto_5da
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v11, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-eqz v4, :cond_5f5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v11, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5f5
    :goto_5f5
    array-length v0, v11

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_61e

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    aput-object v17, v11, v4

    aget-object v17, v11, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_5f5

    :cond_614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_5da

    :cond_61e
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    aput-object v17, v11, v4

    aget-object v17, v11, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    goto/16 :goto_0

    :sswitch_634
    const/16 v17, 0x19a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-object/from16 v17, v0

    if-nez v17, :cond_681

    const/4 v4, 0x0

    :goto_647
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v9, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v4, :cond_662

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_662
    :goto_662
    array-length v0, v9

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_68b

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v17, v9, v4

    aget-object v17, v9, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_662

    :cond_681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_647

    :cond_68b
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v17, v9, v4

    aget-object v17, v9, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    goto/16 :goto_0

    :sswitch_6a1
    const/16 v17, 0x1a2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    move-object/from16 v17, v0

    if-nez v17, :cond_6ee

    const/4 v4, 0x0

    :goto_6b4
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v12, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-eqz v4, :cond_6cf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6cf
    :goto_6cf
    array-length v0, v12

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_6f8

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    aput-object v17, v12, v4

    aget-object v17, v12, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_6cf

    :cond_6ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_6b4

    :cond_6f8
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    aput-object v17, v12, v4

    aget-object v17, v12, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    goto/16 :goto_0

    :sswitch_70e
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    goto/16 :goto_0

    :sswitch_71a
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    goto/16 :goto_0

    :sswitch_726
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    goto/16 :goto_0

    :sswitch_732
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    goto/16 :goto_0

    :sswitch_73e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    move-object/from16 v17, v0

    if-nez v17, :cond_751

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    :cond_751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_760
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    goto/16 :goto_0

    :sswitch_76c
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    goto/16 :goto_0

    :sswitch_778
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    goto/16 :goto_0

    :sswitch_784
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    goto/16 :goto_0

    :sswitch_790
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    goto/16 :goto_0

    :sswitch_79c
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    goto/16 :goto_0

    :sswitch_7a8
    const/16 v17, 0x202

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_7f5

    const/4 v4, 0x0

    :goto_7bb
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v4, :cond_7d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7d6
    :goto_7d6
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_7ff

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_7d6

    :cond_7f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_7bb

    :cond_7ff
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_815
    const/16 v17, 0x20a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_862

    const/4 v4, 0x0

    :goto_828
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v4, :cond_843

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_843
    :goto_843
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_86c

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_843

    :cond_862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_828

    :cond_86c
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_882
    const/16 v17, 0x212

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_8cf

    const/4 v4, 0x0

    :goto_895
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v4, :cond_8b0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8b0
    :goto_8b0
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_8d9

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_8b0

    :cond_8cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_895

    :cond_8d9
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_8ef
    const/16 v17, 0x21a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_93c

    const/4 v4, 0x0

    :goto_902
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v4, :cond_91d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_91d
    :goto_91d
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_946

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_91d

    :cond_93c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_902

    :cond_946
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_95c
    const/16 v17, 0x222

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_9a9

    const/4 v4, 0x0

    :goto_96f
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v4, :cond_98a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_98a
    :goto_98a
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_9b3

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_98a

    :cond_9a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_96f

    :cond_9b3
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_9c9
    const/16 v17, 0x22a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_a16

    const/4 v4, 0x0

    :goto_9dc
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v4, :cond_9f7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9f7
    :goto_9f7
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_a20

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_9f7

    :cond_a16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_9dc

    :cond_a20
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_a36
    const/16 v17, 0x232

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_a83

    const/4 v4, 0x0

    :goto_a49
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v4, :cond_a64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a64
    :goto_a64
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_a8d

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_a64

    :cond_a83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_a49

    :cond_a8d
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_aa3
    const/16 v17, 0x23a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_af0

    const/4 v4, 0x0

    :goto_ab6
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v4, :cond_ad1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_ad1
    :goto_ad1
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_afa

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_ad1

    :cond_af0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_ab6

    :cond_afa
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_b10
    const/16 v17, 0x242

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_b5d

    const/4 v4, 0x0

    :goto_b23
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v4, :cond_b3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b3e
    :goto_b3e
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_b67

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_b3e

    :cond_b5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_b23

    :cond_b67
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_b7d
    const/16 v17, 0x24a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_bca

    const/4 v4, 0x0

    :goto_b90
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v4, :cond_bab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_bab
    :goto_bab
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_bd4

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_bab

    :cond_bca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_b90

    :cond_bd4
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_bea
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    goto/16 :goto_0

    :sswitch_bf6
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    goto/16 :goto_0

    :sswitch_c02
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    move-object/from16 v17, v0

    if-nez v17, :cond_c15

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    :cond_c15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_c24
    const/16 v17, 0x26a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-object/from16 v17, v0

    if-nez v17, :cond_c71

    const/4 v4, 0x0

    :goto_c37
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v6, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v4, :cond_c52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c52
    :goto_c52
    array-length v0, v6

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_c7b

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v17, v6, v4

    aget-object v17, v6, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_c52

    :cond_c71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_c37

    :cond_c7b
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v17, v6, v4

    aget-object v17, v6, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    goto/16 :goto_0

    :sswitch_c91
    const/16 v17, 0x272

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-object/from16 v17, v0

    if-nez v17, :cond_cde

    const/4 v4, 0x0

    :goto_ca4
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v6, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v4, :cond_cbf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_cbf
    :goto_cbf
    array-length v0, v6

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_ce8

    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v17, v6, v4

    aget-object v17, v6, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_cbf

    :cond_cde
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    goto :goto_ca4

    :cond_ce8
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v17, v6, v4

    aget-object v17, v6, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    goto/16 :goto_0

    :sswitch_cfe
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    goto/16 :goto_0

    :sswitch_d0a
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    goto/16 :goto_0

    :sswitch_d16
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    goto/16 :goto_0

    :sswitch_d22
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    goto/16 :goto_0

    :sswitch_data_d2e
    .sparse-switch
        0x0 -> :sswitch_12
        0xa -> :sswitch_13
        0x10 -> :sswitch_7f
        0x18 -> :sswitch_8b
        0x20 -> :sswitch_97
        0x28 -> :sswitch_a3
        0x30 -> :sswitch_af
        0x38 -> :sswitch_bb
        0x40 -> :sswitch_c7
        0x48 -> :sswitch_d3
        0x50 -> :sswitch_df
        0x58 -> :sswitch_eb
        0x60 -> :sswitch_f7
        0x68 -> :sswitch_103
        0x70 -> :sswitch_10f
        0x78 -> :sswitch_11b
        0x82 -> :sswitch_127
        0x8a -> :sswitch_194
        0x92 -> :sswitch_201
        0x9a -> :sswitch_26e
        0xa0 -> :sswitch_2db
        0xa8 -> :sswitch_2e7
        0xb0 -> :sswitch_2f3
        0xb8 -> :sswitch_2ff
        0xc0 -> :sswitch_30b
        0xc8 -> :sswitch_317
        0xd0 -> :sswitch_323
        0xd8 -> :sswitch_32f
        0xe0 -> :sswitch_33b
        0xe8 -> :sswitch_347
        0xf0 -> :sswitch_353
        0xf8 -> :sswitch_35f
        0x100 -> :sswitch_36b
        0x108 -> :sswitch_377
        0x110 -> :sswitch_383
        0x11a -> :sswitch_38f
        0x120 -> :sswitch_3fc
        0x128 -> :sswitch_408
        0x130 -> :sswitch_414
        0x138 -> :sswitch_420
        0x140 -> :sswitch_42c
        0x148 -> :sswitch_438
        0x150 -> :sswitch_444
        0x158 -> :sswitch_450
        0x160 -> :sswitch_45c
        0x168 -> :sswitch_468
        0x170 -> :sswitch_474
        0x17a -> :sswitch_480
        0x182 -> :sswitch_4ed
        0x18a -> :sswitch_55a
        0x192 -> :sswitch_5c7
        0x19a -> :sswitch_634
        0x1a2 -> :sswitch_6a1
        0x1a8 -> :sswitch_70e
        0x1b0 -> :sswitch_71a
        0x1b8 -> :sswitch_726
        0x1c0 -> :sswitch_732
        0x1ca -> :sswitch_73e
        0x1d0 -> :sswitch_760
        0x1d8 -> :sswitch_76c
        0x1e0 -> :sswitch_778
        0x1e8 -> :sswitch_784
        0x1f0 -> :sswitch_790
        0x1f8 -> :sswitch_79c
        0x202 -> :sswitch_7a8
        0x20a -> :sswitch_815
        0x212 -> :sswitch_882
        0x21a -> :sswitch_8ef
        0x222 -> :sswitch_95c
        0x22a -> :sswitch_9c9
        0x232 -> :sswitch_a36
        0x23a -> :sswitch_aa3
        0x242 -> :sswitch_b10
        0x24a -> :sswitch_b7d
        0x250 -> :sswitch_bea
        0x258 -> :sswitch_bf6
        0x262 -> :sswitch_c02
        0x26a -> :sswitch_c24
        0x272 -> :sswitch_c91
        0x278 -> :sswitch_cfe
        0x280 -> :sswitch_d0a
        0x288 -> :sswitch_d16
        0x290 -> :sswitch_d22
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-eqz v12, :cond_1c

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v12, v12

    if-lez v12, :cond_1c

    const/4 v11, 0x0

    :goto_a
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v12, v12

    if-ge v11, v12, :cond_1c

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    aget-object v2, v12, v11

    if-eqz v2, :cond_19

    const/4 v12, 0x1

    invoke-virtual {p1, v12, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_19
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_1c
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    if-eqz v12, :cond_26

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    const/4 v13, 0x2

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_26
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    if-eqz v12, :cond_30

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    const/4 v13, 0x3

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_30
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    if-eqz v12, :cond_3a

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    const/4 v13, 0x4

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3a
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    if-eqz v12, :cond_44

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    const/4 v13, 0x5

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_44
    iget-boolean v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    if-eqz v12, :cond_4e

    iget-boolean v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    const/4 v13, 0x6

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_4e
    iget-boolean v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    if-eqz v12, :cond_58

    iget-boolean v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    const/4 v13, 0x7

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_58
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    if-eqz v12, :cond_63

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    const/16 v13, 0x8

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_63
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    if-eqz v12, :cond_6e

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    const/16 v13, 0x9

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_6e
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    if-eqz v12, :cond_79

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    const/16 v13, 0xa

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_79
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    if-eqz v12, :cond_84

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    const/16 v13, 0xb

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_84
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    if-eqz v12, :cond_8f

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    const/16 v13, 0xc

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_8f
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    if-eqz v12, :cond_9a

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    const/16 v13, 0xd

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9a
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    if-eqz v12, :cond_a5

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    const/16 v13, 0xe

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_a5
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    if-eqz v12, :cond_b0

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    const/16 v13, 0xf

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_b0
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v12, :cond_cd

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v12, v12

    if-lez v12, :cond_cd

    const/4 v11, 0x0

    :goto_ba
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v12, v12

    if-ge v11, v12, :cond_cd

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v8, v12, v11

    if-eqz v8, :cond_ca

    const/16 v12, 0x10

    invoke-virtual {p1, v12, v8}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_ca
    add-int/lit8 v11, v11, 0x1

    goto :goto_ba

    :cond_cd
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v12, :cond_ea

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v12, v12

    if-lez v12, :cond_ea

    const/4 v11, 0x0

    :goto_d7
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v12, v12

    if-ge v11, v12, :cond_ea

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v9, v12, v11

    if-eqz v9, :cond_e7

    const/16 v12, 0x11

    invoke-virtual {p1, v12, v9}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_e7
    add-int/lit8 v11, v11, 0x1

    goto :goto_d7

    :cond_ea
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v12, :cond_107

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v12, v12

    if-lez v12, :cond_107

    const/4 v11, 0x0

    :goto_f4
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v12, v12

    if-ge v11, v12, :cond_107

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v8, v12, v11

    if-eqz v8, :cond_104

    const/16 v12, 0x12

    invoke-virtual {p1, v12, v8}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_104
    add-int/lit8 v11, v11, 0x1

    goto :goto_f4

    :cond_107
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v12, :cond_124

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v12, v12

    if-lez v12, :cond_124

    const/4 v11, 0x0

    :goto_111
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v12, v12

    if-ge v11, v12, :cond_124

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v9, v12, v11

    if-eqz v9, :cond_121

    const/16 v12, 0x13

    invoke-virtual {p1, v12, v9}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_121
    add-int/lit8 v11, v11, 0x1

    goto :goto_111

    :cond_124
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    if-eqz v12, :cond_12f

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    const/16 v13, 0x14

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_12f
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    if-eqz v12, :cond_13a

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    const/16 v13, 0x15

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_13a
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    if-eqz v12, :cond_145

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    const/16 v13, 0x16

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_145
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    if-eqz v12, :cond_150

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    const/16 v13, 0x17

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_150
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    if-eqz v12, :cond_15b

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    const/16 v13, 0x18

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_15b
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    if-eqz v12, :cond_166

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    const/16 v13, 0x19

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_166
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    if-eqz v12, :cond_171

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    const/16 v13, 0x1a

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_171
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    if-eqz v12, :cond_17c

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    const/16 v13, 0x1b

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_17c
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    if-eqz v12, :cond_187

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    const/16 v13, 0x1c

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_187
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    if-eqz v12, :cond_192

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    const/16 v13, 0x1d

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_192
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    if-eqz v12, :cond_19d

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    const/16 v13, 0x1e

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_19d
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    if-eqz v12, :cond_1a8

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    const/16 v13, 0x1f

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1a8
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    if-eqz v12, :cond_1b3

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    const/16 v13, 0x20

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1b3
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    if-eqz v12, :cond_1be

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    const/16 v13, 0x21

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1be
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    if-eqz v12, :cond_1c9

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    const/16 v13, 0x22

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1c9
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v12, :cond_1e6

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v12, v12

    if-lez v12, :cond_1e6

    const/4 v11, 0x0

    :goto_1d3
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v12, v12

    if-ge v11, v12, :cond_1e6

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v4, v12, v11

    if-eqz v4, :cond_1e3

    const/16 v12, 0x23

    invoke-virtual {p1, v12, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_1e3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1d3

    :cond_1e6
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    if-eqz v12, :cond_1f1

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    const/16 v13, 0x24

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1f1
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    if-eqz v12, :cond_1fc

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    const/16 v13, 0x25

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1fc
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    if-eqz v12, :cond_207

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    const/16 v13, 0x26

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_207
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    if-eqz v12, :cond_212

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    const/16 v13, 0x27

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_212
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    if-eqz v12, :cond_21d

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    const/16 v13, 0x28

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_21d
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    if-eqz v12, :cond_228

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    const/16 v13, 0x29

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_228
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    if-eqz v12, :cond_233

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    const/16 v13, 0x2a

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_233
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    if-eqz v12, :cond_23e

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    const/16 v13, 0x2b

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_23e
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    if-eqz v12, :cond_249

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    const/16 v13, 0x2c

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_249
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    if-eqz v12, :cond_254

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    const/16 v13, 0x2d

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_254
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    if-eqz v12, :cond_25f

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    const/16 v13, 0x2e

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_25f
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-eqz v12, :cond_27c

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v12, v12

    if-lez v12, :cond_27c

    const/4 v11, 0x0

    :goto_269
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v12, v12

    if-ge v11, v12, :cond_27c

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    aget-object v0, v12, v11

    if-eqz v0, :cond_279

    const/16 v12, 0x2f

    invoke-virtual {p1, v12, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_279
    add-int/lit8 v11, v11, 0x1

    goto :goto_269

    :cond_27c
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-eqz v12, :cond_299

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v12, v12

    if-lez v12, :cond_299

    const/4 v11, 0x0

    :goto_286
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v12, v12

    if-ge v11, v12, :cond_299

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    aget-object v10, v12, v11

    if-eqz v10, :cond_296

    const/16 v12, 0x30

    invoke-virtual {p1, v12, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_296
    add-int/lit8 v11, v11, 0x1

    goto :goto_286

    :cond_299
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-eqz v12, :cond_2b6

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v12, v12

    if-lez v12, :cond_2b6

    const/4 v11, 0x0

    :goto_2a3
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_2b6

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    aget-object v5, v12, v11

    if-eqz v5, :cond_2b3

    const/16 v12, 0x31

    invoke-virtual {p1, v12, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_2b3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2a3

    :cond_2b6
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-eqz v12, :cond_2d3

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v12, v12

    if-lez v12, :cond_2d3

    const/4 v11, 0x0

    :goto_2c0
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v12, v12

    if-ge v11, v12, :cond_2d3

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    aget-object v6, v12, v11

    if-eqz v6, :cond_2d0

    const/16 v12, 0x32

    invoke-virtual {p1, v12, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_2d0
    add-int/lit8 v11, v11, 0x1

    goto :goto_2c0

    :cond_2d3
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v12, :cond_2f0

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v12, v12

    if-lez v12, :cond_2f0

    const/4 v11, 0x0

    :goto_2dd
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v12, v12

    if-ge v11, v12, :cond_2f0

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v4, v12, v11

    if-eqz v4, :cond_2ed

    const/16 v12, 0x33

    invoke-virtual {p1, v12, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_2ed
    add-int/lit8 v11, v11, 0x1

    goto :goto_2dd

    :cond_2f0
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-eqz v12, :cond_30d

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v12, v12

    if-lez v12, :cond_30d

    const/4 v11, 0x0

    :goto_2fa
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v12, v12

    if-ge v11, v12, :cond_30d

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    aget-object v7, v12, v11

    if-eqz v7, :cond_30a

    const/16 v12, 0x34

    invoke-virtual {p1, v12, v7}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_30a
    add-int/lit8 v11, v11, 0x1

    goto :goto_2fa

    :cond_30d
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    if-eqz v12, :cond_318

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    const/16 v13, 0x35

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_318
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    if-eqz v12, :cond_323

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    const/16 v13, 0x36

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_323
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    if-eqz v12, :cond_32e

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    const/16 v13, 0x37

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_32e
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    if-eqz v12, :cond_339

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    const/16 v13, 0x38

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_339
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-eqz v12, :cond_344

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    const/16 v13, 0x39

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_344
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    if-eqz v12, :cond_34f

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    const/16 v13, 0x3a

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_34f
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    if-eqz v12, :cond_35a

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    const/16 v13, 0x3b

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_35a
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    if-eqz v12, :cond_365

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    const/16 v13, 0x3c

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_365
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    if-eqz v12, :cond_370

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    const/16 v13, 0x3d

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_370
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    if-eqz v12, :cond_37b

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    const/16 v13, 0x3e

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_37b
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    if-eqz v12, :cond_386

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    const/16 v13, 0x3f

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_386
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_3a3

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_3a3

    const/4 v11, 0x0

    :goto_390
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_3a3

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    if-eqz v3, :cond_3a0

    const/16 v12, 0x40

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_3a0
    add-int/lit8 v11, v11, 0x1

    goto :goto_390

    :cond_3a3
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_3c0

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_3c0

    const/4 v11, 0x0

    :goto_3ad
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_3c0

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    if-eqz v3, :cond_3bd

    const/16 v12, 0x41

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_3bd
    add-int/lit8 v11, v11, 0x1

    goto :goto_3ad

    :cond_3c0
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_3dd

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_3dd

    const/4 v11, 0x0

    :goto_3ca
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_3dd

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    if-eqz v3, :cond_3da

    const/16 v12, 0x42

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_3da
    add-int/lit8 v11, v11, 0x1

    goto :goto_3ca

    :cond_3dd
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_3fa

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_3fa

    const/4 v11, 0x0

    :goto_3e7
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_3fa

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    if-eqz v3, :cond_3f7

    const/16 v12, 0x43

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_3f7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3e7

    :cond_3fa
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_417

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_417

    const/4 v11, 0x0

    :goto_404
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_417

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    if-eqz v3, :cond_414

    const/16 v12, 0x44

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_414
    add-int/lit8 v11, v11, 0x1

    goto :goto_404

    :cond_417
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_434

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_434

    const/4 v11, 0x0

    :goto_421
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_434

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    if-eqz v3, :cond_431

    const/16 v12, 0x45

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_431
    add-int/lit8 v11, v11, 0x1

    goto :goto_421

    :cond_434
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_451

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_451

    const/4 v11, 0x0

    :goto_43e
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_451

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    if-eqz v3, :cond_44e

    const/16 v12, 0x46

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_44e
    add-int/lit8 v11, v11, 0x1

    goto :goto_43e

    :cond_451
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_46e

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_46e

    const/4 v11, 0x0

    :goto_45b
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_46e

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    if-eqz v3, :cond_46b

    const/16 v12, 0x47

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_46b
    add-int/lit8 v11, v11, 0x1

    goto :goto_45b

    :cond_46e
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_48b

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_48b

    const/4 v11, 0x0

    :goto_478
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_48b

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    if-eqz v3, :cond_488

    const/16 v12, 0x48

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_488
    add-int/lit8 v11, v11, 0x1

    goto :goto_478

    :cond_48b
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_4a8

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_4a8

    const/4 v11, 0x0

    :goto_495
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_4a8

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    if-eqz v3, :cond_4a5

    const/16 v12, 0x49

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_4a5
    add-int/lit8 v11, v11, 0x1

    goto :goto_495

    :cond_4a8
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    if-eqz v12, :cond_4b3

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    const/16 v13, 0x4a

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4b3
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    if-eqz v12, :cond_4be

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    const/16 v13, 0x4b

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4be
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    if-eqz v12, :cond_4c9

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    const/16 v13, 0x4c

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_4c9
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v12, :cond_4e6

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v12, v12

    if-lez v12, :cond_4e6

    const/4 v11, 0x0

    :goto_4d3
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v12, v12

    if-ge v11, v12, :cond_4e6

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v1, v12, v11

    if-eqz v1, :cond_4e3

    const/16 v12, 0x4d

    invoke-virtual {p1, v12, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_4e3
    add-int/lit8 v11, v11, 0x1

    goto :goto_4d3

    :cond_4e6
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v12, :cond_503

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v12, v12

    if-lez v12, :cond_503

    const/4 v11, 0x0

    :goto_4f0
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v12, v12

    if-ge v11, v12, :cond_503

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v1, v12, v11

    if-eqz v1, :cond_500

    const/16 v12, 0x4e

    invoke-virtual {p1, v12, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_500
    add-int/lit8 v11, v11, 0x1

    goto :goto_4f0

    :cond_503
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    if-eqz v12, :cond_50e

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    const/16 v13, 0x4f

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_50e
    iget-boolean v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    if-eqz v12, :cond_519

    iget-boolean v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    const/16 v13, 0x50

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_519
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    if-eqz v12, :cond_524

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    const/16 v13, 0x51

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_524
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    if-eqz v12, :cond_52f

    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    const/16 v13, 0x52

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_52f
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
