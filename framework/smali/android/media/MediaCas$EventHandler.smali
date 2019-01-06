.class Landroid/media/MediaCas$EventHandler;
.super Landroid/os/Handler;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field private static final MSG_CAS_EVENT:I


# instance fields
.field final synthetic this$0:Landroid/media/MediaCas;


# direct methods
.method public constructor <init>(Landroid/media/MediaCas;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-get2(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v5, v0}, Landroid/media/MediaCas;->-wrap0(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/media/MediaCas$EventListener;->onEvent(Landroid/media/MediaCas;II[B)V

    :cond_1d
    return-void
.end method
