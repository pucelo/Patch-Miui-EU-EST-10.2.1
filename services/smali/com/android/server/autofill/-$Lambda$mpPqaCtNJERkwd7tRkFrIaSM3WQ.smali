.class final synthetic Lcom/android/server/autofill/-$Lambda$mpPqaCtNJERkwd7tRkFrIaSM3WQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/autofill/-$Lambda$mpPqaCtNJERkwd7tRkFrIaSM3WQ;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

    iget v2, p0, Lcom/android/server/autofill/-$Lambda$mpPqaCtNJERkwd7tRkFrIaSM3WQ;->-$f0:I

    iget-object v1, p0, Lcom/android/server/autofill/-$Lambda$mpPqaCtNJERkwd7tRkFrIaSM3WQ;->-$f2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/IResultReceiver;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->lambda$-com_android_server_autofill_AutofillManagerServiceShellCommand_6061(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/autofill/-$Lambda$mpPqaCtNJERkwd7tRkFrIaSM3WQ;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

    iget v2, p0, Lcom/android/server/autofill/-$Lambda$mpPqaCtNJERkwd7tRkFrIaSM3WQ;->-$f0:I

    iget-object v1, p0, Lcom/android/server/autofill/-$Lambda$mpPqaCtNJERkwd7tRkFrIaSM3WQ;->-$f2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/IResultReceiver;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->lambda$-com_android_server_autofill_AutofillManagerServiceShellCommand_6868(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method public synthetic constructor <init>(BILjava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/autofill/-$Lambda$mpPqaCtNJERkwd7tRkFrIaSM3WQ;->$id:B

    iput p2, p0, Lcom/android/server/autofill/-$Lambda$mpPqaCtNJERkwd7tRkFrIaSM3WQ;->-$f0:I

    iput-object p3, p0, Lcom/android/server/autofill/-$Lambda$mpPqaCtNJERkwd7tRkFrIaSM3WQ;->-$f1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/autofill/-$Lambda$mpPqaCtNJERkwd7tRkFrIaSM3WQ;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Lcom/android/server/autofill/-$Lambda$mpPqaCtNJERkwd7tRkFrIaSM3WQ;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/autofill/-$Lambda$mpPqaCtNJERkwd7tRkFrIaSM3WQ;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/autofill/-$Lambda$mpPqaCtNJERkwd7tRkFrIaSM3WQ;->$m$1()V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
