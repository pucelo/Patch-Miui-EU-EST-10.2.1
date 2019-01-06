.class abstract Landroid/service/autofill/InternalTransformation;
.super Ljava/lang/Object;
.source "InternalTransformation.java"

# interfaces
.implements Landroid/service/autofill/Transformation;
.implements Landroid/os/Parcelable;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract apply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
