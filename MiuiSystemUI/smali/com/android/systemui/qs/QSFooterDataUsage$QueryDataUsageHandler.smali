.class final Lcom/android/systemui/qs/QSFooterDataUsage$QueryDataUsageHandler;
.super Landroid/os/Handler;
.source "QSFooterDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFooterDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryDataUsageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFooterDataUsage;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFooterDataUsage;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterDataUsage$QueryDataUsageHandler;->this$0:Lcom/android/systemui/qs/QSFooterDataUsage;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage$QueryDataUsageHandler;->this$0:Lcom/android/systemui/qs/QSFooterDataUsage;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooterDataUsage;->-wrap0(Lcom/android/systemui/qs/QSFooterDataUsage;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
