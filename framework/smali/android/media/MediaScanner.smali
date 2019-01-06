.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$FileEntry;,
        Landroid/media/MediaScanner$MediaBulkDeleter;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$PlaylistEntry;,
        Landroid/media/MediaScanner$WplHandler;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static final LAST_INTERNAL_SCAN_FINGERPRINT:Ljava/lang/String; = "lastScanFingerprint"

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field public static final SCANNED_BUILD_PREFS_NAME:Ljava/lang/String; = "MediaScanBuild"

.field private static final SYSTEM_SOUNDS_DIR:Ljava/lang/String; = "/system/media/audio"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static mMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNoMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastInternalScanFingerprint:Ljava/lang/String;


# instance fields
.field private final mAudioUri:Landroid/net/Uri;

.field private final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private final mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private final mFilesUri:Landroid/net/Uri;

.field private final mFilesUriNoNotify:Landroid/net/Uri;

.field private final mImagesUri:Landroid/net/Uri;

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private final mMediaProvider:Landroid/content/ContentProviderClient;

.field private mMtpObjectHandle:I

.field private mNativeContext:J

.field private mOriginalCount:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaylistEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaylistsUri:Landroid/net/Uri;

.field private final mProcessGenres:Z

.field private final mProcessPlaylists:Z

.field private final mThumbsUri:Landroid/net/Uri;

