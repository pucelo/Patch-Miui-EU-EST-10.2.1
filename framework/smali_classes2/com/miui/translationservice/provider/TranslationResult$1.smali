.class final Lcom/miui/translationservice/provider/TranslationResult$1;
.super Ljava/lang/Object;
.source "TranslationResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/translationservice/provider/TranslationResult;
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
        "Lcom/miui/translationservice/provider/TranslationResult;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/translationservice/provider/TranslationResult;
    .registers 4

    new-instance v0, Lcom/miui/translationservice/provider/TranslationResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/translationservice/provider/TranslationResult;-><init>(Landroid/os/Parcel;Lcom/miui/translationservice/provider/TranslationResult;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/miui/translationservice/provider/TranslationResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/translationservice/provider/TranslationResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/translationservice/provider/TranslationResult;
    .registers 3

    new-array v0, p1, [Lcom/miui/translationservice/provider/TranslationResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/miui/translationservice/provider/TranslationResult$1;->newArray(I)[Lcom/miui/translationservice/provider/TranslationResult;

    move-result-object v0

    return-object v0
.end method