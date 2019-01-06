.class Lmiui/maml/elements/MusicControlScreenElement$3;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const-wide/16 v8, 0x0

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->-get15(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->-get10(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/media/RemoteController$MetadataEditor;

    move-result-object v4

    if-nez v4, :cond_13

    :cond_12
    return-void

    :cond_13
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->-get10(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/media/RemoteController$MetadataEditor;

    move-result-object v4

    const-wide/16 v6, -0x1

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/RemoteController$MetadataEditor;->getLong(IJ)J

    move-result-wide v0

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->-get11(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicController;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/elements/MusicController;->getEstimatedMediaPosition()J

    move-result-wide v2

    cmp-long v4, v0, v8

    if-lez v4, :cond_33

    cmp-long v4, v2, v8

    if-gez v4, :cond_34

    :cond_33
    return-void

    :cond_34
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->-get8(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v4

    long-to-double v6, v0

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->-get16(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v4

    long-to-double v6, v2

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->-get12(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v4

    if-eqz v4, :cond_5d

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->-get9(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicLyricParser$Lyric;

    move-result-object v4

    if-eqz v4, :cond_5d

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v4, v2, v3}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap6(Lmiui/maml/elements/MusicControlScreenElement;J)V

    :cond_5d
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v4}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v4}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->-get17(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
