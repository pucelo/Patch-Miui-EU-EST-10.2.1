.class Lcom/android/keyguard/faceunlock/Camera1Util$2;
.super Ljava/lang/Object;
.source "Camera1Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/faceunlock/Camera1Util;->closeCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/faceunlock/Camera1Util;


# direct methods
.method constructor <init>(Lcom/android/keyguard/faceunlock/Camera1Util;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/faceunlock/Camera1Util$2;->this$0:Lcom/android/keyguard/faceunlock/Camera1Util;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util$2;->this$0:Lcom/android/keyguard/faceunlock/Camera1Util;

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/Camera1Util;->closeCameraImmediately()V

    return-void
.end method
