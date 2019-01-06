.class Lcom/android/server/am/ActivityStackSupervisor$1;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStackSupervisor;->updateMiuiAnimationInfo(Lcom/android/server/am/ActivityRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;

.field final synthetic val$lastComponentName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$lastComponentName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v6}, Lcom/android/server/am/ActivityStackSupervisor;->-get4(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-interface {v1}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$lastComponentName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$userId:I

    invoke-interface {v1, v6, v7}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    move-result-object v5

    if-eqz v5, :cond_39

    iget-object v4, v5, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_39

    sget-object v6, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v3

    :goto_2a
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v5, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v7}, Lcom/android/server/wm/WindowManagerService;->overrideMiuiAnimationInfo(Landroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    return-void

    :cond_37
    const/4 v3, 0x0

    goto :goto_2a

    :cond_39
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->overrideMiuiAnimationInfo(Landroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_43

    :cond_42
    :goto_42
    return-void

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42
.end method
