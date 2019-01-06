.class Landroid/media/SubtitleController$1;
.super Ljava/lang/Object;
.source "SubtitleController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SubtitleController;


# direct methods
.method constructor <init>(Landroid/media/SubtitleController;)V
    .registers 2

    iput-object p1, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    const/4 v0, 0x0

    return v0

    :pswitch_8
    iget-object v0, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    invoke-static {v0}, Landroid/media/SubtitleController;->-wrap3(Landroid/media/SubtitleController;)V

    return v2

    :pswitch_e
    iget-object v0, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    invoke-static {v0}, Landroid/media/SubtitleController;->-wrap0(Landroid/media/SubtitleController;)V

    return v2

    :pswitch_14
    iget-object v1, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack;

    invoke-static {v1, v0}, Landroid/media/SubtitleController;->-wrap2(Landroid/media/SubtitleController;Landroid/media/SubtitleTrack;)V

    return v2

    :pswitch_1e
    iget-object v0, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    invoke-static {v0}, Landroid/media/SubtitleController;->-wrap1(Landroid/media/SubtitleController;)V

    return v2

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_8
        :pswitch_e
        :pswitch_14
        :pswitch_1e
    .end packed-switch
.end method
