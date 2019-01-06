.class public Lcom/android/internal/os/BatteryStatsImpl;
.super Landroid/os/BatteryStats;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$1;,
        Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;,
        Lcom/android/internal/os/BatteryStatsImpl$Clocks;,
        Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;,
        Lcom/android/internal/os/BatteryStatsImpl$Counter;,
        Lcom/android/internal/os/BatteryStatsImpl$DualTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;,
        Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;,
        Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;,
        Lcom/android/internal/os/BatteryStatsImpl$MyHandler;,
        Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;,
        Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;,
        Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$SystemClocks;,
        Lcom/android/internal/os/BatteryStatsImpl$TimeBase;,
        Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;,
        Lcom/android/internal/os/BatteryStatsImpl$Timer;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid;,
        Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;
    }
.end annotation


# static fields
.field static final BATTERY_DELTA_LEVEL_FLAG:I = 0x1

.field public static final BATTERY_PLUGGED_NONE:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final DEBUG_ENERGY:Z = false

.field private static final DEBUG_ENERGY_CPU:Z = false

.field private static final DEBUG_HISTORY:Z = false

.field private static final DEBUG_MEMORY:Z = false

.field static final DELAY_UPDATE_WAKELOCKS:J = 0x1388L

.field static final DELTA_BATTERY_CHARGE_FLAG:I = 0x1000000

.field static final DELTA_BATTERY_LEVEL_FLAG:I = 0x80000

.field static final DELTA_EVENT_FLAG:I = 0x800000

.field static final DELTA_STATE2_FLAG:I = 0x200000

.field static final DELTA_STATE_FLAG:I = 0x100000

.field static final DELTA_STATE_MASK:I = -0x2000000

.field static final DELTA_TIME_ABS:I = 0x7fffd

.field static final DELTA_TIME_INT:I = 0x7fffe

.field static final DELTA_TIME_LONG:I = 0x7ffff

.field static final DELTA_TIME_MASK:I = 0x7ffff

.field static final DELTA_WAKELOCK_FLAG:I = 0x400000

.field private static final MAGIC:I = -0x458a8b8b

.field static final MAX_DAILY_ITEMS:I = 0xa

.field static final MAX_HISTORY_BUFFER:I

.field private static final MAX_HISTORY_ITEMS:I

.field static final MAX_LEVEL_STEPS:I = 0xc8

.field static final MAX_MAX_HISTORY_BUFFER:I

.field private static final MAX_MAX_HISTORY_ITEMS:I

.field private static final MAX_WAKELOCKS_PER_UID:I

.field static final MSG_REPORT_CHARGING:I = 0x3

.field static final MSG_REPORT_POWER_CHANGE:I = 0x2

.field static final MSG_UPDATE_WAKELOCKS:I = 0x1

.field private static final NUM_BT_TX_LEVELS:I = 0x1

.field private static final NUM_WIFI_TX_LEVELS:I = 0x1

.field private static final RPM_STATS_UPDATE_FREQ_MS:J = 0x3e8L

.field static final STATE_BATTERY_HEALTH_MASK:I = 0x7

.field static final STATE_BATTERY_HEALTH_SHIFT:I = 0x1a

.field static final STATE_BATTERY_MASK:I = -0x1000000

.field static final STATE_BATTERY_PLUG_MASK:I = 0x3

.field static final STATE_BATTERY_PLUG_SHIFT:I = 0x18

.field static final STATE_BATTERY_STATUS_MASK:I = 0x7

.field static final STATE_BATTERY_STATUS_SHIFT:I = 0x1d

.field private static final TAG:Ljava/lang/String; = "BatteryStatsImpl"

.field private static final USE_OLD_HISTORY:Z = false

.field private static final VERSION:I = 0xa7


# instance fields
.field final mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

.field mActiveHistoryStates:I

.field mActiveHistoryStates2:I

.field mAudioOnNesting:I

.field mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mAudioTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mBluetoothActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field mBluetoothScanNesting:I

.field final mBluetoothScanOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field protected mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

.field mCameraOnNesting:I

.field mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mCameraTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mChangedStates:I

.field mChangedStates2:I

.field final mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field mCharging:Z

.field public final mCheckinFile:Lcom/android/internal/os/AtomicFile;

.field protected mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

.field private mCpuFreqs:[J

.field final mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field mCurStepCpuSystemTime:J

.field mCurStepCpuUserTime:J

.field mCurStepMode:I

.field mCurStepStatIOWaitTime:J

.field mCurStepStatIdleTime:J

.field mCurStepStatIrqTime:J

.field mCurStepStatSoftIrqTime:J

.field mCurStepStatSystemTime:J

.field mCurStepStatUserTime:J

.field mCurrentBatteryLevel:I

.field final mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field final mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field public final mDailyFile:Lcom/android/internal/os/AtomicFile;

.field final mDailyItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$DailyItem;",
            ">;"
        }
    .end annotation
.end field

.field mDailyPackageChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end field

.field mDailyStartTime:J

.field mDeviceIdleMode:I

.field mDeviceIdleModeFullTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mDeviceIdleModeLightTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mDeviceIdling:Z

.field mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mDeviceLightIdling:Z

.field mDeviceLightIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mDischargeAmountScreenDoze:I

.field mDischargeAmountScreenDozeSinceCharge:I

.field mDischargeAmountScreenOff:I

.field mDischargeAmountScreenOffSinceCharge:I

.field mDischargeAmountScreenOn:I

.field mDischargeAmountScreenOnSinceCharge:I

.field private mDischargeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mDischargeCurrentLevel:I

.field mDischargePlugLevel:I

.field private mDischargeScreenDozeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mDischargeScreenDozeUnplugLevel:I

.field private mDischargeScreenOffCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mDischargeScreenOffUnplugLevel:I

.field mDischargeScreenOnUnplugLevel:I

.field mDischargeStartLevel:I

.field final mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field mDischargeUnplugLevel:I

.field mDistributeWakelockCpu:Z

.field final mDrawTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mEndPlatformVersion:Ljava/lang/String;

.field private mEstimatedBatteryCapacity:I

.field private mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

.field private final mFile:Lcom/android/internal/util/JournaledFile;

.field mFlashlightOnNesting:I

.field mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mFlashlightTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mFullTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mFullWifiLockTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalWifiRunning:Z

.field mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mGpsNesting:I

.field public final mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

.field mHasBluetoothReporting:Z

.field mHasModemReporting:Z

.field mHasWifiReporting:Z

.field mHaveBatteryLevel:Z

.field mHighDischargeAmountSinceCharge:I

.field mHistory:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryBaseTime:J

.field final mHistoryBuffer:Landroid/os/Parcel;

.field mHistoryBufferLastPos:I

.field mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

.field private mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryOverflow:Z

.field final mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryTagPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/BatteryStats$HistoryTag;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mInitStepMode:I

.field private mInitialAcquireWakeName:Ljava/lang/String;

.field private mInitialAcquireWakeUid:I

.field mInteractive:Z

.field mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mIsolatedUids:Landroid/util/SparseIntArray;

.field private mIteratingHistory:Z

.field private mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

.field private final mKernelMemoryBandwidthStats:Lcom/android/internal/os/KernelMemoryBandwidthStats;

.field private final mKernelMemoryStats:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation
.end field

.field private final mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

.field private final mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

.field private final mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

.field private final mKernelWakelockStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation
.end field

.field mLastChargeStepLevel:I

.field mLastChargingStateLevel:I

.field mLastDischargeStepLevel:I

.field mLastHistoryElapsedRealtime:J

.field mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field mLastHistoryStepLevel:B

.field mLastIdleTimeStart:J

.field private mLastModemNetworkStats:Landroid/net/NetworkStats;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mModemNetworkLock"
    .end annotation
.end field

.field final mLastPartialTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRpmStatsUpdateTimeMs:J

.field mLastStepCpuSystemTime:J

.field mLastStepCpuUserTime:J

.field mLastStepStatIOWaitTime:J

.field mLastStepStatIdleTime:J

.field mLastStepStatIrqTime:J

.field mLastStepStatSoftIrqTime:J

.field mLastStepStatSystemTime:J

.field mLastStepStatUserTime:J

.field mLastWakeupReason:Ljava/lang/String;

.field mLastWakeupUptimeMs:J

.field private mLastWifiNetworkStats:Landroid/net/NetworkStats;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWifiNetworkLock"
    .end annotation
.end field

.field mLastWriteTime:J

.field private mLoadedNumConnectivityChange:I

.field mLongestFullIdleTime:J

.field mLongestLightIdleTime:J

.field mLowDischargeAmountSinceCharge:I

.field mMaxChargeStepLevel:I

.field private mMaxLearnedBatteryCapacity:I

.field mMinDischargeStepLevel:I

.field private mMinLearnedBatteryCapacity:I

.field mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mMobileRadioActiveStartTime:J

.field mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioPowerState:I

.field mModStepMode:I

.field mModemActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field private mModemIfaces:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mModemNetworkLock"
    .end annotation
.end field

.field private final mModemNetworkLock:Ljava/lang/Object;

.field final mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private final mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

.field private final mNetworkStatsPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field mNextHistoryTagIdx:I

.field mNextMaxDailyDeadline:J

.field mNextMinDailyDeadline:J

.field mNoAutoReset:Z

.field private mNumConnectivityChange:I

.field mNumHistoryItems:I

.field mNumHistoryTagChars:I

.field mOnBattery:Z

.field mOnBatteryInternal:Z

.field protected final mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field protected final mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field final mPartialTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mPendingWrite:Landroid/os/Parcel;

.field mPhoneDataConnectionType:I

.field final mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mPhoneOn:Z

.field mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mPhoneServiceState:I

.field private mPhoneServiceStateRaw:I

.field mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mPhoneSignalStrengthBin:I

.field mPhoneSignalStrengthBinRaw:I

.field final mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mPhoneSimStateRaw:I

.field private final mPlatformIdleStateCallback:Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field mPowerSaveModeEnabled:Z

.field mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mPretendScreenOff:Z

.field mReadHistoryChars:I

.field final mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field mReadHistoryStrings:[Ljava/lang/String;

.field mReadHistoryUids:[I

.field private mReadOverflow:Z

.field mRealtime:J

.field mRealtimeStart:J

.field public mRecordAllHistory:Z

.field mRecordingHistory:Z

.field private final mRpmStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation
.end field

.field mScreenBrightnessBin:I

.field final mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field protected mScreenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private final mScreenOffRpmStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation
.end field

.field protected mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field protected mScreenState:I

.field mSensorNesting:I

.field final mSensorTimers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;>;"
        }
    .end annotation
.end field

.field mShuttingDown:Z

.field mStartClockTime:J

.field mStartCount:I

.field mStartPlatformVersion:Ljava/lang/String;

.field mTempTotalCpuSystemTimeUs:J

.field mTempTotalCpuUserTimeUs:J

.field final mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field private final mTmpRpmStats:Lcom/android/internal/os/RpmStats;

.field private final mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

.field mTrackRunningHistoryElapsedRealtime:J

.field mTrackRunningHistoryUptime:J

.field final mUidStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            ">;"
        }
    .end annotation
.end field

.field private mUnpluggedNumConnectivityChange:I

.field mUptime:J

.field mUptimeStart:J

.field private mUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

.field mVideoOnNesting:I

.field mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mVideoTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLockImportant:Z

.field mWakeLockNesting:I

.field private final mWakeupReasonStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWifiActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field final mWifiBatchedScanTimers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;>;"
        }
    .end annotation
.end field

.field mWifiFullLockNesting:I

.field private mWifiIfaces:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWifiNetworkLock"
    .end annotation
.end field

.field mWifiMulticastNesting:I

.field final mWifiMulticastTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiNetworkLock:Ljava/lang/Object;

.field mWifiOn:Z

.field mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiRadioPowerState:I

.field final mWifiRunningTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWifiScanNesting:I

.field final mWifiScanTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWifiSignalStrengthBin:I

.field final mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiState:I

.field final mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiSupplState:I

.field final mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mWindowTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static synthetic -get0()I
    .registers 1

    sget v0, Lcom/android/internal/os/BatteryStatsImpl;->MAX_WAKELOCKS_PER_UID:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/KernelUidCpuFreqTimeReader;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/KernelUidCpuTimeReader;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/os/BatteryStatsImpl;[J)[J
    .registers 2

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCpuFreqs:[J

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/os/BatteryStatsImpl$DualTimer;Z)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->resetTimerIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$DualTimer;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->resetTimerIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/os/BatteryStatsImpl;->detachLongCounterIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->resetLongCounterIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0x320

    sput v0, Lcom/android/internal/os/BatteryStatsImpl;->MAX_HISTORY_ITEMS:I

    const/16 v0, 0x4b0

    sput v0, Lcom/android/internal/os/BatteryStatsImpl;->MAX_MAX_HISTORY_ITEMS:I

    const/16 v0, 0x28

    sput v0, Lcom/android/internal/os/BatteryStatsImpl;->MAX_WAKELOCKS_PER_UID:I

    const v0, 0x18000

    sput v0, Lcom/android/internal/os/BatteryStatsImpl;->MAX_HISTORY_BUFFER:I

    const/high16 v0, 0x20000

    sput v0, Lcom/android/internal/os/BatteryStatsImpl;->MAX_MAX_HISTORY_BUFFER:I

    :goto_1b
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$1;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :cond_23
    const/16 v0, 0x1f40

    sput v0, Lcom/android/internal/os/BatteryStatsImpl;->MAX_HISTORY_ITEMS:I

    const/16 v0, 0x2ee0

    sput v0, Lcom/android/internal/os/BatteryStatsImpl;->MAX_MAX_HISTORY_ITEMS:I

    const/16 v0, 0x190

    sput v0, Lcom/android/internal/os/BatteryStatsImpl;->MAX_WAKELOCKS_PER_UID:I

    const/high16 v0, 0x100000

    sput v0, Lcom/android/internal/os/BatteryStatsImpl;->MAX_HISTORY_BUFFER:I

    const/high16 v0, 0x140000

    sput v0, Lcom/android/internal/os/BatteryStatsImpl;->MAX_MAX_HISTORY_BUFFER:I

    goto :goto_1b
.end method

.method public constructor <init>()V
    .registers 2

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SystemClocks;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$SystemClocks;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SystemClocks;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$SystemClocks;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;)V
    .registers 10

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    new-instance v0, Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelUidCpuTimeReader;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    new-instance v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    new-instance v0, Lcom/android/internal/os/KernelMemoryBandwidthStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelMemoryBandwidthStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryBandwidthStats:Lcom/android/internal/os/KernelMemoryBandwidthStats;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    new-instance v0, Lcom/android/internal/os/RpmStats;

    invoke-direct {v0}, Lcom/android/internal/os/RpmStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpRpmStats:Lcom/android/internal/os/RpmStats;

    const-wide/16 v0, -0x3e8

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRpmStatsUpdateTimeMs:J

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanOnTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    new-instance v0, Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryEventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    iput-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    iput-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    iput-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput-byte v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiReporting:Z

    iput-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothReporting:Z

    iput-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasModemReporting:Z

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEstimatedBatteryCapacity:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMinLearnedBatteryCapacity:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMaxLearnedBatteryCapacity:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRpmStats:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOffRpmStats:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates2:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsPool:Landroid/util/Pools$Pool;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiNetworkLock:Ljava/lang/Object;

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    new-instance v0, Landroid/net/NetworkStats;

    invoke-direct {v0, v6, v7, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWifiNetworkStats:Landroid/net/NetworkStats;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModemNetworkLock:Ljava/lang/Object;

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModemIfaces:[Ljava/lang/String;

    new-instance v0, Landroid/net/NetworkStats;

    invoke-direct {v0, v6, v7, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastModemNetworkStats:Landroid/net/NetworkStats;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->init(Lcom/android/internal/os/BatteryStatsImpl$Clocks;)V

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPlatformIdleStateCallback:Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Landroid/os/Parcel;)V
    .registers 11

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    new-instance v0, Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelUidCpuTimeReader;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    new-instance v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    new-instance v0, Lcom/android/internal/os/KernelMemoryBandwidthStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelMemoryBandwidthStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryBandwidthStats:Lcom/android/internal/os/KernelMemoryBandwidthStats;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    new-instance v0, Lcom/android/internal/os/RpmStats;

    invoke-direct {v0}, Lcom/android/internal/os/RpmStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpRpmStats:Lcom/android/internal/os/RpmStats;

    const-wide/16 v0, -0x3e8

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRpmStatsUpdateTimeMs:J

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanOnTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    new-instance v0, Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryEventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    iput-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    iput-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    iput-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput-byte v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiReporting:Z

    iput-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothReporting:Z

    iput-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasModemReporting:Z

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEstimatedBatteryCapacity:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMinLearnedBatteryCapacity:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMaxLearnedBatteryCapacity:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRpmStats:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOffRpmStats:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates2:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsPool:Landroid/util/Pools$Pool;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiNetworkLock:Ljava/lang/Object;

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    new-instance v0, Landroid/net/NetworkStats;

    invoke-direct {v0, v6, v7, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWifiNetworkStats:Landroid/net/NetworkStats;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModemNetworkLock:Ljava/lang/Object;

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModemIfaces:[Ljava/lang/String;

    new-instance v0, Landroid/net/NetworkStats;

    invoke-direct {v0, v6, v7, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastModemNetworkStats:Landroid/net/NetworkStats;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->init(Lcom/android/internal/os/BatteryStatsImpl$Clocks;)V

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->readFromParcel(Landroid/os/Parcel;)V

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPlatformIdleStateCallback:Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V
    .registers 20

    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    new-instance v2, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v2}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    new-instance v2, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v2}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    new-instance v2, Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-direct {v2}, Lcom/android/internal/os/KernelUidCpuTimeReader;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    new-instance v2, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    invoke-direct {v2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    new-instance v2, Lcom/android/internal/os/KernelMemoryBandwidthStats;

    invoke-direct {v2}, Lcom/android/internal/os/KernelMemoryBandwidthStats;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryBandwidthStats:Lcom/android/internal/os/KernelMemoryBandwidthStats;

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    new-instance v2, Lcom/android/internal/os/RpmStats;

    invoke-direct {v2}, Lcom/android/internal/os/RpmStats;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpRpmStats:Lcom/android/internal/os/RpmStats;

    const-wide/16 v2, -0x3e8

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRpmStatsUpdateTimeMs:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanOnTimers:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    new-instance v2, Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryEventTracker;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    new-instance v2, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    new-instance v2, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    new-instance v2, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    const/16 v2, 0x11

    new-array v2, v2, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v2, 0xa

    new-array v2, v2, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/16 v2, 0xa

    new-array v2, v2, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiReporting:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothReporting:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasModemReporting:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    new-instance v2, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    new-instance v2, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v3, 0x190

    invoke-direct {v2, v3}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    new-instance v2, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    new-instance v2, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v3, 0x190

    invoke-direct {v2, v3}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEstimatedBatteryCapacity:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMinLearnedBatteryCapacity:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMaxLearnedBatteryCapacity:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRpmStats:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOffRpmStats:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates2:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    new-instance v2, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v2}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    new-instance v2, Landroid/util/Pools$SynchronizedPool;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsPool:Landroid/util/Pools$Pool;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiNetworkLock:Ljava/lang/Object;

    sget-object v2, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    new-instance v2, Landroid/net/NetworkStats;

    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWifiNetworkStats:Landroid/net/NetworkStats;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModemNetworkLock:Ljava/lang/Object;

    sget-object v2, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModemIfaces:[Ljava/lang/String;

    new-instance v2, Landroid/net/NetworkStats;

    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastModemNetworkStats:Landroid/net/NetworkStats;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->init(Lcom/android/internal/os/BatteryStatsImpl$Clocks;)V

    if-eqz p2, :cond_2ec

    new-instance v2, Lcom/android/internal/util/JournaledFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "batterystats.bin"

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "batterystats.bin.tmp"

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    :goto_285
    new-instance v2, Lcom/android/internal/os/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "batterystats-checkin.bin"

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    new-instance v2, Lcom/android/internal/os/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "batterystats-daily.xml"

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    :goto_2d5
    const/4 v2, 0x5

    if-ge v8, v2, :cond_2f0

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    rsub-int/lit8 v5, v8, -0x64

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2d5

    :cond_2ec
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    goto :goto_285

    :cond_2f0
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/16 v5, -0xa

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/16 v5, -0xb

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeLightTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/16 v5, -0xe

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeFullTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/16 v5, -0xf

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceLightIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/16 v5, -0xc

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/4 v5, -0x3

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    :goto_358
    const/4 v2, 0x6

    if-ge v8, v2, :cond_36f

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    rsub-int v5, v8, -0xc8

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_358

    :cond_36f
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/16 v5, -0xc7

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    :goto_37f
    const/16 v2, 0x11

    if-ge v8, v2, :cond_397

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    rsub-int v5, v8, -0x12c

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_37f

    :cond_397
    const/4 v8, 0x0

    :goto_398
    const/16 v2, 0xa

    if-ge v8, v2, :cond_3b5

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v8

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_398

    :cond_3b5
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModemActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/16 v5, -0x190

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/16 v5, -0x191

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/4 v5, -0x4

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/4 v5, -0x5

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    :goto_429
    const/16 v2, 0x8

    if-ge v8, v2, :cond_441

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    rsub-int v5, v8, -0x258

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_429

    :cond_441
    const/4 v8, 0x0

    :goto_442
    const/16 v2, 0xd

    if-ge v8, v2, :cond_45a

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    rsub-int v5, v8, -0x2bc

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_442

    :cond_45a
    const/4 v8, 0x0

    :goto_45b
    const/4 v2, 0x5

    if-ge v8, v2, :cond_472

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    rsub-int v5, v8, -0x320

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_45b

    :cond_472
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/4 v5, -0x7

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/4 v5, -0x8

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/16 v5, -0x9

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/16 v5, -0xd

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    const/16 v5, -0xe

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v12, v2, v4

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v10, v2, v4

    invoke-virtual {p0, v12, v13, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->initTimes(JJ)V

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->initDischarge()V

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateDailyDeadlineLocked()V

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPlatformIdleStateCallback:Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V
    .registers 11

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$SystemClocks;

    invoke-direct {v1}, Lcom/android/internal/os/BatteryStatsImpl$SystemClocks;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    return-void
.end method

.method private addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V
    .registers 12

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t do this while iterating history!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p5, p6}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    iput-object v4, p6, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v4, p6, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v0, 0x0

    iput v0, p6, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput-object v4, p6, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    return-void
.end method

.method private addPackageChange(Landroid/os/BatteryStats$PackageChange;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I
    .registers 5

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shl-int/lit8 v0, v0, 0x19

    const/high16 v1, -0x2000000

    and-int/2addr v0, v1

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    shl-int/lit8 v1, v1, 0xf

    const v2, 0x1ff8000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    shl-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x7ffe

    or-int/2addr v0, v1

    return v0
.end method

.method private buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I
    .registers 6

    const/4 v0, 0x0

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    :cond_8
    :goto_8
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x1d

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x1a

    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x3

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    return v1

    :cond_22
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2a

    const/4 v0, 0x2

    goto :goto_8

    :cond_2a
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_8
.end method

.method private computeHistoryStepDetails(Landroid/os/BatteryStats$HistoryStepDetails;Landroid/os/BatteryStats$HistoryStepDetails;)V
    .registers 15

    if-eqz p2, :cond_25

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    :goto_4
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->requestImmediateCpuUpdate()V

    if-nez p2, :cond_4b

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_27

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_25
    move-object v2, p1

    goto :goto_4

    :cond_27
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatUserTime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSystemTime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIOWaitTime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIrqTime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSoftIrqTime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIdleTime:J

    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryStepDetails;->clear()V

    return-void

    :cond_4b
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatUserTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSystemTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIOWaitTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIrqTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSoftIrqTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIdleTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    const/4 v7, -0x1

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    const/4 v7, -0x1

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    const/4 v7, -0x1

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    const/4 v7, 0x0

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    const/4 v7, 0x0

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    const/4 v7, 0x0

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    const/4 v7, 0x0

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    const/4 v7, 0x0

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    const/4 v7, 0x0

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_ad
    if-ge v1, v0, :cond_118

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    iget-wide v10, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    sub-long/2addr v8, v10

    long-to-int v5, v8

    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    iget-wide v10, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    sub-long/2addr v8, v10

    long-to-int v3, v8

    add-int v4, v5, v3

    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget v8, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    add-int/2addr v7, v8

    if-gt v4, v7, :cond_d7

    :goto_d4
    add-int/lit8 v1, v1, 0x1

    goto :goto_ad

    :cond_d7
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget v8, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    add-int/2addr v7, v8

    if-gt v4, v7, :cond_e7

    iget v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iput v5, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iput v3, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    goto :goto_d4

    :cond_e7
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget v8, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    add-int/2addr v7, v8

    if-gt v4, v7, :cond_103

    iget v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v5, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v3, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    goto :goto_d4

    :cond_103
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    iget v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iput v5, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iput v3, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    goto :goto_d4

    :cond_118
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatUserTime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSystemTime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIOWaitTime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIrqTime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSoftIrqTime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIdleTime:J

    return-void
.end method

.method private computeTimePerLevel([JI)J
    .registers 11

    if-gtz p2, :cond_5

    const-wide/16 v4, -0x1

    return-wide v4

    :cond_5
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p2, :cond_16

    aget-wide v4, p1, v0

    const-wide v6, 0xffffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    int-to-long v4, p2

    div-long v4, v2, v4

    return-wide v4
.end method

.method private static detachLongCounterIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)V
    .registers 1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    :cond_5
    return-void
.end method

.method private static detachTimerIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$Timer;)V
    .registers 1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->detach()V

    :cond_5
    return-void
.end method

.method private static excludeFromStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_20

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [Ljava/lang/String;

    if-lez v0, :cond_11

    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1f

    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1f
    return-object v1

    :cond_20
    return-object p0
.end method

.method private fixPhoneServiceState(II)I
    .registers 5

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    if-ne v0, v1, :cond_a

    if-ne p1, v1, :cond_a

    if-lez p2, :cond_a

    const/4 p1, 0x0

    :cond_a
    return p1
.end method

.method private static includeInStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_8

    return-object p0

    :cond_8
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    aput-object p1, v0, v1

    return-object v0
.end method

.method private init(Lcom/android/internal/os/BatteryStatsImpl$Clocks;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    return-void
.end method

.method private initActiveHistoryEventsLocked(JJ)V
    .registers 18

    const/4 v6, 0x0

    :goto_1
    const/16 v1, 0x16

    if-ge v6, v1, :cond_4c

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez v1, :cond_f

    const/4 v1, 0x1

    if-ne v6, v1, :cond_f

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_f
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    :goto_32
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_1f

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_32

    :cond_4c
    return-void
.end method

.method private noteBluetoothScanStartedLocked(IZ)V
    .registers 10

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanNesting:I

    if-nez v4, :cond_25

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_25
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanNesting:I

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteBluetoothScanStartedLocked(JZ)V

    return-void
.end method

.method private noteBluetoothScanStoppedLocked(IZ)V
    .registers 10

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanNesting:I

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanNesting:I

    if-nez v4, :cond_2c

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x100001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_2c
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteBluetoothScanStoppedLocked(JZ)V

    return-void
.end method

.method private noteMobileRadioApWakeupLocked(JJI)V
    .registers 15

    invoke-virtual {p0, p5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p5

    const-string/jumbo v7, ""

    const/16 v6, 0x13

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    invoke-virtual {p0, p5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteMobileRadioApWakeupLocked()V

    return-void
.end method

.method private noteWifiRadioApWakeupLocked(JJI)V
    .registers 15

    invoke-virtual {p0, p5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p5

    const-string/jumbo v7, ""

    const/16 v6, 0x13

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    invoke-virtual {p0, p5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiRadioApWakeupLocked()V

    return-void
.end method

.method private readBatteryLevelInt(ILandroid/os/BatteryStats$HistoryItem;)V
    .registers 4

    const/high16 v0, -0x2000000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    iput-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const v0, 0x1ff8000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0xf

    int-to-short v0, v0

    iput-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    and-int/lit16 v0, p1, 0x7ffe

    ushr-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    return-void
.end method

.method private readDailyItemsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 16

    const/4 v13, 0x3

    const/4 v9, 0x2

    const/4 v12, 0x1

    :cond_3
    :try_start_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v9, :cond_b

    if-ne v8, v12, :cond_3

    :cond_b
    if-eq v8, v9, :cond_32

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "no start tag found"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_16
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_16} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_16} :catch_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_16} :catch_98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_16} :catch_ef
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_16} :catch_d2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_16} :catch_b5

    :catch_16
    move-exception v1

    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed parsing daily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_31
    return-void

    :cond_32
    :try_start_32
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    :cond_36
    :goto_36
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v12, :cond_31

    if-ne v8, v13, :cond_44

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_31

    :cond_44
    if-eq v8, v13, :cond_36

    const/4 v9, 0x4

    if-eq v8, v9, :cond_36

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "item"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_76

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyItemTagLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_59
    .catch Ljava/lang/IllegalStateException; {:try_start_32 .. :try_end_59} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_32 .. :try_end_59} :catch_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_59} :catch_98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_32 .. :try_end_59} :catch_ef
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_59} :catch_d2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_32 .. :try_end_59} :catch_b5

    goto :goto_36

    :catch_5a
    move-exception v3

    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed parsing daily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_76
    :try_start_76
    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown element under <daily-items>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_97
    .catch Ljava/lang/IllegalStateException; {:try_start_76 .. :try_end_97} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_76 .. :try_end_97} :catch_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_76 .. :try_end_97} :catch_98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_76 .. :try_end_97} :catch_ef
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_97} :catch_d2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_76 .. :try_end_97} :catch_b5

    goto :goto_36

    :catch_98
    move-exception v4

    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed parsing daily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :catch_b5
    move-exception v2

    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed parsing daily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :catch_d2
    move-exception v0

    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed parsing daily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :catch_ef
    move-exception v5

    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed parsing daily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31
