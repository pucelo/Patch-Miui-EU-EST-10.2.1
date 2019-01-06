.class final Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$1;
.super Ljava/lang/Object;
.source "MiuiKeyguardFingerprintUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MiuiKeyguardFingerprintUtils;->processFingerprintResultAnalytics(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string/jumbo v0, "capricorn"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "aqua"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$1;->val$result:I

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils;->processFingerprintResultAnalyticsForA7(I)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "scorpio"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$1;->val$result:I

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils;->processFingerprintResultAnalyticsForA4(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "keyguard_fp_identify_result_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$1;->val$result:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/android/keyguard/analytics/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;J)V

    goto :goto_0
.end method
