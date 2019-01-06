.class final Landroid/service/autofill/FillResponse$1;
.super Ljava/lang/Object;
.source "FillResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/service/autofill/FillResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillResponse;
    .registers 13

    const/4 v10, 0x0

    new-instance v2, Landroid/service/autofill/FillResponse$Builder;

    invoke-direct {v2}, Landroid/service/autofill/FillResponse$Builder;-><init>()V

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ParceledListSlice;

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    :goto_12
    if-eqz v5, :cond_29

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    :goto_18
    const/4 v6, 0x0

    :goto_19
    if-ge v6, v3, :cond_2b

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/autofill/Dataset;

    invoke-virtual {v2, v9}, Landroid/service/autofill/FillResponse$Builder;->addDataset(Landroid/service/autofill/Dataset;)Landroid/service/autofill/FillResponse$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_27
    const/4 v5, 0x0

    goto :goto_12

    :cond_29
    const/4 v3, 0x0

    goto :goto_18

    :cond_2b
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/service/autofill/SaveInfo;

    invoke-virtual {v2, v9}, Landroid/service/autofill/FillResponse$Builder;->setSaveInfo(Landroid/service/autofill/SaveInfo;)Landroid/service/autofill/FillResponse$Builder;

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    invoke-virtual {v2, v9}, Landroid/service/autofill/FillResponse$Builder;->setClientState(Landroid/os/Bundle;)Landroid/service/autofill/FillResponse$Builder;

    const-class v9, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v10, v9}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, [Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/widget/RemoteViews;

    if-eqz v1, :cond_56

    invoke-virtual {v2, v1, v0, v7}, Landroid/service/autofill/FillResponse$Builder;->setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    :cond_56
    const-class v9, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v10, v9}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, [Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v9}, Landroid/service/autofill/FillResponse$Builder;->setIgnoredIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;

    invoke-virtual {v2}, Landroid/service/autofill/FillResponse$Builder;->build()Landroid/service/autofill/FillResponse;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    return-object v8
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/service/autofill/FillResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/autofill/FillResponse;
    .registers 3

    new-array v0, p1, [Landroid/service/autofill/FillResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/service/autofill/FillResponse$1;->newArray(I)[Landroid/service/autofill/FillResponse;

    move-result-object v0

    return-object v0
.end method
