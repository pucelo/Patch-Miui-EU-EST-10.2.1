.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get13(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)I

    move-result v5

    invoke-static {v5}, Landroid/app/ActivityManagerCompat;->getLastResumedActivityUserId(I)I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get15(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/os/UserManager;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/os/UserManagerCompat;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get3(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get10(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Z

    move-result v2

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get3(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)I

    move-result v5

    invoke-static {v5}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v4

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get5(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;

    invoke-direct {v6, p0, v4, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;ZZZ)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v5, "PhoneStatusBarPolicy"

    const-string/jumbo v6, "updateManagedProfile: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
