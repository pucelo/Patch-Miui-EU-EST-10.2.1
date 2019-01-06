.class Lcom/android/systemui/statusbar/phone/StatusBar$56$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$56;->onRemoteInputSent(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$56;

.field final synthetic val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$56;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$56$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$56;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$56$1;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$56$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$56;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$56;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$56$1;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$56$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$56;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$56;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$56$1;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :cond_0
    return-void
.end method
