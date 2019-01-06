.class Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2$1;
.super Ljava/lang/Object;
.source "RotationLockControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2$1;->this$1:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2$1;->this$1:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1103f7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Util;->showSystemOverlayToast(Landroid/content/Context;II)Landroid/widget/Toast;

    return-void
.end method
