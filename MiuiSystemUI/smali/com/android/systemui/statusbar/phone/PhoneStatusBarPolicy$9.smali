.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateForegroundInstantApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field final synthetic val$noMan:Landroid/app/NotificationManager;

.field final synthetic val$notifs:Landroid/util/ArraySet;

.field final synthetic val$pm:Landroid/content/pm/IPackageManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;->val$notifs:Landroid/util/ArraySet;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;->val$noMan:Landroid/app/NotificationManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;->val$pm:Landroid/content/pm/IPackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getFocusedStackId()I

    move-result v8

    if-ne v8, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;->val$notifs:Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;->val$noMan:Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;->val$pm:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-wrap0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;IIILandroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get4(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;->val$notifs:Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;->val$noMan:Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;->val$pm:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x3

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-wrap0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;IIILandroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;->val$notifs:Landroid/util/ArraySet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;->val$noMan:Landroid/app/NotificationManager;

    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v3, Landroid/os/UserHandle;

    iget-object v1, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v1, 0x7

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1

    :cond_2
    return-void

    :catch_0
    move-exception v7

    goto :goto_0
.end method
