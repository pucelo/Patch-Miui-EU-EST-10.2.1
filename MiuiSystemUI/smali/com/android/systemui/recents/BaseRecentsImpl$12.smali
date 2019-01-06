.class Lcom/android/systemui/recents/BaseRecentsImpl$12;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/BaseRecentsImpl;->onResumed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

.field final synthetic val$className:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$12;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iput-object p2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$12;->val$className:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl$12;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl$12;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavStubView;->setVisibility(I)V

    const-string/jumbo v0, "RecentsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resume nohome nstub gone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$12;->val$className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl$12;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/android/systemui/recents/BaseRecentsImpl;->-wrap7(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    return-void
.end method
