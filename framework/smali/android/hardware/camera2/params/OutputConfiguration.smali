.class public final Landroid/hardware/camera2/params/OutputConfiguration;
.super Ljava/lang/Object;
.source "OutputConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/OutputConfiguration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SURFACES_COUNT:I = 0x2

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field public static final SURFACE_GROUP_ID_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OutputConfiguration"


# instance fields
.field private final SURFACE_TYPE_SURFACE_TEXTURE:I

.field private final SURFACE_TYPE_SURFACE_VIEW:I

.field private final SURFACE_TYPE_UNKNOWN:I

.field private final mConfiguredDataspace:I

.field private final mConfiguredFormat:I

.field private final mConfiguredGenerationId:I

.field private final mConfiguredSize:Landroid/util/Size;

.field private final mIsDeferredConfig:Z

.field private mIsShared:Z

.field private final mRotation:I

.field private final mSurfaceGroupId:I

.field private final mSurfaceType:I

.field private mSurfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/camera2/params/OutputConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/view/Surface;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    return-void
.end method

.method public constructor <init>(ILandroid/view/Surface;I)V
    .registers 8

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    const-string/jumbo v0, "Surface must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Rotation constant"

    const/4 v1, 0x3

    invoke-static {p3, v2, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    invoke-virtual {p2}, Landroid/view/Surface;->getGenerationId()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iput-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iput-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    if-nez p1, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "OutputConfiguration shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 15

    const/16 v12, 0x22

    const/4 v11, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v11, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    iput v10, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    iput v9, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v9, :cond_89

    const/4 v1, 0x1

    :goto_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v9, :cond_8b

    const/4 v2, 0x1

    :goto_30
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6, v8}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    const-string/jumbo v8, "Rotation constant"

    const/4 v9, 0x3

    invoke-static {v3, v10, v9, v8}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iput v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iput-object v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, v7, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v8, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iput-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    iput-object v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_8d

    iput v11, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iget-object v8, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v8

    iput v8, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iget-object v8, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v8

    iput v8, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iget-object v8, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    invoke-virtual {v8}, Landroid/view/Surface;->getGenerationId()I

    move-result v8

    iput v8, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    :goto_88
    return-void

    :cond_89
    const/4 v1, 0x0

    goto :goto_29

    :cond_8b
    const/4 v2, 0x0

    goto :goto_30

    :cond_8d
    iput v5, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    invoke-static {v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v8

    iput v8, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    invoke-static {v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v8

    iput v8, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iput v10, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    goto :goto_88
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Size;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    const/16 v4, 0x22

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    const-string/jumbo v0, "surfaceSize must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "klass must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Landroid/view/SurfaceHolder;

    if-ne p2, v0, :cond_35

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    :goto_20
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-nez v0, :cond_47

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Surface size needs to be non-zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    const-class v0, Landroid/graphics/SurfaceTexture;

    if-ne p2, v0, :cond_3c

    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    goto :goto_20

    :cond_3c
    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknow surface source class type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iput-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;)V
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;I)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    return-void
.end method


# virtual methods
.method public addSurface(Landroid/view/Surface;)V
    .registers 6

    const-string/jumbo v1, "Surface must not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Surface is already added!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    iget-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot have 2 surfaces for a non-sharing configuration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    if-le v1, v2, :cond_43

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Exceeds maximum number of surfaces"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_43
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    const-string/jumbo v1, "OutputConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Added surface size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is different than pre-configured size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", the pre-configured size will be used."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v2

    if-eq v1, v2, :cond_8e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The format of added surface format doesn\'t match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8e
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    const/16 v2, 0x22

    if-eq v1, v2, :cond_a5

    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v2

    if-eq v1, v2, :cond_a5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The dataspace of added surface doesn\'t match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a5
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public enableSurfaceSharing()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_5

    return v5

    :cond_5
    if-ne p0, p1, :cond_8

    return v6

    :cond_8
    instance-of v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;

    if-eqz v3, :cond_78

    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    if-ne v3, v4, :cond_27

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v3, v4}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_27

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    if-eq v3, v4, :cond_28

    :cond_27
    return v5

    :cond_28
    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    if-ne v3, v4, :cond_27

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    if-ne v3, v4, :cond_27

    iget-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    if-ne v3, v4, :cond_27

    iget-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-ne v3, v4, :cond_27

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    if-ne v3, v4, :cond_27

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    if-ne v3, v4, :cond_27

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    if-ne v3, v4, :cond_27

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_63
    if-ge v0, v1, :cond_77

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_74

    return v5

    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    :cond_77
    return v6

    :cond_78
    return v5
.end method

.method public getRotation()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceGroupId()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    return v0
.end method

.method public getSurfaces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 8

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    if-eqz v2, :cond_37

    const/4 v2, 0x7

    new-array v2, v2, [I

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    aput v3, v2, v1

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->hashCode()I

    move-result v3

    aput v3, v2, v0

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    aput v3, v2, v4

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    aput v3, v2, v5

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    aput v3, v2, v6

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    const/4 v4, 0x5

    aput v3, v2, v4

    iget-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-eqz v3, :cond_35

    :goto_2d
    const/4 v1, 0x6

    aput v0, v2, v1

    invoke-static {v2}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0

    :cond_35
    move v0, v1

    goto :goto_2d

    :cond_37
    const/16 v2, 0x8

    new-array v2, v2, [I

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    aput v3, v2, v1

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->hashCode()I

    move-result v3

    aput v3, v2, v0

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    aput v3, v2, v4

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->hashCode()I

    move-result v3

    aput v3, v2, v5

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    aput v3, v2, v6

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    const/4 v4, 0x5

    aput v3, v2, v4

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    const/4 v4, 0x6

    aput v3, v2, v4

    iget-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-eqz v3, :cond_6d

    :goto_65
    const/4 v1, 0x7

    aput v0, v2, v1

    invoke-static {v2}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0

    :cond_6d
    move v0, v1

    goto :goto_65
.end method

.method public isDeferredConfiguration()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    if-eqz v0, :cond_43

    move v0, v1

    :goto_33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-eqz v0, :cond_45

    :goto_3a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void

    :cond_43
    move v0, v2

    goto :goto_33

    :cond_45
    move v1, v2

    goto :goto_3a
.end method
