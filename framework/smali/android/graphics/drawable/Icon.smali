.class public final Landroid/graphics/drawable/Icon;
.super Ljava/lang/Object;
.source "Icon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/Icon$1;,
        Landroid/graphics/drawable/Icon$LoadDrawableTask;,
        Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/drawable/Icon;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

.field public static final MIN_ASHMEM_ICON_SIZE:I = 0x20000

.field private static final TAG:Ljava/lang/String; = "Icon"

.field public static final TYPE_ADAPTIVE_BITMAP:I = 0x5

.field public static final TYPE_BITMAP:I = 0x1

.field public static final TYPE_DATA:I = 0x3

.field public static final TYPE_RESOURCE:I = 0x2

.field public static final TYPE_URI:I = 0x4

.field private static final VERSION_STREAM_SERIALIZER:I = 0x1


# instance fields
.field private mInt1:I

.field private mInt2:I

.field private mObj1:Ljava/lang/Object;

.field private mString1:Ljava/lang/String;

.field private mTintList:Landroid/content/res/ColorStateList;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/drawable/Icon$1;

    invoke-direct {v0}, Landroid/graphics/drawable/Icon$1;-><init>()V

    sput-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput p1, p0, Landroid/graphics/drawable/Icon;->mType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/graphics/drawable/Icon;-><init>(I)V

    iget v6, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v6, :pswitch_data_b2

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " type in parcel: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/graphics/drawable/Icon;->mType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_3b
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    :goto_45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_56

    sget-object v6, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ColorStateList;

    iput-object v6, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    :cond_56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Landroid/graphics/PorterDuff;->intToMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    return-void

    :pswitch_61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput-object v3, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    iput v4, p0, Landroid/graphics/drawable/Icon;->mInt1:I

    goto :goto_45

    :pswitch_6e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v0

    array-length v6, v0

    if-eq v2, v6, :cond_a6

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "internal unparceling error: blob length ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") != expected length ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_a6
    iput v2, p0, Landroid/graphics/drawable/Icon;->mInt1:I

    iput-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    goto :goto_45

    :pswitch_ab
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    goto :goto_45

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_61
        :pswitch_6e
        :pswitch_ab
        :pswitch_3b
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/graphics/drawable/Icon;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/drawable/Icon;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createFromStream(Ljava/io/InputStream;)Landroid/graphics/drawable/Icon;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_14

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    packed-switch v5, :pswitch_data_4c

    :cond_14
    const/4 v8, 0x0

    return-object v8

    :pswitch_16
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v8

    return-object v8

    :pswitch_1f
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v8

    return-object v8

    :pswitch_28
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v0, v2, [B

    invoke-virtual {v1, v0, v9, v2}, Ljava/io/DataInputStream;->read([BII)I

    invoke-static {v0, v9, v2}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v8

    return-object v8

    :pswitch_36
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    return-object v8

    :pswitch_43
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v8

    return-object v8

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_16
        :pswitch_36
        :pswitch_28
        :pswitch_43
        :pswitch_1f
    .end packed-switch
.end method

.method public static createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;
    .registers 4

    if-nez p0, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Bitmap must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    invoke-direct {v0, p0}, Landroid/graphics/drawable/Icon;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;
    .registers 4

    if-nez p0, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Bitmap must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    invoke-direct {v0, p0}, Landroid/graphics/drawable/Icon;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;
    .registers 4

    if-nez p0, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Uri must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method public static createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .registers 4

    if-nez p0, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Uri must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method public static createWithData([BII)Landroid/graphics/drawable/Icon;
    .registers 6

    if-nez p0, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Data must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    iput p2, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt2:I

    return-object v0
.end method

.method public static createWithFilePath(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .registers 4

    if-nez p0, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Path must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method public static createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;
    .registers 5

    if-nez p0, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Context must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method public static createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;
    .registers 5

    if-nez p0, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Resource must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method public static createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .registers 5

    if-nez p0, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Resource package name must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method private loadDrawableInner(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 19

    move-object/from16 v0, p0

    iget v12, v0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v12, :pswitch_data_14c

    :cond_7
    :goto_7
    const/4 v12, 0x0

    return-object v12

    :pswitch_9
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v12

    :pswitch_17
    new-instance v12, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v14, 0x0

    invoke-direct {v12, v14, v13}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v12

    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-nez v12, :cond_50

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    :cond_3f
    const-string/jumbo v12, "android"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_61

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    :cond_50
    :goto_50
    :try_start_50
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_5f} :catch_8f

    move-result-object v12

    return-object v12

    :cond_61
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v12, 0x2000

    :try_start_67
    invoke-virtual {v8, v9, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;
    :try_end_75
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_67 .. :try_end_75} :catch_76

    goto :goto_50

    :catch_76
    move-exception v2

    const-string/jumbo v12, "Icon"

    const-string/jumbo v13, "Unable to find pkg=%s for icon %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    const/4 v15, 0x1

    aput-object p0, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :catch_8f
    move-exception v5

    const-string/jumbo v12, "Icon"

    const-string/jumbo v13, "Unable to load resource 0x%08x from pkg=%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :pswitch_b6
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v16

    invoke-static/range {v14 .. v16}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v12

    :pswitch_d0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const/4 v6, 0x0

    const-string/jumbo v12, "content"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_eb

    const-string/jumbo v12, "file"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11f

    :cond_eb
    :try_start_eb
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f2} :catch_103

    move-result-object v6

    :goto_f3
    if-eqz v6, :cond_7

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v12

    :catch_103
    move-exception v4

    const-string/jumbo v12, "Icon"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unable to load image from URI: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f3

    :cond_11f
    :try_start_11f
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12d
    .catch Ljava/io/FileNotFoundException; {:try_start_11f .. :try_end_12d} :catch_12f

    move-object v6, v7

    goto :goto_f3

    :catch_12f
    move-exception v3

    const-string/jumbo v12, "Icon"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unable to load image from path: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f3

    nop

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_2b
        :pswitch_b6
        :pswitch_d0
        :pswitch_17
    .end packed-switch
.end method

.method public static scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v1, p1, :cond_c

    if-le v0, p2, :cond_21

    :cond_c
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, p2

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v4, v0

    mul-float/2addr v4, v2

    float-to-int v4, v4

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_21
    return-object p0
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    return-void
.end method

.method private static final typeToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1c

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "BITMAP"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "BITMAP_MASKABLE"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "DATA"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "RESOURCE"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "URI"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_13
        :pswitch_f
        :pswitch_17
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public convertToAshmem()V
    .registers 3

    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2b

    :cond_a
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_2b

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/Icon;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_2b
    return-void
.end method

.method public describeContents()I
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    if-eq v1, v0, :cond_a

    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_a

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 4

    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_24

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "called getBitmap() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDataBytes()[B
    .registers 4

    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "called getDataBytes() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    monitor-enter p0

    :try_start_20
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    check-cast v0, [B
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-object v0

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDataLength()I
    .registers 4

    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "called getDataLength() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    monitor-enter p0

    :try_start_20
    iget v0, p0, Landroid/graphics/drawable/Icon;->mInt1:I
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_24

    monitor-exit p0

    return v0

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDataOffset()I
    .registers 4

    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "called getDataOffset() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    monitor-enter p0

    :try_start_20
    iget v0, p0, Landroid/graphics/drawable/Icon;->mInt2:I
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_24

    monitor-exit p0

    return v0

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResId()I
    .registers 4

    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "called getResId() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget v0, p0, Landroid/graphics/drawable/Icon;->mInt1:I

    return v0
.end method

.method public getResPackage()Ljava/lang/String;
    .registers 4

    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "called getResPackage() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 4

    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "called getResources() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Resources;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getUriString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "called getUriString() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method public hasTint()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_b

    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v2, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, v2, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 5

    invoke-direct {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawableInner(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_10

    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v2, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, v2, :cond_1d

    :cond_10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1d
    return-object v0
.end method

.method public loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 11

    const/4 v5, 0x2

    iget v3, p0, Landroid/graphics/drawable/Icon;->mType:I

    if-ne v3, v5, :cond_32

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :cond_13
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez v3, :cond_32

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_32

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_2c
    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_32} :catch_37

    :cond_32
    :goto_32
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    :catch_37
    move-exception v0

    const-string/jumbo v3, "Icon"

    const-string/jumbo v4, "Unable to find pkg=%s user=%d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32
.end method

.method public loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V
    .registers 5

    new-instance v0, Landroid/graphics/drawable/Icon$LoadDrawableTask;

    invoke-direct {v0, p0, p1, p3, p2}, Landroid/graphics/drawable/Icon$LoadDrawableTask;-><init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/os/Handler;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon$LoadDrawableTask;->runAsync()V

    return-void
.end method

.method public loadDrawableAsync(Landroid/content/Context;Landroid/os/Message;)V
    .registers 5

    invoke-virtual {p2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback message must have a target handler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Landroid/graphics/drawable/Icon$LoadDrawableTask;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/drawable/Icon$LoadDrawableTask;-><init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon$LoadDrawableTask;->runAsync()V

    return-void
.end method

.method public sameAs(Landroid/graphics/drawable/Icon;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    return v0

    :cond_5
    iget v2, p0, Landroid/graphics/drawable/Icon;->mType:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    if-eq v2, v3, :cond_e

    return v1

    :cond_e
    iget v2, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v2, :pswitch_data_66

    return v1

    :pswitch_14
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-ne v2, v3, :cond_1f

    :goto_1e
    return v0

    :cond_1f
    move v0, v1

    goto :goto_1e

    :pswitch_21
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v2

    if-ne v0, v2, :cond_41

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v2

    if-ne v0, v2, :cond_41

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :cond_41
    return v1

    :pswitch_42
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    if-ne v0, v2, :cond_58

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_58
    return v1

    :pswitch_59
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_14
        :pswitch_42
        :pswitch_21
        :pswitch_59
        :pswitch_14
    .end packed-switch
.end method

.method public scaleDownIfNecessary(II)V
    .registers 6

    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/Icon;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setTint(I)Landroid/graphics/drawable/Icon;
    .registers 3

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;
    .registers 2

    iput-object p1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;
    .registers 2

    iput-object p1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    const/4 v10, 0x1

    const/4 v4, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Icon(typ="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Landroid/graphics/drawable/Icon;->mType:I

    invoke-static {v5}, Landroid/graphics/drawable/Icon;->typeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v3, :pswitch_data_f2

    :cond_19
    :goto_19
    iget-object v3, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_d5

    const-string/jumbo v3, " tint="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ""

    iget-object v3, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_2e
    if-ge v3, v6, :cond_d5

    aget v0, v5, v3

    const-string/jumbo v7, "%s0x%08x"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :pswitch_4d
    const-string/jumbo v3, " size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_19

    :pswitch_73
    const-string/jumbo v3, " pkg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "0x%08x"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_19

    :pswitch_a1
    const-string/jumbo v3, " len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v3

    if-eqz v3, :cond_19

    const-string/jumbo v3, " off="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_19

    :pswitch_c5
    const-string/jumbo v3, " uri="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_19

    :cond_d5
    iget-object v3, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v4, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v3, v4, :cond_e7

    const-string/jumbo v3, " mode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e7
    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_73
        :pswitch_a1
        :pswitch_c5
        :pswitch_4d
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v1, :pswitch_data_60

    :goto_a
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_56

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_12
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1}, Landroid/graphics/PorterDuff;->modeToInt(Landroid/graphics/PorterDuff$Mode;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_1c
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :pswitch_28
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :pswitch_37
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Parcel;->writeBlob([BII)V

    goto :goto_a

    :pswitch_4e
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :cond_56
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_28
        :pswitch_37
        :pswitch_4e
        :pswitch_1c
    .end packed-switch
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v1, :pswitch_data_4e

    :goto_13
    return-void

    :pswitch_14
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_13

    :pswitch_20
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_13

    :pswitch_37
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_13

    :pswitch_46
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_13

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_37
        :pswitch_20
        :pswitch_46
        :pswitch_14
    .end packed-switch
.end method
