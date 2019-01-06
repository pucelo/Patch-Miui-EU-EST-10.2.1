.class public final Landroid/os/Bundle;
.super Landroid/os/BaseBundle;
.source "Bundle.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Bundle$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroid/os/Bundle;

.field static final FLAG_ALLOW_FDS:I = 0x400

.field static final FLAG_HAS_FDS:I = 0x100

.field static final FLAG_HAS_FDS_KNOWN:I = 0x200

.field public static final STRIPPED:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    sget-object v1, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v1, v0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/os/Bundle;->STRIPPED:Landroid/os/Bundle;

    sget-object v0, Landroid/os/Bundle;->STRIPPED:Landroid/os/Bundle;

    const-string/jumbo v1, "STRIPPED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Landroid/os/Bundle$1;

    invoke-direct {v0}, Landroid/os/Bundle$1;-><init>()V

    sput-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(I)V

    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    iget v0, p1, Landroid/os/Bundle;->mFlags:I

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;)V

    const/16 v0, 0x400

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    invoke-direct {p0}, Landroid/os/Bundle;->maybePrefillHasFds()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;I)V

    const/16 v0, 0x400

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    invoke-direct {p0}, Landroid/os/Bundle;->maybePrefillHasFds()V

    return-void
.end method

.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;)V

    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Z)V

    return-void
.end method

.method public static forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private maybePrefillHasFds()V
    .registers 2

    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x300

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    goto :goto_12
.end method

.method public static setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 2

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setDefusable(Z)V

    :cond_5
    return-object p0
.end method


# virtual methods
.method public clear()V
    .registers 2

    invoke-super {p0}, Landroid/os/BaseBundle;->clear()V

    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public deepCopy()Landroid/os/Bundle;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->copyInternal(Landroid/os/BaseBundle;Z)V

    return-object v0
.end method

.method public describeContents()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public filterValues()Landroid/os/Bundle;
    .registers 8

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    move-object v0, p0

    iget-object v5, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    if-eqz v5, :cond_5b

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_10
    if-ltz v1, :cond_5b

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/os/PersistableBundle;->isValidType(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1c
    :goto_1c
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_1f
    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_3b

    move-object v5, v4

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->filterValues()Landroid/os/Bundle;

    move-result-object v3

    if-eq v3, v4, :cond_1c

    iget-object v5, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    if-ne v2, v5, :cond_37

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v2, v0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    :cond_37
    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_3b
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    iget-object v5, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    if-ne v2, v5, :cond_57

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v2, v0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    :cond_57
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_1c

    :cond_5b
    iget v5, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Landroid/os/Bundle;->mFlags:I

    iget v5, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v5, v5, -0x101

    iput v5, p0, Landroid/os/Bundle;->mFlags:I

    return-object v0
.end method

.method public getBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, Landroid/os/IBinder;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "IBinder"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method public getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, Landroid/os/Bundle;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "Bundle"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method public getByte(Ljava/lang/String;)B
    .registers 3

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .registers 3

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getChar(Ljava/lang/String;)C
    .registers 3

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;)C

    move-result v0

    return v0
.end method

