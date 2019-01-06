.class Lcom/android/systemui/statusbar/NotificationLogger$3;
.super Ljava/lang/Object;
.source "NotificationLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationLogger;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationLogger;

.field final synthetic val$newlyVisible:Ljava/util/Collection;

.field final synthetic val$newlyVisibleAr:[Lcom/android/internal/statusbar/NotificationVisibility;

.field final synthetic val$noLongerVisible:Ljava/util/Collection;

.field final synthetic val$noLongerVisibleAr:[Lcom/android/internal/statusbar/NotificationVisibility;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationLogger;[Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->val$newlyVisibleAr:[Lcom/android/internal/statusbar/NotificationVisibility;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->val$noLongerVisibleAr:[Lcom/android/internal/statusbar/NotificationVisibility;

    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->val$newlyVisible:Ljava/util/Collection;

    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->val$noLongerVisible:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v8, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v7, v7, Lcom/android/systemui/statusbar/NotificationLogger;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->val$newlyVisibleAr:[Lcom/android/internal/statusbar/NotificationVisibility;

    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->val$noLongerVisibleAr:[Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-interface {v7, v9, v10}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->val$newlyVisible:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->val$newlyVisibleAr:[Lcom/android/internal/statusbar/NotificationVisibility;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    aput-object v7, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-static {v7}, Lcom/android/systemui/statusbar/NotificationLogger;->-get3(Lcom/android/systemui/statusbar/NotificationLogger;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setNotificationsShown([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->val$newlyVisibleAr:[Lcom/android/internal/statusbar/NotificationVisibility;

    array-length v10, v9

    move v7, v8

    :goto_3
    if-ge v7, v10, :cond_2

    aget-object v5, v9, v7

    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v12, v5, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/systemui/statusbar/NotificationLogger;->-wrap1(Lcom/android/systemui/statusbar/NotificationLogger;Ljava/lang/String;Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :catch_0
    move-exception v2

    const-string/jumbo v7, "NotificationLogger"

    const-string/jumbo v9, "failed setNotificationsShown: "

    invoke-static {v7, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->val$noLongerVisible:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/statusbar/NotificationVisibility;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v9, v5, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-static {v7, v9, v8}, Lcom/android/systemui/statusbar/NotificationLogger;->-wrap1(Lcom/android/systemui/statusbar/NotificationLogger;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->val$newlyVisibleAr:[Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/NotificationLogger;->-wrap3(Lcom/android/systemui/statusbar/NotificationLogger;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationLogger$3;->val$noLongerVisibleAr:[Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/NotificationLogger;->-wrap3(Lcom/android/systemui/statusbar/NotificationLogger;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    return-void

    :catch_1
    move-exception v1

    goto :goto_0
.end method
