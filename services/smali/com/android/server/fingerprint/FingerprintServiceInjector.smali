.class Lcom/android/server/fingerprint/FingerprintServiceInjector;
.super Ljava/lang/Object;
.source "FingerprintServiceInjector.java"


# static fields
.field private static IS_RECORD_PERFORM:Z = false

.field private static IS_RECORD_SENSORINFO:Z = false

.field private static final RECORD_FAILED:I = 0x2

.field private static final RECORD_PERFORM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FingerprintService"

.field private static sRecordFeature:I

.field private static sSdfTime:Ljava/text/SimpleDateFormat;

.field private static sStrBuf:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    sput v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sRecordFeature:I

    sput-boolean v1, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_PERFORM:Z

    sput-boolean v1, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_SENSORINFO:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd-HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sSdfTime:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sStrBuf:Ljava/lang/StringBuffer;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initAcquiredInfo()V
    .registers 3

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_SENSORINFO:Z

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sStrBuf:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sStrBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sStrBuf:Ljava/lang/StringBuffer;

    const-string/jumbo v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_18
    return-void
.end method

.method private static initRecordFeature()V
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sRecordFeature:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_58

    const-string/jumbo v0, "type_mqs_finger_record"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sRecordFeature:I

    sget v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sRecordFeature:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_59

    move v0, v1

    :goto_17
    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_PERFORM:Z

    sget v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sRecordFeature:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5b

    :goto_20
    sput-boolean v1, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_SENSORINFO:Z

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "feature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sRecordFeature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_PERFORM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_SENSORINFO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    return-void

    :cond_59
    move v0, v2

    goto :goto_17

    :cond_5b
    move v1, v2

    goto :goto_20
.end method

.method private static isSensorInfo(II)Z
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_14

    const/16 v0, 0x15

    if-eq p1, v0, :cond_f

    const/16 v0, 0x16

    if-ne p1, v0, :cond_10

    :cond_f
    return v1

    :cond_10
    const/16 v0, 0x17

    if-eq p1, v0, :cond_f

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public static recordAcquiredInfo(II)V
    .registers 5

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_SENSORINFO:Z

    if-eqz v0, :cond_29

    invoke-static {p0, p1}, Lcom/android/server/fingerprint/FingerprintServiceInjector;->isSensorInfo(II)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sStrBuf:Ljava/lang/StringBuffer;

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sStrBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_29
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_PERFORM:Z

    if-eqz v0, :cond_61

    const/4 v0, 0x6

    if-ne p0, v0, :cond_61

    const/16 v0, 0x16

    if-ne p1, v0, :cond_61

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finger down, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/ScreenOnMonitor;->getInstance()Lcom/android/server/ScreenOnMonitor;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/ScreenOnMonitor;->recordTime(I)V

    :cond_61
    return-void
.end method

.method public static reportFingerEvent(Ljava/lang/String;I)V
    .registers 7

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/server/fingerprint/FingerprintServiceInjector;->initRecordFeature()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_SENSORINFO:Z

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sStrBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le v1, v4, :cond_2b

    sget-object v1, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sStrBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/android/server/fingerprint/FingerprintServiceInjector;->initAcquiredInfo()V

    :cond_2b
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sSdfTime:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportSimpleEvent(ILjava/lang/String;)V

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_PERFORM:Z

    if-eqz v1, :cond_7c

    if-ne p1, v4, :cond_7c

    invoke-static {}, Lcom/android/server/ScreenOnMonitor;->getInstance()Lcom/android/server/ScreenOnMonitor;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/ScreenOnMonitor;->recordTime(I)V

    :cond_7c
    return-void
.end method
