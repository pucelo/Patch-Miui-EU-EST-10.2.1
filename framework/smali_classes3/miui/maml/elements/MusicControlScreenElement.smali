.class public Lmiui/maml/elements/MusicControlScreenElement;
.super Lmiui/maml/elements/ElementGroup;
.source "MusicControlScreenElement.java"

# interfaces
.implements Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/MusicControlScreenElement$1;,
        Lmiui/maml/elements/MusicControlScreenElement$2;,
        Lmiui/maml/elements/MusicControlScreenElement$3;,
        Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;
    }
.end annotation


# static fields
.field private static final BUTTON_MUSIC_NEXT:Ljava/lang/String; = "music_next"

.field private static final BUTTON_MUSIC_PAUSE:Ljava/lang/String; = "music_pause"

.field private static final BUTTON_MUSIC_PLAY:Ljava/lang/String; = "music_play"

.field private static final BUTTON_MUSIC_PREV:Ljava/lang/String; = "music_prev"

.field private static final ELE_MUSIC_ALBUM_COVER:Ljava/lang/String; = "music_album_cover"

.field private static final ELE_MUSIC_DISPLAY:Ljava/lang/String; = "music_display"

.field private static final FRAMERATE_PLAYING:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "MusicControlScreenElement"

.field private static final MIUI_PLAYER_PACKAGE_NAME:Ljava/lang/String; = "com.miui.player"

.field public static final MUSIC_STATE_PLAY:I = 0x1

.field public static final MUSIC_STATE_STOP:I = 0x0

.field public static final TAG_NAME:Ljava/lang/String; = "MusicControl"


# instance fields
.field private mAlbumInfo:Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;

.field private mAlbumVar:Lmiui/maml/data/IndexedVariable;

.field private mArtistVar:Lmiui/maml/data/IndexedVariable;

.field private mArtworkVar:Lmiui/maml/data/IndexedVariable;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShow:Z

.field private mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

.field private mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

.field private mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

.field private mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

.field private mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

.field private mDisableNext:Z

.field private mDisableNextVar:Lmiui/maml/data/IndexedVariable;

.field private mDisablePlay:Z

.field private mDisablePlayVar:Lmiui/maml/data/IndexedVariable;

.field private mDisablePrev:Z

.field private mDisablePrevVar:Lmiui/maml/data/IndexedVariable;

.field private mDurationVar:Lmiui/maml/data/IndexedVariable;

.field private mEnableLyric:Z

.field private mEnableProgress:Z

.field private mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

.field private mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

.field private mLyricAfterVar:Lmiui/maml/data/IndexedVariable;

.field private mLyricBeforeVar:Lmiui/maml/data/IndexedVariable;

.field private mLyricCurrentLineProgressVar:Lmiui/maml/data/IndexedVariable;

.field private mLyricCurrentVar:Lmiui/maml/data/IndexedVariable;

.field private mLyricLastVar:Lmiui/maml/data/IndexedVariable;

.field private mLyricNextVar:Lmiui/maml/data/IndexedVariable;

.field private mLyricPrevVar:Lmiui/maml/data/IndexedVariable;

.field private mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

.field private mMiuiMusicContext:Landroid/content/Context;

.field private mMusicController:Lmiui/maml/elements/MusicController;

.field private mMusicStateVar:Lmiui/maml/data/IndexedVariable;

.field private mMusicUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private mNeedUpdateLyric:Z

.field private mNeedUpdateProgress:Z

.field private mNeedUpdateUserRating:Z

.field private mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

.field private mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

.field private mPlaying:Z

.field private mPositionVar:Lmiui/maml/data/IndexedVariable;

.field private mSender:Ljava/lang/String;

.field private mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

.field private mTextDisplay:Lmiui/maml/elements/TextScreenElement;

.field private mTitleVar:Lmiui/maml/data/IndexedVariable;

.field private mUpdateProgressInterval:I

.field private mUpdateProgressRunnable:Ljava/lang/Runnable;

.field private mUserRatingStyle:I

.field private mUserRatingStyleVar:Lmiui/maml/data/IndexedVariable;

.field private mUserRatingValue:F

