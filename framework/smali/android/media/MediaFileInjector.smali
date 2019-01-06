.class Landroid/media/MediaFileInjector;
.super Ljava/lang/Object;
.source "MediaFileInjector.java"


# static fields
.field public static final FILE_TYPE_3G2B:I = 0x7d6

.field public static final FILE_TYPE_F4V:I = 0x7d5

.field public static final FILE_TYPE_FLV:I = 0x7d0

.field public static final FILE_TYPE_MOV:I = 0x7d3

.field public static final FILE_TYPE_RM:I = 0x7d1

.field public static final FILE_TYPE_RMVB:I = 0x7d2

.field public static final FILE_TYPE_VOB:I = 0x7d4

.field private static final FIRST_MIUI_VIDEO_FILE_TYPE:I = 0x7d0

.field private static final LAST_MIUI_VIDEO_FILE_TYPE:I = 0x7d6

.field public static final MIUI_FILE_TYPE_BASE:I = 0x7d0


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addMiuiFileType()V
    .registers 3

    const-string/jumbo v0, "FLV"

    const-string/jumbo v1, "video/x-flv"

    const/16 v2, 0x7d0

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v0, "RM"

    const-string/jumbo v1, "video/x-pn-realvideo"

    const/16 v2, 0x7d1

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v0, "RMVB"

    const-string/jumbo v1, "video/x-pn-realvideo"

    const/16 v2, 0x7d2

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v0, "MOV"

    const-string/jumbo v1, "video/quicktime"

    const/16 v2, 0x7d3

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v0, "VOB"

    const-string/jumbo v1, "video/x-ms-vob"

    const/16 v2, 0x7d4

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v0, "F4V"

    const-string/jumbo v1, "video/mp4"

    const/16 v2, 0x7d5

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v0, "3G2B"

    const-string/jumbo v1, "video/3gpp"

    const/16 v2, 0x7d6

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static isMIUIVideoFileType(I)Z
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x7d0

    if-lt p0, v1, :cond_a

    const/16 v1, 0x7d6

    if-gt p0, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method
