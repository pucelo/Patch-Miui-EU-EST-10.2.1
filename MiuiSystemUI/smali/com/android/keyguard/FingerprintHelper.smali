.class public Lcom/android/keyguard/FingerprintHelper;
.super Ljava/lang/Object;
.source "FingerprintHelper.java"


# static fields
.field private static sFingerprintIdentifyCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/keyguard/FingerprintIdentifyCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/keyguard/FingerprintHelper;->sFingerprintIdentifyCallbackList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/FingerprintHelper;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/android/keyguard/FingerprintHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initFingerprintManager()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/FingerprintHelper;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/FingerprintHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/keyguard/FingerprintHelper;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public isHardwareDetected()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/FingerprintHelper;->initFingerprintManager()V

    iget-object v0, p0, Lcom/android/keyguard/FingerprintHelper;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/FingerprintHelper;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    goto :goto_0
.end method

.method public resetFingerLockoutTime()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/FingerprintHelper;->initFingerprintManager()V

    iget-object v0, p0, Lcom/android/keyguard/FingerprintHelper;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/FingerprintHelper;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->resetTimeout([B)V

    return-void
.end method