.end method

.method private readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    aget v0, v0, p1

    iput v0, p2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iput p1, p2, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    return-void
.end method

.method private readNetworkStatsLocked([Ljava/lang/String;)Landroid/net/NetworkStats;
    .registers 7

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsPool:Landroid/util/Pools$Pool;

    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStats;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4, v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v1

    return-object v1

    :catch_17
    move-exception v0

    const-string/jumbo v1, "BatteryStatsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to read network stats for ifaces: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const/4 v1, 0x0

    return-object v1
.end method

.method private recordCurrentTimeChangeLocked(JJJ)V
    .registers 16

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-wide p1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/4 v6, 0x5

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    :cond_17
    return-void
.end method

.method private recordShutdownLocked(JJ)V
    .registers 14

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/16 v6, 0x8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    :cond_1c
    return-void
.end method

.method private requestImmediateCpuUpdate()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private requestWakelockCpuUpdate()V
    .registers 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_16
    return-void
.end method

.method private resetAllStatsLocked()V
    .registers 13

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v6

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v6

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v0

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->initTimes(JJ)V

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    const/4 v2, 0x0

    :goto_25
    const/4 v5, 0x5

    if-ge v2, v5, :cond_33

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v5, v5, v2

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_33
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    if-eqz v5, :cond_a7

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v8

    double-to-int v5, v8

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEstimatedBatteryCapacity:I

    :goto_40
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMinLearnedBatteryCapacity:I

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMaxLearnedBatteryCapacity:I

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastIdleTimeStart:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLongestLightIdleTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLongestFullIdleTime:J

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeLightTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeFullTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceLightIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    const/4 v2, 0x0

    :goto_99
    const/4 v5, 0x6

    if-ge v2, v5, :cond_ab

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v5, v5, v2

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_99

    :cond_a7
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEstimatedBatteryCapacity:I

    goto :goto_40

    :cond_ab
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    const/4 v2, 0x0

    :goto_b2
    const/16 v5, 0x11

    if-ge v2, v5, :cond_c1

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v5, v5, v2

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b2

    :cond_c1
    const/4 v2, 0x0

    :goto_c2
    const/16 v5, 0xa

    if-ge v2, v5, :cond_d9

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v5, v5, v2

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v5, v5, v2

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c2

    :cond_d9
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    const/4 v2, 0x0

    :goto_104
    const/16 v5, 0x8

    if-ge v2, v5, :cond_113

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v5, v5, v2

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_104

    :cond_113
    const/4 v2, 0x0

    :goto_114
    const/16 v5, 0xd

    if-ge v2, v5, :cond_123

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v5, v5, v2

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_114

    :cond_123
    const/4 v2, 0x0

    :goto_124
    const/4 v5, 0x5

    if-ge v2, v5, :cond_132

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v5, v5, v2

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_124

    :cond_132
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModemActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    const/4 v2, 0x0

    :goto_14e
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_17a

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v6

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v0

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reset(JJ)Z

    move-result v5

    if-eqz v5, :cond_177

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v2, v2, -0x1

    :cond_177
    add-int/lit8 v2, v2, 0x1

    goto :goto_14e

    :cond_17a
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRpmStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_1a3

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRpmStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    goto :goto_18c

    :cond_19e
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRpmStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_1a3
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOffRpmStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_1cc

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOffRpmStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    goto :goto_1b5

    :cond_1c7
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOffRpmStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_1cc
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_1f5

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1de
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    goto :goto_1de

    :cond_1f0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_1f5
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-lez v5, :cond_21b

    const/4 v2, 0x0

    :goto_1fe
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_216

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    invoke-virtual {v8, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1fe

    :cond_216
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->clear()V

    :cond_21b
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_244

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    goto :goto_22d

    :cond_23f
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_244
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatUserTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSystemTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIOWaitTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIrqTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSoftIrqTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIdleTime:J

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->initDischarge()V

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    return-void
.end method

.method private static resetLongCounterIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;Z)V
    .registers 2

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    :cond_5
    return-void
.end method

.method private static resetTimerIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$DualTimer;Z)Z
    .registers 3

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->reset(Z)Z

    move-result v0

    return v0

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method private static resetTimerIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z
    .registers 3

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(Z)Z

    move-result v0

    return v0

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method private scheduleSyncExternalStatsLocked(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    :cond_9
    return-void
.end method

.method private startRecordingHistory(JJZ)V
    .registers 15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    if-eqz p5, :cond_22

    const/4 v6, 0x7

    :goto_e
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    if-eqz p5, :cond_21

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->initActiveHistoryEventsLocked(JJ)V

    :cond_21
    return-void

    :cond_22
    const/4 v6, 0x5

    goto :goto_e
.end method

.method private updateAllPhoneStateLocked(III)V
    .registers 13

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v6}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v6}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    if-ne p2, v7, :cond_1c

    if-ne p1, v7, :cond_1c

    if-lez p3, :cond_1c

    const/4 p1, 0x0

    :cond_1c
    const/4 v6, 0x3

    if-ne p1, v6, :cond_88

    const/4 p3, -0x1

    :cond_20
    :goto_20
    if-nez v3, :cond_3a

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-eqz v6, :cond_3a

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v8, -0x200001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_3a
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    if-eq v6, p1, :cond_4e

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v7, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v7, v7, -0x1c1

    shl-int/lit8 v8, p1, 0x6

    or-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/4 v2, 0x1

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    :cond_4e
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    if-eq v6, p3, :cond_82

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    if-ltz v6, :cond_5f

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_5f
    if-ltz p3, :cond_a7

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-nez v6, :cond_72

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v6, v6, p3

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_72
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v7, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v7, v7, -0x39

    shl-int/lit8 v8, p3, 0x3

    or-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/4 v2, 0x1

    :goto_80
    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    :cond_82
    if-eqz v2, :cond_87

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    :cond_87
    return-void

    :cond_88
    if-eqz p1, :cond_20

    if-ne p1, v7, :cond_20

    const/4 v3, 0x1

    const/4 p3, 0x0

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-nez v6, :cond_20

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v8, 0x200000

    or-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto/16 :goto_20

    :cond_a7
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/internal/os/BatteryStatsImpl;->stopAllPhoneSignalStrengthTimersLocked(I)V

    goto :goto_80
.end method

