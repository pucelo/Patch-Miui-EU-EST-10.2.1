.class final Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "MiuiFakeGpsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiFakeGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MiuiFakeGpsProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/MiuiFakeGpsProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/MiuiFakeGpsProvider;Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;-><init>(Lcom/android/server/MiuiFakeGpsProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    :goto_5
    return-void

    :pswitch_6
    iget-object v2, p0, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/location/ProviderRequest;

    invoke-static {v2, v1}, Lcom/android/server/MiuiFakeGpsProvider;->-wrap2(Lcom/android/server/MiuiFakeGpsProvider;Lcom/android/internal/location/ProviderRequest;)V

    goto :goto_5

    :pswitch_10
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    invoke-static {v1}, Lcom/android/server/MiuiFakeGpsProvider;->-wrap0(Lcom/android/server/MiuiFakeGpsProvider;)V

    goto :goto_5

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method
