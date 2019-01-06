.class public Landroid/telephony/NetworkScan;
.super Ljava/lang/Object;
.source "NetworkScan.java"


# static fields
.field public static final ERROR_INTERRUPTED:I = 0x2712

.field public static final ERROR_INVALID_SCAN:I = 0x2

.field public static final ERROR_INVALID_SCANID:I = 0x2711

.field public static final ERROR_MODEM_BUSY:I = 0x3

.field public static final ERROR_MODEM_ERROR:I = 0x1

.field public static final ERROR_RIL_ERROR:I = 0x2710

.field public static final ERROR_UNSUPPORTED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "NetworkScan"


# instance fields
.field private final mScanId:I

.field private final mSubId:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/NetworkScan;->mScanId:I

    iput p2, p0, Landroid/telephony/NetworkScan;->mSubId:I

    return-void
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public stop()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/NetworkScan;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_e

    iget v2, p0, Landroid/telephony/NetworkScan;->mSubId:I

    iget v3, p0, Landroid/telephony/NetworkScan;->mScanId:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->stopNetworkScan(II)V

    return-void

    :cond_e
    new-instance v2, Landroid/os/RemoteException;

    const-string/jumbo v3, "Failed to get the ITelephony instance."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17

    :catch_17
    move-exception v0

    const-string/jumbo v2, "NetworkScan"

    const-string/jumbo v3, "stopNetworkScan  RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/os/RemoteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to stop the network scan with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/NetworkScan;->mScanId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