.method private updateBatteryPropertiesLocked()V
    .registers 4

    :try_start_0
    const-string/jumbo v2, "batteryproperties"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBatteryPropertiesRegistrar;->scheduleUpdate()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method private updateNewDischargeScreenLevelLocked(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenOn(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevel:I

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenDoze(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevel:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    goto :goto_f

    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenOff(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevel:I

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    goto :goto_f
.end method

.method private updateOldDischargeScreenLevelLocked(I)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenOn(I)Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int v0, v1, v2

    if-lez v0, :cond_18

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenDoze(I)Z

    move-result v1

    if-eqz v1, :cond_32

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int v0, v1, v2

    if-lez v0, :cond_18

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenDoze:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenDoze:I

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenDozeSinceCharge:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenDozeSinceCharge:I

    goto :goto_18

    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenOff(I)Z

    move-result v1

    if-eqz v1, :cond_18

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int v0, v1, v2

    if-lez v0, :cond_18

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    goto :goto_18
.end method

.method private writeDailyItemsLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v5, "daily-items"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    :goto_17
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_b0

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$DailyItem;

    const-string/jumbo v5, "item"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "start"

    iget-wide v6, v0, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "end"

    iget-wide v6, v0, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "dis"

    iget-object v6, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeDailyLevelSteps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;)V

    const-string/jumbo v5, "chg"

    iget-object v6, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeDailyLevelSteps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;)V

    iget-object v5, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    if-eqz v5, :cond_a6

    const/4 v2, 0x0

    :goto_5a
    iget-object v5, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_a6

    iget-object v5, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$PackageChange;

    iget-boolean v5, v3, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v5, :cond_91

    const-string/jumbo v5, "upd"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "pkg"

    iget-object v6, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "ver"

    iget v6, v3, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "upd"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_8e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    :cond_91
    const-string/jumbo v5, "rem"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "pkg"

    iget-object v6, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "rem"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8e

    :cond_a6
    const-string/jumbo v5, "item"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_17

    :cond_b0
    const-string/jumbo v5, "daily-items"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    return-void
.end method

.method private writeDailyLevelSteps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p3, :cond_3a

    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "n"

    iget v2, p3, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    :goto_13
    iget v1, p3, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-ge v0, v1, :cond_37

    const-string/jumbo v1, "s"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p3, v0, p4}, Landroid/os/BatteryStats$LevelStepTracker;->encodeEntryAt(ILjava/lang/StringBuilder;)V

    const-string/jumbo v1, "v"

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "s"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_37
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3a
    return-void
.end method

.method private writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I
    .registers 7

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    new-instance v2, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    invoke-virtual {v2, p1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    iput v0, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    goto :goto_e
.end method


# virtual methods
.method addHistoryBufferLocked(JJLandroid/os/BatteryStats$HistoryItem;)V
    .registers 27

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_f

    :cond_e
    return-void

    :cond_f
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    add-long v4, v4, p1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v6, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v18, v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p5

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    and-int/2addr v4, v5

    xor-int v12, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p5

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    and-int/2addr v4, v5

    xor-int v13, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v4, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int v14, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v4, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int v15, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    if-ltz v3, :cond_184

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v3, :cond_184

    const-wide/16 v4, 0x3e8

    cmp-long v3, v18, v4

    if-gez v3, :cond_184

    and-int v3, v12, v14

    if-nez v3, :cond_184

    and-int v3, v13, v15

    if-nez v3, :cond_184

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_85

    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v3, :cond_184

    :cond_85
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_93

    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v3, :cond_184

    :cond_93
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-nez v3, :cond_184

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_a9

    move-object/from16 v0, p5

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-nez v3, :cond_184

    :cond_a9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v3, v4, :cond_184

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v3, v4, :cond_184

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v3, v4, :cond_184

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v3, v4, :cond_184

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    move-object/from16 v0, p5

    iget-short v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-ne v3, v4, :cond_184

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-char v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    move-object/from16 v0, p5

    iget-char v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-ne v3, v4, :cond_184

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataSize(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v4, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    sub-long p1, v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_135

    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p5

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    :cond_135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_152

    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p5

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    :cond_152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_179

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p5

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    :cond_179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    :cond_184
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v11

    sget v3, Lcom/android/internal/os/BatteryStatsImpl;->MAX_MAX_HISTORY_BUFFER:I

    mul-int/lit8 v3, v3, 0x3

    if-lt v11, v3, :cond_1cc

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsLocked()V

    const/16 v17, 0x1

    :cond_199
    if-eqz v11, :cond_19d

    if-eqz v17, :cond_1bf

    :cond_19d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p5

    iput-wide v4, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    if-eqz v17, :cond_1b3

    const/4 v8, 0x6

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    :cond_1b3
    const/4 v8, 0x7

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    :cond_1bf
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    return-void

    :cond_1cc
    sget v3, Lcom/android/internal/os/BatteryStatsImpl;->MAX_HISTORY_BUFFER:I

    if-lt v11, v3, :cond_199

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    if-nez v3, :cond_1f4

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    const/4 v8, 0x6

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    return-void

    :cond_1f4
    const/16 v20, 0x0

    move-object/from16 v0, p5

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, -0x1d0000

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    and-int v2, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-eq v3, v2, :cond_228

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    const v4, 0x1cffff

    or-int/2addr v4, v2

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    move/from16 v0, v16

    if-eq v0, v3, :cond_27e

    const/16 v20, 0x1

    :cond_228
    :goto_228
    move-object/from16 v0, p5

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v4, 0x683f0000

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    and-int v10, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    if-eq v3, v10, :cond_25b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    const v4, -0x683f0001

    or-int/2addr v4, v10

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    move/from16 v0, v16

    if-eq v0, v3, :cond_281

    const/4 v3, 0x1

    :goto_259
    or-int v20, v20, v3

    :cond_25b
    if-nez v20, :cond_293

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v3, v4, :cond_293

    sget v3, Lcom/android/internal/os/BatteryStatsImpl;->MAX_MAX_HISTORY_BUFFER:I

    if-ge v11, v3, :cond_27d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p5

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int/2addr v3, v4

    const/high16 v4, 0x1c0000

    and-int/2addr v3, v4

    if-nez v3, :cond_283

    :cond_27d
    return-void

    :cond_27e
    const/16 v20, 0x0

    goto :goto_228

    :cond_281
    const/4 v3, 0x0

    goto :goto_259

    :cond_283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p5

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int/2addr v3, v4

    const/high16 v4, -0x68400000

    and-int/2addr v3, v4

    if-eqz v3, :cond_27d

    :cond_293
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    return-void
.end method

.method public addHistoryEventLocked(JJILjava/lang/String;I)V
    .registers 11

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p6, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p7, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    return-void
.end method

.method addHistoryRecordInnerLocked(JJLandroid/os/BatteryStats$HistoryItem;)V
    .registers 7

    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJLandroid/os/BatteryStats$HistoryItem;)V

    return-void
.end method

.method addHistoryRecordLocked(JJ)V
    .registers 26

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_59

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    sub-long v16, p1, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    sub-long v18, p3, v4

    const-wide/16 v4, 0x14

    sub-long v4, v16, v4

    cmp-long v4, v18, v4

    if-gez v4, :cond_59

    sub-long v4, v16, v18

    sub-long v6, p1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v8, 0x7fffffff

    and-int/2addr v5, v8

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordInnerLocked(JJLandroid/os/BatteryStats$HistoryItem;)V

    :cond_59
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v8, -0x80000000

    or-int/2addr v5, v8

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordInnerLocked(JJLandroid/os/BatteryStats$HistoryItem;)V

    return-void
.end method

.method addHistoryRecordLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V
    .registers 12

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v0, :cond_12

    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    :goto_8
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p5, p6}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(Landroid/os/BatteryStats$HistoryItem;)V

    return-void

    :cond_12
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    goto :goto_8
.end method

.method addHistoryRecordLocked(Landroid/os/BatteryStats$HistoryItem;)V
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryItems:I

    iput-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    :goto_17
    return-void

    :cond_18
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    goto :goto_17
.end method

.method public addIsolatedUidLocked(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method aggregateLastWakeupUptimeLocked(J)V
    .registers 10

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    if-eqz v3, :cond_18

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    sub-long v0, p1, v4

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->add(JI)V

    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    :cond_18
    return-void
.end method

.method clearHistoryLocked()V
    .registers 5

    const/4 v3, -0x1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataSize(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    sget v1, Lcom/android/internal/os/BatteryStatsImpl;->MAX_HISTORY_BUFFER:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataCapacity(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    return-void
.end method

.method public commitCurrentHistoryBatchLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, -0x1

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    return-void
.end method

.method public commitPendingDataToDisk()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_39

    if-nez v1, :cond_a

    monitor-exit p0

    return-void

    :cond_a
    monitor-exit p0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_10
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_30} :catch_3c
    .catchall {:try_start_10 .. :try_end_30} :catchall_54

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_38
    return-void

    :catchall_39
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_3c
    move-exception v0

    :try_start_3d
    const-string/jumbo v3, "BatteryStats"

    const-string/jumbo v4, "Error writing battery statistics"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_54

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_38

    :catchall_54
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public computeBatteryRealtime(JI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeBatteryScreenOffRealtime(JI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeBatteryScreenOffUptime(JI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeBatteryTimeRemaining(J)J
    .registers 9

    const-wide/16 v4, -0x1

    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-nez v2, :cond_7

    return-wide v4

    :cond_7
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v2, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_f

    return-wide v4

    :cond_f
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v2}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1c

    return-wide v4

    :cond_1c
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public computeBatteryUptime(JI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeChargeTimeRemaining(J)J
    .registers 9

    const-wide/16 v4, -0x1

    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v2, :cond_7

    return-wide v4

    :cond_7
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v2, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_f

    return-wide v4

    :cond_f
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v2}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1c

    return-wide v4

    :cond_1c
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    rsub-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public computeRealtime(JI)J
    .registers 9

    packed-switch p3, :pswitch_data_1c

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_6
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    return-wide v0

    :pswitch_e
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    sub-long v0, p1, v0

    return-wide v0

    :pswitch_13
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtimeStart()J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_13
    .end packed-switch
.end method

.method public computeUptime(JI)J
    .registers 9

    packed-switch p3, :pswitch_data_1c

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_6
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    return-wide v0

    :pswitch_e
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    sub-long v0, p1, v0

    return-wide v0

    :pswitch_13
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptimeStart()J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_13
    .end packed-switch
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .registers 8

    invoke-super/range {p0 .. p6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    return-void
.end method

.method ensureStartClockTime(J)Z
    .registers 12

    const-wide v4, 0x757b12c00L

    const-wide v0, 0x757b12c00L

    cmp-long v2, p1, v4

    if-lez v2, :cond_28

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    sub-long v4, p1, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_28

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    sub-long v2, p1, v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    const/4 v2, 0x1

    return v2

    :cond_28
    const/4 v2, 0x0

    return v2
.end method

.method public finishAddingCpuLocked(IIIIIIII)V
    .registers 13

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    int-to-long v2, p4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    int-to-long v2, p5

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    int-to-long v2, p7

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    int-to-long v2, p8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    return-void
.end method

.method public finishIteratingHistoryLocked()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    return-void
.end method

.method public finishIteratingOldHistoryLocked()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    return-void
.end method

.method public getAwakeTimeBattery()J
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getBatteryRealtime(J)J
    .registers 6

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryUptime(J)J
    .registers 6

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getBatteryUptimeLocked()J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getBluetoothScanTime(JI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCameraOnTime(JI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    return-object v0
.end method

.method public getCpuFreqs()[J
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCpuFreqs:[J

    return-object v0
.end method

.method public getCurrentDailyStartTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    return-wide v0
.end method

.method public getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    return-object v0
.end method

.method public getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    return-object v0
.end method

.method public getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
    .registers 4

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    if-ltz v0, :cond_15

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$DailyItem;

    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getDailyPackageChanges()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDeviceIdleModeCount(II)I
    .registers 4

    packed-switch p1, :pswitch_data_14

    const/4 v0, 0x0

    return v0

    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeLightTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0

    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeFullTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_5
        :pswitch_c
    .end packed-switch
.end method

.method public getDeviceIdleModeTime(IJI)J
    .registers 7

    packed-switch p1, :pswitch_data_14

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeLightTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0

    :pswitch_d
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeFullTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
        :pswitch_d
    .end packed-switch
.end method

.method public getDeviceIdlingCount(II)I
    .registers 4

    packed-switch p1, :pswitch_data_14

    const/4 v0, 0x0

    return v0

    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceLightIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0

    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_5
        :pswitch_c
    .end packed-switch
.end method

.method public getDeviceIdlingTime(IJI)J
    .registers 7

    packed-switch p1, :pswitch_data_14

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceLightIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0

    :pswitch_d
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
        :pswitch_d
    .end packed-switch
.end method

.method public getDischargeAmount(I)I
    .registers 5

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v0

    :goto_6
    if-gez v0, :cond_9

    const/4 v0, 0x0

    :cond_9
    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeStartLevel()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevel()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_6
.end method

.method public getDischargeAmountScreenDoze()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenDoze:I

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenDoze(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevel:I

    if-ge v1, v2, :cond_1b

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1d

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_1b
    monitor-exit p0

    return v0

    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDischargeAmountScreenDozeSinceCharge()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenDozeSinceCharge:I

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenDoze(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevel:I

    if-ge v1, v2, :cond_1b

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1d

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_1b
    monitor-exit p0

    return v0

    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDischargeAmountScreenOff()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenOff(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    if-ge v1, v2, :cond_1b

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeAmountScreenDoze()I
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_22

    move-result v1

    add-int/2addr v1, v0

    monitor-exit p0

    return v1

    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDischargeAmountScreenOffSinceCharge()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenOff(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    if-ge v1, v2, :cond_1b

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeAmountScreenDozeSinceCharge()I
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_22

    move-result v1

    add-int/2addr v1, v0

    monitor-exit p0

    return v1

    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDischargeAmountScreenOn()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenOn(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    if-ge v1, v2, :cond_1b

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1d

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_1b
    monitor-exit p0

    return v0

    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDischargeAmountScreenOnSinceCharge()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenOn(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    if-ge v1, v2, :cond_1b

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1d

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_1b
    monitor-exit p0

    return v0

    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDischargeCurrentLevel()I
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevelLocked()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDischargeCurrentLevelLocked()I
    .registers 2

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    return v0
.end method

.method public getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    return-object v0
.end method

.method public getDischargeStartLevel()I
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeStartLevelLocked()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDischargeStartLevelLocked()I
    .registers 2

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    return v0
.end method

.method public getEndPlatformVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getEstimatedBatteryCapacity()I
    .registers 2

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEstimatedBatteryCapacity:I

    return v0
.end method

.method public getFlashlightOnCount(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFlashlightOnTime(JI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGlobalWifiRunningTime(JI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHighDischargeAmountSinceCharge()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    if-ge v1, v2, :cond_13

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_13
    monitor-exit p0

    return v0

    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getHistoryBaseTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    return-wide v0
.end method

.method public getHistoryStringPoolBytes()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0xc

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getHistoryStringPoolSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getHistoryTagPoolString(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getHistoryTagPoolUid(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public getHistoryTotalSize()I
    .registers 2

    sget v0, Lcom/android/internal/os/BatteryStatsImpl;->MAX_HISTORY_BUFFER:I

    return v0
.end method

.method public getHistoryUsedSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    return v0
.end method

.method public getInteractiveTime(JI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsOnBattery()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    return v0
.end method

.method public getKernelMemoryStats()Landroid/util/LongSparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method public getKernelMemoryTimerLocked(J)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .registers 6

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    if-nez v0, :cond_18

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_18
    return-object v0
.end method

.method public getKernelWakelockStats()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/internal/os/BatteryStatsImpl$Timer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getKernelWakelockTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .registers 5

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    if-nez v0, :cond_18

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-object v0
.end method

.method public getLongestDeviceIdleModeTime(I)J
    .registers 4

    packed-switch p1, :pswitch_data_c

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_6
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLongestLightIdleTime:J

    return-wide v0

    :pswitch_9
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLongestFullIdleTime:J

    return-wide v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method public getLowDischargeAmountSinceCharge()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_15

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    if-ge v1, v2, :cond_15

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_17

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    :cond_15
    monitor-exit p0

    return v0

    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getMahDischarge(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMahDischargeScreenDoze(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMahDischargeScreenOff(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxLearnedBatteryCapacity()I
    .registers 2

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMaxLearnedBatteryCapacity:I

    return v0
.end method

.method public getMinLearnedBatteryCapacity()I
    .registers 2

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMinLearnedBatteryCapacity:I

    return v0
.end method

.method public getMobileRadioActiveAdjustedTime(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileRadioActiveCount(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getMobileRadioActiveTime(JI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileRadioActiveUnknownCount(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getMobileRadioActiveUnknownTime(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModemActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getNetworkActivityBytes(II)J
    .registers 5

    if-ltz p1, :cond_10

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    :cond_10
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNetworkActivityPackets(II)J
    .registers 5

    if-ltz p1, :cond_10

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    :cond_10
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
    .registers 10

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p1}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    :cond_c
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    if-lt v1, v6, :cond_18

    const/4 v0, 0x1

    :goto_15
    if-eqz v0, :cond_1a

    return v7

    :cond_18
    const/4 v0, 0x0

    goto :goto_15

    :cond_1a
    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v4, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V

    iget-byte v6, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v7, 0x5

    if-eq v6, v7, :cond_39

    iget-byte v6, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v7, 0x7

    if-eq v6, v7, :cond_39

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_39

    iget-wide v6, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v6, v2

    add-long/2addr v6, v4

    iput-wide v6, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    :cond_39
    const/4 v6, 0x1

    return v6
.end method

.method public getNextMaxDailyDeadline()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    return-wide v0
.end method

.method public getNextMinDailyDeadline()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    return-wide v0
.end method

.method public getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
    .registers 12

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    if-lt v1, v3, :cond_3f

    const/4 v8, 0x1

    :goto_13
    if-nez v8, :cond_29

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V

    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v1, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v9, 0x6

    if-ne v1, v9, :cond_41

    move v1, v7

    :goto_26
    or-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    :cond_29
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    if-nez v0, :cond_43

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    if-nez v1, :cond_3e

    xor-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_3e

    const-string/jumbo v1, "BatteryStatsImpl"

    const-string/jumbo v3, "Old history ends before new history!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    return v6

    :cond_3f
    const/4 v8, 0x0

    goto :goto_13

    :cond_41
    move v1, v6

    goto :goto_26

    :cond_43
    invoke-virtual {p1, v0}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    if-nez v1, :cond_59

    if-eqz v8, :cond_5a

    const-string/jumbo v1, "BatteryStatsImpl"

    const-string/jumbo v3, "New history ends before old history!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    :goto_59
    return v7

    :cond_5a
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p1, v1}, Landroid/os/BatteryStats$HistoryItem;->same(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v1

    if-nez v1, :cond_59

    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Landroid/util/LogWriter;

    const-string/jumbo v3, "BatteryStatsImpl"

    const/4 v9, 0x5

    invoke-direct {v1, v9, v3}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    const-string/jumbo v1, "Histories differ!"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "Old history:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    const-string/jumbo v1, "New history:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    goto :goto_59
.end method

.method public getNumConnectivityChange(I)I
    .registers 4

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    sub-int/2addr v0, v1

    :cond_8
    :goto_8
    return v0

    :cond_9
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    sub-int/2addr v0, v1

    goto :goto_8
.end method

.method public getPackageStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v1

    return-object v1
.end method

.method public getParcelVersion()I
    .registers 2

    const/16 v0, 0xa7

    return v0
.end method

.method public getPhoneDataConnectionCount(II)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneDataConnectionTime(IJI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneOnCount(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneOnTime(JI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneSignalScanningTime(JI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneSignalStrengthCount(II)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneSignalStrengthTime(IJI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPowerSaveModeEnabledCount(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPowerSaveModeEnabledTime(JI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    return-object v1
.end method

.method public getProcessWakeTime(IIJ)J
    .registers 12

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    if-eqz v1, :cond_26

    iget-object v4, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    if-eqz v0, :cond_26

    iget-wide v4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget v6, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v6, :cond_24

    iget-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v2, p3, v2

    :cond_24
    add-long/2addr v2, v4

    return-wide v2

    :cond_26
    return-wide v2
.end method

.method public getRpmStats()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/internal/os/BatteryStatsImpl$Timer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRpmStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRpmTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .registers 5

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRpmStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    if-nez v0, :cond_18

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRpmStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-object v0
.end method

.method public getScreenBrightnessTime(IJI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenDozeCount(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getScreenDozeTime(JI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenOffRpmStats()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/internal/os/BatteryStatsImpl$Timer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOffRpmStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getScreenOffRpmTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .registers 5

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOffRpmStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    if-nez v0, :cond_18

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOffRpmStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-object v0
.end method

.method public getScreenOnCount(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getScreenOnTime(JI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v1

    return-object v1
.end method

.method public getStartClockTime()J
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->ensureStartClockTime(J)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->recordCurrentTimeChangeLocked(JJJ)V

    :cond_1a
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    return-wide v0
.end method

.method public getStartCount()I
    .registers 2

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    return v0
.end method

.method public getStartPlatformVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUidStats()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .registers 4

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    if-nez v0, :cond_14

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public getWakeupReasonStats()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/internal/os/BatteryStatsImpl$Timer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getWakeupReasonTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .registers 5

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    if-nez v0, :cond_18

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-object v0
.end method

.method public getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getWifiOnTime(JI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiSignalStrengthCount(II)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiSignalStrengthTime(IJI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiStateCount(II)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiStateTime(IJI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiSupplStateCount(II)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiSupplStateTime(IJI)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasBluetoothActivityReporting()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothReporting:Z

    return v0
.end method

.method public hasModemActivityReporting()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasModemReporting:Z

    return v0
.end method

.method public hasWifiActivityReporting()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiReporting:Z

    return v0
.end method

.method initDischarge()V
    .registers 3

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenDoze:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenDozeSinceCharge:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v0}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v0}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    return-void
.end method

.method initTimes(JJ)V
    .registers 10

    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    return-void
.end method

.method public isCharging()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    return v0
.end method

.method public isOnBattery()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    return v0
.end method

.method public isScreenDoze(I)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_7

    const/4 v1, 0x4

    if-ne p1, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isScreenOff(I)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public isScreenOn(I)Z
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public mapUid(I)I
    .registers 5

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-lez v0, :cond_a

    :goto_9
    return v0

    :cond_a
    move v0, p1

    goto :goto_9
.end method

.method public noteActivityPausedLocked(I)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteActivityPausedLocked(J)V

    return-void
.end method

.method public noteActivityResumedLocked(I)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteActivityResumedLocked(J)V

    return-void
.end method

.method public noteAlarmFinishLocked(Ljava/lang/String;I)V
    .registers 12

    const/16 v6, 0x400d

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    :cond_21
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    return-void
.end method

.method public noteAlarmStartLocked(Ljava/lang/String;I)V
    .registers 12

    const v6, 0x800d

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_22

    return-void

    :cond_22
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    return-void
.end method

.method public noteAudioOffLocked(I)V
    .registers 9

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    if-nez v4, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    if-nez v4, :cond_2f

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x400001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteAudioTurnedOffLocked(J)V

    return-void
.end method

.method public noteAudioOnLocked(I)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    if-nez v4, :cond_25

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x400000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_25
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteAudioTurnedOnLocked(J)V

    return-void
.end method

.method public noteBluetoothScanResultsFromSourceLocked(Landroid/os/WorkSource;I)V
    .registers 7

    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteBluetoothScanResultsLocked(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    return-void
.end method

.method public noteBluetoothScanStartedFromSourceLocked(Landroid/os/WorkSource;Z)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStartedLocked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public noteBluetoothScanStoppedFromSourceLocked(Landroid/os/WorkSource;Z)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStoppedLocked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public noteCameraOffLocked(I)V
    .registers 9

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    if-nez v4, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    if-nez v4, :cond_2f

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x200001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteCameraTurnedOffLocked(J)V

    return-void
.end method

.method public noteCameraOnLocked(I)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    if-nez v4, :cond_29

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x200000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteCameraTurnedOnLocked(J)V

    return-void
.end method

.method public noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual/range {p6 .. p6}, Landroid/os/WorkSource;->size()I

    move-result v2

    const/4 v15, 0x0

    :goto_15
    if-ge v15, v2, :cond_2f

    move-object/from16 v0, p6

    invoke-virtual {v0, v15}, Landroid/os/WorkSource;->get(I)I

    move-result v4

    move-object/from16 v3, p0

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_15

    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/os/WorkSource;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_34
    if-ge v15, v14, :cond_4c

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_34

    :cond_4c
    return-void
.end method

.method public noteConnectivityChangedLocked(ILjava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    const/16 v6, 0x9

    move-object v1, p0

    move-object v7, p2

    move v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    return-void
.end method

.method public noteCurrentTimeChangedLocked()V
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->recordCurrentTimeChangeLocked(JJJ)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->ensureStartClockTime(J)Z

    return-void
.end method

.method public noteDeviceIdleModeLocked(ILjava/lang/String;I)V
    .registers 17

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_a9

    const/4 v0, 0x1

    :goto_10
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdling:Z

    if-eqz v1, :cond_1b

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1b

    if-nez p2, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    const/4 v1, 0x1

    if-ne p1, v1, :cond_ac

    const/4 v9, 0x1

    :goto_1f
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceLightIdling:Z

    if-eqz v1, :cond_2e

    xor-int/lit8 v1, v9, 0x1

    if-eqz v1, :cond_2e

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2e

    if-nez p2, :cond_2e

    const/4 v9, 0x1

    :cond_2e
    if-eqz p2, :cond_41

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdling:Z

    if-nez v1, :cond_38

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceLightIdling:Z

    if-eqz v1, :cond_41

    :cond_38
    const/16 v6, 0xa

    move-object v1, p0

    move-object v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    :cond_41
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdling:Z

    if-eq v1, v0, :cond_63

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdling:Z

    if-eqz v0, :cond_af

    const/16 v12, 0x8

    :goto_4b
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v6, v6, 0x8

    xor-int/2addr v6, v12

    or-int/2addr v1, v6

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v1, v1, -0x9

    or-int/2addr v1, v12

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    if-eqz v0, :cond_b1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_63
    :goto_63
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceLightIdling:Z

    if-eq v1, v9, :cond_70

    iput-boolean v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceLightIdling:Z

    if-eqz v9, :cond_b7

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceLightIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_70
    :goto_70
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleMode:I

    if-eq v1, p1, :cond_a8

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v7, -0x6000001

    and-int/2addr v6, v7

    shl-int/lit8 v7, p1, 0x19

    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastIdleTimeStart:J

    sub-long v10, v2, v6

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastIdleTimeStart:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleMode:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_bd

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLongestLightIdleTime:J

    cmp-long v1, v10, v6

    if-lez v1, :cond_99

    iput-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLongestLightIdleTime:J

    :cond_99
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeLightTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_9e
    :goto_9e
    const/4 v1, 0x1

    if-ne p1, v1, :cond_d0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeLightTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_a6
    :goto_a6
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleMode:I

    :cond_a8
    return-void

    :cond_a9
    const/4 v0, 0x0

    goto/16 :goto_10

    :cond_ac
    const/4 v9, 0x0

    goto/16 :goto_1f

    :cond_af
    const/4 v12, 0x0

    goto :goto_4b

    :cond_b1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_63

    :cond_b7
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceLightIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_70

    :cond_bd
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleMode:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_9e

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLongestFullIdleTime:J

    cmp-long v1, v10, v6

    if-lez v1, :cond_ca

    iput-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLongestFullIdleTime:J

    :cond_ca
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeFullTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_9e

    :cond_d0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_a6

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeFullTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto :goto_a6
.end method

.method public noteEventLocked(ILjava/lang/String;I)V
    .registers 13

    invoke-virtual {p0, p3}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move v6, p1

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    return-void
.end method

.method public noteFlashlightOffLocked(I)V
    .registers 9

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    if-nez v4, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    if-nez v4, :cond_2f

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x8000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFlashlightTurnedOffLocked(J)V

    return-void
.end method

.method public noteFlashlightOnLocked(I)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    if-nez v4, :cond_29

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFlashlightTurnedOnLocked(J)V

    return-void
.end method

.method public noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(I)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    if-nez v4, :cond_20

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    :cond_20
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFullWifiLockAcquiredLocked(J)V

    return-void
.end method

.method public noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(I)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    if-nez v4, :cond_27

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x10000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFullWifiLockReleasedLocked(J)V

    return-void
.end method

.method public noteInteractiveLocked(Z)V
    .registers 5

    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    if-eq v2, p1, :cond_13

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    if-eqz p1, :cond_14

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_13
.end method

.method public noteJobFinishLocked(Ljava/lang/String;II)V
    .registers 13

    const/16 v6, 0x4006

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopJobLocked(Ljava/lang/String;JI)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_23

    return-void

    :cond_23
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    return-void
.end method

.method public noteJobStartLocked(Ljava/lang/String;I)V
    .registers 12

    const v6, 0x8006

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartJobLocked(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_24

    return-void

    :cond_24
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    return-void
.end method

.method public noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13

    const/16 v6, 0x4014

    invoke-virtual {p0, p3}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    if-nez p2, :cond_15

    move-object p2, p1

    :cond_15
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p2, p3, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    move-object v1, p0

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    return-void
.end method

.method public noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13

    const v6, 0x8014

    invoke-virtual {p0, p3}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    if-nez p2, :cond_16

    move-object p2, p1

    :cond_16
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p2, p3, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_20

    return-void

    :cond_20
    move-object v1, p0

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    return-void
.end method

.method public noteMobileRadioPowerStateLocked(IJI)Z
    .registers 17

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    if-eq v1, p1, :cond_42

    const/4 v1, 0x2

    if-eq p1, v1, :cond_44

    const/4 v1, 0x3

    if-ne p1, v1, :cond_46

    const/4 v0, 0x1

    :goto_17
    if-eqz v0, :cond_48

    if-lez p4, :cond_21

    move-object v1, p0

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteMobileRadioApWakeupLocked(JJI)V

    :cond_21
    const-wide/32 v6, 0xf4240

    div-long v10, p2, v6

    iput-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveStartTime:J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v7, 0x2000000

    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    :goto_31
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    if-eqz v0, :cond_90

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_42
    const/4 v1, 0x0

    return v1

    :cond_44
    const/4 v0, 0x1

    goto :goto_17

    :cond_46
    const/4 v0, 0x0

    goto :goto_17

    :cond_48
    const-wide/32 v6, 0xf4240

    div-long v10, p2, v6

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveStartTime:J

    cmp-long v1, v10, v8

    if-gez v1, :cond_84

    const-string/jumbo v1, "BatteryStatsImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Data connection inactive timestamp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is before start time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v10, v2

    :cond_79
    :goto_79
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v7, -0x2000001

    and-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_31

    :cond_84
    cmp-long v1, v10, v2

    if-gez v1, :cond_79

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    sub-long v6, v2, v10

    invoke-virtual {v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_79

    :cond_90
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    const/4 v1, 0x1

    return v1
.end method

.method public noteNetworkInterfaceTypeLocked(Ljava/lang/String;I)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModemNetworkLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    invoke-static {p2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModemIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->includeInStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModemIfaces:[Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_35

    :goto_18
    monitor-exit v1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiNetworkLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1c
    invoke-static {p2}, Landroid/net/ConnectivityManager;->isNetworkTypeWifi(I)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->includeInStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_41

    :goto_2a
    monitor-exit v1

    return-void

    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModemIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->excludeFromStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModemIfaces:[Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_35

    goto :goto_18

    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->excludeFromStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_41

    goto :goto_2a

    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notePackageInstalledLocked(Ljava/lang/String;I)V
    .registers 12

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    const/16 v6, 0xb

    move-object v1, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    new-instance v0, Landroid/os/BatteryStats$PackageChange;

    invoke-direct {v0}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    iput-object p1, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    iput p2, v0, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->addPackageChange(Landroid/os/BatteryStats$PackageChange;)V

    return-void
.end method

.method public notePackageUninstalledLocked(Ljava/lang/String;)V
    .registers 11

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    const/16 v6, 0xc

    const/4 v8, 0x0

    move-object v1, p0

    move-object v7, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    new-instance v0, Landroid/os/BatteryStats$PackageChange;

    invoke-direct {v0}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    iput-object p1, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->addPackageChange(Landroid/os/BatteryStats$PackageChange;)V

    return-void
.end method

.method public notePhoneDataConnectionStateLocked(IZ)V
    .registers 11

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    packed-switch p1, :pswitch_data_66

    const/16 v0, 0x10

    :cond_8
    :goto_8
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    if-eq v1, v0, :cond_3e

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v6, v6, -0x3e01

    shl-int/lit8 v7, v0, 0x9

    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    if-ltz v1, :cond_35

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    aget-object v1, v1, v6

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_35
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_3e
    return-void

    :pswitch_3f
    const/4 v0, 0x2

    goto :goto_8

    :pswitch_41
    const/4 v0, 0x1

    goto :goto_8

    :pswitch_43
    const/4 v0, 0x3

    goto :goto_8

    :pswitch_45
    const/4 v0, 0x4

    goto :goto_8

    :pswitch_47
    const/4 v0, 0x5

    goto :goto_8

    :pswitch_49
    const/4 v0, 0x6

    goto :goto_8

    :pswitch_4b
    const/4 v0, 0x7

    goto :goto_8

    :pswitch_4d
    const/16 v0, 0x8

    goto :goto_8

    :pswitch_50
    const/16 v0, 0x9

    goto :goto_8

    :pswitch_53
    const/16 v0, 0xa

    goto :goto_8

    :pswitch_56
    const/16 v0, 0xb

    goto :goto_8

    :pswitch_59
    const/16 v0, 0xc

    goto :goto_8

    :pswitch_5c
    const/16 v0, 0xd

    goto :goto_8

    :pswitch_5f
    const/16 v0, 0xe

    goto :goto_8

    :pswitch_62
    const/16 v0, 0xf

    goto :goto_8

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3f
        :pswitch_43
        :pswitch_45
        :pswitch_47
        :pswitch_49
        :pswitch_4b
        :pswitch_4d
        :pswitch_50
        :pswitch_53
        :pswitch_56
        :pswitch_59
        :pswitch_5c
        :pswitch_5f
        :pswitch_62
    .end packed-switch
.end method

.method public notePhoneOffLocked()V
    .registers 8

    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    if-eqz v4, :cond_25

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x800001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_25
    return-void
.end method

.method public notePhoneOnLocked()V
    .registers 8

    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    if-nez v4, :cond_24

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x800000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_24
    return-void
.end method

.method public notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V
    .registers 5

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateAllPhoneStateLocked(III)V

    return-void
.end method

.method public notePhoneStateLocked(II)V
    .registers 4

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateAllPhoneStateLocked(III)V

    return-void
.end method

.method public notePowerSaveModeLocked(Z)V
    .registers 10

    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabled:Z

    if-eq v3, p1, :cond_39

    if-eqz p1, :cond_3a

    const/4 v2, 0x4

    :goto_7
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v6, v6, 0x4

    xor-int/2addr v6, v2

    or-int/2addr v3, v6

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v3, v3, -0x5

    or-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabled:Z

    if-eqz p1, :cond_3c

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v7, -0x80000000

    or-int/2addr v6, v7

    iput v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :goto_36
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    :cond_39
    return-void

    :cond_3a
    const/4 v2, 0x0

    goto :goto_7

    :cond_3c
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    iput v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_36
.end method

.method public noteProcessAnrLocked(Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->incNumAnrsLocked()V

    :cond_15
    return-void
.end method

.method public noteProcessCrashLocked(Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->incNumCrashesLocked()V

    :cond_15
    return-void
.end method

.method public noteProcessDiedLocked(II)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_13
    return-void
.end method

.method public noteProcessFinishLocked(Ljava/lang/String;I)V
    .registers 12

    const/16 v6, 0x4001

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez v0, :cond_15

    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    return-void
.end method

.method public noteProcessStartLocked(Ljava/lang/String;I)V
    .registers 13

    const v6, 0x8001

    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsImplInjector;->getProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->incStartsLocked()V

    :cond_1c
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v0, p2, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_26

    return-void

    :cond_26
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez v1, :cond_2b

    return-void

    :cond_2b
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    return-void
.end method

.method public noteResetAudioLocked()V
    .registers 10

    const/4 v7, 0x0

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    if-lez v6, :cond_3c

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v6}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v6}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v8, -0x400001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    const/4 v2, 0x0

    :goto_26
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3c

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetAudioLocked(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_3c
    return-void
.end method

.method public noteResetBluetoothScanLocked()V
    .registers 10

    const/4 v7, 0x0

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanNesting:I

    if-lez v6, :cond_3c

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v6}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v6}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanNesting:I

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v8, -0x100001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    const/4 v2, 0x0

    :goto_26
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3c

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetBluetoothScanLocked(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_3c
    return-void
.end method

.method public noteResetCameraLocked()V
    .registers 10

    const/4 v7, 0x0

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    if-lez v6, :cond_3c

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v6}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v6}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v8, -0x200001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    const/4 v2, 0x0

    :goto_26
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3c

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetCameraLocked(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_3c
    return-void
.end method

.method public noteResetFlashlightLocked()V
    .registers 10

    const/4 v7, 0x0

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    if-lez v6, :cond_3c

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v6}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v6}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v8, -0x8000001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    const/4 v2, 0x0

    :goto_26
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3c

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetFlashlightLocked(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_3c
    return-void
.end method

.method public noteResetVideoLocked()V
    .registers 10

    const/4 v7, 0x0

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    if-lez v6, :cond_3c

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v6}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v6}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v8, -0x40000001    # -1.9999999f

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    const/4 v2, 0x0

    :goto_26
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3c

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetVideoLocked(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_3c
    return-void
.end method

.method public noteScreenBrightnessLocked(I)V
    .registers 10

    div-int/lit8 v0, p1, 0x33

    if-gez v0, :cond_41

    const/4 v0, 0x0

    :cond_5
    :goto_5
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-eq v1, v0, :cond_40

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v6, v6, -0x8

    shl-int/lit8 v7, v0, 0x0

    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_3e

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-ltz v1, :cond_37

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v1, v1, v6

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_37
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_3e
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    :cond_40
    return-void

    :cond_41
    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    const/4 v0, 0x4

    goto :goto_5
.end method

.method public noteScreenStateLocked(I)V
    .registers 16

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPretendScreenOff:Z

    if-eqz v1, :cond_5

    const/4 p1, 0x1

    :cond_5
    const/4 v1, 0x4

    if-le p1, v1, :cond_25

    packed-switch p1, :pswitch_data_14c

    const-string/jumbo v1, "BatteryStatsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown screen state (not mapped): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_25
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    if-eq v1, p1, :cond_c3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsIfNeededLocked(Z)V

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    if-eqz p1, :cond_4a

    add-int/lit8 v12, p1, -0x1

    and-int/lit8 v1, v12, 0x3

    if-ne v1, v12, :cond_c7

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v2, v2, 0x3

    xor-int/2addr v2, v12

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v1, v1, -0x4

    or-int/2addr v1, v12

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    :cond_4a
    :goto_4a
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v8

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v10

    const/4 v13, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenDoze(I)Z

    move-result v1

    if-eqz v1, :cond_e3

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x40000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    const/4 v13, 0x1

    :cond_6c
    :goto_6c
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenOn(I)Z

    move-result v1

    if-eqz v1, :cond_fb

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-ltz v1, :cond_8d

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_8d
    const/4 v13, 0x1

    :cond_8e
    :goto_8e
    if-eqz v13, :cond_93

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    :cond_93
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenOn(I)Z

    move-result v1

    if-eqz v1, :cond_120

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZIJJ)V

    const-string/jumbo v4, "screen"

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    :cond_bc
    :goto_bc
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v1, :cond_c3

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(II)V

    :cond_c3
    return-void

    :pswitch_c4
    const/4 p1, 0x2

    goto/16 :goto_25

    :cond_c7
    const-string/jumbo v1, "BatteryStatsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected screen state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4a

    :cond_e3
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenDoze(I)Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, -0x40001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    const/4 v13, 0x1

    goto/16 :goto_6c

    :cond_fb
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenOn(I)Z

    move-result v1

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-ltz v1, :cond_11d

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_11d
    const/4 v13, 0x1

    goto/16 :goto_8e

    :cond_120
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenOn(I)Z

    move-result v1

    if-eqz v1, :cond_bc

    const-string/jumbo v5, "screen"

    const-string/jumbo v6, "screen"

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZIJJ)V

    goto/16 :goto_bc

    :pswitch_data_14c
    .packed-switch 0x5
        :pswitch_c4
    .end packed-switch
.end method

.method public noteStartGpsLocked(I)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    if-nez v4, :cond_20

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x20000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    :cond_20
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartGps(J)V

    return-void
.end method

.method public noteStartSensorLocked(II)V
    .registers 10

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    if-nez v4, :cond_20

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x800000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    :cond_20
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartSensor(IJ)V

    return-void
.end method

.method public noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 20

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v8

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v12, 0x0

    :goto_11
    if-ge v12, v0, :cond_27

    invoke-virtual {p1, v12}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    move-object v1, p0

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    :cond_27
    return-void
.end method

.method public noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 24

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    if-nez p5, :cond_69

    move-wide/from16 v0, p9

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->aggregateLastWakeupUptimeLocked(J)V

    if-nez p4, :cond_f

    move-object/from16 p4, p3

    :cond_f
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-eqz v4, :cond_2f

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const v5, 0x8005

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0, p1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_2f

    const v10, 0x8005

    move-object v5, p0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-object/from16 v11, p4

    move v12, p1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    :cond_2f
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    if-nez v4, :cond_85

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeName:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v0, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    iput p1, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    xor-int/lit8 v4, p6, 0x1

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockImportant:Z

    move-wide/from16 v0, p7

    move-wide/from16 v2, p9

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    :cond_63
    :goto_63
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    :cond_69
    if-ltz p1, :cond_84

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->requestWakelockCpuUpdate()V

    :cond_76
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    move v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartWakeLocked(ILjava/lang/String;IJ)V

    :cond_84
    return-void

    :cond_85
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockImportant:Z

    if-nez v4, :cond_63

    xor-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_63

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v4, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v4, :cond_63

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v4, :cond_c1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeName:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v0, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    iput p1, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    move-wide/from16 v0, p7

    move-wide/from16 v2, p9

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    :cond_c1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockImportant:Z

    goto :goto_63
.end method

.method public noteStopGpsLocked(I)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    if-nez v4, :cond_27

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x20000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopGps(J)V

    return-void
.end method

.method public noteStopSensorLocked(II)V
    .registers 10

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    if-nez v4, :cond_27

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x800001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopSensor(IJ)V

    return-void
.end method

.method public noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 18

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_11
    if-ge v11, v10, :cond_24

    invoke-virtual {p1, v11}, Landroid/os/WorkSource;->get(I)I

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_24
    return-void
.end method

.method public noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V
    .registers 24

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    if-nez p5, :cond_49

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-eqz v4, :cond_2e

    if-nez p4, :cond_14

    move-object/from16 p4, p3

    :cond_14
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/16 v5, 0x4005

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0, p1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/16 v10, 0x4005

    move-object v5, p0

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v11, p4

    move v12, p1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    :cond_2e
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    if-nez v4, :cond_49

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeName:Ljava/lang/String;

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    move-wide/from16 v0, p6

    move-wide/from16 v2, p8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    :cond_49
    if-ltz p1, :cond_65

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->requestWakelockCpuUpdate()V

    :cond_56
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopWakeLocked(ILjava/lang/String;IJ)V

    :cond_65
    return-void
.end method

.method public noteSyncFinishLocked(Ljava/lang/String;I)V
    .registers 12

    const/16 v6, 0x4004

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopSyncLocked(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_23

    return-void

    :cond_23
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    return-void
.end method

.method public noteSyncStartLocked(Ljava/lang/String;I)V
    .registers 12

    const v6, 0x8004

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartSyncLocked(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_24

    return-void

    :cond_24
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    return-void
.end method

.method public noteUidProcessStateLocked(II)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v0

    if-eq p1, v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateUidProcessStateLocked(I)V

    return-void
.end method

.method public noteUserActivityLocked(II)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteUserActivityLocked(I)V

    :cond_f
    return-void
.end method

.method public noteVibratorOffLocked(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVibratorOffLocked()V

    return-void
.end method

.method public noteVibratorOnLocked(IJ)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVibratorOnLocked(J)V

    return-void
.end method

.method public noteVideoOffLocked(I)V
    .registers 9

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    if-nez v4, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    if-nez v4, :cond_2f

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVideoTurnedOffLocked(J)V

    return-void
.end method

.method public noteVideoOnLocked(I)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    if-nez v4, :cond_25

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_25
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVideoTurnedOnLocked(J)V

    return-void
.end method

.method public noteWakeUpLocked(Ljava/lang/String;I)V
    .registers 12

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    const/16 v6, 0x12

    move-object v1, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    return-void
.end method

.method public noteWakeupReasonLocked(Ljava/lang/String;)V
    .registers 8

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->aggregateLastWakeupUptimeLocked(J)V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p1, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v5, 0x0

    iput v5, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    return-void
.end method

.method public noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedLocked(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(II)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiBatchedScanStartedLocked(IJ)V

    return-void
.end method

.method public noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedLocked(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(I)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiBatchedScanStoppedLocked(J)V

    return-void
.end method

.method public noteWifiMulticastDisabledFromSourceLocked(Landroid/os/WorkSource;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(I)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    if-nez v4, :cond_27

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x10001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiMulticastDisabledLocked(J)V

    return-void
.end method

.method public noteWifiMulticastEnabledFromSourceLocked(Landroid/os/WorkSource;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(I)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    if-nez v4, :cond_20

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    :cond_20
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiMulticastEnabledLocked(J)V

    return-void
.end method

.method public noteWifiOffLocked()V
    .registers 8

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x10000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    const-string/jumbo v4, "wifi-on"

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalStatsLocked(Ljava/lang/String;I)V

    :cond_2c
    return-void
.end method

.method public noteWifiOnLocked()V
    .registers 8

    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    if-nez v4, :cond_2b

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    const-string/jumbo v4, "wifi-off"

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalStatsLocked(Ljava/lang/String;I)V

    :cond_2b
    return-void
.end method

.method public noteWifiRadioPowerState(IJI)V
    .registers 13

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    if-eq v1, p1, :cond_2e

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2f

    const/4 v1, 0x3

    if-ne p1, v1, :cond_31

    const/4 v0, 0x1

    :goto_17
    if-eqz v0, :cond_33

    if-lez p4, :cond_20

    move-object v1, p0

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRadioApWakeupLocked(JJI)V

    :cond_20
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v7, 0x4000000

    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    :goto_29
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    :cond_2e
    return-void

    :cond_2f
    const/4 v0, 0x1

    goto :goto_17

    :cond_31
    const/4 v0, 0x0

    goto :goto_17

    :cond_33
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v7, -0x4000001

    and-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_29
.end method

.method public noteWifiRssiChangedLocked(I)V
    .registers 10

    const/4 v3, 0x5

    invoke-static {p1, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    if-eq v3, v2, :cond_47

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    if-ltz v3, :cond_22

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    aget-object v3, v3, v6

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_22
    if-ltz v2, :cond_48

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v3

    if-nez v3, :cond_35

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_35
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v6, v6, -0x71

    shl-int/lit8 v7, v2, 0x4

    or-int/2addr v6, v7

    iput v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    :goto_45
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    :cond_47
    return-void

    :cond_48
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->stopAllWifiSignalStrengthTimersLocked(I)V

    goto :goto_45
.end method

.method public noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .registers 10

    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    if-eqz v5, :cond_3c

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_23

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiStoppedLocked(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_23
    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_28
    if-ge v1, v0, :cond_45

    invoke-virtual {p2, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiRunningLocked(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3c
    const-string/jumbo v5, "BatteryStatsImpl"

    const-string/jumbo v6, "noteWifiRunningChangedLocked -- called while WIFI not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return-void
.end method

.method public noteWifiRunningLocked(Landroid/os/WorkSource;)V
    .registers 12

    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    if-nez v5, :cond_45

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v6

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v9, 0x20000000

    or-int/2addr v8, v9

    iput v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_3d

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiRunningLocked(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_3d
    const-string/jumbo v5, "wifi-running"

    const/4 v8, 0x2

    invoke-direct {p0, v5, v8}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalStatsLocked(Ljava/lang/String;I)V

    :goto_44
    return-void

    :cond_45
    const-string/jumbo v5, "BatteryStatsImpl"

    const-string/jumbo v8, "noteWifiRunningLocked -- called while WIFI running"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method public noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public noteWifiScanStartedLocked(I)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    if-nez v4, :cond_20

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    :cond_20
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiScanStartedLocked(J)V

    return-void
.end method

.method public noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public noteWifiScanStoppedLocked(I)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    if-nez v4, :cond_27

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x8000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiScanStoppedLocked(J)V

    return-void
.end method

.method public noteWifiStateLocked(ILjava/lang/String;)V
    .registers 7

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    if-eq v2, p1, :cond_27

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    if-ltz v2, :cond_17

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_17
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    const-string/jumbo v2, "wifi-state"

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalStatsLocked(Ljava/lang/String;I)V

    :cond_27
    return-void
.end method

.method public noteWifiStoppedLocked(Landroid/os/WorkSource;)V
    .registers 12

    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    if-eqz v5, :cond_46

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v6

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v9, -0x20000001

    and-int/2addr v8, v9

    iput v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, v0, :cond_3e

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiStoppedLocked(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_3e
    const-string/jumbo v5, "wifi-stopped"

    const/4 v8, 0x2

    invoke-direct {p0, v5, v8}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalStatsLocked(Ljava/lang/String;I)V

    :goto_45
    return-void

    :cond_46
    const-string/jumbo v5, "BatteryStatsImpl"

    const-string/jumbo v8, "noteWifiStoppedLocked -- called while WIFI not running"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method public noteWifiSupplicantStateChangedLocked(IZ)V
    .registers 10

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    if-eq v4, p1, :cond_36

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    if-ltz v4, :cond_1d

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_1d
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, p1

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v5, v5, -0x10

    shl-int/lit8 v6, p1, 0x0

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    :cond_36
    return-void
.end method

.method public onCleanupUserLocked(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    const v2, 0x1869f

    invoke-static {p1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->removeUidsInRange(II)V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUidsInRange(II)V

    return-void
.end method

.method public onUserRemovedLocked(I)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    const v4, 0x1869f

    invoke-static {p1, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    sub-int v5, v2, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->removeAtRange(II)V

    return-void
.end method

.method public prepareForDumpLocked()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStartClockTime()J

    return-void
.end method

.method public pullPendingStateUpdatesLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(II)V

    :cond_b
    return-void
.end method

.method readDailyItemTagDetailsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/BatteryStats$DailyItem;ZLjava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v8, "n"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2c

    const-string/jumbo v8, "BatteryStatsImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Missing \'n\' attribute at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void

    :cond_2c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Landroid/os/BatteryStats$LevelStepTracker;

    invoke-direct {v4, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    if-eqz p3, :cond_73

    iput-object v4, p2, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    :goto_39
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    :cond_3e
    :goto_3e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_a3

    const/4 v8, 0x3

    if-ne v6, v8, :cond_4e

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v3, :cond_a3

    :cond_4e
    const/4 v8, 0x3

    if-eq v6, v8, :cond_3e

    const/4 v8, 0x4

    if-eq v6, v8, :cond_3e

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "s"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_76

    if-ge v0, v1, :cond_3e

    const-string/jumbo v8, "v"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3e

    invoke-virtual {v4, v0, v7}, Landroid/os/BatteryStats$LevelStepTracker;->decodeEntryAt(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_73
    iput-object v4, p2, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    goto :goto_39

    :cond_76
    const-string/jumbo v8, "BatteryStatsImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown element under <"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ">: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3e

    :cond_a3
    iput v0, v4, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    return-void
.end method

.method readDailyItemTagLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Landroid/os/BatteryStats$DailyItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$DailyItem;-><init>()V

    const-string/jumbo v7, "start"

    const/4 v8, 0x0

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v1, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    :cond_15
    const-string/jumbo v7, "end"

    const/4 v8, 0x0

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v1, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    :cond_25
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :cond_29
    :goto_29
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_f9

    const/4 v7, 0x3

    if-ne v5, v7, :cond_39

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_f9

    :cond_39
    const/4 v7, 0x3

    if-eq v5, v7, :cond_29

    const/4 v7, 0x4

    if-eq v5, v7, :cond_29

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "dis"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    const-string/jumbo v7, "dis"

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v1, v8, v7}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyItemTagDetailsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/BatteryStats$DailyItem;ZLjava/lang/String;)V

    goto :goto_29

    :cond_54
    const-string/jumbo v7, "chg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    const-string/jumbo v7, "chg"

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v1, v8, v7}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyItemTagDetailsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/BatteryStats$DailyItem;ZLjava/lang/String;)V

    goto :goto_29

    :cond_65
    const-string/jumbo v7, "upd"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a6

    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    if-nez v7, :cond_79

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    :cond_79
    new-instance v3, Landroid/os/BatteryStats$PackageChange;

    invoke-direct {v3}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    const-string/jumbo v7, "pkg"

    const/4 v8, 0x0

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "ver"

    const/4 v8, 0x0

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :goto_99
    iput v7, v3, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_29

    :cond_a4
    const/4 v7, 0x0

    goto :goto_99

    :cond_a6
    const-string/jumbo v7, "rem"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d6

    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    if-nez v7, :cond_ba

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    :cond_ba
    new-instance v3, Landroid/os/BatteryStats$PackageChange;

    invoke-direct {v3}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    const-string/jumbo v7, "pkg"

    const/4 v8, 0x0

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_29

    :cond_d6
    const-string/jumbo v7, "BatteryStatsImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown element under <item>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_29

    :cond_f9
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public readDailyStatsLocked()V
    .registers 9

    const-string/jumbo v5, "BatteryStatsImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Reading daily items from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v7}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :try_start_25
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2a} :catch_3f

    move-result-object v4

    :try_start_2b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyItemsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_3b} :catch_43
    .catchall {:try_start_2b .. :try_end_3b} :catchall_4a

    :try_start_3b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_41

    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    return-void

    :catch_41
    move-exception v1

    goto :goto_3e

    :catch_43
    move-exception v2

    :try_start_44
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_3e

    :catch_48
    move-exception v1

    goto :goto_3e

    :catchall_4a
    move-exception v5

    :try_start_4b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    :goto_4e
    throw v5

    :catch_4f
    move-exception v1

    goto :goto_4e
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readFromParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .registers 36

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    const v4, -0x458a8b8b

    move/from16 v0, v23

    if-eq v0, v4, :cond_29

    new-instance v4, Landroid/os/ParcelFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad magic number: #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_29
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->readHistory(Landroid/os/Parcel;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_101

    const/4 v4, 0x1

    :goto_78
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEstimatedBatteryCapacity:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMinLearnedBatteryCapacity:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMaxLearnedBatteryCapacity:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v16, 0x0

    :goto_de
    const/4 v4, 0x5

    move/from16 v0, v16

    if-ge v0, v4, :cond_104

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    rsub-int/lit8 v7, v16, -0x64

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v33, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_de

    :cond_101
    const/4 v4, 0x0

    goto/16 :goto_78

    :cond_104
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/16 v7, -0xa

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLongestLightIdleTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLongestFullIdleTime:J

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/16 v7, -0xe

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeLightTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/16 v7, -0xb

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeFullTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/16 v7, -0xf

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceLightIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/16 v7, -0xc

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v7, -0x3

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v16, 0x0

    :goto_1bf
    const/4 v4, 0x6

    move/from16 v0, v16

    if-ge v0, v4, :cond_1e4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move/from16 v0, v16

    rsub-int v7, v0, -0xc8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v33, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_1bf

    :cond_1e4
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/16 v7, -0xc7

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v16, 0x0

    :goto_1fd
    const/16 v4, 0x11

    move/from16 v0, v16

    if-ge v0, v4, :cond_223

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move/from16 v0, v16

    rsub-int v7, v0, -0x12c

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v33, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_1fd

    :cond_223
    const/16 v16, 0x0

    :goto_225
    const/16 v4, 0xa

    move/from16 v0, v16

    if-ge v0, v4, :cond_250

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_225

    :cond_250
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/16 v7, -0x190

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/16 v7, -0x191

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v7, -0x4

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v7, -0x5

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v16, 0x0

    :goto_2ed
    const/16 v4, 0x8

    move/from16 v0, v16

    if-ge v0, v4, :cond_313

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move/from16 v0, v16

    rsub-int v7, v0, -0x258

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v33, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_2ed

    :cond_313
    const/16 v16, 0x0

    :goto_315
    const/16 v4, 0xd

    move/from16 v0, v16

    if-ge v0, v4, :cond_33b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move/from16 v0, v16

    rsub-int v7, v0, -0x2bc

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v33, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_315

    :cond_33b
    const/16 v16, 0x0

    :goto_33d
    const/4 v4, 0x5

    move/from16 v0, v16

    if-ge v0, v4, :cond_362

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move/from16 v0, v16

    rsub-int v7, v0, -0x320

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v33, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_33d

    :cond_362
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x5

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModemActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_532

    const/4 v4, 0x1

    :goto_399
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiReporting:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_535

    const/4 v4, 0x1

    :goto_3a4
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothReporting:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_538

    const/4 v4, 0x1

    :goto_3af
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasModemReporting:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v7, -0x7

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v7, -0x8

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/16 v7, -0x9

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/16 v7, -0xd

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanNesting:I

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/16 v7, -0xe

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenDoze:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenDozeSinceCharge:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRpmStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    const/16 v19, 0x0

    :goto_505
    move/from16 v0, v19

    if-ge v0, v12, :cond_53b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_52f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    new-instance v28, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRpmStats:Ljava/util/HashMap;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52f
    add-int/lit8 v19, v19, 0x1

    goto :goto_505

    :cond_532
    const/4 v4, 0x0

    goto/16 :goto_399

    :cond_535
    const/4 v4, 0x0

    goto/16 :goto_3a4

    :cond_538
    const/4 v4, 0x0

    goto/16 :goto_3af

    :cond_53b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOffRpmStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    const/16 v19, 0x0

    :goto_548
    move/from16 v0, v19

    if-ge v0, v13, :cond_575

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_572

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    new-instance v28, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOffRpmStats:Ljava/util/HashMap;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_572
    add-int/lit8 v19, v19, 0x1

    goto :goto_548

    :cond_575
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    const/16 v17, 0x0

    :goto_582
    move/from16 v0, v17

    if-ge v0, v11, :cond_5af

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5ac

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    new-instance v22, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5ac
    add-int/lit8 v17, v17, 0x1

    goto :goto_582

    :cond_5af
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/16 v20, 0x0

    :goto_5bc
    move/from16 v0, v20

    if-ge v0, v14, :cond_5e9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5e6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    new-instance v29, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e6
    add-int/lit8 v20, v20, 0x1

    goto :goto_5bc

    :cond_5e9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->clear()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    const/16 v18, 0x0

    :goto_5f6
    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_62b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_628

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    new-instance v21, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v21

    invoke-virtual {v4, v6, v7, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_628
    add-int/lit8 v18, v18, 0x1

    goto :goto_5f6

    :cond_62b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCpuFreqs:[J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    const/16 v16, 0x0

    :goto_694
    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_6c6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v31

    new-instance v30, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_694

    :cond_6c6
    return-void
.end method

.method readHistory(Landroid/os/Parcel;Z)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ParcelFormatException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->setDataSize(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    const/4 v6, 0x0

    :goto_2a
    if-ge v6, v8, :cond_79

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3f

    new-instance v14, Landroid/os/ParcelFormatException;

    const-string/jumbo v15, "null history tag string"

    invoke-direct {v14, v15}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_3f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    new-instance v12, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v12}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v9, v12, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iput v13, v12, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iput v7, v12, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    if-lt v7, v14, :cond_65

    add-int/lit8 v14, v7, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    :cond_65
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    iget-object v15, v12, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_79
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sget v14, Lcom/android/internal/os/BatteryStatsImpl;->MAX_MAX_HISTORY_BUFFER:I

    mul-int/lit8 v14, v14, 0x3

    if-lt v2, v14, :cond_a1

    new-instance v14, Landroid/os/ParcelFormatException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "File corrupt: history data buffer too large "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_a1
    and-int/lit8 v14, v2, -0x4

    if-eq v14, v2, :cond_bf

    new-instance v14, Landroid/os/ParcelFormatException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "File corrupt: history data buffer not aligned "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_bf
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v3, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    add-int v14, v3, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->setDataPosition(I)V

    if-eqz p2, :cond_d4

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/os/BatteryStatsImpl;->readOldHistory(Landroid/os/Parcel;)V

    :cond_d4
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_f7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v14}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    sub-long/2addr v14, v10

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    :cond_f7
    return-void
.end method

.method public readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    .registers 21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    const v14, 0x7ffff

    and-int v5, v8, v14

    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    const v14, 0x7fffd

    if-ge v5, v14, :cond_12e

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    :goto_25
    const/high16 v14, 0x80000

    and-int/2addr v14, v8

    if-eqz v14, :cond_188

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->readBatteryLevelInt(ILandroid/os/BatteryStats$HistoryItem;)V

    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    :goto_3f
    const/high16 v14, 0x100000

    and-int/2addr v14, v8

    if-eqz v14, :cond_1a0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    const/high16 v14, -0x2000000

    and-int/2addr v14, v8

    const v15, 0xffffff

    and-int/2addr v15, v11

    or-int/2addr v14, v15

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    shr-int/lit8 v14, v11, 0x1d

    and-int/lit8 v14, v14, 0x7

    int-to-byte v14, v14

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shr-int/lit8 v14, v11, 0x1a

    and-int/lit8 v14, v14, 0x7

    int-to-byte v14, v14

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shr-int/lit8 v14, v11, 0x18

    and-int/lit8 v14, v14, 0x3

    int-to-byte v14, v14

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    move-object/from16 v0, p2

    iget-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    packed-switch v14, :pswitch_data_1dc

    :goto_76
    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    :goto_80
    const/high16 v14, 0x200000

    and-int/2addr v14, v8

    if-eqz v14, :cond_8d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    :cond_8d
    const/high16 v14, 0x400000

    and-int/2addr v14, v8

    if-eqz v14, :cond_1c1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    const v14, 0xffff

    and-int v12, v10, v14

    shr-int/lit8 v14, v10, 0x10

    const v15, 0xffff

    and-int v13, v14, v15

    const v14, 0xffff

    if-eq v12, v14, :cond_1b3

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V

    :goto_b8
    const v14, 0xffff

    if-eq v13, v14, :cond_1ba

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V

    :goto_ce
    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    :goto_d8
    const/high16 v14, 0x800000

    and-int/2addr v14, v8

    if-eqz v14, :cond_1cd

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v14, 0xffff

    and-int/2addr v14, v3

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    shr-int/lit8 v14, v3, 0x10

    const v15, 0xffff

    and-int v9, v14, v15

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V

    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    :goto_10b
    and-int/lit8 v14, v2, 0x1

    if-eqz v14, :cond_1d4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/os/BatteryStats$HistoryStepDetails;->readFromParcel(Landroid/os/Parcel;)V

    :goto_120
    const/high16 v14, 0x1000000

    and-int/2addr v14, v8

    if-eqz v14, :cond_12d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    :cond_12d
    return-void

    :cond_12e
    const v14, 0x7fffd

    if-ne v5, v14, :cond_14d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void

    :cond_14d
    const v14, 0x7fffe

    if-ne v5, v14, :cond_16f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v0, v4

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto/16 :goto_25

    :cond_16f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    add-long/2addr v14, v6

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto/16 :goto_25

    :cond_188
    const/4 v2, 0x0

    goto/16 :goto_3f

    :pswitch_18b
    const/4 v14, 0x1

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto/16 :goto_76

    :pswitch_192
    const/4 v14, 0x2

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto/16 :goto_76

    :pswitch_199
    const/4 v14, 0x4

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto/16 :goto_76

    :cond_1a0
    const/high16 v14, -0x2000000

    and-int/2addr v14, v8

    move-object/from16 v0, p2

    iget v15, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v16, 0xffffff

    and-int v15, v15, v16

    or-int/2addr v14, v15

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto/16 :goto_80

    :cond_1b3
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    goto/16 :goto_b8

    :cond_1ba
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto/16 :goto_ce

    :cond_1c1
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto/16 :goto_d8

    :cond_1cd
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    goto/16 :goto_10b

    :cond_1d4
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    goto/16 :goto_120

    nop

    :pswitch_data_1dc
    .packed-switch 0x1
        :pswitch_18b
        :pswitch_192
        :pswitch_199
    .end packed-switch
.end method

.method readKernelUidCpuFreqTimesLocked()V
    .registers 3

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readDelta(Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    return-void

    :cond_b
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$4;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$4;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    goto :goto_7
.end method

.method public readLocked()V
    .registers 14

    const/4 v12, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyStatsLocked()V

    :cond_8
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    if-nez v1, :cond_16

    const-string/jumbo v1, "BatteryStats"

    const-string/jumbo v6, "readLocked: no file associated with this instance"

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :try_start_1b
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_28

    return-void

    :cond_28
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v11}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v10

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    array-length v1, v10

    const/4 v6, 0x0

    invoke-virtual {v9, v10, v6, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p0, v9}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_44} :catch_6f

    :goto_44
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-lez v1, :cond_6b

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/4 v6, 0x4

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    move-object v1, p0

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    :cond_6b
    invoke-virtual {p0, v12}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsIfNeededLocked(Z)V

    return-void

    :catch_6f
    move-exception v0

    const-string/jumbo v1, "BatteryStats"

    const-string/jumbo v6, "Error reading battery statistics"

    invoke-static {v1, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsLocked()V

    goto :goto_44
.end method

.method readOldHistory(Landroid/os/Parcel;)V
    .registers 2

    return-void
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 56
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ParcelFormatException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v49

    const/16 v51, 0xa7

    move/from16 v0, v49

    move/from16 v1, v51

    if-eq v0, v1, :cond_3f

    const-string/jumbo v51, "BatteryStats"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "readFromParcel: version got "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string/jumbo v53, ", expected "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const/16 v53, 0xa7

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string/jumbo v53, "; erasing old stats"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3f
    const/16 v51, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->readHistory(Landroid/os/Parcel;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v52

    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v52

    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v52

    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readSummaryFromParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readSummaryFromParcel(Landroid/os/Parcel;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mEstimatedBatteryCapacity:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMinLearnedBatteryCapacity:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMaxLearnedBatteryCapacity:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenDozeSinceCharge:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-lez v8, :cond_1c2

    new-instance v51, Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    :goto_186
    if-lez v8, :cond_1ca

    add-int/lit8 v8, v8, -0x1

    new-instance v37, Landroid/os/BatteryStats$PackageChange;

    invoke-direct/range {v37 .. v37}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v37

    iput-object v0, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_1bf

    const/16 v51, 0x1

    :goto_1a1
    move/from16 v0, v51

    move-object/from16 v1, v37

    iput-boolean v0, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, v37

    iput v0, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_186

    :cond_1bf
    const/16 v51, 0x0

    goto :goto_1a1

    :cond_1c2
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    :cond_1ca
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v52

    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v52

    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v52

    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    move/from16 v51, v0

    add-int/lit8 v51, v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    const/16 v19, 0x0

    :goto_21a
    const/16 v51, 0x5

    move/from16 v0, v19

    move/from16 v1, v51

    if-ge v0, v1, :cond_234

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    aget-object v51, v51, v19

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_21a

    :cond_234
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v52

    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mLongestLightIdleTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v52

    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mLongestFullIdleTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeLightTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeFullTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceLightIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    const/16 v19, 0x0

    :goto_2b5
    const/16 v51, 0x6

    move/from16 v0, v19

    move/from16 v1, v51

    if-ge v0, v1, :cond_2cf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    aget-object v51, v51, v19

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_2b5

    :cond_2cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    const/16 v19, 0x0

    :goto_2de
    const/16 v51, 0x11

    move/from16 v0, v19

    move/from16 v1, v51

    if-ge v0, v1, :cond_2f8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    aget-object v51, v51, v19

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_2de

    :cond_2f8
    const/16 v19, 0x0

    :goto_2fa
    const/16 v51, 0xa

    move/from16 v0, v19

    move/from16 v1, v51

    if-ge v0, v1, :cond_323

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    aget-object v51, v51, v19

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    aget-object v51, v51, v19

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_2fa

    :cond_323
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    const/16 v19, 0x0

    :goto_3a0
    const/16 v51, 0x8

    move/from16 v0, v19

    move/from16 v1, v51

    if-ge v0, v1, :cond_3ba

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    aget-object v51, v51, v19

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_3a0

    :cond_3ba
    const/16 v19, 0x0

    :goto_3bc
    const/16 v51, 0xd

    move/from16 v0, v19

    move/from16 v1, v51

    if-ge v0, v1, :cond_3d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    aget-object v51, v51, v19

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_3bc

    :cond_3d6
    const/16 v19, 0x0

    :goto_3d8
    const/16 v51, 0x5

    move/from16 v0, v19

    move/from16 v1, v51

    if-ge v0, v1, :cond_3f2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    aget-object v51, v51, v19

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_3d8

    :cond_3f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModemActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_4b8

    const/16 v51, 0x1

    :goto_421
    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiReporting:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_4bc

    const/16 v51, 0x1

    :goto_42f
    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothReporting:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_4c0

    const/16 v51, 0x1

    :goto_43d
    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHasModemReporting:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanNesting:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    const/16 v51, 0x2710

    move/from16 v0, v51

    if-le v9, v0, :cond_4c4

    new-instance v51, Landroid/os/ParcelFormatException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "File corrupt: too many rpm stats "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v51

    :cond_4b8
    const/16 v51, 0x0

    goto/16 :goto_421

    :cond_4bc
    const/16 v51, 0x0

    goto/16 :goto_42f

    :cond_4c0
    const/16 v51, 0x0

    goto/16 :goto_43d

    :cond_4c4
    const/16 v24, 0x0

    :goto_4c6
    move/from16 v0, v24

    if-ge v0, v9, :cond_4e6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_4e3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getRpmTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_4e3
    add-int/lit8 v24, v24, 0x1

    goto :goto_4c6

    :cond_4e6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    const/16 v51, 0x2710

    move/from16 v0, v51

    if-le v12, v0, :cond_50c

    new-instance v51, Landroid/os/ParcelFormatException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "File corrupt: too many screen-off rpm stats "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v51

    :cond_50c
    const/16 v24, 0x0

    :goto_50e
    move/from16 v0, v24

    if-ge v0, v12, :cond_52e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_52b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOffRpmTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_52b
    add-int/lit8 v24, v24, 0x1

    goto :goto_50e

    :cond_52e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v51, 0x2710

    move/from16 v0, v51

    if-le v5, v0, :cond_554

    new-instance v51, Landroid/os/ParcelFormatException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "File corrupt: too many kernel wake locks "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v51

    :cond_554
    const/16 v21, 0x0

    :goto_556
    move/from16 v0, v21

    if-ge v0, v5, :cond_576

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_573

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_573
    add-int/lit8 v21, v21, 0x1

    goto :goto_556

    :cond_576
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    const/16 v51, 0x2710

    move/from16 v0, v16

    move/from16 v1, v51

    if-le v0, v1, :cond_5a0

    new-instance v51, Landroid/os/ParcelFormatException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "File corrupt: too many wakeup reasons "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v51

    :cond_5a0
    const/16 v29, 0x0

    :goto_5a2
    move/from16 v0, v29

    move/from16 v1, v16

    if-ge v0, v1, :cond_5c4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_5c1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_5c1
    add-int/lit8 v29, v29, 0x1

    goto :goto_5a2

    :cond_5c4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v22, 0x0

    :goto_5ca
    move/from16 v0, v22

    if-ge v0, v6, :cond_5ea

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_5e7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelMemoryTimerLocked(J)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_5e7
    add-int/lit8 v22, v22, 0x1

    goto :goto_5ca

    :cond_5ea
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCpuFreqs:[J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    const/16 v51, 0x2710

    move/from16 v0, v51

    if-le v13, v0, :cond_61a

    new-instance v51, Landroid/os/ParcelFormatException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "File corrupt: too many uids "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v51

    :cond_61a
    const/16 v26, 0x0

    :goto_61c
    move/from16 v0, v26

    if-ge v0, v13, :cond_cac

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v48

    new-instance v47, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    move/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move/from16 v1, v48

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readSummaryFromParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readSummaryFromParcel(Landroid/os/Parcel;)V

    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v47

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_673

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_673
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v47

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_68e

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_68e
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v47

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_6a9

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_6a9
    const/16 v51, -0x1

    move/from16 v0, v51

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/16 v19, 0x0

    :goto_6b3
    const/16 v51, 0x5

    move/from16 v0, v19

    move/from16 v1, v51

    if-ge v0, v1, :cond_6de

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_6db

    const/16 v51, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v19

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    aget-object v51, v51, v19

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_6db
    add-int/lit8 v19, v19, 0x1

    goto :goto_6b3

    :cond_6de
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v47

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_6f9

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_6f9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_70a

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_70a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_71b

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_71b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_72c

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_72c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_73d

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_73d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_74e

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_74e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_75f

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundServiceTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_75f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_770

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAggregatedPartialWakelockTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_770
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_781

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_781
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_792

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothUnoptimizedScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_792
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_7a3

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothScanResultCounterLocked()Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_7a3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_7b4

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothScanResultBgCounterLocked()Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_7b4
    const/16 v51, 0x12

    move/from16 v0, v51

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    const/16 v19, 0x0

    :goto_7be
    const/16 v51, 0x6

    move/from16 v0, v19

    move/from16 v1, v51

    if-ge v0, v1, :cond_7e9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_7e6

    const/16 v51, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v19

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v51, v0

    aget-object v51, v51, v19

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_7e6
    add-int/lit8 v19, v19, 0x1

    goto :goto_7be

    :cond_7e9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_7fa

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_7fa
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_827

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v51, v0

    if-nez v51, :cond_80b

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    :cond_80b
    const/16 v19, 0x0

    :goto_80d
    const/16 v51, 0x4

    move/from16 v0, v19

    move/from16 v1, v51

    if-ge v0, v1, :cond_827

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v51, v0

    aget-object v51, v51, v19

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_80d

    :cond_827
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_87d

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    if-nez v51, :cond_838

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    :cond_838
    const/16 v19, 0x0

    :goto_83a
    const/16 v51, 0xa

    move/from16 v0, v19

    move/from16 v1, v51

    if-ge v0, v1, :cond_863

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    aget-object v51, v51, v19

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    aget-object v51, v51, v19

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_83a

    :cond_863
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_87d
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_965

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v51, v0

    if-eqz v51, :cond_8c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v51

    move/from16 v0, v51

    move/from16 v1, v34

    if-eq v0, v1, :cond_8c2

    new-instance v51, Landroid/os/ParcelFormatException;

    const-string/jumbo v52, "Incompatible cpu cluster arrangement"

    invoke-direct/range {v51 .. v52}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v51

    :cond_8c2
    move/from16 v0, v34

    new-array v0, v0, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/16 v18, 0x0

    :goto_8d0
    move/from16 v0, v18

    move/from16 v1, v34

    if-ge v0, v1, :cond_96d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_957

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v51, v0

    if-eqz v51, :cond_916

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v51

    move/from16 v0, v51

    if-eq v0, v11, :cond_916

    new-instance v51, Landroid/os/ParcelFormatException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "File corrupt: too many speed bins "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v51

    :cond_916
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    new-array v0, v11, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v52, v0

    aput-object v52, v51, v18

    const/16 v45, 0x0

    :goto_924
    move/from16 v0, v45

    if-ge v0, v11, :cond_961

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_954

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    aget-object v51, v51, v18

    new-instance v52, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v53, v0

    invoke-direct/range {v52 .. v53}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v52, v51, v45

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    aget-object v51, v51, v18

    aget-object v51, v51, v45

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_954
    add-int/lit8 v45, v45, 0x1

    goto :goto_924

    :cond_957
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v52, v51, v18

    :cond_961
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_8d0

    :cond_965
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    :cond_96d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v51, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readSummaryFromParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v51, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readSummaryFromParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_a03

    new-instance v51, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v52, v0

    invoke-direct/range {v51 .. v52}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->-set0(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static/range {v47 .. v47}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->-get0(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :goto_9b8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_a0d

    new-instance v51, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v52, v0

    invoke-direct/range {v51 .. v52}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->-set1(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static/range {v47 .. v47}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->-get1(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :goto_9db
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    sget v51, Lcom/android/internal/os/BatteryStatsImpl;->MAX_WAKELOCKS_PER_UID:I

    add-int/lit8 v51, v51, 0x1

    move/from16 v0, v51

    if-le v14, v0, :cond_a17

    new-instance v51, Landroid/os/ParcelFormatException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "File corrupt: too many wake locks "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v51

    :cond_a03
    const/16 v51, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->-set0(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_9b8

    :cond_a0d
    const/16 v51, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->-set1(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_9db

    :cond_a17
    const/16 v27, 0x0

    :goto_a19
    move/from16 v0, v27

    if-ge v0, v14, :cond_a2d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v47

    move-object/from16 v1, v50

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    add-int/lit8 v27, v27, 0x1

    goto :goto_a19

    :cond_a2d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    sget v51, Lcom/android/internal/os/BatteryStatsImpl;->MAX_WAKELOCKS_PER_UID:I

    add-int/lit8 v51, v51, 0x1

    move/from16 v0, v51

    if-le v10, v0, :cond_a55

    new-instance v51, Landroid/os/ParcelFormatException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "File corrupt: too many syncs "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v51

    :cond_a55
    const/16 v25, 0x0

    :goto_a57
    move/from16 v0, v25

    if-ge v0, v10, :cond_a6b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v47

    move-object/from16 v1, v33

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    add-int/lit8 v25, v25, 0x1

    goto :goto_a57

    :cond_a6b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget v51, Lcom/android/internal/os/BatteryStatsImpl;->MAX_WAKELOCKS_PER_UID:I

    add-int/lit8 v51, v51, 0x1

    move/from16 v0, v51

    if-le v4, v0, :cond_a93

    new-instance v51, Landroid/os/ParcelFormatException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "File corrupt: too many job timers "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v51

    :cond_a93
    const/16 v20, 0x0

    :goto_a95
    move/from16 v0, v20

    if-ge v0, v4, :cond_aa9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v47

    move-object/from16 v1, v33

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    add-int/lit8 v20, v20, 0x1

    goto :goto_a95

    :cond_aa9
    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readJobCompletionsFromParcelLocked(Landroid/os/Parcel;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    const/16 v51, 0x3e8

    move/from16 v0, v51

    if-le v7, v0, :cond_ad6

    new-instance v51, Landroid/os/ParcelFormatException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "File corrupt: too many sensors "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v51

    :cond_ad6
    const/16 v25, 0x0

    :goto_ad8
    move/from16 v0, v25

    if-ge v0, v7, :cond_afc

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    if-eqz v51, :cond_af9

    const/16 v51, 0x1

    move-object/from16 v0, v47

    move/from16 v1, v43

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_af9
    add-int/lit8 v25, v25, 0x1

    goto :goto_ad8

    :cond_afc
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    const/16 v51, 0x3e8

    move/from16 v0, v51

    if-le v7, v0, :cond_b22

    new-instance v51, Landroid/os/ParcelFormatException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "File corrupt: too many processes "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v51

    :cond_b22
    const/16 v23, 0x0

    :goto_b24
    move/from16 v0, v23

    if-ge v0, v7, :cond_b9e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v47

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v36

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v52

    move-wide/from16 v0, v52

    move-object/from16 v2, v36

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    move-wide/from16 v0, v52

    move-object/from16 v2, v36

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v52

    move-wide/from16 v0, v52

    move-object/from16 v2, v36

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    move-wide/from16 v0, v52

    move-object/from16 v2, v36

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v52

    move-wide/from16 v0, v52

    move-object/from16 v2, v36

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    move-wide/from16 v0, v52

    move-object/from16 v2, v36

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumCrashes:I

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumAnrs:I

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_b24

    :cond_b9e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    const/16 v51, 0x2710

    move/from16 v0, v51

    if-le v7, v0, :cond_bc4

    new-instance v51, Landroid/os/ParcelFormatException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "File corrupt: too many packages "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v51

    :cond_bc4
    const/16 v23, 0x0

    :goto_bc6
    move/from16 v0, v23

    if-ge v0, v7, :cond_ca8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v47

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v35

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    const/16 v51, 0x3e8

    move/from16 v0, v51

    if-le v15, v0, :cond_bfc

    new-instance v51, Landroid/os/ParcelFormatException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "File corrupt: too many wakeup alarms "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v51

    :cond_bfc
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Landroid/util/ArrayMap;->clear()V

    const/16 v28, 0x0

    :goto_c07
    move/from16 v0, v28

    if-ge v0, v15, :cond_c37

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    new-instance v17, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v51, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v46

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v28, v28, 0x1

    goto :goto_c07

    :cond_c37
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    const/16 v51, 0x3e8

    move/from16 v0, v51

    if-le v10, v0, :cond_c5d

    new-instance v51, Landroid/os/ParcelFormatException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "File corrupt: too many services "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v51

    :cond_c5d
    const/16 v25, 0x0

    :goto_c5f
    move/from16 v0, v25

    if-ge v0, v10, :cond_ca4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v47

    move-object/from16 v1, v38

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v42

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v52

    move-wide/from16 v0, v52

    move-object/from16 v2, v42

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    move-wide/from16 v0, v52

    move-object/from16 v2, v42

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    move/from16 v0, v51

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    move/from16 v0, v51

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    add-int/lit8 v25, v25, 0x1

    goto :goto_c5f

    :cond_ca4
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_bc6

    :cond_ca8
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_61c

    :cond_cac
    return-void
.end method

.method public recordDailyStatsIfNeededLocked(Z)V
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    if-eqz p1, :cond_1a

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1a

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    goto :goto_d

    :cond_1a
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    goto :goto_d
.end method

.method public recordDailyStatsLocked()V
    .registers 11

    const/4 v9, 0x0

    const/4 v8, 0x0

    new-instance v2, Landroid/os/BatteryStats$DailyItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$DailyItem;-><init>()V

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    iput-wide v6, v2, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v5, v5, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-lez v5, :cond_28

    const/4 v1, 0x1

    new-instance v5, Landroid/os/BatteryStats$LevelStepTracker;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v6, v6, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget-object v7, v7, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    invoke-direct {v5, v6, v7}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I[J)V

    iput-object v5, v2, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    :cond_28
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v5, v5, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-lez v5, :cond_3e

    const/4 v1, 0x1

    new-instance v5, Landroid/os/BatteryStats$LevelStepTracker;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v6, v6, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget-object v7, v7, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    invoke-direct {v5, v6, v7}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I[J)V

    iput-object v5, v2, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    :cond_3e
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    if-eqz v5, :cond_49

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    iput-object v5, v2, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    iput-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    :cond_49
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateDailyDeadlineLocked()V

    if-eqz v1, :cond_8f

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5d
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_6d

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5d

    :cond_6d
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_72
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeDailyItemsLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$2;

    invoke-direct {v6, p0, v3}, Lcom/android/internal/os/BatteryStatsImpl$2;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_8f} :catch_90

    :cond_8f
    :goto_8f
    return-void

    :catch_90
    move-exception v0

    goto :goto_8f
.end method

.method public removeIsolatedUidLocked(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUid(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->removeUid(I)V

    return-void
.end method

.method public removeUidStatsLocked(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUid(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->removeUid(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public reportExcessiveCpuLocked(ILjava/lang/String;JJ)V
    .registers 14

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    if-eqz v0, :cond_14

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reportExcessiveCpuLocked(Ljava/lang/String;JJ)V

    :cond_14
    return-void
.end method

.method public resetAllStatsCmdLocked()V
    .registers 15

    const-wide/16 v12, 0x3e8

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsLocked()V

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v8}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    mul-long v6, v2, v12

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v8}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    mul-long v4, v0, v12

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v8, v6, v7, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->reset(JJ)V

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v8, v6, v7, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->reset(JJ)V

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v9, 0x80000

    and-int/2addr v8, v9

    if-nez v8, :cond_59

    iget v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    invoke-virtual {p0, v8}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenOn(I)Z

    move-result v8

    if-eqz v8, :cond_5d

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevel:I

    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    :goto_53
    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenDoze:I

    :cond_59
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->initActiveHistoryEventsLocked(JJ)V

    return-void

    :cond_5d
    iget v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    invoke-virtual {p0, v8}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenDoze(I)Z

    move-result v8

    if-eqz v8, :cond_70

    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevel:I

    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    goto :goto_53

    :cond_70
    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevel:I

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    goto :goto_53
.end method

.method public scheduleRemoveIsolatedUidLocked(II)V
    .registers 6

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, p2, :cond_12

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    invoke-interface {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleCpuSyncDueToRemovedUid(I)Ljava/util/concurrent/Future;

    :cond_12
    return-void
.end method

.method public setBatteryStateLocked(IIIIIIII)V
    .registers 28

    const/4 v3, 0x0

    move/from16 v0, p5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result p5

    if-nez p3, :cond_165

    const/16 v18, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    if-nez v3, :cond_176

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    move/from16 v0, v18

    if-ne v0, v3, :cond_3c

    if-eqz v18, :cond_169

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v10, -0x80001

    and-int/2addr v8, v10

    iput v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    :cond_3c
    :goto_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v10, 0x1000000

    or-int/2addr v8, v10

    iput v8, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p1

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p4

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p7

    iput v0, v3, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargingStateLevel:I

    :cond_7f
    :goto_7f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v9, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-eqz v18, :cond_197

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-nez v3, :cond_9e

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    :cond_9e
    :goto_9e
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    if-gez v3, :cond_b0

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    :cond_b0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    move/from16 v0, v18

    if-eq v0, v3, :cond_1b0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p4

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p1

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p2

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p3

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p5

    int-to-short v8, v0

    iput-short v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p6

    int-to-char v8, v0

    iput-char v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    move/from16 v0, p7

    if-ge v0, v3, :cond_12a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    sub-int v3, v3, p7

    int-to-long v0, v3

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenDoze(I)Z

    move-result v3

    if-eqz v3, :cond_12a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    :cond_12a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p7

    iput v0, v3, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    move-object/from16 v3, p0

    move/from16 v8, v18

    move/from16 v10, p4

    move/from16 v11, p7

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->setOnBatteryLocked(JJZIII)V

    :cond_13d
    :goto_13d
    if-nez v18, :cond_149

    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_149

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    :cond_149
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMinLearnedBatteryCapacity:I

    const/4 v8, -0x1

    if-ne v3, v8, :cond_3ac

    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMinLearnedBatteryCapacity:I

    :goto_156
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMaxLearnedBatteryCapacity:I

    move/from16 v0, p8

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMaxLearnedBatteryCapacity:I

    return-void

    :cond_165
    const/16 v18, 0x0

    goto/16 :goto_b

    :cond_169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v10, 0x80000

    or-int/2addr v8, v10

    iput v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto/16 :goto_3c

    :cond_176
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    move/from16 v0, p4

    if-ne v3, v0, :cond_186

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    move/from16 v0, v18

    if-eq v3, v0, :cond_7f

    :cond_186
    const/16 v3, 0x64

    move/from16 v0, p4

    if-lt v0, v3, :cond_195

    move/from16 v3, v18

    :goto_18e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsIfNeededLocked(Z)V

    goto/16 :goto_7f

    :cond_195
    const/4 v3, 0x0

    goto :goto_18e

    :cond_197
    const/16 v3, 0x60

    move/from16 v0, p4

    if-ge v0, v3, :cond_9e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-nez v3, :cond_9e

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    goto/16 :goto_9e

    :cond_1b0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v0, p4

    if-eq v3, v0, :cond_1cf

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p4

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/4 v2, 0x1

    const-string/jumbo v3, "battery-level"

    const/16 v8, 0x1f

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalStatsLocked(Ljava/lang/String;I)V

    :cond_1cf
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    move/from16 v0, p1

    if-eq v3, v0, :cond_1e3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p1

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    const/4 v2, 0x1

    :cond_1e3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    move/from16 v0, p2

    if-eq v3, v0, :cond_1f7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p2

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    const/4 v2, 0x1

    :cond_1f7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    move/from16 v0, p3

    if-eq v3, v0, :cond_20b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p3

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    const/4 v2, 0x1

    :cond_20b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    add-int/lit8 v3, v3, 0xa

    move/from16 v0, p5

    if-ge v0, v3, :cond_223

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    add-int/lit8 v3, v3, -0xa

    move/from16 v0, p5

    if-gt v0, v3, :cond_22d

    :cond_223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p5

    int-to-short v8, v0

    iput-short v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    const/4 v2, 0x1

    :cond_22d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-char v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    add-int/lit8 v3, v3, 0x14

    move/from16 v0, p6

    if-gt v0, v3, :cond_245

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-char v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    add-int/lit8 v3, v3, -0x14

    move/from16 v0, p6

    if-ge v0, v3, :cond_24f

    :cond_245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p6

    int-to-char v8, v0

    iput-char v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    const/4 v2, 0x1

    :cond_24f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    add-int/lit8 v3, v3, 0xa

    move/from16 v0, p7

    if-ge v0, v3, :cond_267

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    add-int/lit8 v3, v3, -0xa

    move/from16 v0, p7

    if-gt v0, v3, :cond_2ac

    :cond_267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    move/from16 v0, p7

    if-ge v0, v3, :cond_2a3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    sub-int v3, v3, p7

    int-to-long v0, v3

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenDoze(I)Z

    move-result v3

    if-eqz v3, :cond_2a3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    :cond_2a3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p7

    iput v0, v3, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    const/4 v2, 0x1

    :cond_2ac
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    int-to-long v10, v3

    const/16 v3, 0x30

    shl-long/2addr v10, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    int-to-long v14, v3

    const/16 v3, 0x38

    shl-long/2addr v14, v3

    or-long/2addr v10, v14

    move/from16 v0, p4

    and-int/lit16 v3, v0, 0xff

    int-to-long v14, v3

    const/16 v3, 0x28

    shl-long/2addr v14, v3

    or-long v12, v10, v14

    if-eqz v18, :cond_31f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    move/from16 v0, p4

    if-eq v3, v0, :cond_316

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    move/from16 v0, p4

    if-le v3, v0, :cond_316

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    sub-int v11, v3, p4

    move-wide v14, v4

    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    sub-int v11, v3, p4

    move-wide v14, v4

    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    :cond_316
    :goto_316
    if-eqz v2, :cond_13d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    goto/16 :goto_13d

    :cond_31f
    const/16 v3, 0x5a

    move/from16 v0, p4

    if-lt v0, v3, :cond_333

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    move-result v3

    or-int/2addr v2, v3

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    :cond_333
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-nez v3, :cond_395

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    move/from16 v0, p4

    if-ge v3, v0, :cond_34f

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    move-result v3

    or-int/2addr v2, v3

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    :cond_34f
    :goto_34f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    move/from16 v0, p4

    if-eq v3, v0, :cond_316

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    move/from16 v0, p4

    if-ge v3, v0, :cond_316

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    sub-int v11, p4, v3

    move-wide v14, v4

    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    sub-int v11, p4, v3

    move-wide v14, v4

    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    goto :goto_316

    :cond_395
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    move/from16 v0, p4

    if-le v3, v0, :cond_34f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    move-result v3

    or-int/2addr v2, v3

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    goto :goto_34f

    :cond_3ac
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMinLearnedBatteryCapacity:I

    move/from16 v0, p8

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    goto/16 :goto_156
.end method

.method public setCallback(Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    return-void
.end method

.method setChargingLocked(Z)Z
    .registers 5

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-eq v0, p1, :cond_24

    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    :goto_11
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    return v0

    :cond_19
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_11

    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public setExternalStatsSyncLocked(Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    return-void
.end method

.method public setNoAutoReset(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNoAutoReset:Z

    return-void
.end method

.method protected setOnBatteryLocked(JJZIII)V
    .registers 30

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    if-eqz p5, :cond_19b

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, v16

    iput v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v4, 0x3e8

    mul-long v12, p3, v4

    const-wide/16 v4, 0x3e8

    mul-long v14, p1, v4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    if-eqz p5, :cond_1ec

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNoAutoReset:Z

    if-nez v3, :cond_dc

    const/4 v3, 0x5

    move/from16 v0, p6

    if-eq v0, v3, :cond_3a

    const/16 v3, 0x5a

    move/from16 v0, p7

    if-lt v0, v3, :cond_19e

    :cond_3a
    :goto_3a
    const-string/jumbo v3, "BatteryStatsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Resetting battery stats: level="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " dischargeLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " lowAmount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " highAmount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v3

    const/16 v4, 0x14

    if-lt v3, v4, :cond_b4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v17

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->writeSummaryToParcel(Landroid/os/Parcel;Z)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$5;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b4
    const/4 v2, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsLocked()V

    if-lez p8, :cond_ce

    if-lez p7, :cond_ce

    move/from16 v0, p8

    div-int/lit16 v3, v0, 0x3e8

    int-to-double v4, v3

    move/from16 v0, p7

    int-to-double v6, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    div-double v6, v6, v18

    div-double/2addr v4, v6

    double-to-int v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEstimatedBatteryCapacity:I

    :cond_ce
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v3}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    :cond_dc
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-eqz v3, :cond_e8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    :cond_e8
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargingStateLevel:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v3}, Landroid/os/BatteryStats$LevelStepTracker;->clearTime()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v3}, Landroid/os/BatteryStats$LevelStepTracker;->clearTime()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p7

    int-to-byte v4, v0

    iput-byte v4, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v4, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v5, -0x80001

    and-int/2addr v4, v5

    iput v4, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-eqz v8, :cond_147

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    :cond_147
    invoke-virtual/range {p0 .. p4}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenOn(I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevel:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    :goto_16e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenDoze:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    const/4 v10, 0x1

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v15}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZIJJ)V

    :goto_183
    if-nez v2, :cond_191

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    cmp-long v3, v4, p1

    if-gez v3, :cond_19a

    :cond_191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    if-eqz v3, :cond_19a

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    :cond_19a
    return-void

    :cond_19b
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_19e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    const/16 v4, 0x14

    if-ge v3, v4, :cond_1ac

    const/16 v3, 0x50

    move/from16 v0, p7

    if-ge v0, v3, :cond_3a

    :cond_1ac
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_dc

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    sget v4, Lcom/android/internal/os/BatteryStatsImpl;->MAX_HISTORY_BUFFER:I

    if-lt v3, v4, :cond_dc

    goto/16 :goto_3a

    :cond_1c2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenDoze(I)Z

    move-result v3

    if-eqz v3, :cond_1db

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevel:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    goto :goto_16e

    :cond_1db
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevel:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    goto :goto_16e

    :cond_1ec
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargingStateLevel:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p7

    int-to-byte v4, v0

    iput-byte v4, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v4, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual/range {p0 .. p4}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move/from16 v0, p7

    if-ge v0, v3, :cond_24a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    sub-int v4, v4, p7

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    sub-int v4, v4, p7

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    :cond_24a
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v11}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(II)V

    const/4 v10, 0x0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v15}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZIJJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v3}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    goto/16 :goto_183
.end method

.method public setPowerProfileLocked(Lcom/android/internal/os/PowerProfile;)V
    .registers 8

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v2

    new-array v4, v2, [Lcom/android/internal/os/KernelCpuSpeedReader;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v2, :cond_29

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4, v1}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    new-instance v5, Lcom/android/internal/os/KernelCpuSpeedReader;

    invoke-direct {v5, v0, v3}, Lcom/android/internal/os/KernelCpuSpeedReader;-><init>(II)V

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4, v1}, Lcom/android/internal/os/PowerProfile;->getNumCoresInCpuCluster(I)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_29
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEstimatedBatteryCapacity:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_37

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEstimatedBatteryCapacity:I

    :cond_37
    return-void
.end method

.method public setPretendScreenOff(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPretendScreenOff:Z

    if-eq v0, p1, :cond_c

    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPretendScreenOff:Z

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenStateLocked(I)V

    :cond_c
    return-void

    :cond_d
    const/4 v0, 0x2

    goto :goto_9
.end method

.method public setRadioScanningTimeoutLocked(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setTimeout(J)V

    :cond_9
    return-void
.end method

.method public setRecordAllHistoryLocked(Z)V
    .registers 15

    const/4 v7, 0x1

    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez p1, :cond_5a

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->removeEvents(I)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->removeEvents(I)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_a3

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    :goto_41
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_2e

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    const/16 v6, 0x4001

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_41

    :cond_5a
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_a3

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_76
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    :goto_89
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_76

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    const v6, 0x8001

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_89

    :cond_a3
    return-void
.end method

.method public shutdownLocked()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->recordShutdownLocked(JJ)V

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mShuttingDown:Z

    return-void
.end method

.method public startAddingCpuLocked()Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    return v0
.end method

.method public startIteratingHistoryLocked()Z
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    if-gtz v4, :cond_b

    return v5

    :cond_b
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    iput-boolean v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$HistoryTag;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    iget-object v5, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    iget v5, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    aput v5, v4, v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    iget-object v5, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    goto :goto_34

    :cond_6a
    return v6
.end method

.method public startIteratingOldHistoryLocked()Z
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    if-nez v0, :cond_9

    return v1

    :cond_9
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    return v2
.end method

.method stopAllPhoneSignalStrengthTimersLocked(I)V
    .registers 6

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_7
    const/4 v3, 0x6

    if-ge v2, v3, :cond_21

    if-ne v2, p1, :cond_f

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_f
    :goto_f
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_f

    :cond_21
    return-void
.end method

.method stopAllWifiSignalStrengthTimersLocked(I)V
    .registers 6

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_7
    const/4 v3, 0x5

    if-ge v2, v3, :cond_21

    if-ne v2, p1, :cond_f

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_f
    :goto_f
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_f

    :cond_21
    return-void
.end method

.method public updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .registers 46

    if-eqz p1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b

    :cond_a
    return-void

    :cond_b
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothReporting:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v40

    const-wide/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v42

    const/4 v9, 0x0

    :goto_2b
    move/from16 v0, v42

    if-ge v9, v0, :cond_4f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v3, :cond_40

    :goto_3d
    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    :cond_40
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    add-long v36, v36, v4

    goto :goto_3d

    :cond_4f
    cmp-long v3, v36, v22

    if-lez v3, :cond_75

    const/16 v16, 0x1

    :goto_55
    cmp-long v3, v36, v40

    if-lez v3, :cond_78

    const/16 v17, 0x1

    :goto_5b
    move-wide/from16 v12, v22

    move-wide/from16 v14, v40

    const/4 v9, 0x0

    :goto_60
    move/from16 v0, v42

    if-ge v9, v0, :cond_c1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v3, :cond_7b

    :cond_72
    :goto_72
    add-int/lit8 v9, v9, 0x1

    goto :goto_60

    :cond_75
    const/16 v16, 0x0

    goto :goto_55

    :cond_78
    const/16 v17, 0x0

    goto :goto_5b

    :cond_7b
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v26, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v3, v26, v4

    if-lez v3, :cond_72

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v3, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->setMark(J)V

    move-wide/from16 v24, v26

    move-wide/from16 v28, v26

    if-eqz v16, :cond_9d

    mul-long v4, v22, v26

    div-long v24, v4, v36

    :cond_9d
    if-eqz v17, :cond_a3

    mul-long v4, v40, v26

    div-long v28, v4, v36

    :cond_a3
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getOrCreateBluetoothControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getRxTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getTxTimeCounters()[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-wide/from16 v0, v28

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    sub-long v12, v12, v24

    sub-long v14, v14, v28

    goto :goto_72

    :cond_c1
    const-wide/16 v38, 0x0

    const-wide/16 v34, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v43

    if-eqz v43, :cond_126

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v18, v0

    :goto_d0
    const/4 v9, 0x0

    :goto_d1
    move/from16 v0, v18

    if-ge v9, v0, :cond_129

    aget-object v19, v43, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v3, 0x4

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v3, 0x5

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v4

    add-long v38, v38, v4

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v4

    add-long v34, v34, v4

    add-int/lit8 v9, v9, 0x1

    goto :goto_d1

    :cond_126
    const/16 v18, 0x0

    goto :goto_d0

    :cond_129
    const-wide/16 v4, 0x0

    cmp-long v3, v38, v4

    if-nez v3, :cond_135

    const-wide/16 v4, 0x0

    cmp-long v3, v34, v4

    if-eqz v3, :cond_1a6

    :cond_135
    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-nez v3, :cond_141

    const-wide/16 v4, 0x0

    cmp-long v3, v14, v4

    if-eqz v3, :cond_1a6

    :cond_141
    const/4 v9, 0x0

    :goto_142
    move/from16 v0, v18

    if-ge v9, v0, :cond_1a6

    aget-object v19, v43, v9

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getOrCreateBluetoothControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v8

    const-wide/16 v4, 0x0

    cmp-long v3, v34, v4

    if-lez v3, :cond_17e

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_17e

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v4

    mul-long/2addr v4, v12

    div-long v30, v4, v34

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getRxTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    move-wide/from16 v0, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    sub-long v12, v12, v30

    :cond_17e
    const-wide/16 v4, 0x0

    cmp-long v3, v38, v4

    if-lez v3, :cond_1a3

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1a3

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v4

    mul-long/2addr v4, v14

    div-long v32, v4, v38

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getTxTimeCounters()[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-wide/from16 v0, v32

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    sub-long v14, v14, v32

    :cond_1a3
    add-int/lit8 v9, v9, 0x1

    goto :goto_142

    :cond_1a6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getRxTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getTxTimeCounters()[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getIdleTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v4, "bluetooth.controller.voltage"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v20, v4, v6

    const-wide/16 v4, 0x0

    cmpl-double v3, v20, v4

    if-eqz v3, :cond_201

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getPowerCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v4

    long-to-double v4, v4

    div-double v4, v4, v20

    double-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    :cond_201
    return-void
.end method

.method public updateCpuTimeLocked(Z)V
    .registers 38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v32, v0

    if-nez v32, :cond_9

    return-void

    :cond_9
    const/16 v31, 0x32

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v32

    if-eqz v32, :cond_5c

    const/4 v9, 0x0

    :goto_23
    if-ge v9, v14, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    move/from16 v32, v0

    if-eqz v32, :cond_59

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v32, v0

    if-eqz v32, :cond_59

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    move/from16 v32, v0

    const/16 v33, 0x3e8

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_59

    add-int/lit8 v15, v15, 0x1

    :cond_59
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    :cond_5c
    move/from16 v16, v15

    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    new-instance v28, Landroid/util/SparseLongArray;

    invoke-direct/range {v28 .. v28}, Landroid/util/SparseLongArray;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;->-wrap1(Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    move/from16 v32, v0

    if-nez v32, :cond_209

    const/16 v32, 0x0

    :goto_96
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->readDelta(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V

    if-eqz p1, :cond_a2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->readKernelUidCpuFreqTimesLocked()V

    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v32

    sub-long v10, v32, v20

    const-wide/16 v32, 0x64

    cmp-long v32, v10, v32

    if-ltz v32, :cond_d7

    const-string/jumbo v32, "BatteryStatsImpl"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Reading cpu stats took "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " ms"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2bf

    if-lez v15, :cond_2bf

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x32

    mul-long v32, v32, v34

    const-wide/16 v34, 0x64

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x32

    mul-long v32, v32, v34

    const-wide/16 v34, 0x64

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    const/4 v9, 0x0

    :goto_10a
    if-ge v9, v14, :cond_218

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    move/from16 v32, v0

    if-eqz v32, :cond_205

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v32, v0

    if-eqz v32, :cond_205

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    move/from16 v32, v0

    const/16 v33, 0x3e8

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_205

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v32, v0

    int-to-long v0, v15

    move-wide/from16 v34, v0

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v32, v0

    int-to-long v0, v15

    move-wide/from16 v34, v0

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    move-result v27

    const-wide/16 v32, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v27

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v32

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    move-object/from16 v0, v28

    move/from16 v1, v27

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v32, v0

    const-string/jumbo v33, "*wakelock*"

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v17

    move/from16 v0, v30

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v32, v0

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v33, v0

    move-object/from16 v0, v17

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v32, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v34, v0

    sub-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v32, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v34, v0

    sub-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    add-int/lit8 v15, v15, -0x1

    :cond_205
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_10a

    :cond_209
    new-instance v32, Lcom/android/internal/os/BatteryStatsImpl$3;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$3;-><init>(Lcom/android/internal/os/BatteryStatsImpl;ILandroid/util/SparseLongArray;)V

    goto/16 :goto_96

    :cond_218
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-gtz v32, :cond_230

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-lez v32, :cond_2bf

    :cond_230
    const/16 v32, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    const-wide/16 v32, 0x0

    const/16 v34, 0x3e8

    move-object/from16 v0, v28

    move/from16 v1, v34

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    const/16 v34, 0x3e8

    move-object/from16 v0, v28

    move/from16 v1, v34

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    const-string/jumbo v32, "*lost*"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v33, v0

    move-object/from16 v0, v17

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    :cond_2bf
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    new-array v7, v0, [[J

    const/4 v6, 0x0

    :goto_2d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v6, v0, :cond_309

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    move-object/from16 v32, v0

    aget-object v32, v32, v6

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/KernelCpuSpeedReader;->readDelta()[J

    move-result-object v32

    aput-object v32, v7, v6

    aget-object v32, v7, v6

    if-eqz v32, :cond_306

    aget-object v32, v7, v6

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    add-int/lit8 v18, v32, -0x1

    :goto_2fb
    if-ltz v18, :cond_306

    aget-object v32, v7, v6

    aget-wide v32, v32, v18

    add-long v24, v24, v32

    add-int/lit8 v18, v18, -0x1

    goto :goto_2fb

    :cond_306
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d1

    :cond_309
    const-wide/16 v32, 0x0

    cmp-long v32, v24, v32

    if-eqz v32, :cond_3cd

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseLongArray;->size()I

    move-result v29

    const/4 v9, 0x0

    :goto_314
    move/from16 v0, v29

    if-ge v9, v0, :cond_3cd

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v26

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v12

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    if-eqz v32, :cond_34d

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v0, v12, :cond_357

    :cond_34d
    new-array v0, v12, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    :cond_357
    const/4 v6, 0x0

    :goto_358
    array-length v0, v7

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v6, v0, :cond_3c9

    aget-object v32, v7, v6

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    aget-object v32, v32, v6

    if-eqz v32, :cond_383

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    aget-object v32, v32, v6

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v19

    move/from16 v1, v32

    if-eq v0, v1, :cond_391

    :cond_383
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v33, v0

    aput-object v33, v32, v6

    :cond_391
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    aget-object v8, v32, v6

    const/16 v18, 0x0

    :goto_39b
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3c6

    aget-object v32, v8, v18

    if-nez v32, :cond_3b2

    new-instance v32, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v32, v8, v18

    :cond_3b2
    aget-object v32, v8, v18

    aget-object v33, v7, v6

    aget-wide v34, v33, v18

    mul-long v34, v34, v4

    div-long v34, v34, v24

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_39b

    :cond_3c6
    add-int/lit8 v6, v6, 0x1

    goto :goto_358

    :cond_3c9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_314

    :cond_3cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/android/internal/util/ArrayUtils;->referenceEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v32

    if-eqz v32, :cond_3fb

    const/4 v9, 0x0

    :goto_3e0
    if-ge v9, v14, :cond_453

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_3e0

    :cond_3fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v9, 0x0

    :goto_406
    if-ge v9, v13, :cond_421

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_406

    :cond_421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    :goto_42b
    if-ge v9, v14, :cond_453

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_42b

    :cond_453
    return-void
.end method

.method public updateDailyDeadlineLocked()V
    .registers 8

    const/16 v6, 0xb

    const/4 v5, 0x6

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    const/4 v1, 0x3

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    return-void
.end method

.method updateDischargeScreenLevelsLocked(II)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateOldDischargeScreenLevelLocked(I)V

    invoke-direct {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->updateNewDischargeScreenLevelLocked(I)V

    return-void
.end method

.method public updateKernelMemoryBandwidthLocked()V
    .registers 9

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryBandwidthStats:Lcom/android/internal/os/KernelMemoryBandwidthStats;

    invoke-virtual {v5}, Lcom/android/internal/os/KernelMemoryBandwidthStats;->updateStats()V

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryBandwidthStats:Lcom/android/internal/os/KernelMemoryBandwidthStats;

    invoke-virtual {v5}, Lcom/android/internal/os/KernelMemoryBandwidthStats;->getBandwidthEntries()Landroid/util/LongSparseLongArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_44

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_31

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    :goto_26
    invoke-virtual {v0, v2}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v6

    const/4 v5, 0x1

    invoke-virtual {v4, v6, v7, v5}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->update(JI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_31
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_26

    :cond_44
    return-void
.end method

.method public updateKernelWakelocksLocked()V
    .registers 13

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    invoke-virtual {v9, v10}, Lcom/android/internal/os/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v8

    if-nez v8, :cond_14

    const-string/jumbo v9, "BatteryStatsImpl"

    const-string/jumbo v10, "Couldn\'t get kernel wake lock stats"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    invoke-virtual {v8}, Lcom/android/internal/os/KernelWakelockStats;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    if-nez v3, :cond_4c

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v9, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    iget-wide v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    iget v9, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    invoke-virtual {v3, v10, v11, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->update(JI)V

    iget v9, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    invoke-virtual {v3, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->setUpdateVersion(I)V

    goto :goto_1c

    :cond_59
    const/4 v6, 0x0

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_64
    :goto_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->getUpdateVersion()I

    move-result v9

    iget v10, v8, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    if-eq v9, v10, :cond_64

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->endSample()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    :cond_84
    invoke-virtual {v8}, Lcom/android/internal/os/KernelWakelockStats;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_93

    const-string/jumbo v9, "BatteryStatsImpl"

    const-string/jumbo v10, "All kernel wakelocks had time of zero"

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-ne v6, v9, :cond_b7

    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "All kernel wakelocks were set stale. new version="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    return-void
.end method

.method public updateMobileRadioState(Landroid/telephony/ModemActivityInfo;)V
    .registers 38

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModemNetworkLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModemIfaces:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->readNetworkStatsLocked([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v18

    if-eqz v18, :cond_39

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastModemNetworkStats:Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsPool:Landroid/util/Pools$Pool;

    invoke-interface {v3}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStats;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v5, v6, v7, v3}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsPool:Landroid/util/Pools$Pool;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastModemNetworkStats:Landroid/net/NetworkStats;

    invoke-interface {v3, v5}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastModemNetworkStats:Landroid/net/NetworkStats;
    :try_end_39
    .catchall {:try_start_6 .. :try_end_39} :catchall_4c

    :cond_39
    monitor-exit v4

    monitor-enter p0

    :try_start_3b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-nez v3, :cond_4f

    if-eqz v9, :cond_4a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsPool:Landroid/util/Pools$Pool;

    invoke-interface {v3, v9}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z
    :try_end_4a
    .catchall {:try_start_3b .. :try_end_4a} :catchall_12b

    :cond_4a
    monitor-exit p0

    return-void

    :catchall_4c
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_4f
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v14

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v14, v15}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    if-eqz v9, :cond_201

    new-instance v16, Landroid/net/NetworkStats$Entry;

    invoke-direct/range {v16 .. v16}, Landroid/net/NetworkStats$Entry;-><init>()V

    invoke-virtual {v9}, Landroid/net/NetworkStats;->size()I

    move-result v26

    const/16 v17, 0x0

    :goto_7a
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_12e

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_9f

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_9f

    :goto_9c
    add-int/lit8 v17, v17, 0x1

    goto :goto_7a

    :cond_9f
    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long v30, v30, v4

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long v32, v32, v4

    move-object/from16 v0, v16

    iget v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v16

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v16

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    const/4 v3, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    move-object/from16 v0, v16

    iget v3, v0, Landroid/net/NetworkStats$Entry;->set:I

    if-nez v3, :cond_f1

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v16

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const/4 v3, 0x6

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v16

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    const/4 v3, 0x7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    :cond_f1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V
    :try_end_129
    .catchall {:try_start_4f .. :try_end_129} :catchall_12b

    goto/16 :goto_9c

    :catchall_12b
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_12e
    add-long v28, v30, v32

    const-wide/16 v4, 0x0

    cmp-long v3, v28, v4

    if-lez v3, :cond_1e1

    const/16 v17, 0x0

    :goto_138
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_1e1

    :try_start_13e
    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_15d

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_15d

    :cond_15a
    add-int/lit8 v17, v17, 0x1

    goto :goto_138

    :cond_15d
    move-object/from16 v0, v16

    iget v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v16

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long v10, v4, v6

    mul-long v4, v22, v10

    div-long v12, v4, v28

    invoke-virtual {v2, v12, v13}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteMobileRadioActiveTimeLocked(J)V

    sub-long v22, v22, v12

    sub-long v28, v28, v10

    if-eqz p1, :cond_15a

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getOrCreateModemControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v8

    const-wide/16 v4, 0x0

    cmp-long v3, v30, v4

    if-lez v3, :cond_1ad

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1ad

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ModemActivityInfo;->getRxTimeMillis()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    div-long v24, v4, v30

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getRxTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    :cond_1ad
    const-wide/16 v4, 0x0

    cmp-long v3, v32, v4

    if-lez v3, :cond_15a

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_15a

    const/16 v19, 0x0

    :goto_1bf
    const/4 v3, 0x5

    move/from16 v0, v19

    if-ge v0, v3, :cond_15a

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v3

    aget v3, v3, v19

    int-to-long v6, v3

    mul-long v34, v4, v6

    div-long v34, v34, v32

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getTxTimeCounters()[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    aget-object v3, v3, v19

    move-wide/from16 v0, v34

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_1bf

    :cond_1e1
    const-wide/16 v4, 0x0

    cmp-long v3, v22, v4

    if-lez v3, :cond_1f9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    :cond_1f9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsPool:Landroid/util/Pools$Pool;

    invoke-interface {v3, v9}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    :cond_201
    if-eqz p1, :cond_271

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasModemReporting:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModemActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getIdleTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModemActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getRxTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ModemActivityInfo;->getRxTimeMillis()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    const/16 v19, 0x0

    :goto_22a
    const/4 v3, 0x5

    move/from16 v0, v19

    if-ge v0, v3, :cond_246

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModemActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getTxTimeCounters()[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    aget-object v3, v3, v19

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v4

    aget v4, v4, v19

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_22a

    :cond_246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v4, "modem.controller.voltage"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v20, v4, v6

    const-wide/16 v4, 0x0

    cmpl-double v3, v20, v4

    if-eqz v3, :cond_271

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModemActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getPowerCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ModemActivityInfo;->getEnergyUsed()I

    move-result v4

    int-to-double v4, v4

    div-double v4, v4, v20

    double-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V
    :try_end_271
    .catchall {:try_start_13e .. :try_end_271} :catchall_12b

    :cond_271
    monitor-exit p0

    return-void
.end method

.method public updateRpmStatsLocked()V
    .registers 33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPlatformIdleStateCallback:Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;

    move-object/from16 v27, v0

    if-nez v27, :cond_9

    return-void

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRpmStatsUpdateTimeMs:J

    move-wide/from16 v28, v0

    sub-long v28, v6, v28

    const-wide/16 v30, 0x3e8

    cmp-long v27, v28, v30

    if-ltz v27, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPlatformIdleStateCallback:Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpRpmStats:Lcom/android/internal/os/RpmStats;

    move-object/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;->fillLowPowerStats(Lcom/android/internal/os/RpmStats;)V

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRpmStatsUpdateTimeMs:J

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpRpmStats:Lcom/android/internal/os/RpmStats;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/os/RpmStats;->mPlatformLowPowerStats:Ljava/util/Map;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_42
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_eb

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;->mTimeMs:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x3e8

    mul-long v10, v28, v30

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;

    move-object/from16 v0, v27

    iget v8, v0, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;->mCount:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getRpmTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10, v11, v8}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->update(JI)V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;->mVoters:Ljava/util/Map;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_8d
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_42

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/os/RpmStats$PowerStateElement;

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/internal/os/RpmStats$PowerStateElement;->mTimeMs:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x3e8

    mul-long v24, v28, v30

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/os/RpmStats$PowerStateElement;

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/os/RpmStats$PowerStateElement;->mCount:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getRpmTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v24

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->update(JI)V

    goto :goto_8d

    :cond_eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpRpmStats:Lcom/android/internal/os/RpmStats;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/os/RpmStats;->mSubsystemLowPowerStats:Ljava/util/Map;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_ff
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_17f

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;->mStates:Ljava/util/Map;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_125
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_ff

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/os/RpmStats$PowerStateElement;

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/internal/os/RpmStats$PowerStateElement;->mTimeMs:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x3e8

    mul-long v20, v28, v30

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/os/RpmStats$PowerStateElement;

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/internal/os/RpmStats$PowerStateElement;->mCount:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getRpmTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->update(JI)V

    goto :goto_125

    :cond_17f
    return-void
.end method

.method public updateTimeBasesLocked(ZIJJ)V
    .registers 22

    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenOff(I)Z

    move-result v4

    if-nez v4, :cond_63

    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenDoze(I)Z

    move-result v11

    :goto_e
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v4

    move/from16 v0, p1

    if-eq v0, v4, :cond_65

    const/4 v13, 0x1

    :goto_19
    if-eqz p1, :cond_67

    move v4, v11

    :goto_1c
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v5

    if-eq v4, v5, :cond_69

    const/4 v12, 0x1

    :goto_25
    if-nez v12, :cond_29

    if-eqz v13, :cond_97

    :cond_29
    if-eqz v12, :cond_31

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateBatteryPropertiesLocked()V

    :cond_31
    if-eqz v13, :cond_36

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateRpmStatsLocked()V

    :cond_36
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked(Z)V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move/from16 v5, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    if-eqz v13, :cond_6b

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v10, v4, -0x1

    :goto_4f
    if-ltz v10, :cond_6b

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-wide/from16 v0, p3

    move-wide/from16 v2, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateOnBatteryBgTimeBase(JJ)Z

    add-int/lit8 v10, v10, -0x1

    goto :goto_4f

    :cond_63
    const/4 v11, 0x1

    goto :goto_e

    :cond_65
    const/4 v13, 0x0

    goto :goto_19

    :cond_67
    const/4 v4, 0x0

    goto :goto_1c

    :cond_69
    const/4 v12, 0x0

    goto :goto_25

    :cond_6b
    if-eqz v12, :cond_97

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    if-eqz p1, :cond_95

    move v5, v11

    :goto_72
    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v10, v4, -0x1

    :goto_81
    if-ltz v10, :cond_97

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-wide/from16 v0, p3

    move-wide/from16 v2, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateOnBatteryScreenOffBgTimeBase(JJ)Z

    add-int/lit8 v10, v10, -0x1

    goto :goto_81

    :cond_95
    const/4 v5, 0x0

    goto :goto_72

    :cond_97
    return-void
.end method

.method public updateWifiState(Landroid/net/wifi/WifiActivityEnergyInfo;)V
    .registers 58

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiNetworkLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->readNetworkStatsLocked([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v16

    if-eqz v16, :cond_39

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWifiNetworkStats:Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsPool:Landroid/util/Pools$Pool;

    invoke-interface {v3}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStats;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v5, v6, v7, v3}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsPool:Landroid/util/Pools$Pool;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWifiNetworkStats:Landroid/net/NetworkStats;

    invoke-interface {v3, v5}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastWifiNetworkStats:Landroid/net/NetworkStats;
    :try_end_39
    .catchall {:try_start_6 .. :try_end_39} :catchall_4c

    :cond_39
    monitor-exit v4

    monitor-enter p0

    :try_start_3b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-nez v3, :cond_4f

    if-eqz v9, :cond_4a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsPool:Landroid/util/Pools$Pool;

    invoke-interface {v3, v9}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z
    :try_end_4a
    .catchall {:try_start_3b .. :try_end_4a} :catchall_2cc

    :cond_4a
    monitor-exit p0

    return-void

    :catchall_4c
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_4f
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v10

    new-instance v17, Landroid/util/SparseLongArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseLongArray;-><init>()V

    new-instance v39, Landroid/util/SparseLongArray;

    invoke-direct/range {v39 .. v39}, Landroid/util/SparseLongArray;-><init>()V

    const-wide/16 v46, 0x0

    const-wide/16 v40, 0x0

    if-eqz v9, :cond_12c

    new-instance v12, Landroid/net/NetworkStats$Entry;

    invoke-direct {v12}, Landroid/net/NetworkStats$Entry;-><init>()V

    invoke-virtual {v9}, Landroid/net/NetworkStats;->size()I

    move-result v38

    const/4 v13, 0x0

    :goto_71
    move/from16 v0, v38

    if-ge v13, v0, :cond_124

    invoke-virtual {v9, v13, v12}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v12

    iget-wide v4, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_8c

    iget-wide v4, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_8c

    :cond_89
    :goto_89
    add-int/lit8 v13, v13, 0x1

    goto :goto_71

    :cond_8c
    iget v3, v12, Landroid/net/NetworkStats$Entry;->uid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    iget-wide v4, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_de

    iget-wide v4, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    iget v3, v12, Landroid/net/NetworkStats$Entry;->set:I

    if-nez v3, :cond_b7

    iget-wide v4, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const/16 v3, 0x8

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    :cond_b7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget-wide v4, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget-wide v4, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    move-result v3

    iget-wide v4, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-wide v4, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long v40, v40, v4

    :cond_de
    iget-wide v4, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_89

    iget-wide v4, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v6, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    const/4 v3, 0x3

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    iget v3, v12, Landroid/net/NetworkStats$Entry;->set:I

    if-nez v3, :cond_fb

    iget-wide v4, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v6, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    const/16 v3, 0x9

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    :cond_fb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget-wide v4, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget-wide v4, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    move-result v3

    iget-wide v4, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-wide v4, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long v46, v46, v4

    goto/16 :goto_89

    :cond_124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsPool:Landroid/util/Pools$Pool;

    invoke-interface {v3, v9}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    :cond_12c
    if-eqz p1, :cond_2ca

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiReporting:Z

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v50

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v30

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v14

    add-long v4, v50, v30

    add-long v44, v4, v14

    move-wide/from16 v18, v30

    move-wide/from16 v20, v50

    const-wide/16 v48, 0x0

    const-wide/16 v42, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v53

    const/4 v13, 0x0

    :goto_154
    move/from16 v0, v53

    if-ge v13, v0, :cond_185

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    add-long v42, v42, v4

    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    add-long v48, v48, v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_154

    :cond_185
    const/4 v13, 0x0

    :goto_186
    move/from16 v0, v53

    if-ge v13, v0, :cond_212

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v34, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v3, v34, v4

    if-lez v3, :cond_1e1

    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v3, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->setMark(J)V

    move-wide/from16 v32, v34

    move-wide/from16 v36, v34

    cmp-long v3, v42, v30

    if-lez v3, :cond_1bc

    mul-long v4, v30, v34

    div-long v32, v4, v42

    :cond_1bc
    cmp-long v3, v42, v50

    if-lez v3, :cond_1c4

    mul-long v4, v50, v34

    div-long v36, v4, v42

    :cond_1c4
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getOrCreateWifiControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getRxTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    move-wide/from16 v0, v32

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getTxTimeCounters()[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-wide/from16 v0, v36

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    sub-long v18, v18, v32

    sub-long v20, v20, v36

    :cond_1e1
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v54, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v3, v54, v4

    if-lez v3, :cond_20e

    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    mul-long v4, v54, v14

    div-long v22, v4, v48

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getOrCreateWifiControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getIdleTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    :cond_20e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_186

    :cond_212
    const/4 v13, 0x0

    :goto_213
    invoke-virtual/range {v39 .. v39}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v13, v3, :cond_242

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v52

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    mul-long v4, v4, v20

    div-long v26, v4, v46

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getOrCreateWifiControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getTxTimeCounters()[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-wide/from16 v0, v26

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_213

    :cond_242
    const/4 v13, 0x0

    :goto_243
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v13, v3, :cond_26f

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v52

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    mul-long v4, v4, v18

    div-long v24, v4, v40

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getOrCreateWifiControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getRxTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_243

    :cond_26f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getRxTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getTxTimeCounters()[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getIdleTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v4, "wifi.controller.voltage"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v28, v4, v6

    const-wide/16 v4, 0x0

    cmpl-double v3, v28, v4

    if-eqz v3, :cond_2ca

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getPowerCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v4

    long-to-double v4, v4

    div-double v4, v4, v28

    double-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V
    :try_end_2ca
    .catchall {:try_start_4f .. :try_end_2ca} :catchall_2cc

    :cond_2ca
    monitor-exit p0

    return-void

    :catchall_2cc
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public writeAsyncLocked()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeLocked(Z)V

    return-void
.end method

.method writeHistory(Landroid/os/Parcel;ZZ)V
    .registers 13

    const/4 v8, 0x0

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    if-nez p2, :cond_12

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_12
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$HistoryTag;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v3, v2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    :cond_4f
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-virtual {p1, v3, v8, v4}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    if-eqz p3, :cond_68

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->writeOldHistory(Landroid/os/Parcel;)V

    :cond_68
    return-void
.end method

.method public writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V
    .registers 30

    if-eqz p3, :cond_a

    move-object/from16 v0, p2

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v22, v0

    if-eqz v22, :cond_20

    :cond_a
    const v22, 0x7fffd

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$HistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_20
    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v24, v0

    sub-long v10, v22, v24

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v16

    const-wide/16 v22, 0x0

    cmp-long v22, v10, v22

    if-ltz v22, :cond_4b

    const-wide/32 v22, 0x7fffffff

    cmp-long v22, v10, v22

    if-lez v22, :cond_249

    :cond_4b
    const v9, 0x7ffff

    :goto_4e
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v22, v0

    const/high16 v23, -0x2000000

    and-int v22, v22, v23

    or-int v12, v9, v22

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_258

    const/4 v13, 0x1

    :goto_6d
    if-nez v13, :cond_25b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v22, v0

    if-nez v22, :cond_25e

    const/4 v8, 0x1

    :goto_78
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v22

    or-int v5, v22, v13

    if-eq v5, v15, :cond_261

    const/4 v6, 0x1

    :goto_85
    if-eqz v6, :cond_8b

    const/high16 v22, 0x80000

    or-int v12, v12, v22

    :cond_8b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_264

    const/16 v19, 0x1

    :goto_9b
    if-eqz v19, :cond_a1

    const/high16 v22, 0x100000

    or-int v12, v12, v22

    :cond_a1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_268

    const/16 v17, 0x1

    :goto_b5
    if-eqz v17, :cond_bb

    const/high16 v22, 0x200000

    or-int v12, v12, v22

    :cond_bb
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v22, v0

    if-nez v22, :cond_cb

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v22, v0

    if-eqz v22, :cond_cf

    :cond_cb
    const/high16 v22, 0x400000

    or-int v12, v12, v22

    :cond_cf
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move/from16 v22, v0

    if-eqz v22, :cond_db

    const/high16 v22, 0x800000

    or-int v12, v12, v22

    :cond_db
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_26c

    const/4 v4, 0x1

    :goto_ee
    if-eqz v4, :cond_f4

    const/high16 v22, 0x1000000

    or-int v12, v12, v22

    :cond_f4
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    const v22, 0x7fffe

    move/from16 v0, v22

    if-lt v9, v0, :cond_111

    const v22, 0x7fffe

    move/from16 v0, v22

    if-ne v9, v0, :cond_26f

    long-to-int v0, v10

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_111
    :goto_111
    if-eqz v6, :cond_118

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    :cond_118
    if-eqz v19, :cond_121

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_121
    if-eqz v17, :cond_130

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_130
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v22, v0

    if-nez v22, :cond_140

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v22, v0

    if-eqz v22, :cond_177

    :cond_140
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v22, v0

    if-eqz v22, :cond_276

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v20

    :goto_156
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v22, v0

    if-eqz v22, :cond_27b

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v21

    :goto_16c
    shl-int/lit8 v22, v21, 0x10

    or-int v22, v22, v20

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_177
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move/from16 v22, v0

    if-eqz v22, :cond_1a1

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v14

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move/from16 v22, v0

    const v23, 0xffff

    and-int v22, v22, v23

    shl-int/lit8 v23, v14, 0x10

    or-int v7, v22, v23

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1a1
    if-eqz v8, :cond_280

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPlatformIdleStateCallback:Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1d7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPlatformIdleStateCallback:Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;->getPlatformLowPowerStats()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPlatformIdleStateCallback:Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;->getSubsystemLowPowerStats()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    :cond_1d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->computeHistoryStepDetails(Landroid/os/BatteryStats$HistoryStepDetails;Landroid/os/BatteryStats$HistoryStepDetails;)V

    if-eqz v13, :cond_1fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryStepDetails;->writeToParcel(Landroid/os/Parcel;)V

    :cond_1fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    :goto_213
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_22d

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    :cond_22d
    move-object/from16 v0, p2

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    if-eqz v4, :cond_248

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_248
    return-void

    :cond_249
    const-wide/32 v22, 0x7fffd

    cmp-long v22, v10, v22

    if-ltz v22, :cond_255

    const v9, 0x7fffe

    goto/16 :goto_4e

    :cond_255
    long-to-int v9, v10

    goto/16 :goto_4e

    :cond_258
    const/4 v13, 0x0

    goto/16 :goto_6d

    :cond_25b
    const/4 v8, 0x1

    goto/16 :goto_78

    :cond_25e
    const/4 v8, 0x0

    goto/16 :goto_78

    :cond_261
    const/4 v6, 0x0

    goto/16 :goto_85

    :cond_264
    const/16 v19, 0x0

    goto/16 :goto_9b

    :cond_268
    const/16 v17, 0x0

    goto/16 :goto_b5

    :cond_26c
    const/4 v4, 0x0

    goto/16 :goto_ee

    :cond_26f
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_111

    :cond_276
    const v20, 0xffff

    goto/16 :goto_156

    :cond_27b
    const v21, 0xffff

    goto/16 :goto_16c

    :cond_280
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    goto :goto_213
.end method

.method writeLocked(Z)V
    .registers 6

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    if-nez v1, :cond_e

    const-string/jumbo v1, "BatteryStats"

    const-string/jumbo v2, "writeLocked: no file associated with this instance"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mShuttingDown:Z

    if-eqz v1, :cond_13

    return-void

    :cond_13
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeSummaryToParcel(Landroid/os/Parcel;Z)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_2c
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->commitPendingDataToDisk()V

    :goto_33
    return-void

    :cond_34
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$6;

    invoke-direct {v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$6;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_33
.end method

.method writeOldHistory(Landroid/os/Parcel;)V
    .registers 2

    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;Z)V
    .registers 56

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStartClockTime()J

    move-result-wide v40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v50, 0x3e8

    mul-long v6, v4, v50

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v50, 0x3e8

    mul-long v8, v4, v50

    const/16 v4, 0xa7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistory(Landroid/os/Parcel;ZZ)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4}, Lcom/android/internal/os/BatteryStatsImpl;->computeUptime(JI)J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v4}, Lcom/android/internal/os/BatteryStatsImpl;->computeRealtime(JI)J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeSummaryToParcel(Landroid/os/Parcel;JJ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeSummaryToParcel(Landroid/os/Parcel;JJ)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEstimatedBatteryCapacity:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMinLearnedBatteryCapacity:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMaxLearnedBatteryCapacity:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeAmountScreenOnSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeAmountScreenOffSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    if-eqz v4, :cond_16f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x0

    :goto_13c
    move/from16 v0, v23

    if-ge v0, v12, :cond_175

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/os/BatteryStats$PackageChange;

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, v34

    iget-boolean v4, v0, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v4, :cond_16d

    const/4 v4, 0x1

    :goto_15c
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v34

    iget v4, v0, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_13c

    :cond_16d
    const/4 v4, 0x0

    goto :goto_15c

    :cond_16f
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_175
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    const/16 v23, 0x0

    :goto_1a4
    const/4 v4, 0x5

    move/from16 v0, v23

    if-ge v0, v4, :cond_1b7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_1a4

    :cond_1b7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLongestLightIdleTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLongestFullIdleTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeLightTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeFullTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceLightIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    const/16 v23, 0x0

    :goto_20a
    const/4 v4, 0x6

    move/from16 v0, v23

    if-ge v0, v4, :cond_21d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_20a

    :cond_21d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    const/16 v23, 0x0

    :goto_228
    const/16 v4, 0x11

    move/from16 v0, v23

    if-ge v0, v4, :cond_23c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_228

    :cond_23c
    const/16 v23, 0x0

    :goto_23e
    const/16 v4, 0xa

    move/from16 v0, v23

    if-ge v0, v4, :cond_25d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_23e

    :cond_25d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    const/16 v23, 0x0

    :goto_29e
    const/16 v4, 0x8

    move/from16 v0, v23

    if-ge v0, v4, :cond_2b2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_29e

    :cond_2b2
    const/16 v23, 0x0

    :goto_2b4
    const/16 v4, 0xd

    move/from16 v0, v23

    if-ge v0, v4, :cond_2c8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_2b4

    :cond_2c8
    const/16 v23, 0x0

    :goto_2ca
    const/4 v4, 0x5

    move/from16 v0, v23

    if-ge v0, v4, :cond_2dd

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_2ca

    :cond_2dd
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeSummaryToParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeSummaryToParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModemActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeSummaryToParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiReporting:Z

    if-eqz v4, :cond_386

    const/4 v4, 0x1

    :goto_2ff
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothReporting:Z

    if-eqz v4, :cond_389

    const/4 v4, 0x1

    :goto_30b
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasModemReporting:Z

    if-eqz v4, :cond_38b

    const/4 v4, 0x1

    :goto_317
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRpmStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRpmStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_359
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_394

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/internal/os/BatteryStatsImpl$Timer;

    if-eqz v37, :cond_38d

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_359

    :cond_386
    const/4 v4, 0x0

    goto/16 :goto_2ff

    :cond_389
    const/4 v4, 0x0

    goto :goto_30b

    :cond_38b
    const/4 v4, 0x0

    goto :goto_317

    :cond_38d
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_359

    :cond_394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOffRpmStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOffRpmStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3ad
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/internal/os/BatteryStatsImpl$Timer;

    if-eqz v37, :cond_3da

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_3ad

    :cond_3da
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3ad

    :cond_3e1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3fa
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/os/BatteryStatsImpl$Timer;

    if-eqz v33, :cond_427

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_3fa

    :cond_427
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3fa

    :cond_42e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_447
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    if-eqz v43, :cond_474

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_447

    :cond_474
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_447

    :cond_47b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x0

    :goto_48a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_4ca

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/os/BatteryStatsImpl$Timer;

    if-eqz v32, :cond_4c3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_4c0
    add-int/lit8 v23, v23, 0x1

    goto :goto_48a

    :cond_4c3
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4c0

    :cond_4ca
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCpuFreqs:[J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x0

    :goto_4e2
    move/from16 v0, v28

    if-ge v0, v15, :cond_b22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeSummaryToParcel(Landroid/os/Parcel;JJ)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeSummaryToParcel(Landroid/os/Parcel;JJ)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_575

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_528
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_57c

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_53d
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v4, :cond_583

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_552
    const/16 v23, 0x0

    :goto_554
    const/4 v4, 0x5

    move/from16 v0, v23

    if-ge v0, v4, :cond_591

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    if-eqz v4, :cond_58a

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_572
    add-int/lit8 v23, v23, 0x1

    goto :goto_554

    :cond_575
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_528

    :cond_57c
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53d

    :cond_583
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_552

    :cond_58a
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_572

    :cond_591
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_6b0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_5a6
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_6b8

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_5bb
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_6c0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_5d0
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_6c8

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_5e5
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_6d0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_5fa
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_6d8

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_60f
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_6e0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_624
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v4, :cond_6e8

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_639
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v4, :cond_6f0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_64e
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v4, :cond_6f8

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_663
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v4, :cond_700

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :goto_678
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v4, :cond_708

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :goto_68d
    const/16 v23, 0x0

    :goto_68f
    const/4 v4, 0x6

    move/from16 v0, v23

    if-ge v0, v4, :cond_717

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    if-eqz v4, :cond_710

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_6ad
    add-int/lit8 v23, v23, 0x1

    goto :goto_68f

    :cond_6b0
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_5a6

    :cond_6b8
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_5bb

    :cond_6c0
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_5d0

    :cond_6c8
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_5e5

    :cond_6d0
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_5fa

    :cond_6d8
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_60f

    :cond_6e0
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_624

    :cond_6e8
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_639

    :cond_6f0
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_64e

    :cond_6f8
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_663

    :cond_700
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_678

    :cond_708
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_68d

    :cond_710
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6ad

    :cond_717
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-eqz v4, :cond_7b0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_72c
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v4, :cond_7b8

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_738
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v4, :cond_7d3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_744
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v4, :cond_823

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v49, v0

    const/4 v4, 0x0

    move-object/from16 v0, v49

    array-length v0, v0

    move/from16 v50, v0

    move v5, v4

    :goto_779
    move/from16 v0, v50

    if-ge v5, v0, :cond_829

    aget-object v19, v49, v5

    if-eqz v19, :cond_818

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v19

    array-length v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v51, v0

    :goto_795
    move/from16 v0, v51

    if-ge v4, v0, :cond_81e

    aget-object v18, v19, v4

    if-eqz v18, :cond_80e

    const/16 v52, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :goto_7ad
    add-int/lit8 v4, v4, 0x1

    goto :goto_795

    :cond_7b0
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_72c

    :cond_7b8
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x0

    :goto_7c0
    const/4 v4, 0x4

    move/from16 v0, v23

    if-ge v0, v4, :cond_738

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_7c0

    :cond_7d3
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x0

    :goto_7db
    const/16 v4, 0xa

    move/from16 v0, v23

    if-ge v0, v4, :cond_7fa

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_7db

    :cond_7fa
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    goto/16 :goto_744

    :cond_80e
    const/16 v52, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7ad

    :cond_818
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_81e
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_779

    :cond_823
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_829
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeSummaryToParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeSummaryToParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V

    invoke-static/range {v46 .. v46}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->-get0(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v4

    if-eqz v4, :cond_8f0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static/range {v46 .. v46}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->-get0(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :goto_850
    invoke-static/range {v46 .. v46}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->-get1(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v4

    if-eqz v4, :cond_8f8

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static/range {v46 .. v46}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->-get1(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :goto_865
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/util/ArrayMap;->size()I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v29, 0x0

    :goto_87a
    move/from16 v0, v29

    move/from16 v1, v16

    if-ge v0, v1, :cond_91c

    move-object/from16 v0, v47

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, v47

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_900

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_8ae
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v4, :cond_907

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_8c3
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_90e

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_8d8
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_915

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_8ed
    add-int/lit8 v29, v29, 0x1

    goto :goto_87a

    :cond_8f0
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_850

    :cond_8f8
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_865

    :cond_900
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8ae

    :cond_907
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8c3

    :cond_90e
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8d8

    :cond_915
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8ed

    :cond_91c
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/util/ArrayMap;->size()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x0

    :goto_92f
    move/from16 v0, v26

    if-ge v0, v13, :cond_954

    move-object/from16 v0, v42

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, v42

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v26, v26, 0x1

    goto :goto_92f

    :cond_954
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x0

    :goto_967
    move/from16 v0, v24

    if-ge v0, v10, :cond_98c

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v24, v24, 0x1

    goto :goto_967

    :cond_98c
    move-object/from16 v0, v46

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->writeJobCompletionsToParcelLocked(Landroid/os/Parcel;)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v27, 0x0

    :goto_9a2
    move/from16 v0, v27

    if-ge v0, v14, :cond_9e0

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v4, :cond_9d9

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    :goto_9d6
    add-int/lit8 v27, v27, 0x1

    goto :goto_9a2

    :cond_9d9
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9d6

    :cond_9e0
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x0

    :goto_9ef
    move/from16 v0, v25

    if-ge v0, v11, :cond_a50

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-object/from16 v0, v36

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, v36

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, v36

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, v36

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v36

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v36

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v25, v25, 0x1

    goto :goto_9ef

    :cond_a50
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    if-lez v11, :cond_b1e

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_a6b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b1e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v30, 0x0

    :goto_a99
    move/from16 v0, v30

    move/from16 v1, v17

    if-ge v0, v1, :cond_ac4

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v30, v30, 0x1

    goto :goto_a99

    :cond_ac4
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x0

    :goto_ad3
    move/from16 v0, v26

    if-ge v0, v13, :cond_a6b

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getStartTimeToNowLocked(J)J

    move-result-wide v44

    move-object/from16 v0, p1

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v26, v26, 0x1

    goto :goto_ad3

    :cond_b1e
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_4e2

    :cond_b22
    return-void
.end method

.method public writeSyncLocked()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeLocked(Z)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelLocked(Landroid/os/Parcel;ZI)V

    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;ZI)V
    .registers 32

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStartClockTime()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    mul-long v6, v24, v26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    mul-long v8, v24, v26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v12

    const v5, -0x458a8b8b

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistory(Landroid/os/Parcel;ZZ)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v5, :cond_f9

    const/4 v5, 0x1

    :goto_a0
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEstimatedBatteryCapacity:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMinLearnedBatteryCapacity:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMaxLearnedBatteryCapacity:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    const/16 v16, 0x0

    :goto_e6
    const/4 v5, 0x5

    move/from16 v0, v16

    if-ge v0, v5, :cond_fb

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v5, v5, v16

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_e6

    :cond_f9
    const/4 v5, 0x0

    goto :goto_a0

    :cond_fb
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLongestLightIdleTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLongestFullIdleTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeLightTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeFullTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceLightIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    const/16 v16, 0x0

    :goto_156
    const/4 v5, 0x6

    move/from16 v0, v16

    if-ge v0, v5, :cond_169

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v5, v5, v16

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_156

    :cond_169
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    const/16 v16, 0x0

    :goto_174
    const/16 v5, 0x11

    move/from16 v0, v16

    if-ge v0, v5, :cond_188

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v5, v5, v16

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_174

    :cond_188
    const/16 v16, 0x0

    :goto_18a
    const/16 v5, 0xa

    move/from16 v0, v16

    if-ge v0, v5, :cond_1a9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v5, v5, v16

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v5, v5, v16

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_18a

    :cond_1a9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    const/16 v16, 0x0

    :goto_1ea
    const/16 v5, 0x8

    move/from16 v0, v16

    if-ge v0, v5, :cond_1fe

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v5, v5, v16

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_1ea

    :cond_1fe
    const/16 v16, 0x0

    :goto_200
    const/16 v5, 0xd

    move/from16 v0, v16

    if-ge v0, v5, :cond_214

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v5, v5, v16

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_200

    :cond_214
    const/16 v16, 0x0

    :goto_216
    const/4 v5, 0x5

    move/from16 v0, v16

    if-ge v0, v5, :cond_229

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v5, v5, v16

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_216

    :cond_229
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModemActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiReporting:Z

    if-eqz v5, :cond_396

    const/4 v5, 0x1

    :goto_257
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothReporting:Z

    if-eqz v5, :cond_399

    const/4 v5, 0x1

    :goto_263
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasModemReporting:Z

    if-eqz v5, :cond_39c

    const/4 v5, 0x1

    :goto_26f
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenDoze:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenDozeSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenDozeCounter:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRpmStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRpmStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_369
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    if-eqz v19, :cond_39f

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_369

    :cond_396
    const/4 v5, 0x0

    goto/16 :goto_257

    :cond_399
    const/4 v5, 0x0

    goto/16 :goto_263

    :cond_39c
    const/4 v5, 0x0

    goto/16 :goto_26f

    :cond_39f
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_369

    :cond_3a6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOffRpmStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOffRpmStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3bf
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    if-eqz v19, :cond_3ec

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_3bf

    :cond_3ec
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3bf

    :cond_3f3
    if-eqz p2, :cond_48f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_40e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_442

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    if-eqz v18, :cond_43b

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_40e

    :cond_43b
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_40e

    :cond_442
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_45b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_495

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    if-eqz v21, :cond_488

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_45b

    :cond_488
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45b

    :cond_48f
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    :cond_495
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x0

    :goto_4a4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    move/from16 v0, v16

    if-ge v0, v5, :cond_4e6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    if-eqz v17, :cond_4df

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelMemoryStats:Landroid/util/LongSparseArray;

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v24

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeToParcel(Landroid/os/Parcel;J)V

    :goto_4dc
    add-int/lit8 v16, v16, 0x1

    goto :goto_4a4

    :cond_4df
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4dc

    :cond_4e6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCpuFreqs:[J

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeLongArray([J)V

    if-eqz p2, :cond_52b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x0

    :goto_502
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_531

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->writeToParcelLocked(Landroid/os/Parcel;JJ)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_502

    :cond_52b
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    :cond_531
    return-void
.end method

.method public writeToParcelWithoutUids(Landroid/os/Parcel;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelLocked(Landroid/os/Parcel;ZI)V

    return-void
.end method
