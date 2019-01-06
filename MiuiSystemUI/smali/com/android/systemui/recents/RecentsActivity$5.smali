.class Lcom/android/systemui/recents/RecentsActivity$5;
.super Landroid/database/ContentObserver;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$5;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$5;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sc_status"

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$5;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsActivity;->-get3(Lcom/android/systemui/recents/RecentsActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$5;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/RecentsActivity;->moveTaskToBack(Z)Z

    :cond_0
    return-void
.end method
