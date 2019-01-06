.class Lcom/android/systemui/recents/RecentsSystemUser$3;
.super Ljava/lang/Object;
.source "RecentsSystemUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsSystemUser;->startScreenPinning(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsSystemUser;

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsSystemUser;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsSystemUser$3;->this$0:Lcom/android/systemui/recents/RecentsSystemUser;

    iput p2, p0, Lcom/android/systemui/recents/RecentsSystemUser$3;->val$taskId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser$3;->this$0:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsSystemUser;->-get1(Lcom/android/systemui/recents/RecentsSystemUser;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsSystemUser$3;->this$0:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsSystemUser;->-get0(Lcom/android/systemui/recents/RecentsSystemUser;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recents/RecentsSystemUser$3;->val$taskId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/RecentsImpl;->onStartScreenPinning(Landroid/content/Context;I)V

    return-void
.end method
