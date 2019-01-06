.class Lcom/android/systemui/recents/RecentsActivity$7;
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

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$7;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$7;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$7;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "miui_recents_show_recommend"

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$7;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "showRecentsRecommend"

    const-string/jumbo v5, "isShow"

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->-set1(Lcom/android/systemui/recents/RecentsActivity;Z)Z

    return-void
.end method