.method public getChar(Ljava/lang/String;C)C
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method public getCharArray(Ljava/lang/String;)[C
    .registers 3

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method public getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .registers 3

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    invoke-super {p0}, Landroid/os/BaseBundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 3

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .registers 3

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    return-object v0
.end method

.method public getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, Landroid/os/IBinder;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "IBinder"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method public getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, Landroid/os/Parcelable;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "Parcelable"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method public getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, [Landroid/os/Parcelable;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "Parcelable[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method public getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, Ljava/util/ArrayList;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "ArrayList"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .registers 3

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public getShort(Ljava/lang/String;)S
    .registers 3

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public getShortArray(Ljava/lang/String;)[S
    .registers 3

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getSize(Ljava/lang/String;)Landroid/util/Size;
    .registers 5

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_9
    check-cast v1, Landroid/util/Size;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_b} :catch_c

    return-object v1

    :catch_c
    move-exception v0

    const-string/jumbo v2, "Size"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method public getSizeF(Ljava/lang/String;)Landroid/util/SizeF;
    .registers 5

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_9
    check-cast v1, Landroid/util/SizeF;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_b} :catch_c

    return-object v1

    :catch_c
    move-exception v0

    const-string/jumbo v2, "SizeF"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method public getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, Landroid/util/SparseArray;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "SparseArray"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hasFileDescriptors()Z
    .registers 11

    const/4 v8, 0x0

    iget v9, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v9, v9, 0x200

    if-nez v9, :cond_23

    const/4 v3, 0x0

    iget-object v9, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v9, :cond_2b

    iget-object v9, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v9}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v9

    if-eqz v9, :cond_15

    const/4 v3, 0x1

    :cond_15
    :goto_15
    if-eqz v3, :cond_c0

    iget v9, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v9, v9, 0x100

    iput v9, p0, Landroid/os/Bundle;->mFlags:I

    :goto_1d
    iget v9, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v9, v9, 0x200

    iput v9, p0, Landroid/os/Bundle;->mFlags:I

    :cond_23
    iget v9, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v9, v9, 0x100

    if-eqz v9, :cond_2a

    const/4 v8, 0x1

    :cond_2a
    return v8

    :cond_2b
    iget-object v9, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    :goto_33
    if-ltz v4, :cond_15

    iget-object v9, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v9, v6, Landroid/os/Parcelable;

    if-eqz v9, :cond_4b

    check-cast v6, Landroid/os/Parcelable;

    invoke-interface {v6}, Landroid/os/Parcelable;->describeContents()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_64

    const/4 v3, 0x1

    goto :goto_15

    :cond_4b
    instance-of v9, v6, [Landroid/os/Parcelable;

    if-eqz v9, :cond_6a

    move-object v2, v6

    check-cast v2, [Landroid/os/Parcelable;

    array-length v9, v2

    add-int/lit8 v5, v9, -0x1

    :goto_55
    if-ltz v5, :cond_64

    aget-object v7, v2, v5

    if-eqz v7, :cond_67

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_67

    const/4 v3, 0x1

    :cond_64
    :goto_64
    add-int/lit8 v4, v4, -0x1

    goto :goto_33

    :cond_67
    add-int/lit8 v5, v5, -0x1

    goto :goto_55

    :cond_6a
    instance-of v9, v6, Landroid/util/SparseArray;

    if-eqz v9, :cond_8e

    move-object v0, v6

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    :goto_77
    if-ltz v5, :cond_64

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    if-eqz v7, :cond_8b

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_8b

    const/4 v3, 0x1

    goto :goto_64

    :cond_8b
    add-int/lit8 v5, v5, -0x1

    goto :goto_77

    :cond_8e
    instance-of v9, v6, Ljava/util/ArrayList;

    if-eqz v9, :cond_64

    move-object v1, v6

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_64

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Landroid/os/Parcelable;

    if-eqz v9, :cond_64

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    :goto_a9
    if-ltz v5, :cond_64

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    if-eqz v7, :cond_bd

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_bd

    const/4 v3, 0x1

    goto :goto_64

    :cond_bd
    add-int/lit8 v5, v5, -0x1

    goto :goto_a9

    :cond_c0
    iget v9, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v9, v9, -0x101

    iput v9, p0, Landroid/os/Bundle;->mFlags:I

    goto/16 :goto_1d
.end method

.method public putAll(Landroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    invoke-virtual {p1}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    iget v0, p1, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_19

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    :cond_19
    iget v0, p1, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_25

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    :cond_25
    return-void
.end method

.method public putBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putByte(Ljava/lang/String;B)V

    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public putChar(Ljava/lang/String;C)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putChar(Ljava/lang/String;C)V

    return-void
.end method

.method public putCharArray(Ljava/lang/String;[C)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharArray(Ljava/lang/String;[C)V

    return-void
.end method

.method public putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public putFloatArray(Ljava/lang/String;[F)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putFloatArray(Ljava/lang/String;[F)V

    return-void
.end method

.method public putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public putParcelableList(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putShort(Ljava/lang/String;S)V

    return-void
.end method

.method public putShortArray(Ljava/lang/String;[S)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putShortArray(Ljava/lang/String;[S)V

    return-void
.end method

.method public putSize(Ljava/lang/String;Landroid/util/Size;)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;)V

    const/16 v0, 0x400

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    invoke-direct {p0}, Landroid/os/Bundle;->maybePrefillHasFds()V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->remove(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    :cond_f
    return-void
.end method

.method public setAllowFds(Z)Z
    .registers 4

    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :goto_7
    if-eqz p1, :cond_12

    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_7

    :cond_12
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    goto :goto_f
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public setDefusable(Z)V
    .registers 3

    if-eqz p1, :cond_9

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    :goto_8
    return-void

    :cond_9
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    goto :goto_8
.end method

.method public declared-synchronized toShortString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "EMPTY_PARCEL"
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_34

    monitor-exit p0

    return-object v0

    :cond_10
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_34

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_2c
    :try_start_2c
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_34

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "Bundle[EMPTY_PARCEL]"
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_56

    monitor-exit p0

    return-object v0

    :cond_10
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Bundle[mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_56

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_33
    :try_start_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Bundle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_53
    .catchall {:try_start_33 .. :try_end_53} :catchall_56

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x0

    iget v2, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_8

    const/4 v1, 0x1

    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->pushAllowFds(Z)Z

    move-result v0

    :try_start_c
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->writeToParcelInner(Landroid/os/Parcel;I)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    return-void

    :catchall_13
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    throw v1
.end method
