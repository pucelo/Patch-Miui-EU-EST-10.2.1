.class Lcom/android/server/UidStateHelper$2;
.super Ljava/lang/Object;
.source "UidStateHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UidStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UidStateHelper;


# direct methods
.method constructor <init>(Lcom/android/server/UidStateHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/UidStateHelper$2;->this$0:Lcom/android/server/UidStateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_12

    const/4 v2, 0x0

    return v2

    :pswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/UidStateHelper$2;->this$0:Lcom/android/server/UidStateHelper;

    invoke-static {v2, v1, v0}, Lcom/android/server/UidStateHelper;->-wrap1(Lcom/android/server/UidStateHelper;II)V

    const/4 v2, 0x1

    return v2

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
