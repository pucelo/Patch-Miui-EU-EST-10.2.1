.class Landroid/telephony/MbmsDownloadSession$1;
.super Ljava/lang/Object;
.source "MbmsDownloadSession.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/MbmsDownloadSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/MbmsDownloadSession;


# direct methods
.method constructor <init>(Landroid/telephony/MbmsDownloadSession;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/MbmsDownloadSession$1;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession$1;->this$0:Landroid/telephony/MbmsDownloadSession;

    const-string/jumbo v1, "Received death notification"

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Landroid/telephony/MbmsDownloadSession;->-wrap0(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    return-void
.end method
