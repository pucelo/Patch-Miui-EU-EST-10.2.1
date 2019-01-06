.class public final Landroid/os/statistics/E2EScenario;
.super Ljava/lang/Object;
.source "E2EScenario.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/E2EScenario$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/E2EScenario;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CATEGORY:Ljava/lang/String; = "default"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public category:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public namespace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/E2EScenario$1;

    invoke-direct {v0}, Landroid/os/statistics/E2EScenario$1;-><init>()V

    sput-object v0, Landroid/os/statistics/E2EScenario;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v2, :cond_14

    const-string/jumbo v2, ""

    :cond_14
    iput-object v2, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    if-nez v0, :cond_1b

    const-string/jumbo v0, ""

    :cond_1b
    iput-object v0, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    if-nez v1, :cond_22

    const-string/jumbo v1, ""

    :cond_22
    iput-object v1, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_8

    const-string/jumbo p1, ""

    :cond_8
    iput-object p1, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    if-nez p2, :cond_f

    const-string/jumbo p2, ""

    :cond_f
    iput-object p2, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    if-nez p3, :cond_16

    const-string/jumbo p3, ""

    :cond_16
    iput-object p3, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    instance-of v2, p1, Landroid/os/statistics/E2EScenario;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    :cond_9
    return v1

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/os/statistics/E2EScenario;

    iget-object v2, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    iget-object v3, v0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    iget-object v3, v0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v1, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    iget-object v2, v0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_29
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public normalize(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo p1, "android"

    :cond_11
    iput-object p1, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    :cond_13
    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "default"

    iput-object v0, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    :cond_20
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string/jumbo v2, "namespace"

    iget-object v3, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "category"

    iget-object v3, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "name"

    iget-object v3, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1d} :catch_1e

    :goto_1d
    return-object v1

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1d
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
