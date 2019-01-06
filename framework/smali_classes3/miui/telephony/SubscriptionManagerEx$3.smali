.class Lmiui/telephony/SubscriptionManagerEx$3;
.super Ljava/lang/Object;
.source "SubscriptionManagerEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/SubscriptionManagerEx;->addOnSubscriptionsChangedListenerInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/SubscriptionManagerEx;


# direct methods
.method constructor <init>(Lmiui/telephony/SubscriptionManagerEx;)V
    .registers 2

    iput-object p1, p0, Lmiui/telephony/SubscriptionManagerEx$3;->this$0:Lmiui/telephony/SubscriptionManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string/jumbo v0, "SubMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initSubscriptionListener in main Thread for pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$3;->this$0:Lmiui/telephony/SubscriptionManagerEx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManagerEx;->-wrap0(Lmiui/telephony/SubscriptionManagerEx;Z)V

    return-void
.end method
