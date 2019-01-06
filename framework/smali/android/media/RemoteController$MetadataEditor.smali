.class public Landroid/media/RemoteController$MetadataEditor;
.super Landroid/media/MediaMetadataEditor;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetadataEditor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteController;


# direct methods
.method protected constructor <init>(Landroid/media/RemoteController;)V
    .registers 2

    iput-object p1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V
    .registers 8

    const/16 v2, 0x64

    const/4 v1, 0x1

    iput-object p1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    iput-object p2, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    iput-wide p3, p0, Landroid/media/RemoteController$MetadataEditor;->mEditableKeys:J

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    iget-object v0, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    invoke-direct {p0, v2}, Landroid/media/RemoteController$MetadataEditor;->cleanupBitmapFromBundle(I)V

    :cond_1f
    iput-boolean v1, p0, Landroid/media/RemoteController$MetadataEditor;->mMetadataChanged:Z

    iput-boolean v1, p0, Landroid/media/RemoteController$MetadataEditor;->mArtworkChanged:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/RemoteController$MetadataEditor;->mApplied:Z

    return-void
.end method

.method private cleanupBitmapFromBundle(I)V
    .registers 4

    sget-object v0, Landroid/media/RemoteController$MetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public declared-synchronized apply()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Landroid/media/RemoteController$MetadataEditor;->mMetadataChanged:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_45

    if-nez v1, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-static {}, Landroid/media/RemoteController;->-get1()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_45

    :try_start_c
    iget-object v1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-static {v1}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)Landroid/media/session/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    const v3, 0x10000001

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const v1, 0x10000001

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/media/RemoteController$MetadataEditor;->getObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Rating;

    if-eqz v0, :cond_3c

    iget-object v1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-static {v1}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)Landroid/media/session/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/session/MediaController$TransportControls;->setRating(Landroid/media/Rating;)V
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_42

    :cond_3c
    :try_start_3c
    monitor-exit v2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/RemoteController$MetadataEditor;->mApplied:Z
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_45

    monitor-exit p0

    return-void

    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v2

    throw v1
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v1

    monitor-exit p0

    throw v1
.end method
