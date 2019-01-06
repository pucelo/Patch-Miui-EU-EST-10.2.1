.class Landroid/telecom/CallScreeningService$1;
.super Landroid/os/Handler;
.source "CallScreeningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallScreeningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/CallScreeningService;


# direct methods
.method constructor <init>(Landroid/telecom/CallScreeningService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/telecom/CallScreeningService$1;->this$0:Landroid/telecom/CallScreeningService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2a

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_a
    iget-object v2, p0, Landroid/telecom/CallScreeningService$1;->this$0:Landroid/telecom/CallScreeningService;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/ICallScreeningAdapter;

    invoke-static {v2, v1}, Landroid/telecom/CallScreeningService;->-set0(Landroid/telecom/CallScreeningService;Lcom/android/internal/telecom/ICallScreeningAdapter;)Lcom/android/internal/telecom/ICallScreeningAdapter;

    iget-object v2, p0, Landroid/telecom/CallScreeningService$1;->this$0:Landroid/telecom/CallScreeningService;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ParcelableCall;

    invoke-static {v1}, Landroid/telecom/Call$Details;->createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/telecom/CallScreeningService;->onScreenCall(Landroid/telecom/Call$Details;)V
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_24

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_5

    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
