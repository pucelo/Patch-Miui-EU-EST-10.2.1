.class Lcom/android/server/fingerprint/FingerprintService$5;
.super Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JII)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get8(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5$2;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$5$2;-><init>(Lcom/android/server/fingerprint/FingerprintService$5;JII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get8(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5$3;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService$5$3;-><init>(Lcom/android/server/fingerprint/FingerprintService$5;JIILjava/util/ArrayList;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollResult(JIII)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get8(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5$1;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService$5$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$5;JIII)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnumerate(JIII)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get8(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5$6;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService$5$6;-><init>(Lcom/android/server/fingerprint/FingerprintService$5;JIII)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(JII)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get8(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5$4;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$5$4;-><init>(Lcom/android/server/fingerprint/FingerprintService$5;JII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRemoved(JIII)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get8(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5$5;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService$5$5;-><init>(Lcom/android/server/fingerprint/FingerprintService$5;JIII)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
