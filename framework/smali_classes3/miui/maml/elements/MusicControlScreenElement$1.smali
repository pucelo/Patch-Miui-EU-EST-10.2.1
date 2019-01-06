.class Lmiui/maml/elements/MusicControlScreenElement$1;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mClientChanged:Z

.field final synthetic this$0:Lmiui/maml/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientChange(Z)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->mClientChanged:Z

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/MusicControlScreenElement;->readPackageName()V

    const-string/jumbo v1, "MusicControlScreenElement"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clientChange: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->-get14(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->-get14(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->-get13(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->-get13(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v0

    :goto_46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " clearing:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap2(Lmiui/maml/elements/MusicControlScreenElement;)V

    return-void

    :cond_62
    const-string/jumbo v0, "null"

    goto :goto_29

    :cond_66
    const-string/jumbo v0, "null"

    goto :goto_46
.end method

.method public onClientFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .registers 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->-set4(Lmiui/maml/elements/MusicControlScreenElement;Landroid/media/RemoteController$MetadataEditor;)Landroid/media/RemoteController$MetadataEditor;

    const/4 v5, 0x0

    const/16 v19, 0x7

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v19, "MusicControlScreenElement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "\ntitle: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", artist: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", album: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v18, :cond_74

    if-eqz v6, :cond_1fc

    :cond_74
    :goto_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lmiui/maml/elements/MusicControlScreenElement;->-get0(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6, v4}, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6, v4}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap4(Lmiui/maml/elements/MusicControlScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_93
    const/16 v19, 0x64

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    const-string/jumbo v20, "MusicControlScreenElement"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "artwork: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v7, :cond_200

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_ba
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_205

    move v8, v5

    :goto_d0
    if-eqz v8, :cond_df

    if-nez v7, :cond_208

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x1f4

    invoke-static/range {v19 .. v21}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap0(Lmiui/maml/elements/MusicControlScreenElement;J)V

    :cond_df
    :goto_df
    const/16 v19, 0x3e8

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v19, "MusicControlScreenElement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "raw lyric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v17 .. v17}, Lmiui/maml/elements/MusicLyricParser;->parseLyric(Ljava/lang/String;)Lmiui/maml/elements/MusicLyricParser$Lyric;

    move-result-object v9

    if-eqz v9, :cond_114

    invoke-virtual {v9}, Lmiui/maml/elements/MusicLyricParser$Lyric;->decorate()V

    :cond_114
    if-nez v9, :cond_215

    move v12, v5

    :goto_117
    if-eqz v12, :cond_12f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lmiui/maml/elements/MusicControlScreenElement;->-set3(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/elements/MusicLyricParser$Lyric;)Lmiui/maml/elements/MusicLyricParser$Lyric;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap7(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/elements/MusicLyricParser$Lyric;)V

    :cond_12f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lmiui/maml/elements/MusicControlScreenElement;->-get9(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicLyricParser$Lyric;

    move-result-object v19

    if-eqz v19, :cond_218

    const/16 v19, 0x1e

    :goto_143
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->requestFramerate(F)V

    const-wide/16 v20, -0x1

    const/16 v19, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/RemoteController$MetadataEditor;->getLong(IJ)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lmiui/maml/elements/MusicControlScreenElement;->-get11(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lmiui/maml/elements/MusicController;->getEstimatedMediaPosition()J

    move-result-wide v14

    const-string/jumbo v19, "MusicControlScreenElement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "duration: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", position: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v20, 0x0

    cmp-long v19, v10, v20

    if-ltz v19, :cond_21c

    const-wide/16 v20, 0x0

    cmp-long v19, v14, v20

    if-ltz v19, :cond_21c

    const/4 v13, 0x1

    :goto_1a1
    if-eqz v13, :cond_1ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v10, v11, v14, v15}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap8(Lmiui/maml/elements/MusicControlScreenElement;JJ)V

    :cond_1ae
    const v19, 0x10000001

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/Rating;

    const-string/jumbo v19, "MusicControlScreenElement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "rating: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap9(Lmiui/maml/elements/MusicControlScreenElement;Landroid/media/Rating;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->mClientChanged:Z

    move/from16 v19, v0

    if-nez v19, :cond_1fb

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lmiui/maml/elements/MusicControlScreenElement$1;->onClientChange(Z)V

    :cond_1fb
    return-void

    :cond_1fc
    if-eqz v4, :cond_93

    goto/16 :goto_74

    :cond_200
    const-string/jumbo v19, "null"

    goto/16 :goto_ba

    :cond_205
    const/4 v8, 0x1

    goto/16 :goto_d0

    :cond_208
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap5(Lmiui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)V

    goto/16 :goto_df

    :cond_215
    const/4 v12, 0x1

    goto/16 :goto_117

    :cond_218
    const/16 v19, 0x0

    goto/16 :goto_143

    :cond_21c
    move v13, v5

    goto :goto_1a1
.end method

.method public onClientNowPlayingContentChange()V
    .registers 1

    return-void
.end method

.method public onClientPlayItemResponse(Z)V
    .registers 2

    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .registers 5

    invoke-virtual {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement$1;->onStateUpdate(I)V

    const-string/jumbo v0, "MusicControlScreenElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stateUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .registers 10

    invoke-virtual {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement$1;->onStateUpdate(I)V

    const-string/jumbo v0, "MusicControlScreenElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stateUpdate2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClientTransportControlUpdate(I)V
    .registers 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "MusicControlScreenElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "transportControlFlags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_8b

    const/4 v0, 0x1

    :goto_21
    if-nez v0, :cond_28

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap3(Lmiui/maml/elements/MusicControlScreenElement;)V

    :cond_28
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    if-eqz p1, :cond_8f

    and-int/lit8 v1, p1, 0x3c

    if-nez v1, :cond_8d

    move v1, v2

    :goto_31
    invoke-static {v4, v1}, Lmiui/maml/elements/MusicControlScreenElement;->-set1(Lmiui/maml/elements/MusicControlScreenElement;Z)Z

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    if-eqz p1, :cond_93

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_91

    move v1, v2

    :goto_3d
    invoke-static {v4, v1}, Lmiui/maml/elements/MusicControlScreenElement;->-set2(Lmiui/maml/elements/MusicControlScreenElement;Z)Z

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    if-eqz p1, :cond_97

    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_95

    move v1, v2

    :goto_49
    invoke-static {v4, v1}, Lmiui/maml/elements/MusicControlScreenElement;->-set0(Lmiui/maml/elements/MusicControlScreenElement;Z)Z

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-boolean v1, v1, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->-get5(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v4

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->-get4(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v1

    if-eqz v1, :cond_99

    move v1, v2

    :goto_61
    int-to-double v6, v1

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->-get7(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v4

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->-get6(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v1

    if-eqz v1, :cond_9b

    move v1, v2

    :goto_74
    int-to-double v6, v1

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->-get3(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v1

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->-get2(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v4

    if-eqz v4, :cond_9d

    :goto_86
    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_8a
    return-void

    :cond_8b
    const/4 v0, 0x0

    goto :goto_21

    :cond_8d
    move v1, v3

    goto :goto_31

    :cond_8f
    move v1, v3

    goto :goto_31

    :cond_91
    move v1, v3

    goto :goto_3d

    :cond_93
    move v1, v3

    goto :goto_3d

    :cond_95
    move v1, v3

    goto :goto_49

    :cond_97
    move v1, v3

    goto :goto_49

    :cond_99
    move v1, v3

    goto :goto_61

    :cond_9b
    move v1, v3

    goto :goto_74

    :cond_9d
    move v2, v3

    goto :goto_86
.end method

.method public onClientUpdateNowPlayingEntries([J)V
    .registers 2

    return-void
.end method

.method protected onStateUpdate(I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_2a

    :goto_5
    if-eqz v1, :cond_c

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v2, v0}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap1(Lmiui/maml/elements/MusicControlScreenElement;Z)V

    :cond_c
    return-void

    :pswitch_d
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    const-string/jumbo v3, "state_stop"

    invoke-virtual {v2, v3}, Lmiui/maml/elements/MusicControlScreenElement;->performAction(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_18
    const/4 v0, 0x1

    const/4 v1, 0x1

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    const-string/jumbo v3, "state_play"

    invoke-virtual {v2, v3}, Lmiui/maml/elements/MusicControlScreenElement;->performAction(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_23
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap2(Lmiui/maml/elements/MusicControlScreenElement;)V

    goto :goto_5

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_23
        :pswitch_d
        :pswitch_d
        :pswitch_18
    .end packed-switch
.end method
