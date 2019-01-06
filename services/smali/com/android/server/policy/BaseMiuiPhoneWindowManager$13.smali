.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getExtraSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;F)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

.field final synthetic val$disabledFlag:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;->val$disabledFlag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v5, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;->val$disabledFlag:I

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get16(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/os/Binder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iput-object v5, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_1c
.end method
