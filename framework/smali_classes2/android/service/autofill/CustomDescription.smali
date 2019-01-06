.class public final Landroid/service/autofill/CustomDescription;
.super Ljava/lang/Object;
.source "CustomDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/CustomDescription$1;,
        Landroid/service/autofill/CustomDescription$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/autofill/CustomDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CustomDescription"


# instance fields
.field private final mPresentation:Landroid/widget/RemoteViews;

.field private final mTransformations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/service/autofill/InternalTransformation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/autofill/CustomDescription$1;

    invoke-direct {v0}, Landroid/service/autofill/CustomDescription$1;-><init>()V

    sput-object v0, Landroid/service/autofill/CustomDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/service/autofill/CustomDescription$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/service/autofill/CustomDescription$Builder;->-get0(Landroid/service/autofill/CustomDescription$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/CustomDescription;->mPresentation:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/service/autofill/CustomDescription$Builder;->-get1(Landroid/service/autofill/CustomDescription$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/CustomDescription;->mTransformations:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/autofill/CustomDescription$Builder;Landroid/service/autofill/CustomDescription;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/CustomDescription;-><init>(Landroid/service/autofill/CustomDescription$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPresentation(Landroid/service/autofill/ValueFinder;)Landroid/widget/RemoteViews;
    .registers 12

    const/4 v9, 0x0

    iget-object v6, p0, Landroid/service/autofill/CustomDescription;->mTransformations:Ljava/util/ArrayList;

    if-eqz v6, :cond_a3

    iget-object v6, p0, Landroid/service/autofill/CustomDescription;->mTransformations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget-boolean v6, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_30

    const-string/jumbo v6, "CustomDescription"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPresentation(): applying "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " transformations"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    const/4 v1, 0x0

    :goto_31
    if-ge v1, v4, :cond_a3

    iget-object v6, p0, Landroid/service/autofill/CustomDescription;->mTransformations:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/service/autofill/InternalTransformation;

    sget-boolean v6, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_70

    const-string/jumbo v6, "CustomDescription"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    :try_start_70
    iget-object v6, p0, Landroid/service/autofill/CustomDescription;->mPresentation:Landroid/widget/RemoteViews;

    invoke-virtual {v5, p1, v6, v2}, Landroid/service/autofill/InternalTransformation;->apply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;I)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_75} :catch_78

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :catch_78
    move-exception v0

    const-string/jumbo v6, "CustomDescription"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not apply transformation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_a3
    iget-object v6, p0, Landroid/service/autofill/CustomDescription;->mPresentation:Landroid/widget/RemoteViews;

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CustomDescription: [presentation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/CustomDescription;->mPresentation:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", transformations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/CustomDescription;->mTransformations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    const/4 v6, 0x0

    iget-object v5, p0, Landroid/service/autofill/CustomDescription;->mPresentation:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v5, p0, Landroid/service/autofill/CustomDescription;->mTransformations:Ljava/util/ArrayList;

    if-nez v5, :cond_e

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    :goto_d
    return-void

    :cond_e
    iget-object v5, p0, Landroid/service/autofill/CustomDescription;->mTransformations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [I

    new-array v4, v3, [Landroid/service/autofill/InternalTransformation;

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v3, :cond_36

    iget-object v5, p0, Landroid/service/autofill/CustomDescription;->mTransformations:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v0

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/service/autofill/InternalTransformation;

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto :goto_d
.end method
