.class Lcom/android/keyguard/faceunlock/FaceUnlockController$1;
.super Ljava/lang/Object;
.source "FaceUnlockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/faceunlock/FaceUnlockController;->onFinishedGoingToSleep(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/faceunlock/FaceUnlockController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/faceunlock/FaceUnlockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController$1;->this$0:Lcom/android/keyguard/faceunlock/FaceUnlockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController$1;->this$0:Lcom/android/keyguard/faceunlock/FaceUnlockController;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController$1;->this$0:Lcom/android/keyguard/faceunlock/FaceUnlockController;

    invoke-static {v1}, Lcom/android/keyguard/faceunlock/FaceUnlockController;->-get0(Lcom/android/keyguard/faceunlock/FaceUnlockController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/faceunlock/FaceUnlockController;->onFingerprintAuthenticated(I)V

    return-void
.end method
