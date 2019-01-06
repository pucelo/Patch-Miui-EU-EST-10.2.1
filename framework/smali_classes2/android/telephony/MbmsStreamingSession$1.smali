.class Landroid/telephony/MbmsStreamingSession$1;
.super Ljava/lang/Object;
.source "MbmsStreamingSession.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/MbmsStreamingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/MbmsStreamingSession;


# direct methods
.method constructor <init>(Landroid/telephony/MbmsStreamingSession;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/MbmsStreamingSession$1;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-get4()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession$1;->this$0:Landroid/telephony/MbmsStreamingSession;

    const-string/jumbo v1, "Received death notification"

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Landroid/telephony/MbmsStreamingSession;->-wrap0(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V

    return-void
.end method
