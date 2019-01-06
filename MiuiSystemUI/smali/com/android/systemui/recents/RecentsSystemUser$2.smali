.class Lcom/android/systemui/recents/RecentsSystemUser$2;
.super Ljava/lang/Object;
.source "RecentsSystemUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsSystemUser;->updateRecentsVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsSystemUser;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsSystemUser;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsSystemUser$2;->this$0:Lcom/android/systemui/recents/RecentsSystemUser;

    iput-boolean p2, p0, Lcom/android/systemui/recents/RecentsSystemUser$2;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser$2;->this$0:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsSystemUser;->-get1(Lcom/android/systemui/recents/RecentsSystemUser;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsSystemUser$2;->this$0:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsSystemUser;->-get0(Lcom/android/systemui/recents/RecentsSystemUser;)Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsSystemUser$2;->val$visible:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/RecentsImpl;->onVisibilityChanged(Landroid/content/Context;Z)V

    return-void
.end method
