.class Lcom/android/internal/app/NetInitiatedActivity$2;
.super Landroid/os/Handler;
.source "NetInitiatedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NetInitiatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/NetInitiatedActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/NetInitiatedActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-static {v0}, Lcom/android/internal/app/NetInitiatedActivity;->-get1(Lcom/android/internal/app/NetInitiatedActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    iget-object v1, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-static {v1}, Lcom/android/internal/app/NetInitiatedActivity;->-get0(Lcom/android/internal/app/NetInitiatedActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/app/NetInitiatedActivity;->-wrap1(Lcom/android/internal/app/NetInitiatedActivity;I)V

    :cond_1a
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/NetInitiatedActivity;->finish()V

    goto :goto_5

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
