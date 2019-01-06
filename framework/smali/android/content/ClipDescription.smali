.class public Landroid/content/ClipDescription;
.super Ljava/lang/Object;
.source "ClipDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipDescription$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/ClipDescription;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_TARGET_COMPONENT_NAME:Ljava/lang/String; = "android.content.extra.TARGET_COMPONENT_NAME"

.field public static final EXTRA_USER_SERIAL_NUMBER:Ljava/lang/String; = "android.content.extra.USER_SERIAL_NUMBER"

.field public static final MIMETYPE_TEXT_HTML:Ljava/lang/String; = "text/html"

.field public static final MIMETYPE_TEXT_INTENT:Ljava/lang/String; = "text/vnd.android.intent"

.field public static final MIMETYPE_TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final MIMETYPE_TEXT_URILIST:Ljava/lang/String; = "text/uri-list"


# instance fields
.field private mExtras:Landroid/os/PersistableBundle;

.field final mLabel:Ljava/lang/CharSequence;

.field private final mMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/ClipDescription$1;

    invoke-direct {v0}, Landroid/content/ClipDescription$1;-><init>()V

    sput-object v0, Landroid/content/ClipDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ClipDescription;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    iget-wide v0, p1, Landroid/content/ClipDescription;->mTimeStamp:J

    iput-wide v0, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mimeTypes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput-object p1, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public static compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    const-string/jumbo v2, "*/*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    return v5

    :cond_13
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_39

    add-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_32

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_32

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v4, p0, v4, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_39

    return v5

    :cond_32
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    return v5

    :cond_39
    return v4
.end method


# virtual methods
.method addMimeTypes([Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-eq v0, v2, :cond_16

    aget-object v1, p1, v0

    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public filterMimeTypes(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v3, :cond_2e

    iget-object v4, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    if-nez v0, :cond_20

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_20
    iget-object v4, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_2e
    if-nez v0, :cond_31

    return-object v5

    :cond_31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v2
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .registers 2

    iget-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMimeType(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMimeTypeCount()I
    .registers 2

    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .registers 3

    iget-wide v0, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    return-wide v0
.end method

.method public hasMimeType(Ljava/lang/String;)Z
    .registers 5

    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1c

    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    return v2

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1c
    const/4 v2, 0x0

    return v2
.end method

.method public setExtras(Landroid/os/PersistableBundle;)V
    .registers 3

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    return-void
.end method

.method public setTimestamp(J)V
    .registers 4

    iput-wide p1, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    return-void
.end method

.method public toShortString(Ljava/lang/StringBuilder;)Z
    .registers 9

    const/16 v2, 0x22

    const/16 v6, 0x20

    invoke-virtual {p0, p1}, Landroid/content/ClipDescription;->toShortStringTypesOnly(Ljava/lang/StringBuilder;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1f

    if-nez v0, :cond_13

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1f
    iget-object v1, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_32

    if-nez v0, :cond_28

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_28
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    iget-wide v2, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_53

    if-nez v0, :cond_3f

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3f
    const/4 v0, 0x0

    const/16 v1, 0x3c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_53
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public toShortStringTypesOnly(Ljava/lang/StringBuilder;)Z
    .registers 6

    const/4 v0, 0x1

    iget-object v3, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v2, :cond_20

    if-nez v0, :cond_11

    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    const/4 v0, 0x0

    iget-object v3, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_20
    xor-int/lit8 v3, v0, 0x1

    return v3
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "ClipDescription { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/content/ClipDescription;->toShortString(Ljava/lang/StringBuilder;)Z

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validate()V
    .registers 6

    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    if-nez v2, :cond_d

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "null mime types"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "must have at least 1 mime type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v1, :cond_4d

    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4a

    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mime type at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_4d
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    iget-wide v0, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