.field private final mVideoUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get10(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic -get11(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get12(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get13(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method

.method static synthetic -get14(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    return-object v0
.end method

.method static synthetic -get15(Landroid/media/MediaScanner;)I
    .registers 2

    iget v0, p0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    return v0
.end method

.method static synthetic -get16(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get17(Landroid/media/MediaScanner;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic -get18(Landroid/media/MediaScanner;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic -get19(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic -get20()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/MediaScanner;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Landroid/media/MediaScanner;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic -get6(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Landroid/media/MediaScanner;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic -get8(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Landroid/media/MediaScanner;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic -set0(Landroid/media/MediaScanner;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic -set1(Landroid/media/MediaScanner;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic -set2(Landroid/media/MediaScanner;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic -set3(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .registers 2

    iput-object p1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/media/MediaScanner;)Z
    .registers 2

    invoke-direct {p0}, Landroid/media/MediaScanner;->isDrmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/media/MediaScanner;->isSystemSoundWithMetadata(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/media/MediaScanner;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/media/MediaScanner;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "format"

    aput-object v1, v0, v4

    const-string/jumbo v1, "date_modified"

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "playlist_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x94

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Blues"

    aput-object v1, v0, v2

    const-string/jumbo v1, "Classic Rock"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Country"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Dance"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Disco"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Funk"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Grunge"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "Hip-Hop"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "Jazz"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Metal"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "New Age"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "Oldies"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "Other"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "Pop"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "R&B"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "Rap"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "Reggae"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "Rock"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "Techno"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "Industrial"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "Alternative"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "Ska"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "Death Metal"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "Pranks"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "Soundtrack"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "Euro-Techno"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "Ambient"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "Trip-Hop"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "Vocal"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "Jazz+Funk"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "Fusion"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "Trance"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "Classical"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "Instrumental"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "Acid"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "House"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "Game"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "Sound Clip"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string/jumbo v1, "Gospel"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string/jumbo v1, "Noise"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string/jumbo v1, "AlternRock"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string/jumbo v1, "Bass"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "Soul"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string/jumbo v1, "Punk"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string/jumbo v1, "Space"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string/jumbo v1, "Meditative"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string/jumbo v1, "Instrumental Pop"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string/jumbo v1, "Instrumental Rock"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string/jumbo v1, "Ethnic"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string/jumbo v1, "Gothic"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string/jumbo v1, "Darkwave"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string/jumbo v1, "Techno-Industrial"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string/jumbo v1, "Electronic"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string/jumbo v1, "Pop-Folk"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eurodance"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string/jumbo v1, "Dream"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string/jumbo v1, "Southern Rock"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string/jumbo v1, "Comedy"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string/jumbo v1, "Cult"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string/jumbo v1, "Gangsta"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string/jumbo v1, "Top 40"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string/jumbo v1, "Christian Rap"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string/jumbo v1, "Pop/Funk"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string/jumbo v1, "Jungle"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string/jumbo v1, "Native American"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string/jumbo v1, "Cabaret"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string/jumbo v1, "New Wave"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string/jumbo v1, "Psychadelic"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string/jumbo v1, "Rave"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string/jumbo v1, "Showtunes"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string/jumbo v1, "Trailer"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string/jumbo v1, "Lo-Fi"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string/jumbo v1, "Tribal"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string/jumbo v1, "Acid Punk"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string/jumbo v1, "Acid Jazz"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string/jumbo v1, "Polka"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string/jumbo v1, "Retro"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string/jumbo v1, "Musical"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string/jumbo v1, "Rock & Roll"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string/jumbo v1, "Hard Rock"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string/jumbo v1, "Folk"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string/jumbo v1, "Folk-Rock"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string/jumbo v1, "National Folk"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string/jumbo v1, "Swing"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string/jumbo v1, "Fast Fusion"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string/jumbo v1, "Bebob"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string/jumbo v1, "Latin"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string/jumbo v1, "Revival"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string/jumbo v1, "Celtic"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string/jumbo v1, "Bluegrass"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string/jumbo v1, "Avantgarde"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string/jumbo v1, "Gothic Rock"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string/jumbo v1, "Progressive Rock"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string/jumbo v1, "Psychedelic Rock"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string/jumbo v1, "Symphonic Rock"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string/jumbo v1, "Slow Rock"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string/jumbo v1, "Big Band"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string/jumbo v1, "Chorus"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string/jumbo v1, "Easy Listening"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string/jumbo v1, "Acoustic"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string/jumbo v1, "Humour"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string/jumbo v1, "Speech"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string/jumbo v1, "Chanson"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string/jumbo v1, "Opera"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string/jumbo v1, "Chamber Music"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string/jumbo v1, "Sonata"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string/jumbo v1, "Symphony"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string/jumbo v1, "Booty Bass"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string/jumbo v1, "Primus"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string/jumbo v1, "Porn Groove"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string/jumbo v1, "Satire"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string/jumbo v1, "Slow Jam"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string/jumbo v1, "Club"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string/jumbo v1, "Tango"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string/jumbo v1, "Samba"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string/jumbo v1, "Folklore"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string/jumbo v1, "Ballad"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string/jumbo v1, "Power Ballad"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string/jumbo v1, "Rhythmic Soul"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string/jumbo v1, "Freestyle"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string/jumbo v1, "Duet"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string/jumbo v1, "Punk Rock"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string/jumbo v1, "Drum Solo"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string/jumbo v1, "A capella"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string/jumbo v1, "Euro-House"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string/jumbo v1, "Dance Hall"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string/jumbo v1, "Goa"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string/jumbo v1, "Drum & Bass"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string/jumbo v1, "Club-House"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string/jumbo v1, "Hardcore"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string/jumbo v1, "Terror"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string/jumbo v1, "Indie"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string/jumbo v1, "Britpop"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string/jumbo v1, "Polsk Punk"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string/jumbo v1, "Beat"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string/jumbo v1, "Christian Gangsta"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string/jumbo v1, "Heavy Metal"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string/jumbo v1, "Black Metal"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string/jumbo v1, "Crossover"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string/jumbo v1, "Contemporary Christian"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string/jumbo v1, "Christian Rock"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string/jumbo v1, "Merengue"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string/jumbo v1, "Salsa"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string/jumbo v1, "Thrash Metal"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string/jumbo v1, "Anime"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string/jumbo v1, "JPop"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string/jumbo v1, "Synthpop"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mWhiteList:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v4, p0, Landroid/media/MediaScanner;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v4, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    iput-object v7, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    new-instance v4, Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {v4, p0}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    iput-object v4, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/MediaScanner;->mVolumeName:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v4, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    iget-object v4, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "media"

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    sget-object v4, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    if-nez v4, :cond_73

    iget-object v4, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "MediaScanBuild"

    invoke-virtual {v4, v5, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "lastScanFingerprint"

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    :cond_73
    invoke-static {p2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    invoke-static {p2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    invoke-static {p2}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    invoke-static {p2}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "nonotify"

    const-string/jumbo v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    const-string/jumbo v4, "internal"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_fe

    iput-boolean v8, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    iput-boolean v8, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    invoke-static {p2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    :goto_ba
    iget-object v4, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v2, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_ef

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_ef

    if-eqz v0, :cond_105

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    :cond_ef
    :goto_ef
    iget-object v4, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v5, "close"

    invoke-virtual {v4, v5}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    const-string/jumbo v4, "media.extractor"

    invoke-static {v4}, Landroid/media/MediaScannerInjector;->initMediaFileCapture(Ljava/lang/String;)V

    return-void

    :cond_fe
    iput-boolean v9, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    iput-boolean v9, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    iput-object v7, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    goto :goto_ba

    :cond_105
    invoke-direct {p0, v1}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_ef
.end method

.method private cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v5, 0x0

    new-instance v1, Landroid/media/MediaScanner$PlaylistEntry;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/media/MediaScanner$PlaylistEntry;-><init>(Landroid/media/MediaScanner$PlaylistEntry;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_b
    if-lez v2, :cond_1c

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_1c
    const/4 v4, 0x3

    if-ge v2, v4, :cond_20

    return-void

    :cond_20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2a

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2a
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_66

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_68

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_68

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_68

    const/4 v3, 0x1

    :goto_4b
    if-nez v3, :cond_5e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5e
    iput-object p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_66
    const/4 v3, 0x1

    goto :goto_4b

    :cond_68
    const/4 v3, 0x0

    goto :goto_4b
.end method

.method public static clearMediaPathCache(ZZ)V
    .registers 4

    const-class v1, Landroid/media/MediaScanner;

    monitor-enter v1

    if-eqz p0, :cond_a

    :try_start_5
    sget-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_a
    if-eqz p1, :cond_11

    sget-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isDrmEnabled()Z
    .registers 3

    const-string/jumbo v1, "drm.service.enabled"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .registers 11

    const/16 v9, 0xa

    const/4 v1, 0x1

    const/4 v4, 0x0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_10

    return v4

    :cond_10
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-ltz v7, :cond_83

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_83

    add-int/lit8 v0, v7, 0x1

    const-string/jumbo v2, "._"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2d

    return v1

    :cond_2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x4

    const-string/jumbo v3, ".jpg"

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_83

    add-int/lit8 v2, v7, 0x1

    const-string/jumbo v3, "AlbumArt_{"

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_59

    add-int/lit8 v2, v7, 0x1

    const-string/jumbo v3, "AlbumArt."

    const/16 v5, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_5a

    :cond_59
    return v1

    :cond_5a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    add-int/lit8 v8, v0, -0x1

    const/16 v0, 0x11

    if-ne v8, v0, :cond_73

    add-int/lit8 v2, v7, 0x1

    const-string/jumbo v3, "AlbumArtSmall"

    const/16 v5, 0xd

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_82

    :cond_73
    if-ne v8, v9, :cond_83

    add-int/lit8 v2, v7, 0x1

    const-string/jumbo v3, "Folder"

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_83

    :cond_82
    return v1

    :cond_83
    return v4
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .registers 12

    const/16 v7, 0x2f

    const/4 v10, 0x1

    const/4 v8, 0x0

    if-nez p0, :cond_7

    return v8

    :cond_7
    const-string/jumbo v6, "/."

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_11

    return v10

    :cond_11
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-gtz v2, :cond_18

    return v8

    :cond_18
    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-class v7, Landroid/media/MediaScanner;

    monitor-enter v7

    :try_start_27
    sget-object v6, Landroid/media/MediaScanner;->mWhiteList:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_37

    sget-object v6, Landroid/media/MediaScanner;->mWhiteList:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-nez v6, :cond_3d

    :cond_37
    invoke-static {}, Landroid/media/MediaScannerInjector;->getNoMediaWhiteList()Ljava/util/HashSet;

    move-result-object v6

    sput-object v6, Landroid/media/MediaScanner;->mWhiteList:Ljava/util/HashSet;

    :cond_3d
    sget-object v6, Landroid/media/MediaScanner;->mWhiteList:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_27 .. :try_end_42} :catchall_b5

    move-result v6

    if-eqz v6, :cond_47

    monitor-exit v7

    return v8

    :cond_47
    :try_start_47
    sget-object v6, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_b5

    move-result v6

    if-eqz v6, :cond_51

    monitor-exit v7

    return v10

    :cond_51
    :try_start_51
    sget-object v6, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_af

    const/4 v3, 0x1

    :goto_5a
    if-ltz v3, :cond_a7

    const/16 v6, 0x2f

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-le v5, v3, :cond_a5

    add-int/lit8 v5, v5, 0x1

    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ".nomedia"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a5

    sget-object v6, Landroid/media/MediaScanner;->mWhiteList:Ljava/util/HashSet;

    add-int/lit8 v8, v5, -0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_a5

    sget-object v6, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    const-string/jumbo v8, ""

    invoke-virtual {v6, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a3
    .catchall {:try_start_51 .. :try_end_a3} :catchall_b5

    monitor-exit v7

    return v10

    :cond_a5
    move v3, v5

    goto :goto_5a

    :cond_a7
    :try_start_a7
    sget-object v6, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    const-string/jumbo v8, ""

    invoke-virtual {v6, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_af
    .catchall {:try_start_a7 .. :try_end_af} :catchall_b5

    :cond_af
    monitor-exit v7

    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v6

    return v6

    :catchall_b5
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private static isSystemSoundWithMetadata(Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo v0, "/system/media/audio/alarms/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "/system/media/audio/ringtones/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "/system/media/audio/notifications/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1b
    const/4 v0, 0x1

    return v0

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private matchEntries(JLjava/lang/String;)Z
    .registers 11

    const v6, 0x7fffffff

    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v3, :cond_39

    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaScanner$PlaylistEntry;

    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-ne v5, v6, :cond_1c

    :cond_19
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1c
    const/4 v0, 0x0

    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    iput v6, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_19

    :cond_2a
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-le v4, v5, :cond_19

    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    iput v4, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_19

    :cond_39
    return v0
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .registers 16

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    :goto_9
    if-lez v8, :cond_3f

    if-lez v9, :cond_3f

    const/16 v0, 0x2f

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    const/16 v0, 0x2f

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    const/16 v0, 0x5c

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    const/16 v0, 0x5c

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    if-le v11, v6, :cond_40

    move v2, v11

    :goto_30
    if-le v12, v7, :cond_42

    move v4, v12

    :goto_33
    if-gez v2, :cond_44

    const/4 v2, 0x0

    :goto_36
    if-gez v4, :cond_47

    const/4 v4, 0x0

    :goto_39
    sub-int v5, v8, v2

    sub-int v0, v9, v4

    if-eq v0, v5, :cond_4a

    :cond_3f
    return v10

    :cond_40
    move v2, v6

    goto :goto_30

    :cond_42
    move v4, v7

    goto :goto_33

    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_4a
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3f

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v2, -0x1

    add-int/lit8 v9, v4, -0x1

    goto :goto_9
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method private postscan([Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/media/MediaScanner;->processPlayLists()V

    :cond_7
    iget v0, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string/jumbo v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    :cond_1d
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private prescan(Ljava/lang/String;Z)V
    .registers 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_dc

    const-string/jumbo v7, "_id>? AND _data=?"

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const-string/jumbo v4, ""

    const/4 v6, 0x0

    aput-object v4, v8, v6

    const/4 v4, 0x1

    aput-object p1, v8, v4

    :goto_1c
    const-string/jumbo v4, "ringtone"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    const-string/jumbo v4, "notification_sound"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    const-string/jumbo v4, "alarm_alert"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v16

    const-string/jumbo v4, "deletedata"

    const-string/jumbo v6, "false"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v18, Landroid/media/MediaScanner$MediaBulkDeleter;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v6}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V

    if-eqz p2, :cond_af

    const-wide/high16 v24, -0x8000000000000000L

    :try_start_69
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v6, "limit"

    const-string/jumbo v9, "1000"

    invoke-virtual {v4, v6, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    :cond_7f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v8, v6

    if-eqz v17, :cond_9f

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    const/16 v17, 0x0

    :cond_9f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    sget-object v6, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v9, "_id"

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_ac
    .catchall {:try_start_69 .. :try_end_ac} :catchall_178

    move-result-object v17

    if-nez v17, :cond_ea

    :cond_af
    if-eqz v17, :cond_b4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_b4
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v11, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v17

    if-eqz v17, :cond_db

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_db
    return-void

    :cond_dc
    const-string/jumbo v7, "_id>?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const-string/jumbo v4, ""

    const/4 v6, 0x0

    aput-object v4, v8, v6

    goto/16 :goto_1c

    :cond_ea
    :try_start_ea
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v28

    if-eqz v28, :cond_af

    :cond_f0
    :goto_f0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    const/4 v4, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/4 v4, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-wide/from16 v24, v32

    if-eqz v30, :cond_f0

    const-string/jumbo v4, "/"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_11e
    .catchall {:try_start_ea .. :try_end_11e} :catchall_178

    move-result v4

    if-eqz v4, :cond_f0

    const/16 v20, 0x0

    :try_start_123
    sget v4, Landroid/system/OsConstants;->F_OK:I

    move-object/from16 v0, v30

    invoke-static {v0, v4}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_12a
    .catch Landroid/system/ErrnoException; {:try_start_123 .. :try_end_12a} :catch_189
    .catchall {:try_start_123 .. :try_end_12a} :catchall_178

    move-result v20

    :goto_12b
    if-nez v20, :cond_f0

    :try_start_12d
    invoke-static/range {v22 .. v22}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_f0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v23

    if-nez v23, :cond_182

    const/16 v21, 0x0

    :goto_13d
    invoke-static/range {v21 .. v21}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-nez v4, :cond_f0

    move-object/from16 v0, v18

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "/.nomedia"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f0

    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v6, "unhide"

    const/4 v9, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v4, v6, v0, v9}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_176
    .catchall {:try_start_12d .. :try_end_176} :catchall_178

    goto/16 :goto_f0

    :catchall_178
    move-exception v4

    if-eqz v17, :cond_17e

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_17e
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    throw v4

    :cond_182
    :try_start_182
    move-object/from16 v0, v23

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v21, v0
    :try_end_188
    .catchall {:try_start_182 .. :try_end_188} :catchall_178

    goto :goto_13d

    :catch_189
    move-exception v19

    goto :goto_12b
.end method

.method private processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .registers 16

    const/4 v9, 0x0

    const/4 v8, -0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v7, v0}, Landroid/media/MediaScanner;->matchEntries(JLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_1a
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v5, :cond_5e

    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaScanner$PlaylistEntry;

    iget v8, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-lez v8, :cond_50

    :try_start_30
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    const-string/jumbo v8, "play_order"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "audio_id"

    iget-wide v10, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v8, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v8, p3, p2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_4e} :catch_53

    add-int/lit8 v4, v4, 0x1

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :catch_53
    move-exception v1

    const-string/jumbo v8, "MediaScanner"

    const-string/jumbo v9, "RemoteException in MediaScanner.processCachedPlaylist()"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_5e
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private native processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .registers 14

    const/4 v3, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_43

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_54
    .catchall {:try_start_1 .. :try_end_1d} :catchall_6f

    :try_start_1d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_26
    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3a

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_3a

    invoke-direct {p0, v2, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    :cond_3f
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_42} :catch_84
    .catchall {:try_start_1d .. :try_end_42} :catchall_81

    move-object v3, v4

    :cond_43
    if-eqz v3, :cond_48

    :try_start_45
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    :cond_48
    :goto_48
    return-void

    :catch_49
    move-exception v0

    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    :catch_54
    move-exception v0

    :goto_55
    :try_start_55
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_6f

    if-eqz v3, :cond_48

    :try_start_60
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_48

    :catch_64
    move-exception v0

    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    :catchall_6f
    move-exception v5

    :goto_70
    if-eqz v3, :cond_75

    :try_start_72
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    :cond_75
    :goto_75
    throw v5

    :catch_76
    move-exception v0

    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_75

    :catchall_81
    move-exception v5

    move-object v3, v4

    goto :goto_70

    :catch_84
    move-exception v0

    move-object v3, v4

    goto :goto_55
.end method

.method private processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x2f

    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    if-gez v10, :cond_2d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "bad path "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2d
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    const-string/jumbo v2, "name"

    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_51

    const-string/jumbo v2, "title"

    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_51

    const/16 v2, 0x2e

    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-gez v9, :cond_a4

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    :cond_51
    :goto_51
    const-string/jumbo v2, "name"

    invoke-virtual {v6, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "date_modified"

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-nez v2, :cond_ab

    const-string/jumbo v2, "_data"

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    invoke-static {v13}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    const-string/jumbo v2, "members"

    invoke-static {v13, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :goto_8a
    add-int/lit8 v2, v10, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v11

    if-nez v11, :cond_d3

    const/4 v8, 0x0

    :goto_98
    const/16 v2, 0x29

    if-ne v8, v2, :cond_d6

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    :cond_a3
    :goto_a3
    return-void

    :cond_a4
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v3, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_51

    :cond_ab
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v13, v6, v7, v0}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v2, "members"

    invoke-static {v13, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v5, v7, v0}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_8a

    :cond_d3
    iget v8, v11, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_98

    :cond_d6
    const/16 v2, 0x2a

    if-ne v8, v2, :cond_e2

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_a3

    :cond_e2
    const/16 v2, 0x2b

    if-ne v8, v2, :cond_a3

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_a3
.end method

.method private processPlayLists()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v9, 0x0

    :try_start_7
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v2, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "media_type=2"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    :cond_17
    :goto_17
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaScanner$FileEntry;

    iget-boolean v0, v8, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-eqz v0, :cond_17

    invoke-direct {p0, v8, v9}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2a} :catch_2b
    .catchall {:try_start_7 .. :try_end_2a} :catchall_38

    goto :goto_17

    :catch_2b
    move-exception v7

    if-eqz v9, :cond_31

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_31
    :goto_31
    return-void

    :cond_32
    if-eqz v9, :cond_31

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_31

    :catchall_38
    move-exception v0

    if-eqz v9, :cond_3e

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3e
    throw v0
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .registers 15

    const/4 v4, 0x0

    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4b

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_5c
    .catchall {:try_start_1 .. :try_end_1d} :catchall_77

    :try_start_1d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :goto_26
    if-eqz v3, :cond_47

    const-string/jumbo v6, "File"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42

    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_42

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_26

    :cond_47
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_4a} :catch_8c
    .catchall {:try_start_1d .. :try_end_4a} :catchall_89

    move-object v4, v5

    :cond_4b
    if-eqz v4, :cond_50

    :try_start_4d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    :cond_50
    :goto_50
    return-void

    :catch_51
    move-exception v0

    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    :catch_5c
    move-exception v0

    :goto_5d
    :try_start_5d
    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_77

    if-eqz v4, :cond_50

    :try_start_68
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_50

    :catch_6c
    move-exception v0

    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    :catchall_77
    move-exception v6

    :goto_78
    if-eqz v4, :cond_7d

    :try_start_7a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    :cond_7d
    :goto_7d
    throw v6

    :catch_7e
    move-exception v0

    const-string/jumbo v7, "MediaScanner"

    const-string/jumbo v8, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7d

    :catchall_89
    move-exception v6

    move-object v4, v5

    goto :goto_78

    :catch_8c
    move-exception v0

    move-object v4, v5

    goto :goto_5d
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .registers 14

    const/4 v3, 0x0

    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2d

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_11} :catch_53
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_3e
    .catchall {:try_start_1 .. :try_end_11} :catchall_68

    :try_start_11
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v5, "UTF-8"

    invoke-static {v5}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v5

    new-instance v6, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v6, p0, p2, p3, p5}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V

    invoke-virtual {v6}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_2c
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_2c} :catch_7d
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2c} :catch_80
    .catchall {:try_start_11 .. :try_end_2c} :catchall_7a

    move-object v3, v4

    :cond_2d
    if-eqz v3, :cond_32

    :try_start_2f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    :cond_32
    :goto_32
    return-void

    :catch_33
    move-exception v0

    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    :catch_3e
    move-exception v0

    :goto_3f
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_68

    if-eqz v3, :cond_32

    :try_start_44
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_32

    :catch_48
    move-exception v0

    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    :catch_53
    move-exception v1

    :goto_54
    :try_start_54
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_68

    if-eqz v3, :cond_32

    :try_start_59
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_32

    :catch_5d
    move-exception v0

    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    :catchall_68
    move-exception v5

    :goto_69
    if-eqz v3, :cond_6e

    :try_start_6b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    :cond_6e
    :goto_6e
    throw v5

    :catch_6f
    move-exception v0

    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6e

    :catchall_7a
    move-exception v5

    move-object v3, v4

    goto :goto_69

    :catch_7d
    move-exception v1

    move-object v3, v4

    goto :goto_54

    :catch_80
    move-exception v0

    move-object v3, v4

    goto :goto_3f
.end method

.method private pruneDeadThumbnailFiles()V
    .registers 19

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v9, "/sdcard/DCIM/.thumbnails"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v15

    const/4 v8, 0x0

    if-nez v15, :cond_17

    const/4 v1, 0x0

    new-array v15, v1, [Ljava/lang/String;

    :cond_17
    const/16 v17, 0x0

    :goto_19
    array-length v1, v15

    move/from16 v0, v17

    if-ge v0, v1, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v15, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x1

    goto :goto_19

    :cond_40
    :try_start_40
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "_data"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    const-string/jumbo v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pruneDeadThumbnailFiles... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_8b

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8b

    :cond_7b
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_7b

    :cond_8b
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_8f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_9b} :catch_c6
    .catchall {:try_start_40 .. :try_end_9b} :catchall_cd

    :try_start_9b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_a3
    .catch Ljava/lang/SecurityException; {:try_start_9b .. :try_end_a3} :catch_a4
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_a3} :catch_c6
    .catchall {:try_start_9b .. :try_end_a3} :catchall_cd

    goto :goto_8f

    :catch_a4
    move-exception v11

    goto :goto_8f

    :cond_a6
    :try_start_a6
    const-string/jumbo v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/pruneDeadThumbnailFiles... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_c0} :catch_c6
    .catchall {:try_start_a6 .. :try_end_c0} :catchall_cd

    if-eqz v8, :cond_c5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c5
    :goto_c5
    return-void

    :catch_c6
    move-exception v10

    if-eqz v8, :cond_c5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_c5

    :catchall_cd
    move-exception v1

    if-eqz v8, :cond_d3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_d3
    throw v1
.end method

.method private releaseResources()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->close()V

    iput-object v1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    :cond_c
    return-void
.end method

.method private setDefaultRingtoneFileNames()V
    .registers 2

    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-void
.end method

.method private native setLocale(Ljava/lang/String;)V
.end method

.method private settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private wasRingtoneAlreadySet(Ljava/lang/String;)Z
    .registers 7

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_b
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_b .. :try_end_e} :catch_13

    move-result v4

    if-eqz v4, :cond_12

    const/4 v3, 0x1

    :cond_12
    return v3

    :catch_13
    move-exception v1

    return v3
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Landroid/media/MediaScanner;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    :cond_17
    return-void
.end method

.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_9
    invoke-virtual {p0}, Landroid/media/MediaScanner;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;
    .registers 17

    const/4 v13, 0x0

    :try_start_1
    const-string/jumbo v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    sget-object v2, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v0, 0x2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v0, 0x3

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    new-instance v6, Landroid/media/MediaScanner$FileEntry;

    move-object/from16 v9, p1

    invoke-direct/range {v6 .. v12}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_32} :catch_3f
    .catchall {:try_start_1 .. :try_end_32} :catchall_46

    if-eqz v13, :cond_37

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_37
    return-object v6

    :cond_38
    if-eqz v13, :cond_3d

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3d
    :goto_3d
    const/4 v0, 0x0

    return-object v0

    :catch_3f
    move-exception v14

    if-eqz v13, :cond_3d

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_3d

    :catchall_46
    move-exception v0

    if-eqz v13, :cond_4c

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4c
    throw v0
.end method

.method public scanDirectories([Ljava/lang/String;)V
    .registers 19

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v14, Landroid/media/MediaInserter;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const/16 v16, 0x1f4

    invoke-direct/range {v14 .. v16}, Landroid/media/MediaInserter;-><init>(Landroid/content/ContentProviderClient;I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    const/4 v5, 0x0

    :goto_1f
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v5, v14, :cond_32

    aget-object v14, p1, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_32
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v14}, Landroid/media/MediaInserter;->flushAll()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_48
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_48} :catch_69
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_48} :catch_5b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_48} :catch_4d
    .catchall {:try_start_0 .. :try_end_48} :catchall_77

    move-result-wide v6

    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    :goto_4c
    return-void

    :catch_4d
    move-exception v3

    :try_start_4e
    const-string/jumbo v14, "MediaScanner"

    const-string/jumbo v15, "RemoteException in MediaScanner.scan()"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_77

    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_4c

    :catch_5b
    move-exception v4

    :try_start_5c
    const-string/jumbo v14, "MediaScanner"

    const-string/jumbo v15, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_77

    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_4c

    :catch_69
    move-exception v2

    :try_start_6a
    const-string/jumbo v14, "MediaScanner"

    const-string/jumbo v15, "SQLException in MediaScanner.scan()"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_77

    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_4c

    :catchall_77
    move-exception v14

    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    throw v14
.end method

.method public scanMtpFile(Ljava/lang/String;II)V
    .registers 25

    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v18

    if-nez v18, :cond_81

    const/16 v17, 0x0

    :goto_8
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v6, v2, v4

    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-nez v2, :cond_93

    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_93

    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_93

    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_93

    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_93

    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "_size"

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "date_modified"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x1

    :try_start_5f
    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v20, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mVolumeName:Ljava/lang/String;

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "_id=?"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_80} :catch_88

    :goto_80
    return-void

    :cond_81
    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v17, v0

    goto :goto_8

    :catch_88
    move-exception v13

    const-string/jumbo v2, "MediaScanner"

    const-string/jumbo v3, "RemoteException in scanMtpFile"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_80

    :cond_93
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    const/16 v16, 0x0

    :try_start_9b
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v2

    if-eqz v2, :cond_d5

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v14

    if-eqz v14, :cond_c7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v4, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_c7} :catch_fb
    .catchall {:try_start_9b .. :try_end_c7} :catchall_115

    :cond_c7
    :goto_c7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    if-eqz v16, :cond_d1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_d1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    :goto_d4
    return-void

    :cond_d5
    const/4 v2, 0x0

    :try_start_d6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v8

    const/16 v2, 0x3001

    move/from16 v0, p3

    if-ne v0, v2, :cond_113

    const/4 v10, 0x1

    :goto_f0
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v12

    const/4 v11, 0x1

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_fa
    .catch Landroid/os/RemoteException; {:try_start_d6 .. :try_end_fa} :catch_fb
    .catchall {:try_start_d6 .. :try_end_fa} :catchall_115

    goto :goto_c7

    :catch_fb
    move-exception v13

    :try_start_fc
    const-string/jumbo v2, "MediaScanner"

    const-string/jumbo v3, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_105
    .catchall {:try_start_fc .. :try_end_105} :catchall_115

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    if-eqz v16, :cond_10f

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_10f
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_d4

    :cond_113
    const/4 v10, 0x0

    goto :goto_f0

    :catchall_115
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    if-eqz v16, :cond_120

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_120
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    throw v2
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 16

    const/4 v12, 0x0

    const/4 v1, 0x1

    :try_start_2
    invoke-direct {p0, p1, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v11}, Ljava/io/File;->canRead()Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_3a
    .catchall {:try_start_2 .. :try_end_13} :catchall_48

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1c

    :cond_18
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    return-object v12

    :cond_1c
    :try_start_1c
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    iget-object v1, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v10

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_35} :catch_3a
    .catchall {:try_start_1c .. :try_end_35} :catchall_48

    move-result-object v1

    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    return-object v1

    :catch_3a
    move-exception v0

    :try_start_3b
    const-string/jumbo v1, "MediaScanner"

    const-string/jumbo v2, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_48

    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    return-object v12

    :catchall_48
    move-exception v1

    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    throw v1
.end method
