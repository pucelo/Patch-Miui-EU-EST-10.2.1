.class public Landroid/view/WindowInfo;
.super Ljava/lang/Object;
.source "WindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accessibilityIdOfAnchor:I

.field public activityToken:Landroid/os/IBinder;

.field public final boundsInScreen:Landroid/graphics/Rect;

.field public childTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public focused:Z

.field public inPictureInPicture:Z

.field public layer:I

.field public parentToken:Landroid/os/IBinder;

.field public title:Ljava/lang/CharSequence;

.field public token:Landroid/os/IBinder;

.field public type:I


# direct methods
.method static synthetic -wrap0(Landroid/view/WindowInfo;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/WindowInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/WindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    new-instance v0, Landroid/view/WindowInfo$1;

    invoke-direct {v0}, Landroid/view/WindowInfo$1;-><init>()V

    sput-object v0, Landroid/view/WindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    return-void
.end method

.method private clear()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowInfo;->type:I

    iput v1, p0, Landroid/view/WindowInfo;->layer:I

    iput-object v0, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    iput-boolean v1, p0, Landroid/view/WindowInfo;->focused:Z

    iget-object v0, p0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1c
    iput-boolean v1, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    return-void
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowInfo;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_5d

    move v1, v2

    :goto_27
    iput-boolean v1, p0, Landroid/view/WindowInfo;->focused:Z

    iget-object v1, p0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_41

    move v3, v2

    :cond_41
    iput-boolean v3, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_5f

    const/4 v0, 0x1

    :goto_4a
    if-eqz v0, :cond_5c

    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v1, :cond_57

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    :cond_57
    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBinderList(Ljava/util/List;)V

    :cond_5c
    return-void

    :cond_5d
    move v1, v3

    goto :goto_27

    :cond_5f
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method public static obtain()Landroid/view/WindowInfo;
    .registers 2

    sget-object v1, Landroid/view/WindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInfo;

    if-nez v0, :cond_f

    new-instance v0, Landroid/view/WindowInfo;

    invoke-direct {v0}, Landroid/view/WindowInfo;-><init>()V

    :cond_f
    return-object v0
.end method

.method public static obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;
    .registers 4

    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowInfo;->type:I

    iput v1, v0, Landroid/view/WindowInfo;->type:I

    iget v1, p0, Landroid/view/WindowInfo;->layer:I

    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    iget-object v1, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    iget-boolean v1, p0, Landroid/view/WindowInfo;->focused:Z

    iput-boolean v1, v0, Landroid/view/WindowInfo;->focused:Z

    iget-object v1, v0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    iput v1, v0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    iget-boolean v1, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    iput-boolean v1, v0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4a

    iget-object v1, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v1, :cond_4b

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    :cond_4a
    :goto_4a
    return-object v0

    :cond_4b
    iget-object v1, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4a
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .registers 2

    invoke-direct {p0}, Landroid/view/WindowInfo;->clear()V

    sget-object v0, Landroid/view/WindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WindowInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInfo;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", accessibility anchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/view/WindowInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-boolean v0, p0, Landroid/view/WindowInfo;->focused:Z

    if-eqz v0, :cond_51

    move v0, v1

    :goto_20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    if-eqz v0, :cond_53

    move v0, v1

    :goto_37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v0, :cond_55

    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_55

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    :goto_50
    return-void

    :cond_51
    move v0, v2

    goto :goto_20

    :cond_53
    move v0, v2

    goto :goto_37

    :cond_55
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_50
.end method