.field private mUserRatingValueVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method static synthetic -get0(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumInfo:Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get10(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/media/RemoteController$MetadataEditor;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    return-object v0
.end method

.method static synthetic -get11(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicController;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    return-object v0
.end method

.method static synthetic -get12(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    return v0
.end method

.method static synthetic -get13(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic -get14(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic -get15(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    return v0
.end method

.method static synthetic -get16(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic -get17(Lmiui/maml/elements/MusicControlScreenElement;)I
    .registers 2

    iget v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressInterval:I

    return v0
.end method

.method static synthetic -get2(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisableNext:Z

    return v0
.end method

.method static synthetic -get3(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisableNextVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic -get4(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z

    return v0
.end method

.method static synthetic -get5(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePlayVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic -get6(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z

    return v0
.end method

.method static synthetic -get7(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePrevVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic -get8(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic -get9(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicLyricParser$Lyric;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/maml/elements/MusicControlScreenElement;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisableNext:Z

    return p1
.end method

.method static synthetic -set1(Lmiui/maml/elements/MusicControlScreenElement;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z

    return p1
.end method

.method static synthetic -set2(Lmiui/maml/elements/MusicControlScreenElement;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z

    return p1
.end method

.method static synthetic -set3(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/elements/MusicLyricParser$Lyric;)Lmiui/maml/elements/MusicLyricParser$Lyric;
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    return-object p1
.end method

.method static synthetic -set4(Lmiui/maml/elements/MusicControlScreenElement;Landroid/media/RemoteController$MetadataEditor;)Landroid/media/RemoteController$MetadataEditor;
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    return-object p1
.end method

.method static synthetic -wrap0(Lmiui/maml/elements/MusicControlScreenElement;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicControlScreenElement;->delayToSetDefaultArtwork(J)V

    return-void
.end method

.method static synthetic -wrap1(Lmiui/maml/elements/MusicControlScreenElement;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lmiui/maml/elements/MusicControlScreenElement;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetAll()V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/maml/elements/MusicControlScreenElement;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetUserRating()V

    return-void
.end method

.method static synthetic -wrap4(Lmiui/maml/elements/MusicControlScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lmiui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic -wrap6(Lmiui/maml/elements/MusicControlScreenElement;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicControlScreenElement;->updateLyricVar(J)V

    return-void
.end method

.method static synthetic -wrap7(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/elements/MusicLyricParser$Lyric;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->updateLyric(Lmiui/maml/elements/MusicLyricParser$Lyric;)V

    return-void
.end method

.method static synthetic -wrap8(Lmiui/maml/elements/MusicControlScreenElement;JJ)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/maml/elements/MusicControlScreenElement;->updateProgress(JJ)V

    return-void
.end method

.method static synthetic -wrap9(Lmiui/maml/elements/MusicControlScreenElement;Landroid/media/Rating;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->updateUserRating(Landroid/media/Rating;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 12

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v4, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;

    invoke-direct {v4, v7}, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;-><init>(Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumInfo:Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;

    new-instance v4, Lmiui/maml/elements/MusicControlScreenElement$1;

    invoke-direct {v4, p0}, Lmiui/maml/elements/MusicControlScreenElement$1;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    new-instance v4, Lmiui/maml/elements/MusicControlScreenElement$2;

    invoke-direct {v4, p0}, Lmiui/maml/elements/MusicControlScreenElement$2;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    new-instance v4, Lmiui/maml/elements/MusicControlScreenElement$3;

    invoke-direct {v4, p0}, Lmiui/maml/elements/MusicControlScreenElement$3;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    const-string/jumbo v4, "music_prev"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

    const-string/jumbo v4, "music_next"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

    const-string/jumbo v4, "music_play"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    const-string/jumbo v4, "music_pause"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    const-string/jumbo v4, "music_display"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/TextScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    const-string/jumbo v4, "music_album_cover"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ImageScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    invoke-direct {p0, p0}, Lmiui/maml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lmiui/maml/elements/ElementGroup;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    if-eqz v4, :cond_87

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    invoke-virtual {v4, v6}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    :cond_87
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    if-eqz v4, :cond_b3

    const-string/jumbo v4, "defAlbumCover"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a4

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v4, v2}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    :cond_a4
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_b3

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getResourceDensity()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_b3
    const-string/jumbo v4, "autoShow"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    const-string/jumbo v4, "enableLyric"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v4, :cond_3b1

    move v4, v5

    :goto_d2
    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    const-string/jumbo v4, "updateProgressInterval"

    const/16 v7, 0x3e8

    invoke-virtual {p0, p1, v4, v7}, Lmiui/maml/elements/MusicControlScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressInterval:I

    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v4, :cond_350

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".music_state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".title"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".artist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".album"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumVar:Lmiui/maml/data/IndexedVariable;

    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v4, :cond_22a

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".lyric_current"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".lyric_before"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".lyric_after"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".lyric_last"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".lyric_prev"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricPrevVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".lyric_next"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".lyric_current_line_progress"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/data/IndexedVariable;

    :cond_22a
    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    if-eqz v4, :cond_268

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".music_duration"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".music_position"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/data/IndexedVariable;

    :cond_268
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".user_rating_style"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyleVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".user_rating_value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValueVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".disable_play"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePlayVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".disable_prev"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePrevVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".disable_next"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisableNextVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ".artwork"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ".package"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ".class"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    :cond_350
    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v4, :cond_3be

    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    :goto_356
    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    if-eqz v4, :cond_35e

    iget-boolean v6, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    :cond_35e
    iput-boolean v6, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateUserRating:Z

    :try_start_364
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.miui.player"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMiuiMusicContext:Landroid/content/Context;
    :try_end_374
    .catch Ljava/lang/Exception; {:try_start_364 .. :try_end_374} :catch_3c0

    :goto_374
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    new-instance v4, Lmiui/maml/elements/MusicController;

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lmiui/maml/elements/MusicController;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    invoke-virtual {v4}, Lmiui/maml/elements/MusicController;->enableNotificationService()V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getRootTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "maml"

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    const-string/jumbo v4, "gadget"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3cb

    const-string/jumbo v4, "home_widget"

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    :cond_3b0
    :goto_3b0
    return-void

    :cond_3b1
    const-string/jumbo v4, "enableProgress"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_d2

    :cond_3be
    move v4, v6

    goto :goto_356

    :catch_3c0
    move-exception v0

    const-string/jumbo v4, "MusicControlScreenElement"

    const-string/jumbo v5, "fail to get MiuiMusic preference"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_374

    :cond_3cb
    const-string/jumbo v4, "statusbar"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3da

    const-string/jumbo v4, "notification_bar"

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    goto :goto_3b0

    :cond_3da
    const-string/jumbo v4, "lockscreen"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b0

    const-string/jumbo v4, "lockscreen"

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    goto :goto_3b0
.end method

.method private cancelSetDefaultArtwork()V
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private delayToSetDefaultArtwork(J)V
    .registers 6

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private findSpectrumVisualizer(Lmiui/maml/elements/ElementGroup;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    instance-of v3, v1, Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v3, :cond_1c

    check-cast v1, Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    return-object v1

    :cond_1c
    instance-of v3, v1, Lmiui/maml/elements/ElementGroup;

    if-eqz v3, :cond_9

    check-cast v1, Lmiui/maml/elements/ElementGroup;

    invoke-direct {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lmiui/maml/elements/ElementGroup;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_29
    return-object v4
.end method

.method private onMusicStateChange(Z)V
    .registers 8

    const/4 v2, 0x0

    iput-boolean p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v1, :cond_10

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/data/IndexedVariable;

    if-eqz p1, :cond_65

    const/4 v1, 0x1

    :goto_c
    int-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_10
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    invoke-virtual {v1, p1}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    :cond_19
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    :cond_24
    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    if-eqz v1, :cond_32

    const/16 v0, 0x64

    if-eqz p1, :cond_67

    const/16 v1, 0x64

    :goto_2e
    int-to-long v4, v1

    invoke-direct {p0, p1, v4, v5}, Lmiui/maml/elements/MusicControlScreenElement;->startProgressUpdate(ZJ)V

    :cond_32
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    invoke-virtual {v1, p1}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    :cond_3b
    if-eqz p1, :cond_43

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    if-eqz v1, :cond_43

    const/16 v2, 0x1e

    :cond_43
    int-to-float v1, v2

    invoke-virtual {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->requestFramerate(F)V

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    const-string/jumbo v1, "MusicControlScreenElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "music state change: playing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_65
    move v1, v2

    goto :goto_c

    :cond_67
    move v1, v2

    goto :goto_2e
.end method

.method private resetAll()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lmiui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetProgress()V

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetLyric()V

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetUserRating()V

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lmiui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetPackageName()V

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetMusicState()V

    return-void
.end method

.method private resetLyric()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricPrevVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_23
    return-void
.end method

.method private resetMusicState()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    return-void
.end method

.method private resetPackageName()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method private resetProgress()V
    .registers 5

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_10
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_19
    return-void
.end method

.method private resetUserRating()V
    .registers 5

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateUserRating:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyleVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValueVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_16
    return-void
.end method

.method private sendMediaKeyEvent(ILjava/lang/String;)Z
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string/jumbo v2, "music_prev"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v0, 0x58

    :cond_e
    :goto_e
    const/16 v2, 0x58

    if-ne v0, v2, :cond_38

    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z

    if-eqz v2, :cond_38

    return v4

    :cond_17
    const-string/jumbo v2, "music_next"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/16 v0, 0x57

    goto :goto_e

    :cond_23
    const-string/jumbo v2, "music_play"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string/jumbo v2, "music_pause"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_35
    const/16 v0, 0x55

    goto :goto_e

    :cond_38
    const/16 v2, 0x57

    if-ne v0, v2, :cond_41

    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisableNext:Z

    if-eqz v2, :cond_41

    return v4

    :cond_41
    const/16 v2, 0x55

    if-ne v0, v2, :cond_4a

    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z

    if-eqz v2, :cond_4a

    return v4

    :cond_4a
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    invoke-virtual {v2, p1, v0}, Lmiui/maml/elements/MusicController;->sendMediaKeyEvent(II)Z

    move-result v2

    if-eqz v2, :cond_53

    return v5

    :cond_53
    const-string/jumbo v2, "MusicControlScreenElement"

    const-string/jumbo v3, "fail to dispatch by remote controller, send to MiuiMusic."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5f

    return v5

    :cond_5f
    const/4 v1, 0x0

    const-string/jumbo v2, "music_play"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    const-string/jumbo v2, "music_pause"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    :cond_72
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.player.musicservicecommand.togglepause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_7a
    :goto_7a
    if-eqz v1, :cond_ba

    const-string/jumbo v2, "com.miui.player"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "intent_sender"

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return v5

    :cond_96
    const-string/jumbo v2, "music_prev"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.player.musicservicecommand.previous"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_7a

    :cond_a8
    const-string/jumbo v2, "music_next"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.player.musicservicecommand.next"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_7a

    :cond_ba
    return v4
.end method

.method private setupButton(Lmiui/maml/elements/ButtonScreenElement;)V
    .registers 2

    if-eqz p1, :cond_8

    invoke-virtual {p1, p0}, Lmiui/maml/elements/ButtonScreenElement;->setListener(Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;)V

    invoke-virtual {p1, p0}, Lmiui/maml/elements/ButtonScreenElement;->setParent(Lmiui/maml/elements/ElementGroup;)V

    :cond_8
    return-void
.end method

.method private startProgressUpdate(ZJ)V
    .registers 6

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_22

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_23

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_22
    :goto_22
    return-void

    :cond_23
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_22
.end method

.method private updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, p2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, p3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_13
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    if-eqz v1, :cond_26

    const-string/jumbo v0, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move-object v0, p2

    :goto_21
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    :cond_26
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    return-void

    :cond_2a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    move-object v0, p1

    goto :goto_21

    :cond_32
    const-string/jumbo v1, "%s   %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method

.method private updateArtwork(Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->cancelSetDefaultArtwork()V

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_c
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_15
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    return-void
.end method

.method private updateLyric(Lmiui/maml/elements/MusicLyricParser$Lyric;)V
    .registers 5

    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    if-nez v2, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_b

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetLyric()V

    return-void

    :cond_b
    invoke-virtual {p1}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getTimeArr()[I

    move-result-object v1

    invoke-virtual {p1}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getStringArr()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v2, v1, v0}, Lmiui/maml/elements/MusicLyricParser$Lyric;->set([ILjava/util/ArrayList;)V

    :cond_1c
    return-void
.end method

.method private updateLyricVar(J)V
    .registers 12

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getLyricShot(J)Lmiui/maml/elements/MusicLyricParser$LyricShot;

    move-result-object v5

    iget-wide v6, v5, Lmiui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getLine(J)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getBeforeLines(J)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getAfterLines(J)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v0}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getLastLine(J)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricPrevVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getNextLine(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateProgress(JJ)V
    .registers 12

    const-wide/16 v4, 0x0

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    cmp-long v0, p1, v4

    if-lez v0, :cond_f

    cmp-long v0, p3, v4

    if-gez v0, :cond_13

    :cond_f
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetProgress()V

    return-void

    :cond_13
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/data/IndexedVariable;

    long-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/data/IndexedVariable;

    long-to-double v2, p3

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    if-eqz v0, :cond_33

    invoke-direct {p0, p3, p4}, Lmiui/maml/elements/MusicControlScreenElement;->updateLyricVar(J)V

    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    invoke-direct {p0, v0, v4, v5}, Lmiui/maml/elements/MusicControlScreenElement;->startProgressUpdate(ZJ)V

    return-void

    :cond_33
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetLyric()V

    goto :goto_2a
.end method

.method private updateUserRating(Landroid/media/Rating;)V
    .registers 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateUserRating:Z

    if-nez v2, :cond_8

    return-void

    :cond_8
    if-nez p1, :cond_e

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetUserRating()V

    return-void

    :cond_e
    invoke-virtual {p1}, Landroid/media/Rating;->getRatingStyle()I

    move-result v2

    iput v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    iget v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    packed-switch v2, :pswitch_data_54

    iput v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    :goto_1b
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyleVar:Lmiui/maml/data/IndexedVariable;

    iget v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValueVar:Lmiui/maml/data/IndexedVariable;

    iget v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    return-void

    :pswitch_2f
    invoke-virtual {p1}, Landroid/media/Rating;->hasHeart()Z

    move-result v2

    if-eqz v2, :cond_38

    :goto_35
    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    goto :goto_1b

    :cond_38
    move v0, v1

    goto :goto_35

    :pswitch_3a
    invoke-virtual {p1}, Landroid/media/Rating;->isThumbUp()Z

    move-result v2

    if-eqz v2, :cond_43

    :goto_40
    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    goto :goto_1b

    :cond_43
    move v0, v1

    goto :goto_40

    :pswitch_45
    invoke-virtual {p1}, Landroid/media/Rating;->getStarRating()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    goto :goto_1b

    :pswitch_4c
    invoke-virtual {p1}, Landroid/media/Rating;->getPercentRating()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    goto :goto_1b

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_3a
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_4c
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->finish()V

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, v2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_d
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    invoke-virtual {v1}, Lmiui/maml/elements/MusicController;->unregisterListener()V

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init()V
    .registers 5

    const/4 v3, 0x1

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->initByPreference()V

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    invoke-virtual {v1, v2}, Lmiui/maml/elements/MusicController;->registerListener(Landroid/media/RemoteController$OnClientUpdateListener;)V

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    if-eqz v1, :cond_21

    if-eqz v0, :cond_21

    invoke-virtual {p0, v3}, Lmiui/maml/elements/MusicControlScreenElement;->show(Z)V

    invoke-direct {p0, v3}, Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    :goto_20
    return-void

    :cond_21
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    goto :goto_20
.end method

.method public initByPreference()V
    .registers 9

    const/4 v7, 0x0

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMiuiMusicContext:Landroid/content/Context;

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMiuiMusicContext:Landroid/content/Context;

    const-string/jumbo v5, "MiuiMusic"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_2e

    const-string/jumbo v4, "songName"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "artistName"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "albumName"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v1, v0}, Lmiui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V

    :cond_2e
    return-void
.end method

.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->sendMediaKeyEvent(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .registers 5

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1}, Lmiui/maml/elements/MusicControlScreenElement;->sendMediaKeyEvent(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    return v0

    :cond_9
    const-string/jumbo v0, "music_prev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "music_next"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_1b
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->cancelSetDefaultArtwork()V

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2b
    return v2
.end method

.method protected onVisibilityChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onVisibilityChange(Z)V

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/MusicControlScreenElement;->requestFramerate(F)V

    goto :goto_8
.end method

.method public pause()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->pause()V

    return-void
.end method

.method public ratingHeart()V
    .registers 5

    iget v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    iget v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1d

    const/4 v0, 0x1

    :goto_e
    xor-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Landroid/media/Rating;->newHeartRating(Z)Landroid/media/Rating;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    invoke-virtual {v2, v1}, Lmiui/maml/elements/MusicController;->rating(Landroid/media/Rating;)V

    invoke-direct {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->updateUserRating(Landroid/media/Rating;)V

    :cond_1c
    return-void

    :cond_1d
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected readPackageName()V
    .registers 8

    const/4 v6, 0x0

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    if-nez v3, :cond_a

    :cond_9
    return-void

    :cond_a
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    invoke-virtual {v3}, Lmiui/maml/elements/MusicController;->getRemoteControlClientPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MusicControlScreenElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readPackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_54

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_54
    :goto_54
    return-void

    :cond_55
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3, v2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3, v6}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    const-string/jumbo v3, "MusicControlScreenElement"

    const-string/jumbo v4, "set player info fail."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method

.method public resume()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->resume()V

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    return-void
.end method

.method public seekTo(D)V
    .registers 8

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v2

    mul-double/2addr v2, p1

    double-to-long v0, v2

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    invoke-virtual {v2, v0, v1}, Lmiui/maml/elements/MusicController;->seekTo(J)Z

    return-void
.end method
