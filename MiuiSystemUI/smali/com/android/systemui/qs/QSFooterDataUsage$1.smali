.class Lcom/android/systemui/qs/QSFooterDataUsage$1;
.super Landroid/os/Handler;
.source "QSFooterDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFooterDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFooterDataUsage;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFooterDataUsage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterDataUsage$1;->this$0:Lcom/android/systemui/qs/QSFooterDataUsage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterDataUsage$1;->this$0:Lcom/android/systemui/qs/QSFooterDataUsage;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSFooterDataUsage;->-wrap1(Lcom/android/systemui/qs/QSFooterDataUsage;Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x186a0
        :pswitch_0
    .end packed-switch
.end method
