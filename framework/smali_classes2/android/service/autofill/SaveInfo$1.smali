.class final Landroid/service/autofill/SaveInfo$1;
.super Ljava/lang/Object;
.source "SaveInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/SaveInfo;
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
        "Landroid/service/autofill/SaveInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/SaveInfo;
    .registers 11

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const-class v6, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v8, v6}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, [Landroid/view/autofill/AutofillId;

    if-eqz v3, :cond_57

    new-instance v0, Landroid/service/autofill/SaveInfo$Builder;

    invoke-direct {v0, v4, v3}, Landroid/service/autofill/SaveInfo$Builder;-><init>(I[Landroid/view/autofill/AutofillId;)V

    :goto_14
    const-class v6, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v8, v6}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, [Landroid/view/autofill/AutofillId;

    if-eqz v2, :cond_21

    invoke-virtual {v0, v2}, Landroid/service/autofill/SaveInfo$Builder;->setOptionalIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;

    :cond_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/IntentSender;

    invoke-virtual {v0, v7, v6}, Landroid/service/autofill/SaveInfo$Builder;->setNegativeAction(ILandroid/content/IntentSender;)Landroid/service/autofill/SaveInfo$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/service/autofill/SaveInfo$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/service/autofill/SaveInfo$Builder;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/CustomDescription;

    if-eqz v1, :cond_40

    invoke-virtual {v0, v1}, Landroid/service/autofill/SaveInfo$Builder;->setCustomDescription(Landroid/service/autofill/CustomDescription;)Landroid/service/autofill/SaveInfo$Builder;

    :cond_40
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/InternalValidator;

    if-eqz v5, :cond_4b

    invoke-virtual {v0, v5}, Landroid/service/autofill/SaveInfo$Builder;->setValidator(Landroid/service/autofill/Validator;)Landroid/service/autofill/SaveInfo$Builder;

    :cond_4b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/service/autofill/SaveInfo$Builder;->setFlags(I)Landroid/service/autofill/SaveInfo$Builder;

    invoke-virtual {v0}, Landroid/service/autofill/SaveInfo$Builder;->build()Landroid/service/autofill/SaveInfo;

    move-result-object v6

    return-object v6

    :cond_57
    new-instance v0, Landroid/service/autofill/SaveInfo$Builder;

    invoke-direct {v0, v4}, Landroid/service/autofill/SaveInfo$Builder;-><init>(I)V

    goto :goto_14
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/service/autofill/SaveInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/SaveInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/autofill/SaveInfo;
    .registers 3

    new-array v0, p1, [Landroid/service/autofill/SaveInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/service/autofill/SaveInfo$1;->newArray(I)[Landroid/service/autofill/SaveInfo;

    move-result-object v0

    return-object v0
.end method
