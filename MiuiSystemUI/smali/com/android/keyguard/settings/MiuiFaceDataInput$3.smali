.class Lcom/android/keyguard/settings/MiuiFaceDataInput$3;
.super Ljava/lang/Object;
.source "MiuiFaceDataInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/settings/MiuiFaceDataInput;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;


# direct methods
.method constructor <init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$3;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$3;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get0(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->closeCamera()V

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$3;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get6(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Lcom/megvii/facepp/sdk/Lite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/megvii/facepp/sdk/Lite;->reset()I

    return-void
.end method
