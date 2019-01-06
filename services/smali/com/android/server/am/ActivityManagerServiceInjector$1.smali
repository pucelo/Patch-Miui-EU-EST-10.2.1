.class final Lcom/android/server/am/ActivityManagerServiceInjector$1;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;->showSwitchingDialog(Lcom/android/server/am/ActivityManagerService;ILandroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ams:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$mTargetUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$mTargetUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "second_user_id"

    const/16 v4, -0x2710

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2}, Lcom/android/server/am/UserController;->getCurrentUserIdLocked()I

    move-result v0

    iget v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$mTargetUserId:I

    if-ne v2, v1, :cond_31

    if-nez v0, :cond_31

    :cond_20
    new-instance v2, Lcom/android/server/am/SecondSpaceSwitchingDialog;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$mTargetUserId:I

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/am/SecondSpaceSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;I)V

    invoke-virtual {v2}, Lcom/android/server/am/SecondSpaceSwitchingDialog;->show()V

    :goto_30
    return-void

    :cond_31
    if-ne v0, v1, :cond_37

    iget v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$mTargetUserId:I

    if-eqz v2, :cond_20

    :cond_37
    new-instance v2, Lcom/android/server/am/MiuiUserSwitchingDialog;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$mTargetUserId:I

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/am/MiuiUserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;I)V

    invoke-virtual {v2}, Lcom/android/server/am/MiuiUserSwitchingDialog;->show()V

    goto :goto_30
.end method
