.class public Lcom/miui/whetstone/AlarmPolicy;
.super Ljava/lang/Object;
.source "AlarmPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/AlarmPolicy$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/AlarmPolicy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mRestrictTypes:[I

.field public mUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/whetstone/AlarmPolicy$1;

    invoke-direct {v0}, Lcom/miui/whetstone/AlarmPolicy$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/AlarmPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    iput-object p2, p0, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/whetstone/AlarmPolicy;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/whetstone/AlarmPolicy;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
